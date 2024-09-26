all:
	nasm HelloWorld.asm -o HelloWorld.bin && dd conv=sync if=HelloWorld.bin of=HelloWorld.img bs=1440k count=1
convertVDI:
	C:\"Program Files"\Oracle\VirtualBox\VBoxManage convertdd HelloWorld.img HelloWorld.vdi
