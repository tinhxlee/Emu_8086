.model small
.stack 100h
.data

.code
   main proc
        mov ah, 2
        mov dl, 'A'
intiep:        
        int 21h
        ;
        ;
        inc dl    ; ky tu tiep theo
        cmp dl,'Z'
        jle intiep 
        
        
        ; nguoc lai dl > Z
        
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        mov dl, 'Z' 
intiep1:
        int 21h
        dec dl
        cmp al, 'A'
        jg intiep1
        
        mov ah, 4ch
        int 21h
        
        main endp
   end main
        
        
    


