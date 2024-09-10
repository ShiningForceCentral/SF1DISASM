
; ASM FILE code\common\tech\interrupts\trap3_.asm :
; 0x2FB6..0x2FD8 : Trap 3 - 

; =============== S U B R O U T I N E =======================================

Trap3_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_3018
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

    ; End of function Trap3_

