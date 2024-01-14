.model small
add  MACRO no1,no2,res
     mov ax,no1
     mov bx,no2
     add ax,bx
     mov result,ax
  ENDM
.data
  num1 dw 1234h
  num2 dw 4321h
  res dw ?

.code
  mov ax,@data
  mov ds,ax
  add num1,num2,res
  ENDS
  END
