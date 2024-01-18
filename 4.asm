section .data
  path      db          "file.txt", 0h

section .bss
  stat      resb        144

section .text
  global _start

_start:
  mov       rax,        4       ; stat
  xor       rdi,        path    ; path
  mov       rsi,        stat    ; statbuf
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
