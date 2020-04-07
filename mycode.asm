.model small
.stack 100h
.data

a db  'hex digit $'
b db 10,13, 'in decimel $'

.code    
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,17d 
    
    mov ah,9
     lea dx,b
     int 21h
     
     mov ah,2
     mov dl,49d
     int 21h
     
     mov ah,2
     mov dl,bl
     int 21h
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main