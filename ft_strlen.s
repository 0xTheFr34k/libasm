global ft_strlen

ft_strlen:
	xor rax, rax
.loop:
	mov r15b, BYTE[rdi + rax]	
	cmp r15b, 0
	jz .done
	inc rax
	jmp .loop
.done:
	ret
section .note.GNU-stack

