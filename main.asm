; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

	TITLE	C:\Users\Sujin\Desktop\포트폴리오\context switching\소스\main.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_Print_R
PUBLIC	_Print_Help
PUBLIC	_Memory_Clear
PUBLIC	_Memory_Modify
PUBLIC	_Memory_Display
PUBLIC	_View_Code
PUBLIC	_View_Data
PUBLIC	_View_Stack
PUBLIC	_Load
PUBLIC	_Go
PUBLIC	_Quit
_DATA	SEGMENT
COMM	_vpMem_Start:DWORD
COMM	_vpMem_End:DWORD
COMM	_vpCode:DWORD
COMM	_vpData:DWORD
COMM	_vpStack:DWORD
COMM	_uiLoad:DWORD
_DATA	ENDS
_DATA	SEGMENT
_stCmdMap DD	FLAT:$SG81994
	DD	FLAT:_Print_R
	DD	FLAT:$SG81995
	DD	FLAT:_Print_Help
	DD	FLAT:$SG81996
	DD	FLAT:_Memory_Clear
	DD	FLAT:$SG81997
	DD	FLAT:_Memory_Modify
	DD	FLAT:$SG81998
	DD	FLAT:_Memory_Display
	DD	FLAT:$SG81999
	DD	FLAT:_View_Code
	DD	FLAT:$SG82000
	DD	FLAT:_View_Data
	DD	FLAT:$SG82001
	DD	FLAT:_View_Stack
	DD	FLAT:$SG82002
	DD	FLAT:_Load
	DD	FLAT:$SG82003
	DD	FLAT:_Go
	DD	FLAT:$SG82004
	DD	FLAT:_Quit
	DD	FLAT:$SG82005
	DD	FLAT:_Quit
	DD	00H
	DD	00H
$SG81994 DB	'R', 00H
	ORG $+2
$SG81995 DB	'H', 00H
	ORG $+2
$SG81996 DB	'MC', 00H
	ORG $+1
$SG81997 DB	'MM', 00H
	ORG $+1
$SG81998 DB	'MD', 00H
	ORG $+1
$SG81999 DB	'CODE', 00H
	ORG $+3
$SG82000 DB	'DATA', 00H
	ORG $+3
$SG82001 DB	'STACK', 00H
	ORG $+2
$SG82002 DB	'LOAD', 00H
	ORG $+3
$SG82003 DB	'GO', 00H
	ORG $+1
$SG82004 DB	'Q', 00H
	ORG $+2
$SG82005 DB	'QUIT', 00H
	ORG $+3
$SG82021 DB	'mallod fail...', 0aH, 00H
$SG82030 DB	'vpMem_Start: 0x%08X', 0aH, 00H
	ORG $+3
$SG82031 DB	'vpMem_End  : 0x%08X', 0aH, 00H
	ORG $+3
$SG82032 DB	'vpCode     : 0x%08X', 0aH, 00H
	ORG $+3
$SG82035 DB	'Size       : %d KB', 0aH, 00H
$SG82036 DB	'Monitor Program Start...', 0aH, 00H
	ORG $+2
$SG82055 DB	'EAX: 0x%08X   EBX: 0x%08X   ECX: 0x%08X   EDX: 0x%08X', 0aH
	DB	00H
	ORG $+1
$SG82057 DB	'EIP: 0x%08X   EFL: 0x%08X', 0aH, 0aH, 00H
$SG82054 DB	'========================== Register Status ============='
	DB	'=============', 0aH, 00H
	ORG $+1
$SG82056 DB	'ESI: 0x%08X   EDI: 0x%08X   ESP: 0x%08X   EBP: 0x%08X', 0aH
	DB	00H
	ORG $+1
$SG82060 DB	'R       : Print Register Status', 0aH, 00H
	ORG $+3
$SG82061 DB	'MC      : Memory Clear', 0aH, 00H
$SG82062 DB	'MM      : Memory Modify', 0aH, 00H
	ORG $+3
$SG82063 DB	'MD      : Memory Display', 0aH, 00H
	ORG $+2
$SG82064 DB	'LOAD    : Program Load', 0aH, 00H
$SG82065 DB	'CODE    : Code Area Display', 0aH, 00H
	ORG $+3
$SG82066 DB	'DATA    : Data Area Display', 0aH, 00H
	ORG $+3
$SG82067 DB	'STACK   : Stack Area Display', 0aH, 00H
	ORG $+2
$SG82068 DB	'GO      : Program Start', 0aH, 00H
	ORG $+3
$SG82069 DB	'H       : Print Command List', 0aH, 00H
	ORG $+2
$SG82070 DB	'Quit(Q) : Exit Program', 0aH, 00H
$SG82073 DB	'Memory Clear Complete', 0aH, 00H
	ORG $+1
$SG82081 DB	0b8H, 0deH, 0b8H, 0f0H, 0b8H, 0aeH, ' ', 0c1H, 0d6H, 0bcH
	DB	0d2H, 0b8H, 0a6H, ' ', 0c0H, 0d4H, 0b7H, 0c2H, 0c7H, 0cfH, 0bcH
	DB	0bcH, 0bfH, 0e4H, '(0x%08X ~ 0x%08X): ', 00H
$SG82082 DB	'%X', 00H
	ORG $+1
$SG82085 DB	' -- Error', 0aH, 00H
	ORG $+1
$SG82088 DB	' -- Error', 0aH, 00H
	ORG $+1
$SG82090 DB	0bcH, 0f6H, 0c1H, 0a4H, 0c7H, 0d2H, ' ', 0b0H, 0aaH, '(16'
	DB	0c1H, 0f8H, 0bcH, 0f6H, '): ', 00H
$SG82091 DB	'%X', 00H
	ORG $+1
