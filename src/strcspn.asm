global strcspn:
	section .text

strcspn:
	push rbp
	xor rax, rax
	xor rbp, rbp
	jmp loop

comp:
	mov ah, BYTE [rsi + rcx]
	cmp ah, 0
	je next
	mov al, BYTE [rdi]
	cmp al, [rsi + rcx]
	je end
	inc rcx
	jmp comp

loop:
	cmp BYTE [rdi], 0
	je end
	xor rcx, rcx
	jmp comp

next:
	inc rdi
	inc rbp
	jmp loop

end:
	mov rax, rbp
	pop rbp
	ret