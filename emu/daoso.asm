.model small   
.stack 100h
.data

      ms1 db 'nhap ky tu  : $'
      ms2 db 10,13,'hien nguoc lai : $'
.code 
    main proc 
      mov ax,@data
      mov ds,ax
      ;hien ms 1
          mov ah, 9
          lea dx, ms1
          int 21h
          ;nhap
          mov ah,1  ; ky tu trong al
          int 21h
          
          push ax
                    
          int 21h
          
          push ax
          
          int 21h
          push ax
          
          
          ; hien ms2
          mov ah,9
          lea dx, ms2
          int 21h
          
          ; hien ky tu 
          mov ah, 2
          pop dx
          int 21h
          
          pop dx
          int 21h
          
          pop dx
          int 21h
          
         
          
         
          
          
          
mov ah, 4ch
int 21h

main endp
    end main
            

