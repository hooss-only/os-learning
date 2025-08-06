print:
  pusha

start:
  mov al, [bx]
  cmp al, 0 ; al이 null 문자라면 ( 문자열의 끝 )
  je done

  mov ah, 0x0e
  int 0x10 ; al이 이미 문자를 가지고 있음

  add bx, 1
  jmp start ; loop


done:
  popa
  ret

print_nl:
  pusha

  mov ah, 0x0e
  mov al, 0x0a
  int 0x10
  mov al, 0x0d
  int 0x10

  popa
  ret


