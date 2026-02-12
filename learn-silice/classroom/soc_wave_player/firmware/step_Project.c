#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"

#include "fat_io_lib/src/fat_filelib.h"
#include <string.h>

#define MAX_FILES 32
#define NAME_LEN  64
#define MUSIC_DIR "/music"
#define EASTER_TRACK "rickroll.raw"

static char files[MAX_FILES][NAME_LEN];
static int  file_count = 0;
static int  g_skip_image = 0;

static void clear_screen();

#define BTN_PLAY   1  // play (raw1)
#define BTN_UP     3  // B3 (raw3)
#define BTN_DOWN   4  // B4 (raw4)
#define BTN_PLAYPAUSE 2  // B2 (raw2)
#define BTN_PREV   5  // B5 (raw5)
#define BTN_NEXT   6  // B6 (raw6)

static int g_volume = 4; // initial volume

#define SAMPLE_RATE_HZ 8000 
#define REPEAT_DELAY_SAMPLES  (SAMPLE_RATE_HZ/3)  // 300ms
#define REPEAT_PERIOD_SAMPLES (SAMPLE_RATE_HZ/10) // 100ms
#define AUDIO_BUFFER_SAMPLES  512

#define IMG_SIZE 80
#define IMG_X ((128 - IMG_SIZE) / 2)
#define IMG_Y 0

#define ENABLE_LOADING_MESSAGE 1

static void show_hourglass()
{
  int width_px = 6 * 5;
  int height_px = 5 * 8;
  int x = (128 - width_px) / 2;
  int y = (128 - height_px) / 2;
  if (x < 0) x = 0;
  if (y < 0) y = 0;
  display_set_front_back_color(255,0);
  display_set_cursor(x,y + 0*8);
  printf("+====+");
  display_set_cursor(x,y + 1*8);
  printf("|(::)|");
  display_set_cursor(x,y + 2*8);
  printf("| )( |");
  display_set_cursor(x,y + 3*8);
  printf("|(..)|");
  display_set_cursor(x,y + 4*8);
  printf("+====+");
  display_refresh();
}

static void show_easter_ascii()
{
  clear_screen();
  display_set_front_back_color(255,0);
  int width_px = 12 * 5;
  int height_px = 9 * 8;
  int x = IMG_X + (IMG_SIZE - width_px) / 2;
  int y = IMG_Y + (IMG_SIZE - height_px) / 2;
  if (x < 0) x = 0;
  if (y < 0) y = 0;
  display_set_cursor(x,y + 0*8);
  printf("   .-\"-.");
  display_set_cursor(x,y + 1*8);
  printf(" .'=^=^='.");
  display_set_cursor(x,y + 2*8);
  printf("/=^=^=^=^=\\");
  display_set_cursor(x,y + 3*8);
  printf("^= EASTER =^");
  display_set_cursor(x,y + 4*8);
  printf("|^  EGG!   ^|");
  display_set_cursor(x,y + 5*8);
  printf(":^=^=^=^=^=^:");
  display_set_cursor(x,y + 6*8);
  printf(" \\=^=^=^=^=/");
  display_set_cursor(x,y + 7*8);
  printf("  `.=====.'");
  display_set_cursor(x,y + 8*8);
  printf("    `~~~`");
  display_refresh();
}

static inline int read_buttons()
{
  int b = *BUTTONS;
  int play  = (b >> 1) & 1; // raw1
  int playpause = (b >> 2) & 1; // raw2
  int up    = (b >> 3) & 1; // raw3
  int down  = (b >> 4) & 1; // raw4
  int prev  = (b >> 5) & 1; // raw5
  int next  = (b >> 6) & 1; // raw6
  int out   = 0;
  out |= (play<<BTN_PLAY);
  out |= (playpause<<BTN_PLAYPAUSE);
  out |= (up<<BTN_UP);
  out |= (down<<BTN_DOWN);
  out |= (prev<<BTN_PREV);
  out |= (next<<BTN_NEXT);
  return out;
}

