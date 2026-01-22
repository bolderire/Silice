// Minimal project firmware: menu of .raw files in /music, play on B1
// Borrowed patterns from step3_menu and step4_list_files

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

static char files[MAX_FILES][NAME_LEN];
static int  file_count = 0;

#define BTN_PLAY   1  // play (raw1)
#define BTN_UP     3  // B3 (raw3)
#define BTN_DOWN   4  // B4 (raw4)

static int g_volume = 4; // initial volume

#define SAMPLE_RATE_HZ 8000 
#define REPEAT_DELAY_SAMPLES  (SAMPLE_RATE_HZ/3)  // 300ms
#define REPEAT_PERIOD_SAMPLES (SAMPLE_RATE_HZ/10) // 100ms
#define AUDIO_BUFFER_SAMPLES  512

static inline int read_buttons()
{
  int b = *BUTTONS;
  int play  = (b >> 1) & 1; // raw1
  int up    = (b >> 3) & 1; // raw3
  int down  = (b >> 4) & 1; // raw4
  int out   = 0;
  out |= (play<<BTN_PLAY);
  out |= (up<<BTN_UP);
  out |= (down<<BTN_DOWN);
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

static long file_size(FL_FILE *f)
{
  fl_fseek(f, 0, SEEK_END);
  long sz = fl_ftell(f);
  fl_fseek(f, 0, SEEK_SET);
  return sz;
}

static void render_image_rgb(const unsigned char *row, int y_src, int mode, int bpp)
{
  unsigned char rline[128];
  unsigned char gline[128];
  unsigned char bline[128];

  for (int x = 0; x < 128; ++x) {
    int base = x * bpp;
    rline[x] = row[base + 0];
    bline[x] = row[base + 1];
    gline[x] = row[base + 2];
  }

  for (int c = 0; c < 3; ++c) {
    *RGBSEL = c;
    unsigned char *fb = (unsigned char*)display_framebuffer();
    for (int x = 0; x < 128; ++x) {
      int dest_y = x;
      int dest_x = y_src;
      if (mode != 0) {
        dest_x = 127 - y_src;
      }
      int dest   = dest_y * 128 + dest_x;
      unsigned char v = (c == 0) ? rline[x] : (c == 1) ? gline[x] : bline[x];
      fb[dest] = v;
    }
  }
}

static void render_image_gray(const unsigned char *row, int y_src, int mode)
{
  for (int c = 0; c < 3; ++c) {
    *RGBSEL = c;
    unsigned char *fb = (unsigned char*)display_framebuffer();
    for (int x = 0; x < 128; ++x) {
      int dest_y = x;
      int dest_x = y_src;
      if (mode != 0) {
        dest_x = 127 - y_src;
      }
      int dest   = dest_y * 128 + dest_x;
      fb[dest] = row[x];
    }
  }
}

static void render_image_stream(FL_FILE *img, int mode)
{
  long sz = file_size(img);
  if (sz >= 128L * 128 * 4) {
    unsigned char row[128 * 4];
    for (int y = 0; y < 128; ++y) {
      if (fl_fread(row, 1, sizeof(row), img) != sizeof(row)) {
        break;
      }
      render_image_rgb(row, y, mode, 4);
    }
  } else if (sz >= 128L * 128 * 3) {
    unsigned char row[128 * 3];
    for (int y = 0; y < 128; ++y) {
      if (fl_fread(row, 1, sizeof(row), img) != sizeof(row)) {
        break;
      }
      render_image_rgb(row, y, mode, 3);
    }
  } else if (sz >= 128L * 128) {
    unsigned char row[128];
    for (int y = 0; y < 128; ++y) {
      if (fl_fread(row, 1, sizeof(row), img) != sizeof(row)) {
        break;
      }
      render_image_gray(row, y, mode);
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

// play selected file; returns when done
static void play_file(const char *filename)
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
    return;
  }
  display_set_front_back_color(0,255);
  printf("\nplaying %s ...\n", filename);
  display_refresh();

  // visual cue even si pas de son (affiche /img/img.raw si présent)
  show_image_for_fixed(filename);

  clear_audio();
  *VOLUME = g_volume;
  set_volume_leds(g_volume);

  int prev_btns = read_buttons();
  int hold_up_samples = 0;
  int hold_down_samples = 0;
  int repeat_up_samples = 0;
  int repeat_down_samples = 0;
  int current_btns = prev_btns;
  while (1) {
    int *addr = (int*)(*AUDIO);
    int sz = fl_fread(addr, 1, 512, f);
    if (sz <= 0) break;
    for (int i = sz; i < 512; ++i) { ((unsigned char*)addr)[i] = 128; }

    while (addr == (int*)(*AUDIO)) {
      int btns = read_buttons();
      current_btns = btns;
      int rising = btns & (~prev_btns);
      prev_btns = btns;
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
        return;
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
  }
  fl_fclose(f);
  clear_audio(); // ensure silence and clean state
  display_set_front_back_color(255,0);
  printf("done.\n");
  display_refresh();
}

void main()
{
  *LEDS = 0;
  *VOLUME = g_volume;
  f_putchar = display_putchar;
  oled_init();
  oled_fullscreen();
  oled_clear(0);

  display_set_cursor(0,0);
  display_set_front_back_color(255,0);
  printf("init sd ... ");
  display_refresh();

  sdcard_init();
  fl_init();
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // retry until success
  }
  clear_audio();
  printf("ok\n");
  display_refresh();

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

    if (rising & (1<<BTN_UP)) {
      if (file_count) { selected = (selected - 1 + file_count) % file_count; }
    }
    if (rising & (1<<BTN_DOWN)) {
      if (file_count) { selected = (selected + 1) % file_count; }
    }
    if ((rising & (1<<BTN_PLAY)) && file_count > 0) {
      play_file(files[selected]);
      need_clear = 0; // play_file clears when exiting on stop; no extra clear
    }

    prev_btns = btns;
  }
}
