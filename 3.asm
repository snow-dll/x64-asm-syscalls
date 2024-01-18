section .data

section .bss

section .text
  global _start

_start:
  mov       rax,        3       ; close
  xor       rdi,        rdi     ; fd
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
