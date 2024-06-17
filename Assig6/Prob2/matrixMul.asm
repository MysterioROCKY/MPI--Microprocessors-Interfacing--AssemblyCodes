global multiply
section .text

multiply:
    cmp rdx, $0; if size of matrix is 0x0, return
    je finish;
    mov r8, rdx; store n in r8
    mov r9, rdi; have A* pointer in r9 (because we'll be modifying rdi)
    mov r10, rsi; B* pointer in r10
    mov r11, rcx; C matrix for result in r10

outerloop_start:
    mov r12, 0; i

outerloop:
    call innerloop_start; 
    inc r12; i++
    cmp r12, r8;
    jl outerloop;

finish:
    ret

innerloop_start:
    mov r13, 0; j=0

innerloop:
    ; c[i*n+j] = 0
    mov rax, r12;
    imul r8; n*i
    add rax, r13; rax holds n*i+j
    mov rcx, 8
    imul rcx; number to add to address
    mov rbx, r11;
    add rbx, rax; C[i*n+j]
    ; mov rcx, $0;
    ; mov [rbx], rcx; C[i*n+j] = 0
    call addvalue_start;
    inc r13;
    cmp r13, r8;
    jl innerloop;
    ret;

addvalue_start:
    mov r14, 0; k=0
    
addvalue:
    ;a[i*n+k]
    mov rax, r12;
    imul r8; n*i
    add rax, r14; n*i+k
    mov rcx, 8
    imul rcx; number to add to address
    add rax, r9; a + n*i+k
    mov rsi, [rax]; rsi holds a[n*i+k]

    mov rax, r14;
    imul r8; k*n
    add rax, r13; k*n+j
    mov rcx, 8
    imul rcx; number to add to address
    add rax, r10; b + k*n+j
    mov rax, [rax]; rax holds b[k*n+j]

    imul rsi; a[n*i+k]*b[k*i+j]
    add [rbx], rax; C[i*n+j] += a[n*i+k]*b[k*i+j]
    inc r14; k++
    cmp r14, r8;
    jl addvalue;
    ret