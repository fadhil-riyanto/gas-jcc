        .section .data
        ok_str: .asciz "ok\n"
        noo_str: .asciz "noo\n"

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
        leaq noo_str(%rip), %rsi 
        movq $4, %rdx
        syscall
        ret
