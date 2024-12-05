```assembly
section .data
    array dw 10, 20, 30, 40, 50
    array_len equ ($-array)/2 ; Correctly calculate the number of WORD elements

section .bss
    sum resd 1 ; Reserve space for the sum

section .text
    global _start

_start:
    ; Initialize sum to 0
    mov dword [sum], 0

    ; Loop through the array
    mov esi, array ; Load the address of the array into esi
    mov ecx, array_len ; Load the length of the array into ecx

loop_start:
    add word [sum], [esi] ; Add the current element to the sum
    add esi, 2 ; Move to the next element (2 bytes per word)
    loop loop_start

    ; Print the sum (requires external library or system call, omitted here for brevity)
    ; ...

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```