.model small
.stack 100h
.data
	num1 dw -56
	num2 db -10
	ans  dw ?
.code
	begin:
		mov ax,@data
		mov ds,ax
		mov ax,num1
		mov bl,num2
		IDIV bl
		mov ans,ax
		mov ah,4ch
		int 21h
end begin
