BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL my_memset ; Export 'main'

my_memset:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RCX, RCX
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp RCX, RDX
    jz _Cya
    mov [RDI], SIL
    inc RDI
    inc RCX
    jmp _Loop

_Cya:
    sub RDI, RCX
    mov RAX, RDI
    pop RBP
    RET; Return