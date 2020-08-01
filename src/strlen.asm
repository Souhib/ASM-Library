BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL strlen ; Export 'main'

strlen:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RCX, RCX
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp [RDI], byte 0
    jz _Cya
    inc RDI
    inc RCX
    jmp _Loop

_Cya:
    mov RAX, RCX
    pop RBP
    RET; Return