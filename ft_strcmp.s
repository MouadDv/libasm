global      _ft_strcmp

section     .text
            
_ft_strcmp:
            mov rax, 0
            jmp fnct
fnct:
            mov cl, BYTE[rdi + rax]
            mov bl, BYTE[rsi + rax]
            cmp cl, 0
            je  end
            jmp loop

loop:
            cmp cl, bl
            jne end
            inc rax
            jmp fnct
end:
            movzx rax, cl
            movzx r8, bl
            sub rax, r8
            ret