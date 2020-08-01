BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL my_strchr ; Export 'main'

my_strchr:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RCX, RCX
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp [RDI], sil
    jz _CyaBites
    cmp [RDI], byte 0
    jz _CyaNull
    inc RDI
    jmp _Loop

_CyaBites:
    mov RAX, RDI
    pop RBP
    RET; Return

_CyaNull:
    mov RAX, 0
    pop RBP
    RET; Return