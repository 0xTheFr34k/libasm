extern malloc
extern ft_strlen
extern ft_strcpy

global ft_strdup
ft_strdup:
    mov r15, rdi           
    call ft_strlen         
    mov rdi, rax
    inc rdi                
    call malloc WRT ..plt  
    test rax, rax          
    jz .return_null        

    mov rdi, rax           
    mov rsi, r15           
    call ft_strcpy         

.return_null:
    mov rax, 0             
    ret

