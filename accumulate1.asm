;从1-X,计算从1+...+x的和
; x(1,1000)
; compile:nasm -f elf32 accumulate1.asm -o accumulate.o && gcc -m32 accumulate.o && ./a.out
; (1+x)*x/2 = 2,147,483,647  ( 2^31 - 1)
; x^2 + x - 4,294,967,294 = 0;
; 得出 x = 65536
; 当 x > 65536 时溢出

extern printf
extern exit

segment .data
msg: db "1+...+%d=%d",10,0
segment .bss
x resd 1

segment .text
global main
main:
	mov dword[x],1
    @lp0: inc dword[x]
	mov eax,0
	mov ecx,1
    @lp1:
	add eax,ecx
	inc ecx
	cmp ecx,dword[x]
	jle @lp1

		; display result
		push eax
		push dword[x]	
		push msg
		call printf
		
	cmp dword[x],65538
	jle @lp0

	push 1
	call exit
