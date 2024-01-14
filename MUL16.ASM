.model small
.data
  n1 dw 0002H
  n2 dw 0003H
.code
  mov ax,@data
  mov ds,ax

  mov ax,n1
  mul n2
end
