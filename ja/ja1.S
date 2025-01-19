        .include "sys_write.S"

        .section .text
        
_start:
        call write_noo
        call _sys_exit


_sys_exit:
        movq $60, %rax
        movq $0, %rsi
        syscall