global ft_strcmp

ft_strcmp:
    xor rax, rax          
.loop:
    mov r15b, BYTE [rdi + rax] 
    mov r14b, BYTE [rsi + rax] 
    
    cmp r15b, 0          
    jz .done             
    cmp r14b, 0          
    jz .done             
    cmp r14b, r15b      
    jne .done            
    
    inc rax              
    jmp .loop            
.done:
    movzx rax, r15b      
    movzx r8, r14b
    sub rax, r8        
    
    ret                  

section .note.GNU-stack

