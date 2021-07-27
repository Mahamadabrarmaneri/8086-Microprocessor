.model small
.stack 100h
.data
	num1 dw 0011h
	num2 dw 0020h
	res  dw ?
.code
	begin:
		mov ax,@data
		mov ds,ax
		mov ax, num1
		mov bx,num2
		MUL bx
		mov ah,4ch
		int 21h
end begin
