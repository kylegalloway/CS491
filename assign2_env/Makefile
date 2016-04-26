all:
	gcc -g -o blame -fno-stack-protector -z execstack blame.c
shellcode:
	gcc -g -o shellcode -fno-stack-protector -z execstack shellcode.c
env:
	gcc -o load_env load_env.c
	gcc -o getaddr getaddr.c
clean:
	rm -f blame shellcode