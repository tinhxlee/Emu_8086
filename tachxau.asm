.model small
.stack 100h  
.data
    ms1 db 'Nhap xau : $'
    ms2 db 10,13,'Chu hoa : $'
    ms3 db 10,13, 'Chu thuong: $'
    s1 db 100 dup(?)
    s2 db 100 dup(?)
    s3 db 100 dup(?)
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, ms1
        int 21h
        
        mov bx,0
nhaptiep:
        mov ah, 1
        int 21h
        cmp al, 13
        je enter
        mov s1[bx],al
        inc bx
        jmp nhaptiep
        
enter:
        ;mov s1[bx], '$' 
        ;mov ah,9
        ;lea dx,s1
        ;int 21h
        
        
        
        mov cx,bx
        mov bx,0
        mov si,0   ; chi so xau chu thuong
        mov di,0   ; chi so xau chu hoa
sosanh:        
        cmp s1[bx] , 97 ; 'a'
        jl chuhoa
        mov al, si[bx]
        mov s2[si], al
        inc si
        jmp tiep
chuhoa:
        mov al, s1[bx]
        mov s3[di], al
        inc di
tiep:        
        inc bx
        cmp bx, cx
        jl sosanh
        
        mov s2[si],'$'
        mov s3[di], '$'
        
        mov ah, 9
        lea dx, ms2
        int 21h
        lea dx, s3
        int 21h
        
        lea dx, ms3
        int 21h
        lea dx,s2
        int 21h
        
        mov ah, 4ch
        int 21h
        
        main endp
    end main



