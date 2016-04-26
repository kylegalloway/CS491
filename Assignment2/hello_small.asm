global _start

section .text

_start:
jmp short message

proc:
    xor eax, eax
    xor ebx, ebx
    xor edx, edx
    xor ecx, ecx

    mov al, 0x04
    mov bl, 0x01
    pop ecx
    mov dl, 0x19
    int 0x80

    xor eax, eax
    mov al, 0x01
    xor ebx, ebx
    mov bl, 0x01   ; return 1
    int 0x80

message:
    call proc
    db "Now I pwn your computer", 0dh, 0ah

section .data