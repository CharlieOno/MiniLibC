global rindex:
	section .text

rindex:
    push rbp
    xor rbp, rbp
    xor rax, rax

loop:
	mov al, [rdi]
	cmp al, sil
	je success
endsuccess:
    cmp al, 0
	je end
	inc rdi
	jmp loop

success:
	mov rbp, rdi
    jmp endsuccess

end:
    mov rax, rbp
    pop rbp
	ret