;this script asks for your name
;then displays "Welcome " + your Name

section .data
    ; ---- string costants ----
    question db "Name: ",
    greetings db "Welcome "

section .bss
    ; ---- actual global variables ----
    enteredUserName resb 16        ;reserve 16 bytes of data     

section .text
    ; ---- main program ----
    global _start

_start:
    ;execution of the subroutines
    call _printQuestion
    call _getName
    call _printReplyText
    call _printName

    ;program exit
    mov rax, 60
    mov rdi, 0
    syscall

_printQuestion:
    ;prints "Name: "
    mov rax, 1
    mov rdi, 1              ;1 = print data
    mov rsi, question
    mov rdx, 6              ;string lenght
    syscall
    ret

_getName:
    ;saves your name to the variable userName
    mov rax, 0
    mov rdi, 0              ;0 = ask for user input
    mov rsi, userName
    mov rdx, 16             ;MAX 16 chars
    syscall
    ret

_printReplyText:
    ;prints "Welcome "
    mov rax, 1
    mov rdi, 1              ;1 = print data
    mov rsi, greetings
    mov rdx, 8              ;string lenght
    syscall
    ret

_printName:
    ;prints the numbers of chars of the user name
    mov rax, 1
    mov rdi, 1
    mov rsi, enteredUserName
    mov rdx, 16             ;MAX 16 chars
    syscall
    ret
