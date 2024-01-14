.model small
.data
  n1 db 04H
  n2 db 03H
.code
  mov ax,@data
  mov ds,ax
  mov al,n1
  mov bl,n2
  mul bl
end