$SG82100 DB	0b8H, 0deH, 0b8H, 0f0H, 0b8H, 0aeH, ' ', 0c1H, 0d6H, 0bcH
	DB	0d2H, 0b8H, 0a6H, ' ', 0c0H, 0d4H, 0b7H, 0c2H, 0c7H, 0cfH, 0bcH
	DB	0bcH, 0bfH, 0e4H, '(0x%08X ~ 0x%08X): ', 00H
$SG82101 DB	'%X', 00H
	ORG $+1
$SG82104 DB	' -- Error', 0aH, 00H
	ORG $+1
$SG82107 DB	' -- Error', 0aH, 00H
	ORG $+1
$SG82113 DB	0c0H, 0fbH, 0c0H, 0e7H, 0b5H, 0c8H, ' ', 0c7H, 0c1H, 0b7H
	DB	0ceH, 0b1H, 0d7H, 0b7H, 0a5H, 0c0H, 0ccH, ' ', 0beH, 0f8H, 0bdH
	DB	0c0H, 0b4H, 0cfH, 0b4H, 0d9H, 0aH, 00H
$SG82118 DB	'System Panic', 0aH, 00H
	ORG $+2
$SG82131 DB	0c0H, 0d0H, 0beH, 0eeH, 0b5H, 0e9H, 0c0H, 0cfH, ' ', 0c6H
	DB	0c4H, 0c0H, 0cfH, 0b8H, 0edH, 0c0H, 0bbH, ' ', 0c0H, 0d4H, 0b7H
	DB	0c2H, 0c7H, 0cfH, 0bcH, 0bcH, 0bfH, 0e4H, ':: ', 00H
$SG82136 DB	'[%s]', 0b8H, 0a6H, ' ', 0bfH, 0adH, ' ', 0bcH, 0f6H, ' ', 0beH
	DB	0f8H, 0bdH, 0c0H, 0b4H, 0cfH, 0b4H, 0d9H, 0aH, 00H
	ORG $+1
$SG82141 DB	'[%s]', 0b8H, 0a6H, ' ', 0c0H, 0d0H, 0c0H, 0bbH, ' ', 0bcH
	DB	0f6H, ' ', 0beH, 0f8H, 0bdH, 0c0H, 0b4H, 0cfH, 0b4H, 0d9H, 0aH
	DB	00H
	ORG $+3
$SG82151 DB	0c7H, 0c1H, 0b7H, 0ceH, 0b1H, 0d7H, 0b7H, 0a5H, ' ', 0c0H
	DB	0fbH, 0c0H, 0e7H, ' ', 0bdH, 0c7H, 0c6H, 0d0H, 0aH, 00H
$SG82154 DB	'[%s]', 0b8H, 0a6H, ' ', 0c0H, 0d0H, 0c0H, 0bbH, ' ', 0bcH
	DB	0f6H, ' ', 0beH, 0f8H, 0bdH, 0c0H, 0b4H, 0cfH, 0b4H, 0d9H, 0aH
	DB	00H
	ORG $+3
$SG82156 DB	'.data', 00H
	ORG $+2
$SG82159 DB	'.text', 00H
	ORG $+2
$SG82162 DB	0c7H, 0c1H, 0b7H, 0ceH, 0b1H, 0d7H, 0b7H, 0a5H, ' ', 0c0H
	DB	0fbH, 0c0H, 0e7H, ' ', 0bdH, 0c7H, 0c6H, 0d0H, 0aH, 00H
$SG82164 DB	'[%s]', 0b8H, 0a6H, ' ', 0c0H, 0d0H, 0c0H, 0bbH, ' ', 0bcH
	DB	0f6H, ' ', 0beH, 0f8H, 0bdH, 0c0H, 0b4H, 0cfH, 0b4H, 0d9H, 0aH
	DB	00H
	ORG $+3
$SG82166 DB	'[%s] ', 0c0H, 0fbH, 0c0H, 0e7H, ' ', 0bfH, 0cfH, 0b7H, 0e1H
	DB	0aH, 00H
$SG82168 DB	'[%s]', 0c0H, 0ccH, ' ', 0c1H, 0b8H, 0c0H, 0e7H, 0c7H, 0cfH
	DB	0c1H, 0f6H, ' ', 0beH, 0caH, 0bdH, 0c0H, 0b4H, 0cfH, 0b4H, 0d9H
	DB	0aH, 00H
	ORG $+2
$SG82190 DB	' 0x%08X  ', 00H
	ORG $+2
$SG82184 DB	'========================================================'
	DB	'=======================', 0aH, 00H
	ORG $+3
$SG82195 DB	'%02X ', 00H
	ORG $+2
$SG82209 DB	'%c', 00H
	ORG $+1
$SG82185 DB	' Address                           Hexa                 '
	DB	'             ASCII', 0aH, 00H
$SG82219 DB	'             Stack', 0aH, 00H
$SG82186 DB	'--------------------------------------------------------'
	DB	'-----------------------', 0aH, 00H
	ORG $+3
$SG82218 DB	'==============================', 0aH, 00H
$SG82220 DB	'------------------------------', 0aH, 00H
$SG82225 DB	' 0x%08X  ', 00H
	ORG $+2
$SG82230 DB	'%02X ', 00H
	ORG $+2
