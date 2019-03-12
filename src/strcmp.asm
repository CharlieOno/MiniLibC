global strcmp:
	section .text

strcmp:
	mov al, [rdi]
	mov ah, [rsi]
	cmp al, 0
	je result
	cmp ah, 0
	je result
	cmp al, ah
	jne result
	inc rdi
	inc rsi
	jmp strcmp

result:
	cmp al, ah
	ja superior
	cmp al, ah
	jb inferior
	cmp al, ah
	je equal

superior:
	mov rax, 1
	ret

inferior:
	mov rax, -1
	ret

equal:
	mov rax, 0
	ret