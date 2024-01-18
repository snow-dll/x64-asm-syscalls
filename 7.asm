section .data
  path      db          "file", 0h

section .bss
  stat      resb        144

section .text
  global _start

_start:
  mov       rax,        6
  mov       rdi,        path
  mov       rsi,        stat
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