static void clear_audio()
{
  int *addr = (int*)(*AUDIO);
  while (addr == (int*)(*AUDIO)) { }
  for (int b = 0; b < 2; ++b) {
    addr = (int*)(*AUDIO);
    memset(addr, 0, 512);
    while (addr == (int*)(*AUDIO)) { }
  }
}

static void set_volume_leds(int volume)
{
  int v = volume;
  if (v < 0) v = 0;
  if (v > 8) v = 8;
  int mask = 0;
  for (int i = 0; i < v; ++i) {
    mask |= (1 << (7 - i));
  }
  *LEDS = mask;
}

static int streq(const char *a, const char *b)
{
  int i = 0;
  while (a[i] && b[i]) {
    if (a[i] != b[i]) return 0;
    i++;
  }
  return a[i] == b[i];
}

static void set_pixel_gray(int x, int y, unsigned char v)
{
  if (x < 0 || x >= 128 || y < 0 || y >= 128) return;
  for (int c = 0; c < 3; ++c) {
    *RGBSEL = c;
    unsigned char *fb = (unsigned char*)display_framebuffer();
    // framebuffer is x-major: index = x*128 + y
    fb[x*128 + y] = v;
  }
}

static void fill_rect_gray(int x, int y, int w, int h, unsigned char v)
{
  for (int j = 0; j < h; ++j) {
    for (int i = 0; i < w; ++i) {
      set_pixel_gray(x + i, y + j, v);
    }
  }
}

static int g_last_progress = -1;

static void draw_progress_bar(long current, long total)
{
  const int bar_x = 10;
  const int bar_y = 98;
  const int bar_w = 108;
  const int bar_h = 3;
  if (total <= 0) return;
  int filled = (int)((current * bar_w) / total);
  if (filled < 0) filled = 0;
  if (filled > bar_w) filled = bar_w;
  if (g_last_progress < 0) {
    fill_rect_gray(bar_x, bar_y, bar_w, bar_h, 0);
    fill_rect_gray(bar_x, bar_y, filled, bar_h, 255);
  } else if (filled != g_last_progress) {
    if (filled > g_last_progress) {
      fill_rect_gray(bar_x + g_last_progress, bar_y, filled - g_last_progress, bar_h, 255);
    } else {
      fill_rect_gray(bar_x + filled, bar_y, g_last_progress - filled, bar_h, 0);
    }
  }
  g_last_progress = filled;
}

static void draw_title(const char *title)
{
  display_set_front_back_color(255,0);
  display_set_cursor(0,84);
  printf("%s", title);
}

static void draw_controls(int paused)
{
  display_set_front_back_color(255,0);
  const char *line = paused ? " <     ||     > " : " <     |>     > ";
  int len = 0;
  while (line[len]) { len++; }
  int width_px = len * 5;
  int x = (128 - width_px) / 2;
  if (x < 0) x = 0;
  display_set_cursor(x,108);
  printf("%s", line);
}

static void draw_button_labels()
{
  display_set_front_back_color(255,0);
  const char *line = "B5     B2     B6";
  int len = 0;
  while (line[len]) { len++; }
  int width_px = len * 5;
  int x = (128 - width_px) / 2;
  if (x < 0) x = 0;
  display_set_cursor(x,116);
  printf("%s", line);
}

static void draw_back_hint()
{
  display_set_front_back_color(255,0);
  display_set_cursor(0,0);
  printf("< B1");
}

static void build_title(const char *filename, char *out, int out_sz)
{
  int j = 0;
  for (int i = 0; filename[i] && j < out_sz - 1; ++i) {
    char c = filename[i];
    if (c == '.') break;
    if (c == '_') c = ' ';
    out[j++] = c;
  }
  out[j] = 0;
}

static void update_ui(const char *title, long current, long total, int paused)
{
  fill_rect_gray(0, 80, 128, 48, 0);
  g_last_progress = -1;
  draw_back_hint();
  draw_title(title);
  draw_progress_bar(current, total);
  draw_controls(paused);
  draw_button_labels();
  display_refresh();
}

