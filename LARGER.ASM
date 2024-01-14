.model small
.stack 100
.data
  arr dw 101H,102H,05H,08H
  small1 dw ?
.code
  mov ax,@data
  mov ds,ax
  mov si,offset arr
  mov cx,4
  mov ax,[si]
UP:
   inc si
   cmp ax,[si]
   jc next
   mov ax,[si]
   loop UP
next:
     Loop UP
     mov small1,ax

     mov ah,4ch
     int 21h
  Ends
  end
