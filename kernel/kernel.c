#include "../drivers/screen.h"

int main() {
  clear_screen();

  kprint("os-learning project\n");
  kprint("Kernel Loaded.");

  return 0;
}