static void update_progress_only(long current, long total)
{
  draw_progress_bar(current, total);
  display_refresh();
}

static long file_size(FL_FILE *f)
{
  fl_fseek(f, 0, SEEK_END);
  long sz = fl_ftell(f);
  fl_fseek(f, 0, SEEK_SET);
  return sz;
}

static void render_image_rgb_row(const unsigned char *row, int y_dst, int bpp)
{
  if (y_dst < 0 || y_dst >= IMG_SIZE) return;
  for (int x_dst = 0; x_dst < IMG_SIZE; ++x_dst) {
    int x_src = (x_dst * 128) / IMG_SIZE;
    int base = x_src * bpp;
    unsigned char r = row[base + 0];
    unsigned char g = row[base + 2];
    unsigned char b = row[base + 1];
    int x = IMG_X + x_dst;
    int y = IMG_Y + y_dst;
    for (int c = 0; c < 3; ++c) {
      *RGBSEL = c;
      unsigned char *fb = (unsigned char*)display_framebuffer();
      fb[x*128 + y] = (c == 0) ? r : (c == 1) ? g : b;
    }
  }
}

static void render_image_gray_row(const unsigned char *row, int y_dst)
{
  if (y_dst < 0 || y_dst >= IMG_SIZE) return;
  for (int x_dst = 0; x_dst < IMG_SIZE; ++x_dst) {
    int x_src = (x_dst * 128) / IMG_SIZE;
    unsigned char v = row[x_src];
    int x = IMG_X + x_dst;
    int y = IMG_Y + y_dst;
    for (int c = 0; c < 3; ++c) {
      *RGBSEL = c;
      unsigned char *fb = (unsigned char*)display_framebuffer();
      fb[x*128 + y] = v;
    }
  }
}

static void render_image_stream(FL_FILE *img, int mode)
{
  long sz = file_size(img);
  int last_y_dst = -1;
  if (sz >= 128L * 128 * 4) {
    unsigned char row[128 * 4];
    for (int y = 0; y < 128; ++y) {
      if (fl_fread(row, 1, sizeof(row), img) != sizeof(row)) {
        break;
      }
      if (mode != 0) continue;
      int y_dst = (y * IMG_SIZE) / 128;
      if (y_dst != last_y_dst) {
        render_image_rgb_row(row, y_dst, 4);
        last_y_dst = y_dst;
      }
    }
  } else if (sz >= 128L * 128 * 3) {
    unsigned char row[128 * 3];
    for (int y = 0; y < 128; ++y) {
      if (fl_fread(row, 1, sizeof(row), img) != sizeof(row)) {
        break;
      }
      if (mode != 0) continue;
      int y_dst = (y * IMG_SIZE) / 128;
      if (y_dst != last_y_dst) {
        render_image_rgb_row(row, y_dst, 3);
        last_y_dst = y_dst;
      }
    }
  } else if (sz >= 128L * 128) {
    unsigned char row[128];
    for (int y = 0; y < 128; ++y) {
      if (fl_fread(row, 1, sizeof(row), img) != sizeof(row)) {
        break;
      }
      if (mode != 0) continue;
      int y_dst = (y * IMG_SIZE) / 128;
      if (y_dst != last_y_dst) {
        render_image_gray_row(row, y_dst);
        last_y_dst = y_dst;
      }
    }
  }
}

