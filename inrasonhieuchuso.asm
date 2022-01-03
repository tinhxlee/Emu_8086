.model small
.stack 100
.data 
    count db 0
.code 
    main proc 
        mov ax, @data
        mov ds,ax
        
        mov cl,10   
        mov ax,1234 
        
        lap1:
            mov dx,0	;reset thanh ghi dx
            div cx
            add dl,30h ;chuyen từ số sang ascii để tý hiển thị ra
            push dx   ; push so đó
            inc count
            cmp ax,0
            jne lap1
            
        lap2:
            pop dx
            mov ah,2
            int 21h
            dec count
            cmp count,0
            jne lap2
            
        mov ah,4ch
        int 21h
main endp
    end main