$SG82244 DB	'%c', 00H
_DATA	ENDS
PUBLIC	_Hexa_View
PUBLIC	_Stack_View
PUBLIC	_main
EXTRN	___report_rangecheckfailure:PROC
EXTRN	___iob_func:PROC
EXTRN	_fflush:PROC
EXTRN	_printf:PROC
EXTRN	_putchar:PROC
EXTRN	_scanf:PROC
EXTRN	_memset:PROC
EXTRN	_strcmp:PROC
EXTRN	_strncmp:PROC
EXTRN	_toupper:PROC
EXTRN	_exit:PROC
EXTRN	_free:PROC
EXTRN	_malloc:PROC
EXTRN	_STST:PROC
EXTRN	_LDST:PROC
EXTRN	_read:PROC
EXTRN	_open:PROC
EXTRN	_close:PROC
EXTRN	_lseek:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	___security_cookie:DWORD
_BSS	SEGMENT
_stOldState DB	028H DUP (?)
_BSS	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
$T1 = -40						; size = 4
_iRet$ = -36						; size = 4
_i$ = -32						; size = 4
_stpCmd$ = -28						; size = 4
_cInput$ = -24						; size = 20
__$ArrayPad$ = -4					; size = 4
_main	PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 84
	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 91
	push	131072					; 00020000H
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _vpMem_Start, eax
; Line 92
	cmp	DWORD PTR _vpMem_Start, 0
	jne	SHORT $LN12@main
; Line 94
	push	OFFSET $SG82021
	call	_printf
	add	esp, 4
; Line 95
	xor	eax, eax
	jmp	$LN14@main
$LN12@main:
; Line 97
	mov	eax, DWORD PTR _vpMem_Start
	add	eax, 131071				; 0001ffffH
	mov	DWORD PTR _vpMem_End, eax
; Line 98
	mov	ecx, DWORD PTR _vpMem_Start
	and	ecx, -65536				; ffff0000H
	add	ecx, 65536				; 00010000H
	mov	DWORD PTR _vpCode, ecx
; Line 99
	mov	edx, DWORD PTR _vpCode
	add	edx, 8192				; 00002000H
	mov	DWORD PTR _vpData, edx
; Line 100
	mov	eax, DWORD PTR _vpMem_End
	add	eax, 1
	mov	DWORD PTR _vpStack, eax
; Line 102
	mov	DWORD PTR _uiLoad, 0
; Line 104
	mov	ecx, DWORD PTR _vpMem_Start
	push	ecx
	push	OFFSET $SG82030
	call	_printf
	add	esp, 8
; Line 105
	mov	edx, DWORD PTR _vpMem_End
	push	edx
	push	OFFSET $SG82031
	call	_printf
	add	esp, 8
; Line 106
	mov	eax, DWORD PTR _vpCode
	push	eax
	push	OFFSET $SG82032
	call	_printf
	add	esp, 8
; Line 107
	mov	eax, DWORD PTR _vpMem_End
	sub	eax, DWORD PTR _vpMem_Start
	add	eax, 1
	cdq
	and	edx, 1023				; 000003ffH
	add	eax, edx
	sar	eax, 10					; 0000000aH
	push	eax
	push	OFFSET $SG82035
	call	_printf
	add	esp, 8
; Line 110
	push	OFFSET _stOldState
	call	_STST
	add	esp, 4
; Line 111
	push	OFFSET $SG82036
	call	_printf
	add	esp, 4
$LN11@main:
; Line 113
	mov	ecx, 1
	test	ecx, ecx
	je	$LN10@main
; Line 115
	push	62					; 0000003eH
	call	_putchar
	add	esp, 4
; Line 116
	push	20					; 00000014H
	lea	edx, DWORD PTR _cInput$[ebp]
	push	edx
	push	0
	call	_read
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 117
	cmp	DWORD PTR _iRet$[ebp], 1
	jne	SHORT $LN9@main
; Line 119
	jmp	SHORT $LN11@main
$LN9@main:
; Line 121
	mov	eax, DWORD PTR _iRet$[ebp]
	sub	eax, 1
	mov	DWORD PTR $T1[ebp], eax
	cmp	DWORD PTR $T1[ebp], 20			; 00000014H
	jae	SHORT $LN15@main
	jmp	SHORT $LN16@main
$LN15@main:
	call	___report_rangecheckfailure
$LN16@main:
	mov	ecx, DWORD PTR $T1[ebp]
	mov	BYTE PTR _cInput$[ebp+ecx], 0
; Line 123
	mov	DWORD PTR _stpCmd$[ebp], OFFSET _stCmdMap
; Line 125
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN8@main
$LN7@main:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
$LN8@main:
	mov	eax, DWORD PTR _i$[ebp]
	movsx	ecx, BYTE PTR _cInput$[ebp+eax]
	test	ecx, ecx
	je	SHORT $LN5@main
; Line 127
	mov	edx, DWORD PTR _i$[ebp]
	movsx	eax, BYTE PTR _cInput$[ebp+edx]
	push	eax
	call	_toupper
	add	esp, 4
	mov	ecx, DWORD PTR _i$[ebp]
	mov	BYTE PTR _cInput$[ebp+ecx], al
; Line 128
	jmp	SHORT $LN7@main
$LN5@main:
; Line 129
	mov	edx, DWORD PTR _stpCmd$[ebp]
	cmp	DWORD PTR [edx+4], 0
	je	SHORT $LN4@main
; Line 131
	mov	eax, DWORD PTR _stpCmd$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	lea	edx, DWORD PTR _cInput$[ebp]
	push	edx
	call	_strcmp
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN3@main
; Line 133
	jmp	SHORT $LN4@main
$LN3@main:
; Line 135
	mov	eax, DWORD PTR _stpCmd$[ebp]
	add	eax, 8
	mov	DWORD PTR _stpCmd$[ebp], eax
; Line 136
	jmp	SHORT $LN5@main
$LN4@main:
; Line 138
	mov	ecx, DWORD PTR _stpCmd$[ebp]
	cmp	DWORD PTR [ecx+4], 0
	je	SHORT $LN2@main
