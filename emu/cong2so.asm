.model small
.stack 100h
.data
  ms1 db 'Nhap so thu nhat : $'
  ms2 db 10,13, 'Nhap so thu 2 : $'
  ms3 db 10, 13, 'Tong cua ban la : $'
  ms4 db 10, 13, 'Hieu cua ban la : $'
.code
   main proc
    mov ax, @data
    mov ds, ax
    ; in ms1
    mov ah, 9
    lea dx, ms1
    int 21h
    
    ;nhap so thu nhat 
    mov ah,1
    int 21h
    sub al,48 ; doi thanh so
    mov bl, al ; luu tam vao bl
    
    
    
    
    ; in ms2
    mov ah,9
    lea dx, ms2
    int 21h
    
    ; nhap so thu 2 
    mov ah, 1
    int 21h
    sub al, 48 ; doi thanh so
    mov bh, al ; luu vao bh
    
    
    
    
     
    mov ah,9
    lea dx, ms3
    int 21h
    
    mov dl, bl
    add bl , bh ; tong trong dl
    mov ah, 2
    sub dl, 48  ; doi thanh ascii
    int 21h
    
    mov ah, 9
    lea dx, ms4
    int 21h
    
    mov dl, bl
    sub bl, bh ; hieu trong dl
    
    mov ah, 2
    add dl, 48  ; doi thanh ascii 
    int 21h
    
    
  
; ket thuc chuong trinh

mov ah, 4ch
int 21h

main endp
   end main




