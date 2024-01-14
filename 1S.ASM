.model small
.stack 100h
.data
  num dw 1234h
  count db 0
.code
  mov ax,@data
  mov ds,ax
  mov ax,num
  mov cx,16
next:
     ROR al,1h
     JNC UP
     inc bl
UP:Loop next
   mov count,bl
   mov dh,00
   mov dl,count
ends
end
