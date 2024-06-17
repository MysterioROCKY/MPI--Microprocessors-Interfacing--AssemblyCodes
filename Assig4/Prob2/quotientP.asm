global quotientP
section .text

quotientP:
	mov r8, rdi ; Initialize r8 with a (rdi)
	mov r9, rsi ; Initialize r9 with b (rsi)
	mov rcx, 1  ; Initialize loop counter rcx to 1
	mov rdx, 1  ; Initialize loop counter rdx to 1

asquare:
	cmp rcx, rdi ; Compare rcx with rdi (a)
	jge af       ; If rcx >= rdi, jump to 'af' to exit the loop
	add r8, rdi  ; Increment r8 by rdi (a)
	inc rcx      ; Increment rcx
	jmp asquare  ; Jump back to 'asquare' to continue the loop

af:
	mov r10, r8 ; Store the value of r8 (a) in r10
	mov rcx, 1  ; Reset rcx to 1

acube:
	cmp rcx, rdi ; Compare rcx with rdi (a)
	jge bsquare   ; If rcx >= rdi, jump to 'bsquare' to start the next loop
	add r8, r10   ; Increment r8 by r10 (a^2)
	inc rcx       ; Increment rcx
	jmp acube     ; Jump back to 'acube' to continue the loop

bsquare:
	cmp rdx, rsi ; Compare rdx with rsi (b)
	jge bf       ; If rdx >= rsi, jump to 'bf' to exit the loop
	add r9, rsi  ; Increment r9 by rsi (b)
	inc rdx      ; Increment rdx
	jmp bsquare  ; Jump back to 'bsquare' to continue the loop

bf:
	mov r10, r9 ; Store the value of r9 (b) in r10
	mov rdx, 1  ; Reset rdx to 1

bcube:
	cmp rdx, rsi ; Compare rdx with rsi (b)
	jge next     ; If rdx >= rsi, jump to 'next' to proceed with subtraction
	add r9, r10   ; Increment r9 by r10 (b^2)
	inc rdx       ; Increment rdx
	jmp bcube     ; Jump back to 'bcube' to continue the loop

next:
	sub r8, r9  ; Calculate a^3 - b^3 and store it in r8
	mov rcx, 0  ; Reset rcx to 0
	mov rdx, 0  ; Reset rdx to 0
	mov r10, 0  ; Reset r10 to 0

add:
	mov r10, rdi   ; Copy rdi (a) to r10
	mov r11, rsi   ; Copy rsi (b) to r11
	add r10, r11   ; Calculate a + b and store it in r10
	mov rdx, r10   ; Copy a + b to rdx
divide:
	cmp r10, r8    ; Compare r10 (a + b) with r8 (a^3 - b^3)
	jge move       ; If a + b >= a^3 - b^3, jump to 'move'
	add r10, rdx   ; Increment r10 by a + b (a + b)
	inc rcx         ; Increment rcx
	jmp divide      ; Jump back to 'divide' to continue the loop
move:
	mov rax, rcx    ; Copy the result from rcx to rax
	ret             ; Return the result