; Line 140
	mov	edx, DWORD PTR _stpCmd$[ebp]
	mov	eax, DWORD PTR [edx+4]
	call	eax
; Line 142
	jmp	SHORT $LN1@main
$LN2@main:
; Line 144
	call	_Print_Help
$LN1@main:
; Line 147
	jmp	$LN11@main
$LN10@main:
; Line 149
	xor	eax, eax
$LN14@main:
; Line 150
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_uiLine$ = -8						; size = 4
_uiCnt$ = -4						; size = 4
_vp$ = 8						; size = 4
_uilen$ = 12						; size = 4
_Stack_View PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 464
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 468
	push	OFFSET $SG82218
	call	_printf
	add	esp, 4
; Line 469
	push	OFFSET $SG82219
	call	_printf
	add	esp, 4
; Line 470
	push	OFFSET $SG82220
	call	_printf
	add	esp, 4
; Line 472
	mov	eax, DWORD PTR _uilen$[ebp]
	shl	eax, 2
	mov	ecx, DWORD PTR _vp$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _vp$[ebp], ecx
; Line 474
	mov	DWORD PTR _uiLine$[ebp], 0
	jmp	SHORT $LN14@Stack_View
$LN13@Stack_View:
	mov	edx, DWORD PTR _uiLine$[ebp]
	add	edx, 1
	mov	DWORD PTR _uiLine$[ebp], edx
$LN14@Stack_View:
	mov	eax, DWORD PTR _uiLine$[ebp]
	cmp	eax, DWORD PTR _uilen$[ebp]
	jae	$LN15@Stack_View
; Line 476
	mov	ecx, DWORD PTR _vp$[ebp]
	push	ecx
	push	OFFSET $SG82225
	call	_printf
	add	esp, 8
; Line 478
	mov	DWORD PTR _uiCnt$[ebp], 0
	jmp	SHORT $LN11@Stack_View
$LN10@Stack_View:
	mov	edx, DWORD PTR _uiCnt$[ebp]
	add	edx, 1
	mov	DWORD PTR _uiCnt$[ebp], edx
$LN11@Stack_View:
	cmp	DWORD PTR _uiCnt$[ebp], 4
	jae	SHORT $LN9@Stack_View
; Line 480
	mov	eax, DWORD PTR _vp$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	push	OFFSET $SG82230
	call	_printf
	add	esp, 8
; Line 481
	mov	edx, DWORD PTR _vp$[ebp]
	add	edx, 1
	mov	DWORD PTR _vp$[ebp], edx
; Line 482
	cmp	DWORD PTR _uiCnt$[ebp], 7
	jne	SHORT $LN8@Stack_View
	push	32					; 00000020H
	call	_putchar
	add	esp, 4
$LN8@Stack_View:
; Line 483
	jmp	SHORT $LN10@Stack_View
$LN9@Stack_View:
; Line 484
	mov	eax, DWORD PTR _vp$[ebp]
	sub	eax, 4
	mov	DWORD PTR _vp$[ebp], eax
; Line 486
	push	32					; 00000020H
	call	_putchar
	add	esp, 4
; Line 487
	mov	DWORD PTR _uiCnt$[ebp], 0
	jmp	SHORT $LN7@Stack_View
$LN6@Stack_View:
	mov	ecx, DWORD PTR _uiCnt$[ebp]
	add	ecx, 1
	mov	DWORD PTR _uiCnt$[ebp], ecx
$LN7@Stack_View:
	cmp	DWORD PTR _uiCnt$[ebp], 4
	jae	SHORT $LN5@Stack_View
; Line 489
	mov	edx, DWORD PTR _vp$[ebp]
	movzx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	jge	SHORT $LN4@Stack_View
; Line 491
	push	46					; 0000002eH
	call	_putchar
	add	esp, 4
	jmp	SHORT $LN3@Stack_View
$LN4@Stack_View:
; Line 493
	mov	ecx, DWORD PTR _vp$[ebp]
	movzx	edx, BYTE PTR [ecx]
	cmp	edx, 127				; 0000007fH
	jle	SHORT $LN2@Stack_View
; Line 495
	push	46					; 0000002eH
	call	_putchar
	add	esp, 4
; Line 497
	jmp	SHORT $LN3@Stack_View
$LN2@Stack_View:
; Line 499
	mov	eax, DWORD PTR _vp$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	push	OFFSET $SG82244
	call	_printf
	add	esp, 8
$LN3@Stack_View:
; Line 502
	mov	edx, DWORD PTR _vp$[ebp]
	add	edx, 1
	mov	DWORD PTR _vp$[ebp], edx
; Line 503
	jmp	SHORT $LN6@Stack_View
$LN5@Stack_View:
; Line 505
	push	10					; 0000000aH
	call	_putchar
	add	esp, 4
; Line 506
	jmp	$LN13@Stack_View
$LN15@Stack_View:
; Line 509
	mov	esp, ebp
	pop	ebp
	ret	0
_Stack_View ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_uiLine$ = -8						; size = 4
_uiCnt$ = -4						; size = 4
_vp$ = 8						; size = 4
_uilen$ = 12						; size = 4
_Hexa_View PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 418
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 422
	push	OFFSET $SG82184
	call	_printf
	add	esp, 4
; Line 423
	push	OFFSET $SG82185
	call	_printf
	add	esp, 4
; Line 424
	push	OFFSET $SG82186
	call	_printf
	add	esp, 4
; Line 426
	mov	DWORD PTR _uiLine$[ebp], 0
	jmp	SHORT $LN14@Hexa_View
$LN13@Hexa_View:
	mov	eax, DWORD PTR _uiLine$[ebp]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _uiLine$[ebp], eax
