; Hello, World! in Assembly

section .data
    msg: db "Hello, World!", 0ah

section .text
    global _start

_start:
	mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 14
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

; input: nasm -f elf64 -o HelloWorld.o HelloWorld.asm && ld HelloWorld.o -o HelloWorld && ./HelloWorld
; output: Hello, World!
