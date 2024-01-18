section .data
  path      db          "file.txt", 0h

section .bss
  stat      resb        144

section .text
  global _start

_start:
  mov       rax,        2
  mov       rdi,        path
  xor       rsi,        rsi
  mov       rdx,        0666
  syscall

  mov       rdi,        rax     ; fd
  mov       rax,        8       ; lseek
  mov       rsi,        3       ; offset
  mov       rdx,        0       ; whence
  syscall

_exit:
  mov       rax,        60
  xor       rdi,        rdi
  syscall
