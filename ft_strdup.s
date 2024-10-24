extern ft_strcpy
extern malloc
extern ft_strlen
global ft_strdup

ft_strdup:
	push rdi
	call ft_strlen
	inc rax
	mov rdi, rax
	call malloc  WRT ..plt
	test rax, rax
	jz .done
	mov rdi, rax 
	pop rsi
	call ft_strcpy
	ret
.done:
	mov rax, 0
	ret 

section .note.GNU-stack
