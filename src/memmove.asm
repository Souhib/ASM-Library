BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL memmove ; Export 'main'

memmove:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RCX, RCX
    XOR R8B, R8B
    XOR R9B, R9B
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp RCX, RDX
    jz _Cya
    mov R8B, [RDI]
    mov R9B, [RSI]
    cmp R8B, byte 0
    jz _Cya
    cmp R8B, byte 0
    jz _Cya
    mov [RDI], R9B
    inc RDI
    inc RSI
    inc RCX
    jmp _Loop

_Cya:
    sub RDI, RCX
    mov RAX, RDI
    pop RBP
    RET; Return