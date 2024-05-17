;-------------------------------------------------------------------------------------------------------------------------------------------------------
; Program Name: Creating a shellcode using execv call
; Author: bl4ckf0xk
; Date: 17/05/2024
; Purpose: pushing /bin/sh in reverse order and calling execv
; program using nasm and ld
;------------------------------------------------------------------------------------------------------------------------------------------------------

global _start

section .text

_start:
	xor rax, rax                                 ; make rax 0
	push rax                                     ; push rax to the stack
	
	mov rbx, 0x68732f2f6e69622f                  ; push "/bin/bash" in reverse order to rbx
	push rbx                                     ; push rbx to stack

	mov rdi, rsp                                 ; mov address of the stack pointer to rdi

	push rax                                     ; pushing 0 again to stack

	mov rdx, rsp                                 ; setting 0 | /bin/sh | 0 to rdx

	push rdi                                     ; pushing the pathname to stack

	mov rsi, rsp                                 ; pushing args (if there are any) "0 in this"

	add rax, 59                                  ; make the system call number for execve
	syscall