$LN14@Hexa_View:
	mov	ecx, DWORD PTR _uiLine$[ebp]
	cmp	ecx, DWORD PTR _uilen$[ebp]
	jae	$LN15@Hexa_View
; Line 428
	mov	edx, DWORD PTR _vp$[ebp]
	push	edx
	push	OFFSET $SG82190
	call	_printf
	add	esp, 8
; Line 430
	mov	DWORD PTR _uiCnt$[ebp], 0
	jmp	SHORT $LN11@Hexa_View
$LN10@Hexa_View:
	mov	eax, DWORD PTR _uiCnt$[ebp]
	add	eax, 1
	mov	DWORD PTR _uiCnt$[ebp], eax
$LN11@Hexa_View:
	cmp	DWORD PTR _uiCnt$[ebp], 16		; 00000010H
	jae	SHORT $LN9@Hexa_View
; Line 432
	mov	ecx, DWORD PTR _vp$[ebp]
	movzx	edx, BYTE PTR [ecx]
	push	edx
	push	OFFSET $SG82195
	call	_printf
	add	esp, 8
; Line 433
	mov	eax, DWORD PTR _vp$[ebp]
	add	eax, 1
	mov	DWORD PTR _vp$[ebp], eax
; Line 434
	cmp	DWORD PTR _uiCnt$[ebp], 7
	jne	SHORT $LN8@Hexa_View
	push	32					; 00000020H
	call	_putchar
	add	esp, 4
$LN8@Hexa_View:
; Line 435
	jmp	SHORT $LN10@Hexa_View
$LN9@Hexa_View:
; Line 436
	mov	ecx, DWORD PTR _vp$[ebp]
	sub	ecx, 16					; 00000010H
	mov	DWORD PTR _vp$[ebp], ecx
; Line 438
	push	32					; 00000020H
	call	_putchar
	add	esp, 4
; Line 439
	mov	DWORD PTR _uiCnt$[ebp], 0
	jmp	SHORT $LN7@Hexa_View
$LN6@Hexa_View:
	mov	edx, DWORD PTR _uiCnt$[ebp]
	add	edx, 1
	mov	DWORD PTR _uiCnt$[ebp], edx
$LN7@Hexa_View:
	cmp	DWORD PTR _uiCnt$[ebp], 16		; 00000010H
	jae	SHORT $LN5@Hexa_View
; Line 441
	mov	eax, DWORD PTR _vp$[ebp]
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, 32					; 00000020H
	jge	SHORT $LN4@Hexa_View
; Line 443
	push	46					; 0000002eH
	call	_putchar
	add	esp, 4
	jmp	SHORT $LN3@Hexa_View
$LN4@Hexa_View:
; Line 445
	mov	edx, DWORD PTR _vp$[ebp]
	movzx	eax, BYTE PTR [edx]
	cmp	eax, 127				; 0000007fH
	jle	SHORT $LN2@Hexa_View
; Line 447
	push	46					; 0000002eH
	call	_putchar
	add	esp, 4
; Line 449
	jmp	SHORT $LN3@Hexa_View
$LN2@Hexa_View:
; Line 451
	mov	ecx, DWORD PTR _vp$[ebp]
	movzx	edx, BYTE PTR [ecx]
	push	edx
	push	OFFSET $SG82209
	call	_printf
	add	esp, 8
$LN3@Hexa_View:
; Line 454
	mov	eax, DWORD PTR _vp$[ebp]
	add	eax, 1
	mov	DWORD PTR _vp$[ebp], eax
; Line 455
	jmp	SHORT $LN6@Hexa_View
$LN5@Hexa_View:
; Line 457
	push	10					; 0000000aH
	call	_putchar
	add	esp, 4
; Line 458
	jmp	$LN13@Hexa_View
$LN15@Hexa_View:
; Line 461
	mov	esp, ebp
	pop	ebp
	ret	0
_Hexa_View ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_Quit	PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 412
	push	ebp
	mov	ebp, esp
; Line 413
	mov	eax, DWORD PTR _vpMem_Start
	push	eax
	call	_free
	add	esp, 4
; Line 414
	push	0
	call	_exit
$LN2@Quit:
; Line 415
	pop	ebp
	ret	0
_Quit	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_stTmpState$ = -44					; size = 40
__$ArrayPad$ = -4					; size = 4
_Go	PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 257
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 260
	cmp	DWORD PTR _uiLoad, 0
	jne	SHORT $LN1@Go
; Line 262
	push	OFFSET $SG82113
	call	_printf
	add	esp, 4
; Line 263
	jmp	SHORT $LN2@Go
$LN1@Go:
; Line 265
	push	40					; 00000028H
	push	0
	lea	eax, DWORD PTR _stTmpState$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
; Line 267
	mov	ecx, DWORD PTR _vpStack
	mov	DWORD PTR _stTmpState$[ebp+20], ecx
; Line 268
	mov	edx, DWORD PTR _vpCode
	mov	DWORD PTR _stTmpState$[ebp], edx
; Line 269
	mov	DWORD PTR _stTmpState$[ebp+36], OFFSET _stOldState
; Line 271
	lea	eax, DWORD PTR _stTmpState$[ebp]
	push	eax
	call	_LDST
	add	esp, 4
; Line 272
	push	OFFSET $SG82118
	call	_printf
	add	esp, 4
$LN2@Go:
; Line 275
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_Go	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_iNumOfSec$ = -100					; size = 4
_iSH$ = -96						; size = 4
_stpDosH$ = -92						; size = 4
$T1 = -88						; size = 4
_vpTmp$ = -84						; size = 4
_stpNtH$ = -80						; size = 4
_i$ = -76						; size = 4
_iFd$ = -72						; size = 4
_iRet$ = -68						; size = 4
_stSecH$ = -64						; size = 40
_cBuf$ = -24						; size = 20
__$ArrayPad$ = -4					; size = 4
_Load	PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 278
	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 289
	call	_Memory_Clear
