BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL strstr ; Export 'main'

strstr:
    PUSH RBP ; Prologue:
    MOV RBP, RSP ; Stack frame setup

    XOR RCX, RCX
    XOR RDX, RDX
    XOR R8B, R8B
    XOR R9B, R9B
    jmp _Loop  ; Function call: printf(str)

_Loop:
    cmp [RDI], byte 0 ; On regarde si on est à la fin de notre string
    jz _Cya ; si oui on quitte
    cmp [RSI], byte 0
    jz _Cya
    mov R8B, [RDI]
    mov R9B, [RSI]
    cmp R8B, R9B
    jnz _GoNext
    inc RDX
    inc RDI
    inc RSI
    jmp _Loop

_GoNext:
    sub RDI, RDX
    sub RSI, RDX
    XOR RDX, RDX
    inc RDI
    jmp _Loop

_Cya:
    XOR RAX, RAX
    sub RDI, RDX
    cmp [RDI], byte 0
    jz _CyaNull
    mov RAX, RDI
    pop RBP
    RET; Return

_CyaNull:
    mov RAX, 0
    pop RBP
    RET; Return