; 32-bit Linux implementation
section     .text
global      _start
_start:
    mov     edx,len
    mov     ecx,msg
    mov     ebx,1 ; stdout
    mov     eax,4 ; sys_write id
    int     0x80

    mov     eax,1 ; exit id
    int     0x80
section     .data
msg     db  'Hello, world!',0xa,0x0 ;not sure if null needed, might as well as have it...
len     equ $ - msg
