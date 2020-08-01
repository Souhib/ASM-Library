BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL strcmp ; Export 'main'

strcmp:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup
    jmp _Loop  ; Function call: printf(str)

_Loop:

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
    jmp _Loop

_Cya:
    sub R8B, R9B
    movsx RAX, R8B
    pop RBP
    RET; Return

    ;sub     REG1, REG2
    ;movsx   RAX, REG1
    ;ret