.global _start

.section .text

_start:
    # Perform various arithmetic functions
    movq $3, %rdi               # %rdi = 3
    movq %rdi, %rax             # %rdi = 3, %rax = 3
    addq %rdi, %rax             # %rdi = 3, %rax = 6
    mulq %rdi                   # %rdi = 3, %rax = 18
    movq $2, %rdi               # %rdi = 2
    addq %rdi, %rax             # %rdi = 2, %rax = 20
    movq $4, %rdi               # %rdi = 4, %rax = 20
    mulq %rdi                   # %rdi = 4, %rax = 80
    movq %rax, %rdi             # %rdi = 80, %rax = 80
    movq $0, %rdx               # %rdx = 0
    movq $20, %rdi              # %rdi = 20, %rax = 80, %rdx = 0
    divq %rdi                   # %rax = 4, %rdi = 20, %rdx = 0

    # Set the exit system call number
    movq $60, %rax              # %rax = 60

    # Perform the system call
    syscall

