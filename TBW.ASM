.model small
.stack 100h
.data
  arr1 db 01h,02h,03h,04h,05h
  arr2 db ?,?,?,?,?
.code
  mov ax,@data
  mov ds,ax
  mov cx,05h
  mov si,offset arr1
  mov di,offset arr2
UP:mov al,[si]
   mov dl,al

   INC si
   INC di
   Loop UP
 ends
 end
