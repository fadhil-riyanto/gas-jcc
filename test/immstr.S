        .section .data 
        mystr: .string "this\n"

        .section .text
_start:
        movq $1, %rax
        movq $1, %rdi 
        leaq mystr(%rip), %rsi
        movq $5, %rdx
        syscall
        call _sys_exit


_sys_exit:
        movq $60, %rax
        movq $0, %rsi
        syscall