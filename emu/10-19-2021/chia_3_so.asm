.model small
.stack 100h
.data
    a db ?
    b dw 0  
.code
   main proc
    mov ax,@data
    mov ds, ax
        mov ax,137
        mov bl,10
        
        div bl ; al = 13,ah=7
        push ax  ; ah al
        mov ah, 0
        div bl  ; 013/10 , al=1, ah = 3
        push ax
        
        mov ah, 0
        div bl  ; 01/10, al = 0, ah = 1
        

        push ax
        mov ah, 2
        pop dx  ; dhdl ~10
        mov dl, dh ; dl = 1
        add dl, 48
        int 21h
        pop dx   ; dhdl~31
        mov dl, dh
        add dl, 48
        int 21h
        
        pop dx  ; 713
        mov dl,dh
        add dl, 48
        int 21h
        
        
        
        mov ah,4ch
        int 21h
        
        main endp
   end main
        