; Line 291
	push	OFFSET $SG82131
	call	_printf
	add	esp, 4
; Line 292
	push	20					; 00000014H
	lea	eax, DWORD PTR _cBuf$[ebp]
	push	eax
	push	0
	call	_read
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 293
	cmp	DWORD PTR _iRet$[ebp], 1
	jne	SHORT $LN16@Load
; Line 295
	jmp	$LN18@Load
$LN16@Load:
; Line 297
	mov	ecx, DWORD PTR _iRet$[ebp]
	sub	ecx, 1
	mov	DWORD PTR $T1[ebp], ecx
	cmp	DWORD PTR $T1[ebp], 20			; 00000014H
	jae	SHORT $LN19@Load
	jmp	SHORT $LN20@Load
$LN19@Load:
	call	___report_rangecheckfailure
$LN20@Load:
	mov	edx, DWORD PTR $T1[ebp]
	mov	BYTE PTR _cBuf$[ebp+edx], 0
; Line 299
	push	32768					; 00008000H
	lea	eax, DWORD PTR _cBuf$[ebp]
	push	eax
	call	_open
	add	esp, 8
	mov	DWORD PTR _iFd$[ebp], eax
; Line 300
	cmp	DWORD PTR _iFd$[ebp], 0
	jge	SHORT $LN15@Load
; Line 302
	lea	ecx, DWORD PTR _cBuf$[ebp]
	push	ecx
	push	OFFSET $SG82136
	call	_printf
	add	esp, 8
; Line 303
	jmp	$LN18@Load
$LN15@Load:
; Line 306
	push	312					; 00000138H
	mov	edx, DWORD PTR _vpMem_Start
	push	edx
	mov	eax, DWORD PTR _iFd$[ebp]
	push	eax
	call	_read
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 307
	cmp	DWORD PTR _iRet$[ebp], 0
	jge	SHORT $LN14@Load
; Line 309
	call	_Memory_Clear
; Line 310
	mov	ecx, DWORD PTR _iFd$[ebp]
	push	ecx
	call	_close
	add	esp, 4
; Line 311
	lea	edx, DWORD PTR _cBuf$[ebp]
	push	edx
	push	OFFSET $SG82141
	call	_printf
	add	esp, 8
; Line 312
	jmp	$LN18@Load
$LN14@Load:
; Line 315
	mov	eax, DWORD PTR _vpMem_Start
	mov	DWORD PTR _stpDosH$[ebp], eax
; Line 316
	mov	ecx, DWORD PTR _stpDosH$[ebp]
	mov	edx, DWORD PTR _vpMem_Start
	add	edx, DWORD PTR [ecx+60]
	mov	DWORD PTR _stpNtH$[ebp], edx
; Line 319
	mov	eax, DWORD PTR _stpDosH$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	mov	edx, DWORD PTR _stpNtH$[ebp]
	movzx	eax, WORD PTR [edx+20]
	lea	ecx, DWORD PTR [ecx+eax+24]
	mov	DWORD PTR _iSH$[ebp], ecx
; Line 320
	mov	edx, DWORD PTR _stpNtH$[ebp]
	movzx	eax, WORD PTR [edx+6]
	mov	DWORD PTR _iNumOfSec$[ebp], eax
; Line 322
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN13@Load
$LN12@Load:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$LN13@Load:
	mov	edx, DWORD PTR _i$[ebp]
	cmp	edx, DWORD PTR _iNumOfSec$[ebp]
	jge	$LN11@Load
; Line 325
	push	0
	imul	eax, DWORD PTR _i$[ebp], 40
	add	eax, DWORD PTR _iSH$[ebp]
	push	eax
	mov	ecx, DWORD PTR _iFd$[ebp]
	push	ecx
	call	_lseek
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 326
	cmp	DWORD PTR _iRet$[ebp], 0
	jge	SHORT $LN10@Load
; Line 328
	call	_Memory_Clear
; Line 329
	mov	edx, DWORD PTR _iFd$[ebp]
	push	edx
	call	_close
	add	esp, 4
; Line 330
	lea	eax, DWORD PTR _cBuf$[ebp]
	push	eax
	push	OFFSET $SG82151
	call	_printf
	add	esp, 8
; Line 331
	jmp	$LN18@Load
$LN10@Load:
; Line 334
	push	40					; 00000028H
	lea	ecx, DWORD PTR _stSecH$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iFd$[ebp]
	push	edx
	call	_read
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 335
	cmp	DWORD PTR _iRet$[ebp], 0
	jge	SHORT $LN9@Load
; Line 337
	call	_Memory_Clear
; Line 338
	mov	eax, DWORD PTR _iFd$[ebp]
	push	eax
	call	_close
	add	esp, 4
; Line 339
	lea	ecx, DWORD PTR _cBuf$[ebp]
	push	ecx
	push	OFFSET $SG82154
	call	_printf
	add	esp, 8
; Line 340
	jmp	$LN18@Load
$LN9@Load:
; Line 343
	push	5
	lea	edx, DWORD PTR _stSecH$[ebp]
	push	edx
	push	OFFSET $SG82156
	call	_strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN8@Load
; Line 345
	mov	eax, DWORD PTR _vpData
	mov	DWORD PTR _vpTmp$[ebp], eax
	jmp	SHORT $LN7@Load
$LN8@Load:
; Line 347
	push	5
	lea	ecx, DWORD PTR _stSecH$[ebp]
	push	ecx
	push	OFFSET $SG82159
	call	_strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN6@Load
; Line 349
	mov	edx, DWORD PTR _vpCode
	mov	DWORD PTR _vpTmp$[ebp], edx
