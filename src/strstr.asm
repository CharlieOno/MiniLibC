global strstr:
	section .text

strstr:
	mov al, [rdi]
	xor rcx, rcx
	jmp loop

next:
	cmp al, 0
	je fail
	inc rdi
	xor rcx, rcx

loop:
	mov al, [rdi + rcx]
	mov ah, [rsi + rcx]
	cmp ah, 0
	je success
	cmp al, ah
	jne next
	inc rcx
	jmp loop

success:
	mov rax, rdi
	ret

fail:
	xor rax, rax
	ret