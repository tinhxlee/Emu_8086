
.model small
.stack 100h
.data
    s db '00:00:00$'
.code
   main proc
        mov ax, @data
        mov ds,ax
        
        mov ah, 2ch
        int 21h ; lay thoi gian
        
        mov al, ch ; ch chua gio
        mov ah, 0
        mov bl, 10
        div bl      ; gio chia 10
        add al, 48
        add ah, 48
        mov s, al
        mov s + 1 , ah
        
        ; phut
        mov al, cl
        mov ah, 0
        mov bl , 10
        div bl
        add al, 48
        add ah, 48
        mov s + 3, al
        mov s + 4 , ah
        
        ; giay
        mov al, dh
        mov ah, 0
        mov dl, 10
        div bl
        add al, 48
        add ah, 48
        mov s + 6, al
        mov s + 7, ah
        
        ; ngat man hinh
        ; ham 02h: di chuyen con tro
        ; den vi tri dh : hang, dl, cot
        mov ah, 02
        mov dx, 0830  ; hang 8, cot 30
        int 10h
        
        ; hien thi
        mov ah, 9
        lea dx, s
        int 21h
        
 
        
        mov ah, 4ch
        int 21h
        
        main endp
   end main



