global PrimeNo
section .text

PrimeNo:
	xor rcx, rcx      ; Initialize rcx to 0 (counter for prime numbers)
	cmp rsi, $0       ; Check if n is 0
	je end            ; If n==0, jump to end
	mov rax, [rdi]    ; Load the first value of arr[] into rax

def:
	cmp rax, $1       ; Check if rax is less than or equal to 1
	jle next          ; If rax <= 1, jump to next
	cmp rax, $2       ; Compare rax with 2
	je counter        ; If rax == 2, jump to counter
	xor r8, r8        ; Initialize r8 to 0
	add r8, $2        ; Add 2 to r8
	mov r9, rax       ; Copy the value of rax to r9
	shr r9, $1        ; Right shift r9 by 1 (divide by 2)

loops:
	mov rax, [rdi]    ; Load the next value in arr[] into rax
	xor rdx, rdx      ; Initialize rdx to 0
	idiv r8            ; Divide rax by r8, result in rax, remainder in rdx
	cmp rdx, $0       ; Compare remainder (rdx) with 0
	je next           ; If remainder is 0, jump to next

itr:
	inc r8            ; Increment the value of r8
	cmp r8, r9        ; Compare r8 with r9
	jg counter        ; If r8 > r9, jump to counter
	jmp loops         ; Jump back to loops

counter:
	inc rcx           ; Increment the value of rcx (counting prime numbers)

next:
	dec rsi           ; Decrement the value of rsi (n)
	jz end            ; If n == 0, jump to end
	add rdi, $8       ; Add 8 to the pointer value of arr (move to the next element)
	mov rax, [rdi]    ; Load the next value of arr[] into rax
	jmp def           ; Jump back to def

end:
	mov rax, rcx      ; Move the value of rcx (number of prime numbers) to rax
	ret               ; Return
