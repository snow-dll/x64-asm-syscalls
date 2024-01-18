section .data

section .bss

section .text
  global _start

_start:
  sub       rsp,        0x100
  xor       rax,        rax       ; open
  xor       rdi,        rdi       ; fd
  mov       rsi,        rsp       ; buffer
  mov       rdx,        0x100     ; bytes
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
