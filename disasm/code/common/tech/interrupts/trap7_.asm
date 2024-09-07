
; ASM FILE code\common\tech\interrupts\trap7_.asm :
; 0x6B8..0x6C8 : Trap 7 - 

; =============== S U B R O U T I N E =======================================

Trap7_:
		movem.l d0-a6,-(sp)
		jsr     (j_CreateMessageWindow).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap7_

