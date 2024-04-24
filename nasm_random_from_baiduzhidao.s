;从百度知道下载下来生成随机数的文件
;编译： nasm -f elf32 nasm_random_from_baiduzhidao.s -F dwarf -o nasm_random_from_baiduzhidao.o 
;           gcc -m32 -g nasm_random_from_baiduzhidao.o && gdb ./a.out
;     -F dwarf 和 -g 使用gdb查看汇编执行的过程
;     

section .text
    global main       ; gcc 必须的声明
rand: ; 生成随机数，返回值在eax
    push edx
    rdtsc ; 内核纳秒级时间作为种子
    imul eax, edx
    add eax, 0xF1E2D3C4
    imul eax, 0xB5A69788
    pop edx
    ret
main: ; 程序入口
    nop
    call rand ; 生成随机数
     
    mov esi, msg
    mov ecx, len
    call binasc ; 转换成ascii
     
    mov edx, ecx ; 显示
    mov ecx, esi
    mov ebx, 1
    mov eax, 4
    int 0x80
    mov eax, 1 ; 退出
    xor ebx, ebx
    int 80h
     
; 将数字转换成ascii
binasc:
    push    edx
    push    ebx
    push    edi
    push    eax
    mov edi,esi
ba1:
    mov byte [esi],' '
    inc esi
    loop    ba1
    mov ebx,10
    or  eax,eax
    jns ba2
    neg eax
ba2:
    xor edx,edx
    div ebx
    add dl,'0'
    dec esi
    mov [esi],dl
    inc ecx
    cmp esi,edi
    jz  ba4
    or  eax,eax
    jnz ba2
    pop eax
    or  eax,eax
    jns ba3
    dec esi
    mov byte [esi],'-'
    inc ecx
ba3:
    pop edi
    pop ebx
    pop edx
    ret
ba4:
    pop eax
    jmp ba3
section .data
 
msg db  '                ',0xa
len equ $ - msg
