global      _ft_strlen
section     .text
_ft_strlen: mov rax, 0
            mov cl, BYTE [rdi + rax]
            cmp cl, 0
            je _ret
            jmp loop

loop:       inc rax
            mov cl, BYTE [rdi + rax]
            cmp cl, 0
            je _ret
            jmp loop

_ret:        ret