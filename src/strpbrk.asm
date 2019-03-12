global strpbrk:
	section .text

strpbrk:
	xor rax, rax
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
	je fail
	xor rcx, rcx
	jmp comp

next:
    inc rdi
	jmp loop

fail:
	mov rax, 0
	ret

end:
	mov rax, rdi
	ret