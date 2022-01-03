;Viet ct nhap 1 day so (enter de ket thuc) . Dem xem co bao nhieu so > 5
.model small 
.stack 100h
.data
   ms1 db 'Nhap day so : $'
   ms2 db 10, 13, 'So luong so lon hon 5 : $'
   ms3 db 10, 13 , 'Cac so lon hon 5 la : $'
   
.code
    main proc 
    mov ax, @data
    mov ds, ax
    
    ; hien ms1
    
    mov ah, 9
    lea dx, ms1
    int 21h
    
    
    ; bat dau nhap
    mov cl, 0 ; khoi tao bo dem
    mov ah, 1
nhaptiep:
    int 21h
    cmp al, 13 ; co phai enter
    je enter
    ; khong phai enter khi kiem tra
    sub al, 48  ; doi thanh so
    cmp al, 5 
    jle nhohon
    ; nguoc lai thi lon hon
    push ax 
    inc cl
    
nhohon: jmp nhaptiep 

enter:
      mov ah, 9
      lea dx, ms2
      int 21h
      
      mov ah, 2
      mov dl, cl
      add dl, 48
      int 21h
      
      mov ah, 9
      lea dx , ms3
      int 21h
      
      mov ch, 0 ; vi loop giam cx, vi du ch = 1 , cl = 5 thi no se giam 15 lan
      mov ah, 2
back:      
      pop dx
      add dl, 48
      int 21h
      mov dl, 32 ; dau cach 
      int 21h
      loop back
      
      
      mov ah, 4ch
      int 21h
      
      main endp
    end main

