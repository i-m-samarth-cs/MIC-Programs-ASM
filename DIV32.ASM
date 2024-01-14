.model small
.stack 100
.data
  quo dw ?
  rem dw ?
.code
  mov bx,500
  mov ax,1000
  mov dx,0
  div bx

  mov cx,ax

  mov ah,4ch
  int 21h
 ends
 end
