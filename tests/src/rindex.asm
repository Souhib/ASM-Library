BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL my_rindex ; Export 'main'

my_rindex:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR R8, R8
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp [RDI], byte 0
    jz _Cya
    cmp [RDI], sil
    jz _PutInTmp
    inc RDI
    jmp _Loop

_PutInTmp:
    XOR R8, R8
    mov R8, RDI
    inc RDI
    jmp _Loop

_Cya:
    cmp sil, byte 0
    jz _CyaNull
    mov RAX, R8
    pop RBP
    RET; Return

_CyaNull:
    mov R8, RDI
    mov RAX, R8
    pop RBP
    RET