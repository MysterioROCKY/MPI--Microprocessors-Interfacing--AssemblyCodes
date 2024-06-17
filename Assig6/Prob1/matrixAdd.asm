global matadd
section .text

matadd:
    cmp rsi, $0     ; exit when rxc=0
    je finish 
    mov rcx, rdx    ; rcx contains the value of n*n

next:
    mov rax, [rdi]  ; value of A matrix at that address is moved to rax
    add rax, [rsi]  ; Value of B matrix at that value is added to A
    mov [rdi], rax  ; We move the value of rax back to array A at that position
    
    add rdi, $8     ; incrementing rdi value by 8... 100,108,116
    add rsi, $8     ; array B
    loop next

finish:
    ret