.model small
.stack 100h
.data
    a db ?
    b dw 0  
.code
   main proc
    mov ax,@data
    mov ds, ax
        mov ax,127
        mov bl,10
        
        div bl ; al = 13,ah=7

        mov cl,al
        mov ch,ah
        
        mov ah,2
        mov dl,cl
        add dl,48
        int 21h
        
        mov dl,ch
        add dl,48
        int 21h
        
        
        mov ah,4ch
        int 21h
        
        main endp
   end main
        








