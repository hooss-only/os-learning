[org 0x7c00]

mov bx, HELLO
call print
call print_nl

mov bx, BYE
call print
call print_nl

jmp $

%include "bootsect/print.asm"

HELLO:
  db 'Hello, world', 0

BYE:
  db 'Good Bye', 0

times 510-($-$$) db 0
dw 0xaa55

