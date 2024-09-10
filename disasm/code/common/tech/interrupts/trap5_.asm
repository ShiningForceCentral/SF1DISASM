
; ASM FILE code\common\tech\interrupts\trap5_.asm :
; 0x698..0x6A8 : Trap 5 - 

; =============== S U B R O U T I N E =======================================

Trap5_:
		movem.l d0-a6,-(sp)
		jsr     (j_OpenMessageWindow).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap5_

