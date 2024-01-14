.model small
.data
  arr dw 1234h,2567h,7831h
  small1 dw 0
.code
  mov ax,@data
  mov ds,ax
  call SMALLEST
  mov ax,small1
  mov ah,4ch
  int 21h
SMALLEST PROC
  mov cx,5
  mov si,offset arr
  mov ax,[si]
  dec cx
UP:
   inc si
   cmp ax,[si]
   JC next
   mov ax,[si]
next:
     Loop UP
     RET
   ENDP
 END