static void scan_files()
{
  file_count = 0;
  FL_DIR dirstat;
  if (fl_opendir(MUSIC_DIR, &dirstat)) {
    struct fs_dir_ent dirent;
    while (fl_readdir(&dirstat, &dirent) == 0 && file_count < MAX_FILES) {
      if (!dirent.is_dir) {
        if (streq(dirent.filename, EASTER_TRACK)) {
          continue;
        }
        int len = strlen(dirent.filename);
        if (len >= 4 &&
            dirent.filename[len-4] == '.' &&
            (dirent.filename[len-3] == 'r' || dirent.filename[len-3] == 'R') &&
            (dirent.filename[len-2] == 'a' || dirent.filename[len-2] == 'A') &&
            (dirent.filename[len-1] == 'w' || dirent.filename[len-1] == 'W')) {
          strncpy(files[file_count], dirent.filename, NAME_LEN-1);
          files[file_count][NAME_LEN-1] = 0;
          ++file_count;
        }
      }
    }
    fl_closedir(&dirstat);
  }
}

static void draw_menu(int selected)
{
  display_set_cursor(0,0);
  display_set_front_back_color(0,255);
  printf("    ==== player ====    \n\n");
  display_set_front_back_color(255,0);
  if (file_count == 0) {
    printf("no .raw in /music\n");
  } else {
    for (int i = 0; i < file_count; ++i) {
      if (i == selected) {
        display_set_front_back_color(0,255);
      } else {
        display_set_front_back_color(255,0);
      }
      printf("%d> %s\n", i, files[i]);
    }
  }
  display_refresh();
}

static int update_secret_sequence(int input)
{
  static const int seq[8] = {
    BTN_UP, BTN_UP, BTN_DOWN, BTN_DOWN, BTN_PREV, BTN_NEXT, BTN_PREV, BTN_NEXT
  };
  static int idx = 0;
  static int idle = 0;

  if (input == 0) {
    idle++;
    if (idle > 4000) { idx = 0; idle = 0; }
    return 0;
  }

  idle = 0;
  if (input == seq[idx]) {
    idx++;
    if (idx == 8) {
      idx = 0;
      return 1;
    }
  } else {
    idx = (input == seq[0]) ? 1 : 0;
  }
  return 0;
}

// display image for a given track if available, else show default /img/img.raw (no rotation)
static void show_image_for_fixed(const char *track)
{
  char path[NAME_LEN + 10];
  int l = 0;
  path[l++] = '/'; path[l++] = 'i'; path[l++] = 'm'; path[l++] = 'g'; path[l++] = '/';
  for (int i = 0; track[i] && l < (int)sizeof(path)-6; ++i) {
    path[l++] = track[i];
  }
  // replace ".raw" suffix by "_img.raw"
  if (l >= 4) {
    path[l-4] = '_';
    path[l-3] = 'i';
    path[l-2] = 'm';
    path[l-1] = 'g';
  }
  path[l++] = '.';
  path[l++] = 'r';
  path[l++] = 'a';
  path[l++] = 'w';
  path[l]   = 0;

  FL_FILE *img = fl_fopen(path, "rb");
  if (img == NULL) {
    img = fl_fopen("/img/img.raw", "rb");
    if (img == NULL) return;
  }
  render_image_stream(img, 0);
  fl_fclose(img);
  display_refresh();
}

// display image for a given track if available, else show default /img/img.raw
static void show_image_for(const char *track)
{
  char path[NAME_LEN + 10];
  int l = 0;
  path[l++] = '/'; path[l++] = 'i'; path[l++] = 'm'; path[l++] = 'g'; path[l++] = '/';
  for (int i = 0; track[i] && l < (int)sizeof(path)-6; ++i) {
    path[l++] = track[i];
  }
  // replace ".raw" suffix by "_img.raw"
  if (l >= 4) {
    path[l-4] = '_';
    path[l-3] = 'i';
    path[l-2] = 'm';
    path[l-1] = 'g';
  }
  path[l++] = '.';
  path[l++] = 'r';
  path[l++] = 'a';
  path[l++] = 'w';
  path[l]   = 0;

  // try specific image first
  FL_FILE *img = fl_fopen(path, "rb");
  if (img == NULL) {
    // fallback to default
    img = fl_fopen("/img/img.raw", "rb");
    if (img == NULL) return;
  }
  render_image_stream(img, 1);
  fl_fclose(img);
  display_refresh();
}

