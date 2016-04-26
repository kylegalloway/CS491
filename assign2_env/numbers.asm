segment     .data
    msg1    db  'Please input a signed integer number (up to 4 digits):',
    msg1len equ $ - msg1
    msg2    db  'The entered number is: ',
    msg2len equ $ - msg2
    msg3    db 'Half of the number is: ',
    msg3len equ $ - msg3
    msg4    db 'Double of the number is: '
    msg4len equ $ - msg4

segment     .bss
    num1    resb    6
    num2    resb    6
    num3    resb    6

segment     .text
    global _start

_start:

PRINTQUERRY:
            mov eax,4           ;system call number for output(sys_write)
            mov ebx,1           ;default output device
            mov ecx, msg1       ;message to write
            mov edx, msg1len    ;message length
            int 0x80            ;call kernel

GETNUMBER:
            mov eax, 3          ;system call for input
            mov ebx, 0          ;default input device
            mov ecx, num1       ;stores the input into num1
            mov edx, 4          ; SHOULD THIS BE MORE? Do I have to take into account the line feed?
            int 0x80

PRINTMESSAGE:
            mov eax, 4
            mov ebx, 1
            mov ecx, msg2       ;second message to write
            mov edx, msg2len    ;second message length
            int 0x80

PRINTNUMBER:
            mov eax, 4
            mov ebx, 1
            mov ecx, num1       ;prints number
            mov edx, 4
            int 0x80

STORENUMBERS:
            mov eax, [num1]     ;storing the number into eax
            mov ebx, [num1]     ;storing the number into ebx

SHIFT:
            shr eax, 1          ;dividing
            mov [num2], eax     ;storing half of the numb into num2
            shl ebx, 1
            mov [num3], ebx     ;storing double of the numb into num3

PRINTHALFMESSAGE:
            mov eax, 4
            mov ebx, 1
            mov ecx, msg3
            mov edx, msg3len
            int 0x80

PRINTHALF:
            mov eax, 4
            mov ebx, 1
            mov ecx, num2
            mov edx, 4
            int 0x80

PRINTDOUBLEMESSAGE:
            mov eax, 4
            mov ebx, 1
            mov ecx, msg4
            mov edx, msg4len
            int 0x80

PRINTDOUBLE:
            mov eax, 4
            mov ebx, 1
            mov ecx, num3
            mov edx, 4
            int 0x80


            mov eax,1            ; The system call for exit (sys_exit)
            mov ebx,0            ; Exit with return code of 0 (no error)
            int 0x80            ;call kernel