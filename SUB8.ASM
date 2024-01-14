.model small
.data
.code
  mov ax,@data
  mov ds,ax
  mov al,02H
  mov bl,04H
  sub al,bl
  end
