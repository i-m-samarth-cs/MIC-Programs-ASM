.model small
.data
  n1 db 09H
  n2 db 05H
.code
  mov ax,@data
  mov ds,ax
  mov al,n1
  mov al,n2
  daa
end
