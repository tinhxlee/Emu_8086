;nhap 1 ky tu(enter thi dung> -> dua day ky tu ra man hinh theo chieu nguoc lai

.model small
.stack 100h
.data
     ms1 db 'nhap cac ky tu : $'
     ms2 db 10, 13, 'hien nguoc lai : $'
     
.code
    main proc
    mov ax, @data
    mov ds, ax
    
    ;hien ms1
    mov ah, 9
    lea dx, ms1
    int 21h
    
    mov cl,0    ; khoi tao bien dem
    mov ah, 1
nhaptiep:
    int 21h
    cmp al, 13  ; enter?
    je enter    ; stop
    push    ax
    inc cl      ;tang bien dem
    jmp nhaptiep
enter:    
    mov ah, 9
    lea dx, ms2
    int 21h
    
    mov ah,2
intiep:
    pop dx
    int 21h
    
    dec cl
    cmp cl, 0
    jg intiep
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
        
