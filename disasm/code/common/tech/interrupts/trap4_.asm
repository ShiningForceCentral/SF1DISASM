
; ASM FILE code\common\tech\interrupts\trap4_.asm :
; 0x2FD8..0x2FFA : Trap 4 - 

; =============== S U B R O U T I N E =======================================

Trap4_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_3028
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

    ; End of function Trap4_

