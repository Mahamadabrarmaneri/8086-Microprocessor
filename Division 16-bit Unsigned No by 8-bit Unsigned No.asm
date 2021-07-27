.model small
.stack 100h
.code
	num1 dw 56
	num2 dw 10
	ans  dw ?
.code
	begin:
		movax,@data
		movds,ax
		mov ax,num1
		mov bx,num2
		DIV bx
		mov ans,ax
		mov ah,4ch
		int 21h
end begin
