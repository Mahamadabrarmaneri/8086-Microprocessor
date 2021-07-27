.model small
.stack 100h
.data
	num1 dw 0021h
	num2 dw 0012h
	res  dw ?
.code
	begin:
		mov ax,@data
		mov ds,ax
		mov ax,num1
		mov bx,num2
		sub ax, bx


		mov res,ax
		mov ah,4ch
		int 21h
end begin
