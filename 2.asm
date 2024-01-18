section .data
  path db "file.txt", 0h

section .bss

section .text
  global _start

_start:
  mov       rax,        2       ; open
  mov       rdi,        path    ; path
  xor       rsi,        rsi     ; mode
  mov       rdx,        0666    ; permissions
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
