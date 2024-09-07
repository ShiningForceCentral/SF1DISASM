
; ASM FILE code\common\tech\bytecopy.asm :
; 0x1526..0x1550 : Byte-copy function

; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D7=Length

CopyBytes:
		movem.l d7-a1,-(sp)
		cmpa.l  a0,a1
		bgt.w   loc_153E
		subq.w  #1,d7
loc_1532:
		move.b  (a0)+,(a1)+
		dbf     d7,loc_1532
                
		movem.l (sp)+,d7-a1
		rts
loc_153E:
		adda.w  d7,a0
		adda.w  d7,a1
		subq.w  #1,d7
loc_1544:
		move.b  -(a0),-(a1)
		dbf     d7,loc_1544
                
		movem.l (sp)+,d7-a1
		rts

    ; End of function CopyBytes

