section .data
  msg db "Hello, World!", 0ah, 0h
  len equ $ - msg

section .bss

section .text
  global _start

_start:
  mov       rax,        1       ; write
  mov       rdi,        0       ; fd
  mov       rsi,        msg     ; buffer
  mov       rdx,        len     ; bytes
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
