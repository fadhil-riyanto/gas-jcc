        .globl _start
        .section .text
        
_start:
        movb $10, %al
        movb $3, %cl

        /* CMP r/m8, r8 
           Compare r8 with r/m8.

           in this case, 3 compared with 10, which 
           3 > 10 = false
           3 - 10 = -7 (CF = 1, ZF=0)

           REF: https://masm32.com/board/index.php?topic=7919.0
        */

        cmpb  %al, %cl
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
