;从1-X,计算从1+...+x的和
; x(1,1000)

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
		
	cmp dword[x],999
	jle @lp0

	push 1
	call exit
