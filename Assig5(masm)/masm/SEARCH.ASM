DATA SEGMENT
    ARRAY_SIZE DW 5                    
    NUMBERS DW 10,20,11,14,13          
    SEARCH DW 14;
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA          
    MOV DS, AX;  

    MOV CX,ARRAY_SIZE;
    LEA SI,NUMBERS;
    
    MOV BX,0001          
    MOV AX,[SI];
    MOV DX,SEARCH;


next_1:
    cmp AX,DX;    
    je EndProgram;
    

next_2:
    dec CX;
    jz EndProgram;
    add SI,0002;
    MOV AX,[SI];
    inc BX;
    jmp next_1; 


EndProgram:
    MOV AH, 4CH         
    INT 21H


CODE ENDS
END START

