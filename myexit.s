# myexit.s
# My first assembly program

.global _start

.section .text

_start:
    movq $60, %rax
    movq $3, %rdi
    syscall
