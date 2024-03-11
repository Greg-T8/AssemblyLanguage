.global _start

.section .text

_start:
    # Perform various arithmetic functions
    movq $3, %rdi   # %rdi = 3
    movq %rdi, %rax # %rdi = 3, %rax = 3
    addq %rdi, %rax # %rdi = 3, %rax = 6
    mulq %rdi       # %rdi = 9, %rax = 6
    movq $2, %rdi   # %rdi = 2
    addq %rdi, %rax # %rdi = 2, %rax = 8
    movq $4, %rdi   # %rdi = 4, %rax = 8
    mulq %rdi       # %rdi = 16, %rax = 8
    movq %rax, %rdi # %rdi = 8, %rax = 8

    # Set the exit system call number
    movq $60, %rax  # %rax = 60

    # Perform the system call
    syscall

