
; ASM FILE code\common\tech\interrupts\trap6_.asm :
; 0x6A8..0x6B8 : Trap 6 - 

; =============== S U B R O U T I N E =======================================

Trap6_:
		movem.l d0-a6,-(sp)
		jsr     (j_CloseMessageWindow).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap6_

