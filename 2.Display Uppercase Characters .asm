.model small
.stack 100h
.data
	text  db 'abcdefghijklmnopqrstuvwxyz'
	count dw 26
.code
	begin:	
		mov ax,@data
		mov ds,ax
		mov si,0
		mov cx,count
	again:
		mov al,text[si]
		sub al,20h
		mov text[si],al
		inc si
		loop again
		mov ah,4ch
		int 21h
end begin
