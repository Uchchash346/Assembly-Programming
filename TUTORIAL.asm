.MODEL SMALL 
.STACK 100H
.CODE 

MAIN PROC
    
    MOV AH,1  ;INPUT
    INT 21H   ;INPUT 
    MOV BL,AL ;INPUT  
    
    MOV AH,2
    MOV DL,0AH
    INT 21H  
    
    MOV DL,0DH
    INT 21H
    
    
    MOV AH,2   ;OUTPUT
    MOV DL,BL  ;OUTPUT
    INT 21H     ;OUTPUT
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    