// clear framebuffer and refresh (avoids lingering image)
static void clear_screen()
{
  for (int c = 0; c < 3; ++c) {
    *RGBSEL = c;
    unsigned char *fb = (unsigned char*)display_framebuffer();
    memset(fb, 0, 128*128);
  }
  display_refresh();
}

// play selected file; returns -1 prev, 0 stop, 1 next, 2 done
static int play_file(const char *filename)
{
  char path[NAME_LEN + 10];
  int l = 0;
  path[l++] = '/'; path[l++] = 'm'; path[l++] = 'u'; path[l++] = 's'; path[l++] = 'i'; path[l++] = 'c'; path[l++] = '/';
  for (int i = 0; filename[i] && l < (int)sizeof(path)-1; ++i) {
    path[l++] = filename[i];
  }
  path[l] = 0;

  FL_FILE *f = fl_fopen(path, "rb");
  if (f == NULL) {
    display_set_front_back_color(255,0);
    printf("\n%s not found\n", filename);
    display_refresh();
    return 0;
  }
  char title[26];
  build_title(filename, title, (int)sizeof(title));
  // visual cue even si pas de son (affiche /img/img.raw si présent)
  int skip_image = g_skip_image;
  g_skip_image = 0;
#if ENABLE_LOADING_MESSAGE
  if (!skip_image) {
    clear_screen();
    show_hourglass();
  }
#endif
  if (!skip_image) {
    show_image_for_fixed(filename);
  }

  clear_audio();
  *VOLUME = g_volume;
  set_volume_leds(g_volume);

  long total_bytes = file_size(f);
  long bytes_read = 0;
  int paused = 0;
  update_ui(title, bytes_read, total_bytes, paused);

  int prev_btns = read_buttons();
  int hold_up_samples = 0;
  int hold_down_samples = 0;
  int repeat_up_samples = 0;
  int repeat_down_samples = 0;
  int current_btns = prev_btns;
  int buffer_count = 0;
  while (1) {
    int *addr = (int*)(*AUDIO);
    int sz = 0;
    if (paused) {
      for (int i = 0; i < 512; ++i) { ((unsigned char*)addr)[i] = 128; }
      sz = 512;
    } else {
      sz = fl_fread(addr, 1, 512, f);
      if (sz <= 0) break;
      bytes_read += sz;
      for (int i = sz; i < 512; ++i) { ((unsigned char*)addr)[i] = 128; }
    }

    while (addr == (int*)(*AUDIO)) {
      int btns = read_buttons();
      current_btns = btns;
      int rising = btns & (~prev_btns);
      prev_btns = btns;
      if (rising & (1<<BTN_PLAYPAUSE)) {
        paused = !paused;
        if (paused) {
          clear_audio();
        }
        update_ui(title, bytes_read, total_bytes, paused);
      }
      if (rising & (1<<BTN_PREV)) {
        if (bytes_read < (SAMPLE_RATE_HZ * 2)) {
          fl_fclose(f);
          clear_audio();
          clear_screen();
          return -1;
        } else {
          fl_fseek(f, 0, SEEK_SET);
          bytes_read = 0;
          update_ui(title, bytes_read, total_bytes, paused);
        }
      }
      if (rising & (1<<BTN_NEXT)) {
        fl_fclose(f);
        clear_audio();
        clear_screen();
        return 1;
      }
      if (rising & (1<<BTN_UP)) {
        if (g_volume < 8) { g_volume++; }
        *VOLUME = g_volume;
        set_volume_leds(g_volume);
      }
      if (rising & (1<<BTN_DOWN)) {
        if (g_volume > 0) { g_volume--; }
        *VOLUME = g_volume;
        set_volume_leds(g_volume);
      }
      if (rising & (1<<BTN_PLAY)) {
        fl_fclose(f);
        clear_audio(); // stop immediately
        clear_screen(); // prepare screen for menu redraw
        return 0;
      }
    }

    if (current_btns & (1<<BTN_UP)) {
      hold_up_samples += AUDIO_BUFFER_SAMPLES;
      if (hold_up_samples >= REPEAT_DELAY_SAMPLES) {
        repeat_up_samples += AUDIO_BUFFER_SAMPLES;
        while (repeat_up_samples >= REPEAT_PERIOD_SAMPLES) {
          if (g_volume < 8) { g_volume++; }
          *VOLUME = g_volume;
          set_volume_leds(g_volume);
          repeat_up_samples -= REPEAT_PERIOD_SAMPLES;
        }
      }
    } else {
      hold_up_samples = 0;
      repeat_up_samples = 0;
    }

    if (current_btns & (1<<BTN_DOWN)) {
      hold_down_samples += AUDIO_BUFFER_SAMPLES;
      if (hold_down_samples >= REPEAT_DELAY_SAMPLES) {
        repeat_down_samples += AUDIO_BUFFER_SAMPLES;
        while (repeat_down_samples >= REPEAT_PERIOD_SAMPLES) {
          if (g_volume > 0) { g_volume--; }
          *VOLUME = g_volume;
          set_volume_leds(g_volume);
          repeat_down_samples -= REPEAT_PERIOD_SAMPLES;
        }
      }
    } else {
      hold_down_samples = 0;
      repeat_down_samples = 0;
    }

    buffer_count++;
    if (!paused && (buffer_count & 3) == 0) {
      update_progress_only(bytes_read, total_bytes);
    }
  }
  fl_fclose(f);
  clear_audio(); // ensure silence and clean state
  clear_screen(); // clean image before returning to menu
  display_set_front_back_color(255,0);
  printf("done.\n");
  display_refresh();
  return 2;
}

