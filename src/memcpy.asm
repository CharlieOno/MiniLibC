global memcpy:
	section .text

memcpy:
	xor rcx, rcx ; i
	mov rax, rdi

loop:
	cmp rdx, rcx
	je end
	mov al, [rsi + rcx]
	mov [rdi + rcx], al
	inc rcx
	jmp loop

end:
	mov rax, rdi
	ret