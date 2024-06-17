; ALP to find the minimum element
global min_ele
section .text
min_ele: 
	mov rax, [rdi]; 
	cmp rsi, $0; 
	je finish ;
	dec rsi;
next:
	add rdi, $8;
	cmp rax, [rdi];
	jl trans;
	mov rax, [rdi];
trans:	dec rsi; 	
	cmp rsi, $0 ;
	jne next;

finish:
	ret 
