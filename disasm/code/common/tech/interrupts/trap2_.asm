
; ASM FILE code\common\tech\interrupts\trap2_.asm :
; 0x2F94..0x2FB6 : Trap 2 - 

; =============== S U B R O U T I N E =======================================

Trap2_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_300A
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

    ; End of function Trap2_

