BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL strcasecmp ; Export 'main'

strcasecmp:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup
    XOR R8B, R8B
    XOR R9B, R9B
    jmp _Loop  ; Function call: printf(str)

_Loop:
    XOR R8B, R8B
    XOR R9B, R9B
    mov R8B, [RDI]
    mov R9B, [RSI]
    cmp R8B, byte 0
    jz _Cya
    cmp R9B, byte 0
    jz _Cya
    cmp R8B, byte 97			;if(eax >= 97)
    jge _incLowerS1			;goto inc_lowe
    cmp R9B, byte 97			;if(eax >= 97)
    jge _incLowerS2			;goto inc_lowe
    cmp R8B, R9B
    jnz _Cya

    inc RDI
    inc RSI
    jmp _Loop

_incLowerS1:
    sub R8B, 32

_incLowerS2:
    sub R9B, 32

_Cya:
    sub R8B, R9B
    movsx RAX, R8B
    pop RBP
    RET; Return

    ;sub     REG1, REG2
    ;movsx   RAX, REG1
    ;ret