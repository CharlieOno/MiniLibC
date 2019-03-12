global strcasecmp:
	section .text

strcasecmp:
	xor rcx, rcx

loop:
	mov al, [rdi + rcx]
	mov ah, [rsi + rcx]
	jmp comp
endcomp:
	cmp al, 0
	je result
	cmp ah, 0
	je result
	cmp al, ah
	jne result
	inc rcx
	jmp loop

toupper2:
	add ah, 32
	jmp endcomp

comp4:
	cmp ah, 91
	jb toupper2
	jmp endcomp

comp3:
	cmp ah, 64
	ja comp4
	jmp endcomp

toupper1:
	add al, 32
	jmp comp3

comp2:
	cmp al, 91
	jb toupper1
	jmp comp3

comp:
	cmp al, 64
	ja comp2
	jmp comp3

result:
	sub al, ah
	movsx rax, al
	ret