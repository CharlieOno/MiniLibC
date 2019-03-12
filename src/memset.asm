global memset:
	section .text

memset:
	xor rcx, rcx ; i
	mov rax, rdi

loop:
	cmp rdx, rcx
	je end
	mov [rax], sil
	inc rcx
	inc rax
	jmp loop

end:
	mov rax, rdi
	ret