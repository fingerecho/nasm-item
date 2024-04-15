32:
	nasm -f elf32 random.s -o random.o && gcc -m32 random.o && ./a.out
