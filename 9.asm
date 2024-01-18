section .data
  path      db          "file", 0h

section .bss
  stat      resb        144

section .text
  global _start

_start:
  mov       rax,        2
  mov       rdi,        path
  xor       rsi,        rsi
  mov       rdx,        syscall

  mov       rdi,        rax
  mov       rax,        5
  mov       rsi,        stat
  syscall

  mov       r10,        rax       ; fd
  mov       rax,        9         ; mmap
  mov       rdi,        0         ; address
  mov       rsi,        
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
