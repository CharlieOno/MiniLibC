global strncmp:
	section .text

strncmp:
	xor rcx, rcx
	cmp rdx, 0
	je invalid

loop:
	mov al, [rdi + rcx]
	mov ah, [rsi + rcx]
	cmp al, 0
	je result
	cmp ah, 0
	je result
	cmp al, ah
	jne result
	inc rcx
	cmp rcx, rdx
	je result
	jmp loop

result:
	sub al, ah
	movsx rax, al
	ret

invalid:
	xor rax, rax
	ret