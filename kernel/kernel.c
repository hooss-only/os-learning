#include "../cpu/isr.h"
#include "../drivers/screen.h"
#include "../libc/string.h"

int main() {
  isr_install();
  iqr_install();

  kprint("> ");
  return 0;
}

void user_input(char* input) {
  if (!strcmp(input, "END")) {
    kprint("Stopping the CPU. Bye!\n");
    asm volatile("hlt");
  }

  kprint("You typed: ");
  kprint(input);
  kprint("\n> ");
}
