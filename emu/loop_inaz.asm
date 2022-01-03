
.model small
.stack 100h
.data 
    ms1 db 'Nhap n : $'
    ms2 db 10, 13, 'S = $'

.code
   main proc
   mov ax, @data
   mov ds, ax
   
   mov cx, 26
   mov ah, 2
   mov dl, 'A'
intiep:   
   int 21h
   inc dl
   ; cmp dl, 'Z'
   ;jle intiep 
   loop intiep
   
   mov ah, 4ch
   int 21h 

main endp
   end main
   