; Line 351
	jmp	SHORT $LN7@Load
$LN6@Load:
; Line 353
	jmp	$LN12@Load
$LN7@Load:
; Line 356
	push	0
	mov	eax, DWORD PTR _stSecH$[ebp+20]
	push	eax
	mov	ecx, DWORD PTR _iFd$[ebp]
	push	ecx
	call	_lseek
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 357
	cmp	DWORD PTR _iRet$[ebp], 0
	jge	SHORT $LN4@Load
; Line 359
	call	_Memory_Clear
; Line 360
	mov	edx, DWORD PTR _iFd$[ebp]
	push	edx
	call	_close
	add	esp, 4
; Line 361
	lea	eax, DWORD PTR _cBuf$[ebp]
	push	eax
	push	OFFSET $SG82162
	call	_printf
	add	esp, 8
; Line 362
	jmp	$LN18@Load
$LN4@Load:
; Line 364
	push	512					; 00000200H
	mov	ecx, DWORD PTR _vpTmp$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iFd$[ebp]
	push	edx
	call	_read
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _iRet$[ebp], eax
; Line 365
	cmp	DWORD PTR _iRet$[ebp], 0
	jge	SHORT $LN3@Load
; Line 367
	call	_Memory_Clear
; Line 368
	mov	eax, DWORD PTR _iFd$[ebp]
	push	eax
	call	_close
	add	esp, 4
; Line 369
	lea	ecx, DWORD PTR _cBuf$[ebp]
	push	ecx
	push	OFFSET $SG82164
	call	_printf
	add	esp, 8
; Line 370
	jmp	SHORT $LN18@Load
$LN3@Load:
; Line 373
	cmp	DWORD PTR _iRet$[ebp], 0
	je	SHORT $LN2@Load
; Line 375
	lea	edx, DWORD PTR _stSecH$[ebp]
	push	edx
	push	OFFSET $SG82166
	call	_printf
	add	esp, 8
; Line 377
	jmp	SHORT $LN1@Load
$LN2@Load:
; Line 379
	lea	eax, DWORD PTR _stSecH$[ebp]
	push	eax
	push	OFFSET $SG82168
	call	_printf
	add	esp, 8
$LN1@Load:
; Line 381
	jmp	$LN12@Load
$LN11@Load:
; Line 383
	mov	ecx, DWORD PTR _iFd$[ebp]
	push	ecx
	call	_close
	add	esp, 4
; Line 385
	mov	DWORD PTR _uiLoad, 1
$LN18@Load:
; Line 388
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_Load	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_View_Stack PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 405
	push	ebp
	mov	ebp, esp
; Line 406
	push	6
	mov	eax, DWORD PTR _vpStack
	push	eax
	call	_Stack_View
	add	esp, 8
; Line 409
	pop	ebp
	ret	0
_View_Stack ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_View_Data PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 398
	push	ebp
	mov	ebp, esp
; Line 399
	push	256					; 00000100H
	mov	eax, DWORD PTR _vpData
	push	eax
	call	_Hexa_View
	add	esp, 8
; Line 402
	pop	ebp
	ret	0
_View_Data ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_View_Code PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 391
	push	ebp
	mov	ebp, esp
; Line 392
	push	256					; 00000100H
	mov	eax, DWORD PTR _vpCode
	push	eax
	call	_Hexa_View
	add	esp, 8
; Line 395
	pop	ebp
	ret	0
_View_Code ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_uiAddr$ = -4						; size = 4
_Memory_Display PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 228
	push	ebp
	mov	ebp, esp
	push	ecx
$LN4@Memory_Dis:
; Line 231
	mov	eax, 1
	test	eax, eax
	je	$LN3@Memory_Dis
; Line 233
	mov	ecx, DWORD PTR _vpMem_End
	push	ecx
	mov	edx, DWORD PTR _vpMem_Start
	push	edx
	push	OFFSET $SG82100
	call	_printf
	add	esp, 12					; 0000000cH
; Line 234
	lea	eax, DWORD PTR _uiAddr$[ebp]
	push	eax
	push	OFFSET $SG82101
	call	_scanf
	add	esp, 8
; Line 235
	call	___iob_func
	mov	ecx, 32					; 00000020H
	imul	edx, ecx, 0
	add	eax, edx
	push	eax
	call	_fflush
	add	esp, 4
; Line 237
	mov	eax, DWORD PTR _uiAddr$[ebp]
	cmp	eax, DWORD PTR _vpMem_Start
	jae	SHORT $LN2@Memory_Dis
; Line 239
	push	OFFSET $SG82104
	call	_printf
	add	esp, 4
; Line 240
	jmp	SHORT $LN4@Memory_Dis
$LN2@Memory_Dis:
; Line 242
	mov	ecx, DWORD PTR _uiAddr$[ebp]
	cmp	ecx, DWORD PTR _vpMem_End
	jbe	SHORT $LN1@Memory_Dis
; Line 244
	push	OFFSET $SG82107
	call	_printf
	add	esp, 4
; Line 245
	jmp	$LN4@Memory_Dis
$LN1@Memory_Dis:
; Line 248
	jmp	SHORT $LN3@Memory_Dis
; Line 249
	jmp	$LN4@Memory_Dis
$LN3@Memory_Dis:
; Line 251
	push	160					; 000000a0H
	mov	edx, DWORD PTR _uiAddr$[ebp]
	push	edx
	call	_Hexa_View
	add	esp, 8
; Line 254
	mov	esp, ebp
	pop	ebp
	ret	0
_Memory_Display ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_uiVar$ = -8						; size = 4
_uiAddr$ = -4						; size = 4
_Memory_Modify PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 190
	push	ebp
	mov	ebp, esp
	sub	esp, 8
