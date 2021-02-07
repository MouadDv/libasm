global      _ft_strcpy

section     .text
            
_ft_strcpy:
            mov rax, 0
            jmp fnct
fnct:
            mov bl, BYTE[rsi + rax] ;src
            cmp bl, 0
            je  end
            jmp loop

loop:
            mov BYTE[rdi + rax], bl
            inc rax
            jmp fnct
end:
            mov BYTE[rdi + rax], 0
            mov rax, rdi
            ret