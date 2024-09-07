
; ASM FILE code\common\tech\interrupts\errors.asm :
; 0x62E..0x698 : Error interrupts

; =============== S U B R O U T I N E =======================================

int_AdressError:
		
		move.l  #'ADDR',(ERRCODE_DWORD0).l
		move.l  $A(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

    ; End of function int_AdressError


; =============== S U B R O U T I N E =======================================

int_IllegalInstruction:
		
		move.l  #'BAD ',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

    ; End of function int_IllegalInstruction


; =============== S U B R O U T I N E =======================================

int_ZeroDivide:
		
		move.l  #'ZERO',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

    ; End of function int_ZeroDivide


; =============== S U B R O U T I N E =======================================

int_OtherError:
		
		move.l  #'OTHR',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

    ; End of function int_OtherError


; =============== S U B R O U T I N E =======================================

int_ExternalInterrupt:
		
		nop
		nop
		bra.s   int_ExternalInterrupt

    ; End of function int_ExternalInterrupt


; =============== S U B R O U T I N E =======================================

IntLv17:
		nop
		bra.s   IntLv17

    ; End of function IntLv17

