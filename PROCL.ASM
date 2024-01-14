.model small
.data
  arr dw 08H,05H,01H,09H,02H
.code
  mov ax,@data
  mov ds,ax
  call ascending ; call to procedure
  mov ah,4ch
  int 21h

ascending PROC
   mov bx,5
UP1:
     lea si,arr
     mov cx,4  ;Comparsion purpose
UP:
   mov ax,[si]
   cmp al,[si+1]
   JC dn
   xchg ax,[si+1]
   xchg ax,[si]
dn:
   inc si
   loop UP
   dec cx
   dec bx
   JNC UP1
   RET
ENDP
ENDS
END
