.model small
.stack 100h
.data
	msg db ‘Micro processor’
.code
	begin :
	mov ax, @data
	mov ds,ax
	mov dx, offset msg
	mov ah,09h
	int 21h
	mov ah,4ch
	int 21h
end begin
