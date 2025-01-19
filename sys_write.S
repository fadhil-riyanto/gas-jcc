        .globl write_ok
        .globl write_noo
        .globl write_nop

        .section .data
        ok_str: .asciz "ok\n"
        no_str: .asciz "noo\n"
        nop_str: .asciz "nop\n"

        .section .text
write_ok:
        movq $1, %rax
        movq $1, %rdi
        leaq ok_str(%rip), %rsi 
        movq $3, %rdx
        syscall
        ret


write_noo:
        movq $1, %rax
        movq $1, %rdi
        leaq no_str(%rip), %rsi 
        movq $4, %rdx
        syscall
        ret
        

write_nop:
        movq $1, %rax
        movq $1, %rdi
        leaq nop_str(%rip), %rsi 
        movq $4, %rdx
        syscall
        ret
        