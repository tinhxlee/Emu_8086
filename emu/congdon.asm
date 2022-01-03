; nhap n tu ban phim(n <=3>
;S = 1 + 2 + ..n

.model small
.stack 100h
.data
   ms1 db 'Nhap n : $'
   ms2 db 10, 13, 'S = $'
   
.code
   main proc
    mov ax, @data
    mov ds, ax
    ; hien thi ms 1
    mov ah, 9
    lea dx, ms1
    int 21h
    
    
    mov ah, 1
    int 21h
    sub al, 48   ; doi thanh so n
    
    mov cl, 1    ; i = 1
    mov bl, 0     ; s = 0
lap:    
    add bl, cl   ; s = s + i
    
    inc cl       ; i = i + 1
    cmp cl, al   ; i = n?
    
    jle lap
    
    mov ah, 9
    lea dx, ms2
    int 21h
    
    
    mov ah, 2
    mov dl, bl
    add dl, 48   ; doi thanh ascii
    int 21h
    mov ah, 4ch
    int 21h
    
    main endp
   
   end main
  
