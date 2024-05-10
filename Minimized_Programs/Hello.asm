section .data
        message: db "Hello, World", 0xa
        len: equ $-message

        global _start
section .text

_start:
        xor rax, rax
        mov al, 1
        xor rdi, rdi
        mov dil, 1
        mov rsi, message
        mov rdx, len
        syscall

        xor rax, rax
        mov ax, 60
        xor rdi, rdi
        syscall
