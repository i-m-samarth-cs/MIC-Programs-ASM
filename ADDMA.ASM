.model small
add_num MACRO no1,no2,result
        mov ax,no1
        add no1,no2
        mov result,ax
        mov dx,result
   EMDM
.data
  num1 dw 1234h
  num2 dw 4321h
  res dw ?
.code
  mov ax,@data
  mov ds,ax
  add_num num1,num2,res
  END
