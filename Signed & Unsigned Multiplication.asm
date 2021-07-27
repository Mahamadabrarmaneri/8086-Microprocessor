.model small
.stack 100h
.data
	num1 dw -10
	num2 dw 12
	ans  dw ?
.code
	begin:


		mov ax,@data
		mov ds,ax
		mov ax,num1
		mov bx,num2
	    IMUL bx
		mov ans,ax
		mov ah,4ch
		int 21h
end begin
