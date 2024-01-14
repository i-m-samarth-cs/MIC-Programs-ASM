.model small
.stack 100h
.data
  str1 db 'MSBTE$'
  str2 db 'GPD$'
  l1 db 0
  l2 db 0
  res db 0
.code
  mov ax,@data
  mov ds,ax
  mov si,offset str1
  mov dl,0
UP1:
    mov al,[si]
    cmp al,'$'
    JE Dn1
    inc dl
    inc si
    JMP UP1
Dn1:
    mov l1,dl
    mov dl,0
    mov si,offset str2
UP2:
    mov al,[si]
    cmp al,'$'
    JE Dn2
    inc dl
    inc si
    JMP UP2
Dn2:
     mov l2,dl
     cmp l1,dl
     JE RE
     mov Res,2
     JMP EXIT
RE:
   mov RES,1
EXIT:
     mov dl,res
     mov ah,4ch
     int 21h
ends
end
