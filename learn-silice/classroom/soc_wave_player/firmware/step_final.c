// Minimal final firmware: menu of music files and playback
// Folders:
//   /music : contains .raw files (PCM mono 8-bit 8 kHz)
// Controls:
//   B3 = up, B4 = down, B1 = play selected
// Notes:
//   - Buttons 3/4 are swapped on hardware, we remap them here.
//   - No images/volume/next/prev yet; add later once this base works.

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"

#include "fat_io_lib/src/fat_filelib.h"
#include <string.h>

#define MAX_FILES 16
#define NAME_LEN  64
#define MUSIC_DIR "/music"
#define IMG_DIR   "/img"

static char files[MAX_FILES][NAME_LEN];
static int  file_count = 0;

// Logical bits after remap
#define BTN_PLAY   0  // B1 (raw0)
#define BTN_UP     3  // B3 (raw3)
#define BTN_DOWN   4  // B4 (raw4)

// Remap raw BUTTONS to logical (swap raw3/raw4 if needed)
static inline int read_buttons()
{
  int b = *BUTTONS;
  int up    = (b >> 3) & 1; // raw3
  int down  = (b >> 4) & 1; // raw4
  int out   = b & ~((1<<3)|(1<<4));
  out |= (up<<3) | (down<<4);
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

// show image named "<filename>.img" in /img (128x128 8-bit grayscale)
static void show_image(const char *filename)
{
  char path[NAME_LEN + 10];
  int l = 0;
  path[l++] = '/'; path[l++] = 'i'; path[l++] = 'm'; path[l++] = 'g'; path[l++] = '/';
  for (int i = 0; filename[i] && l < (int)sizeof(path)-6; ++i) {
    path[l++] = filename[i];
  }
  path[l++] = '.';
  path[l++] = 'i';
  path[l++] = 'm';
  path[l++] = 'g';
  path[l++] = 0;

  FL_FILE *img = fl_fopen(path, "rb");
  if (img == NULL) {
    return;
  }
  unsigned char *fb = (unsigned char*)display_framebuffer();
  memset(fb, 0, 128*128);
  fl_fread(fb, 1, 128*128, img);
  fl_fclose(img);
  display_refresh();
}

// play selected file; returns when done or error
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

  // show associated image if present
  show_image(filename);

  clear_audio();

  int prev_btns = read_buttons();
  while (1) {
    int *addr = (int*)(*AUDIO);
    int sz = fl_fread(addr, 1, 512, f);
    if (sz <= 0) break;

    // pad if partial last block
    for (int i = sz; i < 512; ++i) { ((unsigned char*)addr)[i] = 128; }

    // wait buffer swap, allow abort with B1 (play) to stop
    while (addr == (int*)(*AUDIO)) {
      int btns = read_buttons();
      int rising = btns & (~prev_btns);
      prev_btns = btns;
      if (rising & (1<<BTN_PLAY)) { fl_fclose(f); return; }
    }
  }
  fl_fclose(f);
  display_set_front_back_color(255,0);
  printf("done.\n");
  display_refresh();
}

void main()
{
  *LEDS = 0;
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

  while (1) {
    draw_menu(selected);
    int btns = read_buttons();
    int rising = btns & (~prev_btns);

    if (rising & (1<<BTN_UP)) {
      if (file_count) { selected = (selected - 1 + file_count) % file_count; }
    }
    if (rising & (1<<BTN_DOWN)) {
      if (file_count) { selected = (selected + 1) % file_count; }
    }
    // lancement sur front (impulsion) de B1
    if ((rising & (1<<BTN_PLAY)) && file_count > 0) {
      play_file(files[selected]);
      oled_clear(0);
    }

    prev_btns = btns;
  }
}
