.model small
.data
  arr1 dw 1111h,2222h,3333h,4444h
  arr2 dw 4  DUP(?)
.code
  mov ax,@data
  mov ds,ax
  mov es,ax
  mov cx,4
  LEA si,arr1
  LEA di,arr2
UP:
   MOVSW
   Loop UP
 ENDS
 End
