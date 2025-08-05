[org 0x7c00]
mov bp, 0x8000
mov sp, bp

mov bx, 0x9000
mov dh, 2 ; sector
call disk_load

mov dx, [0x9000]
call print_hex

mov dx, [0x9000 + 512]
call print_hex

jmp $

%include "bootsect/print.asm"
%include "bootsect/print_hex.asm"
%include "bootsect/disk.asm"

times 510-($-$$) db 0
dw 0xaa55


times 256 dw 0xdada
times 256 dw 0xface
