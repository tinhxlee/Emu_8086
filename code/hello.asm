.model small
.stack 100h
.data
msn db 'Hello World!$'

.code
main proc
     
     mov ax, @data ; nap dia chi doan du lieu vao ax
     mov ds, ax ; ds chua dia chi doan du lieu
     lea dx,msn
     mov ah,9 ; ham 9 hien thi xau ky tu
     int 21h ; goi ham ngat 21h cua dos
     
     mov ah, 4ch ; ham 4ch tro ve dos
     int 21h
    
    main endp
end main
                                                                    


