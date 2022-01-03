.model small
.stack 100h
.data
    ms db 'Bam phim bat ki de dung $'
.code
   main proc
        mov ax, @data
        mov ds,ax
        
        mov ah, 9
        lea dx,ms
        int 21h
back:       
        mov ah,2
        mov dl,7 ; beep
        
        mov ah, 1   ; trang thai ss
        int 16h  
        jz back ; kiem tra co ban phim
        
        mov ah, 0
        int 16h
        cmp al, 'Q'
        je thoat
        cmp al, 'q'
        je thoat
        jmp back
        
thoat:
        
        mov ah, 4ch
        int 21h
        
        main endp
   end main


