.model small
.stack 100h
.data
  str1 db 'MSBTE$'
  leng db 0
.code
  mov ax,@data
  mov ds,ax
  mov si,offset str1
UP:
   mov al,[si]
   cmp al,'$'
   JZ dn
   inc leng
   inc si
   Loop UP
dn:
   mov al,leng
   mov ah,4ch
   int 21h
 Ends
 End
