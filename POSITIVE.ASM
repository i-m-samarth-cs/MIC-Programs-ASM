.model small
.data
  array db -02H,-03H,-4H,05H,06H
  count db 04H
  res db ?
.code
  mov ax,@data
  mov ds,ax
  mov SI,offset Array
  mov cl,05
  mov bl,00
next:mov al,[SI]
     shl al,1
     jc skip
     INC bl
skip:INC SI
    Loop next
    end

