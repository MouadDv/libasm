extern ___error
global      _ft_write
section     .text
_ft_write:  mov rax, 0x02000004
            syscall
            jc err
            ret

err:        push rax
            call ___error
            pop r10
            mov [rax], r10
            mov rax, -1
            ret