void main()
{
  *LEDS = 0;
  *VOLUME = g_volume;
  f_putchar = display_putchar;
  oled_init();
  oled_fullscreen();
  oled_clear(0);

  sdcard_init();
  fl_init();
  int spin = 0;
#if ENABLE_LOADING_MESSAGE
  clear_screen();
  show_hourglass();
#endif
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    if (ENABLE_LOADING_MESSAGE && (spin & 0x3FF) == 0) {
      show_hourglass();
    }
    spin++;
    // retry until success
  }
  clear_audio();

  scan_files();
  int selected = 0;
  int prev_btns = read_buttons();
  int need_clear = 1; // clear once before first menu

  while (1) {
    if (need_clear) {
      clear_screen();
      need_clear = 0;
    }
    draw_menu(selected);
    int btns = read_buttons();
    int rising = btns & (~prev_btns);

    int secret_input = 0;
    if (rising & (1<<BTN_UP)) { secret_input = BTN_UP; }
    else if (rising & (1<<BTN_DOWN)) { secret_input = BTN_DOWN; }
    else if (rising & (1<<BTN_PREV)) { secret_input = BTN_PREV; }
    else if (rising & (1<<BTN_NEXT)) { secret_input = BTN_NEXT; }
    if (update_secret_sequence(secret_input)) {
      g_skip_image = 1;
      show_easter_ascii();
      play_file(EASTER_TRACK);
      need_clear = 1;
      prev_btns = btns;
      continue;
    }

    if (rising & (1<<BTN_UP)) {
      if (file_count) { selected = (selected - 1 + file_count) % file_count; }
    }
    if (rising & (1<<BTN_DOWN)) {
      if (file_count) { selected = (selected + 1) % file_count; }
    }
    if ((rising & (1<<BTN_PLAY)) && file_count > 0) {
      int action = play_file(files[selected]);
      while ((action == 1 || action == -1) && file_count > 0) {
        if (action == 1) {
          selected = (selected + 1) % file_count;
        } else if (action == -1) {
          selected = (selected - 1 + file_count) % file_count;
        }
        action = play_file(files[selected]);
      }
      need_clear = 0; // play_file clears when exiting on stop; no extra clear
    }

    prev_btns = btns;
  }
}
