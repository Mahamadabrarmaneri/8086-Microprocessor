.model small
.stack 100h
.data
	n db 18h,45h,22h,12h,32h,71h,41h,36h
	count dw 8
.code
	begin:
		mov ax,@data
		mov ds,ax
		mov cx,count
		dec cx
	nextscan:
		mov bx,cx
		mov si,0
	nextcomp:
		mov al,n[si]
		mov dl,n[si+1]
		cmp al,dl
		jc noswap
		mov n[si],dl
		mov n[si+1],al
	noswap:
		inc si
		dec bx
		jnz nextcomp
		loop nextscan
		mov ah,4ch
		int 21h
end begin
