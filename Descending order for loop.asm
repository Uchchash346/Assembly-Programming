.MODEL SMALL 
.STACK 100H
.CODE 
MAIN PROC
    
    MOV AH,1 
    INT 21H 
    MOV BL,AL
    SUB AL,48
    
    MOV CX,0
    MOV CL,AL  
    
    MOV AH,2 
    MOV DL,10  ;NEWLINE 
    INT 21H 
    MOV DL,13
    INT 21H 
    
    TOP: 
    MOV AH,2
    MOV DL,BL 
    INT 21H 
    DEC BL 
    LOOP TOP
    
    
    EXIT: 
    MOV AH,4CH 
    INT 21H 
    MAIN ENDP 
END MAIN 