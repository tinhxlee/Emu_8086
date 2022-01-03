.model small
.stack 100h
.data
    a db ?
    b dw 0
    ms1 db 'Nhap n: $'
    ms2 db 10, 13, 'S = $'  
.code
   main proc
    ; nhap n tinh S = 1 + 2 +3 ... + n
    mov ax,@data
    mov ds, ax
    mov ah,9
    lea dx, ms1
    int 21h
    
    mov ah,1
    int 21h
    sub al,48  ; al chua n
    mov bl, 0  ; s
    mov cl, 1  ; i = 1
congtiep:    
    add bl,cl  ; s luu trong bl
    inc cl
    cmp cl,al
    jle congtiep
    
    mov ah, 9
    lea dx,ms2
    int 21h
    
    ; hien s
    mov ah, 0
    mov al,bl
    mov bl,10
    div bl
    
    mov ch,ah
   
    
    mov ah, 2
    mov dl, al
    add dl,48
    int 21h
    
    mov dl,ch
    add dl,48
    int 21h
    

        
        mov ah,4ch
        int 21h
        
        main endp
   end main
        













