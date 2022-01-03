

.model small
.stack 100h
.data
    s db '00:00:0000$' 
    ngay db ?
    thang db ?
    nam dw ?
    thu db 'sunmontuewedthufrisat$'
.code
   main proc
        mov ax, @data
        mov ds,ax
        mov ah, 2ah
        int 21h
        ; dl: ngay, dh : thang, cx : nam
        
        mov ngay, dl
        mov thang, dh
        mov nam, cx
        ; hien thu
        mov ah, 0
        mov bl, 3
        mul bl  ; al(thu) * bl
        mov si, ax
        mov cx, 3
inthu:        
        mov ah, 2
        mov dl, thu[si]
        int 21h
        inc si
        loop in inthu
        mov ah, 2
        mov dl,' '
        int 21h 
        
        ; hien ngay
        mov al, ngay 
        mov ah, 0
        mov bl, 10
        div bl
        
        add ah, 48
        add al, 48
        
        mov bh, ah
        mov ah, 2
        mov dl, al
        int 21h
        mov dl, bh
        int 21h
        mov dl,'-'
        int 21h
        
        mov al, thang
        mov ah, 0
        mov bl, 10
        div bl
        add al, 48
        add ah, 48
        mov bh, ah
        mov ah, 2
        mov dl, al
        int 21h
        mov dl, bh
        int 21h
       
        
        mov dl, '-'
        int 21h
        
        mov ax, nam
        mov bx, 10
       
        mov cx, 4
        chia:
        mov dx, 0 ; so du
        div bx
        push dx
        loop chia
        
        mov cx, 4
        innam:
        pop dx
        add dl, 48
        mov ah, 2
        int 21h
        loop innam
        
        
        
        
 
        
        mov ah, 4ch
        int 21h
        
        main endp
   end main






