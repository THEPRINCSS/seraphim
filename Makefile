all: drivers bootsec iso

drivers: drivers/keyboard.s
	as -o keyboard.o drivers/keyboard.s
	ld -o keyboard.bin --oformat=binary -e keypress keyboard.o 

bootsec: boot/bootsec.s
	as -o bootsec.o boot/bootsec.s
	ld -o bootsec.bin --oformat=binary --Ttext 0x7c00 bootsec.o 

iso: bootsec.bin keyboard.bin
	dd if=/dev/zero of=seraphim.img count=2880 bs=512
	dd if=bootsec.bin of=seraphim.img
	dd if=keyboard.bin of=seraphim.img seek=512

clear: 
	rm bootsec.o keyboard.o keyboard.bin bootsec.bin