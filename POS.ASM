.model small
.stack 100h
.data
  arr db -12H,-10H,8H,7H,-4H
  count db 0
.code
  mov ax,@data
  mov ds,ax
  mov cx,5
  mov si,offset arr
next:
      mov al,[si]
      rol al,1
      jc skip

      inc count
skip:
      inc si
      mov dl,count
      mov ah,4ch
      int 21h
  ends
  end
