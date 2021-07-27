.model small
.stack 100h
.data
	message db 'Enter password phrase $'
	passwd  db 'qwerty'
	count   dw 6
	correct db 'Password is correct $'
	incorrect db 'Password is incorrect $'
.code
	begin:
		mov ax,@data
		mov ds,ax
		mov cx,count
		mov bx,offset passwd
		mov dx,offset message
		mov ah,09h
		int 21h
	again:	
		mov ah,08
		int 21h
		cmp al,[bx]
		jne error
		inc bx
		loop again
		mov dx,offset correct
		mov ah,09h
		int 21h
		jmp over 
	error:	
		mov dx,offset incorrect
		mov ah,09h
		int 21h
	over:
		mov ah,4ch
		int 21h
end begin
