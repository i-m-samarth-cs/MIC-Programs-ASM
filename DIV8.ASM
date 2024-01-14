.model small
.data
  n1 dw 0008H
  n2 db 04H
.code
  mov ax,@data
  mov ds,ax
  mov ax,n1
  div n2
end
