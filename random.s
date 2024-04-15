extern printf
extern time
extern exit
extern rand

global main

section .data
msg: db	"%d:random:%d",10,0
section .bss
var: resd 1
section .text
main:
	push 0
	call time
	push eax
	mov dword[var],1024
loop:
	dec dword [var]
	call rand
	push eax
	push dword [var]
	push msg
	call printf
	cmp  dword[var],0
	jne loop
	
	push 2
	call exit

