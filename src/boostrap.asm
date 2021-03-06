BITS 64 ; 64-bit mode
	
SECTION .text ; Code section
	
GLOBAL main ; Export 'main'
EXTERN printf ; Import 'printf'

main:
	PUSH RBP ; Prologue:
	MOV RBP, RSP ; Stack frame setup

	MOV RDI, str ; First parameter
	CALL printf  ; Function call: printf(str)
	;; WARNING: won't work! (cf. calling conventions)
	MOV RAX, 60 ; exit() syscall number
	XOR RDI, RDI ; RDI = 0 (first parameter)
	SYSCALL ; System call: exit(0)

	LEAVE ; Epilogue
	RET ; Return

SECTION .rodata ; Read-only data
	
str: DB 'Hello, World!', 0Ah, 0 ; Format string for printf()
