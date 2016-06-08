segment     .data
    msg1    db  "You have been pwned.", 0dh, 0ah,
    msg1len equ $ - msg1

segment     .bss

segment     .text
    global _start

_start:

PRINTQUERRY:
            mov eax,4           ;system call number for output(sys_write)
            mov ebx,1           ;default output device
            mov ecx, msg1       ;message to write
            mov edx, msg1len    ;message length
            int 0x80            ;call kernel


            mov eax,1            ; The system call for exit (sys_exit)
            mov ebx,0            ; Exit with return code of 0 (no error)
            int 0x80            ;call kernel