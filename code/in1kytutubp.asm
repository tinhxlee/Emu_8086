.model small
.stack 100h
.data
ms1 db 'Nhap ky tu : $'
ms2 db 10,13,'Ky tu cua ban la : $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        
        mov ah,9
        lea dx,ms1
        int 21h
        
       
        mov ah,1       
        int 21h
        mov bl,al 
        
        
        mov ah,9
        lea dx,ms2
        int 21h
        
        mov ah,2
        mov dl,bl               
        int 21h
        
        main endp
    end main
        