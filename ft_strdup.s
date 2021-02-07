extern _malloc
extern _ft_strlen
extern _ft_strcpy
extern ___error
global  _ft_strdup

section     .text
            
_ft_strdup:
            call _ft_strlen
            push rdi
            inc rax
            mov rdi, rax
            call _malloc
            cmp rax, 0
            je err
            mov rdi, rax
            pop rsi
            call _ft_strcpy
            ret

err:        call ___error
            mov rax, 12
            mov [rax], rcx
            mov rax, 0
            ret