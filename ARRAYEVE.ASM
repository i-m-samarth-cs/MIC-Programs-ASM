.model small
.data
  ARRAY db 01h,02h,03h,04h,05h
  count db 04
  res db ?
.code
  mov ax,@data
  mov ds,ax
  mov si,offset ARRAY
  mov cl,count
  mov al,[si]
Up:INC SI
   add al,[si]
   loop up
   mov res,al
end
