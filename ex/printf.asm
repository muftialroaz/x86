global main
extern printf, fflush

section .data
    fmt     db  "%d", 10, 0
    x       dd  5000

section .text
    main:
            ; printf(fmt, x);
            push dword [x]
            push fmt
            call printf
            add esp, 8          ; pop, pop

            ; fflush(0)
            push 0
            call fflush
            add esp, 4          ; pop

            ; exit(0)
            mov eax, 1
            mov ebx, 0
            int 0x80
