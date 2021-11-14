; Show hello world in three languages
; English, Italian and German 

section .data
	textEng db "Hello, World!", 10
	textIta db "Ciao, Mondo!", 10
	textDeu db "Hallo, Welt!", 10

section .text
	global _start

_start:

	; print the english phrase
	mov rax, 1
	mov rdi, 1
	mov rsi, textEng
	mov rdx, 14         ; string length
	syscall

	; print the italian phrase
	mov rax, 1
	mov rdi, 1
	mov rsi, textIta
	mov rdx, 13         ; string length
	syscall

	; print the german phrase
	mov rax, 1
	mov rdi, 1
	mov rsi, textDeu
	mov rdx, 13         ; string length
	syscall

	; program termination
	mov rax,60
	mov rdi,0
	syscall

