.386
.MODEL FLAT
EXTERN _LDST:NEAR32
EXTERN _smart:NEAR32

.DATA

.CODE

_init:
	push eax	; &oldState�� stack�� ����
	call _smart
	call _LDST
PUBLIC _init
	
END
