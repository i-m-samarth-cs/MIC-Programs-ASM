.model small
.stack 100h
.data
  arr dw 10h,20h,30h,-5h,-3h
  pos_count db 0
  neg_count db 0
.code
  mov ax,@data
  mov ds,ax
  mov cx,5
  mov si,offset arr
next:
     mov al,[si]
     ror al,1
     jc skip
     inc pos_count
skip:
      inc neg_count
      inc si
      loop next
      mov al,pos_count
      mov bl,neg_count
 Ends
 End
