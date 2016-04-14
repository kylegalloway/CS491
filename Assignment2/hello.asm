global _start

section .text

_start:
	jmp MESSAGE

GOBACK:
    mov eax, 0x4
    mov ebx, 0x1

    ; mov ecx, message
    pop ecx

    mov edx, 0x19
    int 0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

MESSAGE:
    call GOBACK
    db "Now I pwn your computer", 0dh, 0ah
