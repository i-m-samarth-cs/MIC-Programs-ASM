.model small
.data
  n1lsb dw 0009H
  n1msb dw 0000H
  n2 dw 0003H
.code
  mov ax,@data
  mov ds,ax
  mov dx,n1msb
  mov ax,n1lsb
  div n2
end
