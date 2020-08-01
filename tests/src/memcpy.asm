BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL my_memcpy ; Export 'main'

my_memcpy:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RCX, RCX
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp RCX, RDX
    jz _Cya

    mov R9B, [RSI]
    cmp R9B, byte 0
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