DATA SEGMENT
    NUM1 DW 0003H          
    NUM2 DW 0004H          
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA          
    ; Set up data segment
    MOV DS, AX

    MOV AX, NUM1          
    MOV BX, NUM2          
    ADD AX, BX            


    MOV AH, 4CH           
    INT 21H

CODE ENDS
END START

