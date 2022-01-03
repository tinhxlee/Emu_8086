.model small
.stack 100h
.data
     
.code
   main proc
    mov ax,@data
    mov ds, ax
        mov ax,1234
        mov bl,10
chiatiep:        
        div bl ; al = 13,ah=7
        mov cl,ah
        mov ah,2
        int 21h
        cmp al,0 
        jg chiatiep

        mov ah,4ch
        int 21h
        
        main endp
   end main
        











