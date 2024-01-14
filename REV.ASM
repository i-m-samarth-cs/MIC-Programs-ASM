.model small
.stack 100h
.data
  str1 db "MSBTE$"
  str2 db 15 DUP(0)
  l1 db 0
.code
  mov ax,@data
  mov ds,ax
  mov dl,offset str1
UP1:
    mov al,[dl]
    cmp al,'$'
    JE Dn1
    inc dl
    inc l1
    jmp UP1
Dn1:
    LEA si,str2
    mov cl,l1
    dcr dl
UP:
    mov al,[dl]
    mov [si],al
    dcr dl
    inc si
    loop UP

    mov AH,4CH
    INT 21H
END
