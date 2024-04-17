extern printf
extern exit

segment .data
msg: db "1+2+3+...+999+1000=:%b",10,0

segment .text
global main

main:
	mov ebx,0x0
	mov bl,0
	mov ch,10
loop1:	add bl,ch
	dec ch
	cmp ch,0
	jge loop1

	mov bh,00000000b
	push bx
	push msg
	call printf

	push 1
	call exit
