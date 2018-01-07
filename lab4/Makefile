OPT = 0
CFLAGS	= -S -g -ffunction-sections -O$(OPT)

all:
	sde-gcc -march=r3k $(CFLAGS) Lab4.c
	sde-as -march=r3k Lab4.s -o Lab4.o
	sde-ld -T linker_script Lab4.o -o a.out
	sde-objdump -h -z -S -d -t -s a.out > mips_program_$(OPT).objdump
	rm -r *.o a.out
	mv Lab4.s Lab4_$(OPT).s
