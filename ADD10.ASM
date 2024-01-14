.model small
.stack 100
.data
  array db 01h,02h,03h,04h,05h
  sum1 db 0
  sum2 db 0
.code
  mov ax,@data
  mov ds,ax
  mov cx,5
  mov si,offset array
UP:
   mov al,[si]
   add sum1,al
   jnc next
   inc sum2
next:
     inc si
     loop UP
     mov al,sum1
End
