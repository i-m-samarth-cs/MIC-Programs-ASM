.model small
disp MACRO msg
       push ax
       push ax
       mov ah,09h
       mov dx,offset msg
       int 21h
       pop dx
       pop ax
       ENDM
.data
   sr db 'Hello ALP'
.code
  mov ax,@data
  mov ds,ax
  disp sr
  mov ah,4ch
  int 21h
  ends
  end
