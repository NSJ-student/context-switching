.386
.MODEL FLAT
PUBLIC _STST
PUBLIC _LDST

.DATA

.CODE

	_STST		PROC	NEAR32		; store status
		push ebp
		mov ebp, esp
		pushfd			; efl

		mov esp, [ebp+8]
		add esp, 40

		pushad
		push [ebp-4]	; efl
		push [ebp+4]	; eip
		
		add esp, 20
;;;;;;;;;;;;;;;; esp
		mov eax, ebp	; eax = ebp+8 = call 전 esp
		add eax, 8
		mov [esp], eax	; obj.esp = eax
 ;;;;;;;;;;;;;;; ebp
		push [ebp]		; obj.ebp = ebp가 가리키는 stack 내용

		mov esp, ebp
		pop ebp
		ret
	_STST ENDP

	_LDST		PROC	NEAR32	; load status
		mov esp, [esp+4]

		mov eax, [esp+20]
		pop ebx
		mov [eax-4], ebx
		popfd
		popad
		mov esp, [esp-20]
		sub esp, 4
		ret
	_LDST ENDP

END