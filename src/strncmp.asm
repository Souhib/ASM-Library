BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL strncmp ; Export 'main'

strncmp:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RAX, RAX
    XOR RCX, RCX

    jmp _Loop  ; Function call: printf(str)

_Loop:

    cmp RCX, RDX
    jz _Cya
    mov R8B, [RDI]
    mov R9B, [RSI]
    cmp R8B, byte 0
    jz _Cya
    cmp R9B, byte 0
    jz _Cya
    cmp R8B, R9B
    jnz _Cya

    inc RDI
    inc RSI
    inc RCX
    jmp _Loop

_Cya:
    sub R8B, R9B
    movsx RAX, R8B
    pop RBP
    RET; Return