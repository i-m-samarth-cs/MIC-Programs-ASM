.model small
.data
  array db 1,2,3,4,5
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
   daa ;decimal adjust acumlator
   jnc next
   inc sum2
next:
     inc si
     loop up
     mov dl,sum2

     mov al,sum1
 ends
end
