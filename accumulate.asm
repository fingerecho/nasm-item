extern printf
extern exit

segment .data
msg db "1+2+3+...+%d=%x(%dD)(%bb)",10,0
segment .bss
x resw 1
i resd 1
global main
segment .text
main:
	; ax 只能存2个字节（共16位）最大只能表示 65536, 所以 (1+X)*X/2=65536,当x>X时溢出 x2+x-131072=0,算出x=361
	; x从1到1000
         ;以下计算1到x的和 
	mov word [ x ],4
	mov dword [ i ],4
     @xl:
         xor eax,eax
	 xor ax,ax
         mov cx,1
     @f:
         add ax,cx
         inc cx
         cmp cx,word [ x ] 
         jle @f

	push ax
	push ax
	push dword [ i ] 
	push msg
	call printf
	
	inc word [ x ]
	inc dword [ i ]
	cmp word [ x ],1000
	jle @xl

	push 1
	call exit	
