        .globl _start
        .section .text
        
_start:
        movb $4, %al
        movb $11, %cl

        /* CMP r/m8, r8 
           Compare r8 with r/m8.

           in this case, 11 compared with 4, which 
           11 > 4 = true
        */

        cmpb %al, %cl
        ja w_ok
        call write_nop
        call _sys_exit
w_ok:
        call write_ok
        call _sys_exit

_sys_exit:
        movq $60, %rax
        movq $0, %rsi
        syscall
