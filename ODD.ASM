.model small
.stack 100h
.data
  count db 0
  arr db 02H,03H,04H,05H,06H
.code
  mov ax,@data
  mov ds,ax
  mov cx,5
  mov si,offset arr
next:  mov al,[si]
       ror al,1
       jnc skip

       inc count
skip:
      inc si
      loop next
      mov al,count
      mov ah,4ch
      int 21h
  ends
  end
