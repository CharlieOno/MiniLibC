global strchr:
	section .text

strchr:
	mov al, [rdi]
	cmp al, sil
	je success
	cmp al, 0
	je fail
	inc rdi
	jmp strchr

success:
	mov rax, rdi
	ret

fail:
	xor rax, rax
	ret