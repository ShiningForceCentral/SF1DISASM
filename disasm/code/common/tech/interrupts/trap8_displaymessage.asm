
; ASM FILE code\common\tech\interrupts\trap8_displaymessage.asm :
; 0x6C8..0x6D8 : Trap 8 - Display message

; =============== S U B R O U T I N E =======================================

Trap8_DisplayMessage:
		
		movem.l d0-a6,-(sp)
		jsr     (j_LoadText).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap8_DisplayMessage

