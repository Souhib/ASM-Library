BITS 64 ; 64-bit mode

SECTION .text ; Code section
GLOBAL my_strpbrk ; Export 'main'

my_strpbrk:
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
    jmp _CheckEachChar

_CheckEachChar:
    cmp [RSI], byte 0 ; Regarde si la string 2 est finie
    jz _ClearString ; Si oui on la remet au début
    mov R8B, [RDI]
    mov R9B, [RSI] ; On met [RSI] dans R9B
    cmp R8B, R9B ; On compare R8B et R8B
    jz _Cya ; Si il sont égaux on quitte le programme
    inc RSI ; On incrémente RSI
    inc RDX ; on incrémente RDX (Compteur de la 2eme string)
    XOR R8B, R8B ; on reinitialise le char
    XOR R9B, R9B ; on reinitialise le char
    jmp _Loop ; On reboucle dessus

_ClearString:
    sub RSI, RDX ; On reinitialise la string
    XOR RDX, RDX ; on reinitialise le compteur
    inc RDI ; on incrémente la string principal
    inc RCX ; on incrémente le compteur
    jmp _Loop

_Cya:
    XOR RAX, RAX
    cmp [RDI], byte 0
    jz _CyaNull
    mov RAX, RDI
    pop RBP
    RET; Return

_CyaNull:
    mov RAX, 0
    pop RBP
    RET; Return