.model small
.stack 100h
.data
   ; Khai bao bien
   ms1 db 'Nhap mot ky tu : $'
   ms2 db 10, 13 ,'ky tu dung truoc la : $' 
   ms3 db 10, 13, 'ky tu dung sau la : $'

.code 
   main proc
    mov ax,@data
    mov ds, ax 
        ; cac lenh
        mov ah , 9
        mov dx, offset ms1 ; lea dx, ms1 
        int 21h
        ; nhap 1 ky tu tu ban phim, hien ky tu ra man hinh
        ; nhap ky tu dung ham 1 -> ky tu chua trong al
        
        mov ah, 1
        int 21h
         mov ch, al ; cat thanh ghi al (ky tu> vao bl
         ; chuyen ky tu vua nhap vao thanh ghi dl
         
         
        
         ; dung ham 9 de hien thi chuoi ky tu
         mov ah, 9
         mov dx, offset ms2
         ; hien ky tu dung ham 2 -> ky tu trong dl
         ; hien ky tu dung truoc
         int 21h
         mov ah, 2
         mov dl, ch
         sub dl,1
         int 21h
         
         mov ah, 9
         mov dx, offset ms3
         ; hien ky tu dung ham 2 -> ky tu trong dl
         ; hien ky tu dung sau
         int 21h
         mov ah, 2
         mov dl, ch
         add dl,1
         int 21h
        
        
        ; ket thuc chuong trinh
        mov ah,4ch
        int 21h 
        
        
        main endp
   end main