$LN4@Memory_Mod:
; Line 194
	mov	eax, 1
	test	eax, eax
	je	$LN3@Memory_Mod
; Line 196
	mov	ecx, DWORD PTR _vpMem_End
	push	ecx
	mov	edx, DWORD PTR _vpMem_Start
	push	edx
	push	OFFSET $SG82081
	call	_printf
	add	esp, 12					; 0000000cH
; Line 197
	lea	eax, DWORD PTR _uiAddr$[ebp]
	push	eax
	push	OFFSET $SG82082
	call	_scanf
	add	esp, 8
; Line 198
	call	___iob_func
	mov	ecx, 32					; 00000020H
	imul	edx, ecx, 0
	add	eax, edx
	push	eax
	call	_fflush
	add	esp, 4
; Line 200
	mov	eax, DWORD PTR _uiAddr$[ebp]
	cmp	eax, DWORD PTR _vpMem_Start
	jae	SHORT $LN2@Memory_Mod
; Line 202
	push	OFFSET $SG82085
	call	_printf
	add	esp, 4
; Line 203
	jmp	SHORT $LN4@Memory_Mod
$LN2@Memory_Mod:
; Line 205
	mov	ecx, DWORD PTR _uiAddr$[ebp]
	cmp	ecx, DWORD PTR _vpMem_End
	jbe	SHORT $LN1@Memory_Mod
; Line 207
	push	OFFSET $SG82088
	call	_printf
	add	esp, 4
; Line 208
	jmp	$LN4@Memory_Mod
$LN1@Memory_Mod:
; Line 211
	jmp	SHORT $LN3@Memory_Mod
; Line 212
	jmp	$LN4@Memory_Mod
$LN3@Memory_Mod:
; Line 214
	push	16					; 00000010H
	mov	edx, DWORD PTR _uiAddr$[ebp]
	push	edx
	call	_Hexa_View
	add	esp, 8
; Line 216
	push	OFFSET $SG82090
	call	_printf
	add	esp, 4
; Line 217
	lea	eax, DWORD PTR _uiVar$[ebp]
	push	eax
	push	OFFSET $SG82091
	call	_scanf
	add	esp, 8
; Line 218
	call	___iob_func
	mov	ecx, 32					; 00000020H
	imul	edx, ecx, 0
	add	eax, edx
	push	eax
	call	_fflush
	add	esp, 4
; Line 220
	mov	eax, DWORD PTR _uiAddr$[ebp]
	mov	ecx, DWORD PTR _uiVar$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 222
	push	16					; 00000010H
	mov	edx, DWORD PTR _uiAddr$[ebp]
	push	edx
	call	_Hexa_View
	add	esp, 8
; Line 225
	mov	esp, ebp
	pop	ebp
	ret	0
_Memory_Modify ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_Memory_Clear PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 182
	push	ebp
	mov	ebp, esp
; Line 183
	push	131072					; 00020000H
	push	0
	mov	eax, DWORD PTR _vpMem_Start
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
; Line 184
	push	OFFSET $SG82073
	call	_printf
	add	esp, 4
; Line 187
	pop	ebp
	ret	0
_Memory_Clear ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_Print_Help PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 165
	push	ebp
	mov	ebp, esp
; Line 166
	push	OFFSET $SG82060
	call	_printf
	add	esp, 4
; Line 167
	push	OFFSET $SG82061
	call	_printf
	add	esp, 4
; Line 168
	push	OFFSET $SG82062
	call	_printf
	add	esp, 4
; Line 169
	push	OFFSET $SG82063
	call	_printf
	add	esp, 4
; Line 170
	push	OFFSET $SG82064
	call	_printf
	add	esp, 4
; Line 171
	push	OFFSET $SG82065
	call	_printf
	add	esp, 4
; Line 172
	push	OFFSET $SG82066
	call	_printf
	add	esp, 4
; Line 173
	push	OFFSET $SG82067
	call	_printf
	add	esp, 4
; Line 174
	push	OFFSET $SG82068
	call	_printf
	add	esp, 4
; Line 175
	push	OFFSET $SG82069
	call	_printf
	add	esp, 4
; Line 176
	push	OFFSET $SG82070
	call	_printf
	add	esp, 4
; Line 179
	pop	ebp
	ret	0
_Print_Help ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_Print_R PROC
; File c:\users\sujin\desktop\포트폴리오\context switching\소스\main.c
; Line 153
	push	ebp
	mov	ebp, esp
; Line 154
	push	OFFSET $SG82054
	call	_printf
	add	esp, 4
; Line 156
	mov	eax, DWORD PTR _stOldState+28
	push	eax
	mov	ecx, DWORD PTR _stOldState+32
	push	ecx
	mov	edx, DWORD PTR _stOldState+24
	push	edx
	mov	eax, DWORD PTR _stOldState+36
	push	eax
	push	OFFSET $SG82055
	call	_printf
	add	esp, 20					; 00000014H
; Line 158
	mov	ecx, DWORD PTR _stOldState+16
	push	ecx
	mov	edx, DWORD PTR _stOldState+20
	push	edx
	mov	eax, DWORD PTR _stOldState+8
	push	eax
	mov	ecx, DWORD PTR _stOldState+12
	push	ecx
	push	OFFSET $SG82056
	call	_printf
	add	esp, 20					; 00000014H
; Line 159
	mov	edx, DWORD PTR _stOldState+4
	push	edx
	mov	eax, DWORD PTR _stOldState
	push	eax
	push	OFFSET $SG82057
	call	_printf
	add	esp, 12					; 0000000cH
; Line 162
	pop	ebp
	ret	0
_Print_R ENDP
_TEXT	ENDS
END
