        .extern func

        .section .text
        .global _start
_start:
        call func
        movq %rax, %rdi
        movq $60, %rax
        syscall