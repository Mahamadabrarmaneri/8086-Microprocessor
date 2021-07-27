.model small
.stack 100h
.data
	n db 34h, 67h, 88h, 44h, 77h
	count dw 5
	largest db ?
.code
	begin:
		mov ax,@data
		mov ds,ax
		mov si,0
		mov cx,count
		mov bl,n[si]
		dec cx
	again:
		inc si
		cmp bl,n[si]
		jc noswap
		mov bl,n[si]
	noswap:
		loop again
		mov largest,bl
		mov ah,4ch
		int 21h
end begin
