global ft_strcpy

ft_strcpy:
	xor rax, rax		
.loop:
	mov r15b, BYTE[rsi + rax]
	cmp r15b, 0
	jz .done
	mov BYTE[rdi + rax], r15b
	inc rax
	jmp .loop
.done:
	mov BYTE[rdi + rax], 0
	mov rax, rdi
	ret
section .note.GNU-stack

