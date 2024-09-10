
; ASM FILE code\common\scripting\text\asciinumber.asm :
; 0x137E..0x1410 : ASCII number function

; =============== S U B R O U T I N E =======================================

WriteAsciiNumber:
		
		movem.l d5-d7/a5-a6,-(sp)
		lea     table_PowersOfTen(pc), a5
		lea     (LOADED_NUMBER).l,a6
		moveq   #9,d5
loc_138E:
		move.w  #$2F,d6 
loc_1392:
		addq.w  #1,d6
		sub.l   (a5),d0
		bcc.s   loc_1392
		move.b  d6,(a6)+
		add.l   (a5)+,d0
		dbf     d5,loc_138E
                
		lea     (LOADED_NUMBER).l,a6
		moveq   #8,d6
loc_13A8:
		cmpi.b  #$30,(a6) 
		bne.w   loc_13B8
		move.b  #$20,(a6)+ 
		dbf     d6,loc_13A8
loc_13B8:
		movem.l (sp)+,d5-d7/a5-a6
		rts

    ; End of function WriteAsciiNumber

table_PowersOfTen:
		dc.l 1000000000
		dc.l 100000000
		dc.l 10000000
		dc.l 1000000
		dc.l 100000
		dc.l 10000
		dc.l 1000
		dc.l 100
		dc.l 10
		dc.l 1
		rts

; =============== S U B R O U T I N E =======================================

nullsub_13E8:
		rts

    ; End of function nullsub_13E8


; =============== S U B R O U T I N E =======================================

sub_13EA:
		movem.l d6-d7/a5-a6,-(sp)
		move.w  #$100,(Z80BusReq).l
loc_13F6:
		btst    #0,(Z80BusReq).l
		bne.s   loc_13F6
		bsr.s   UpdatePlayerInputs
		move.w  #0,(Z80BusReq).l
		movem.l (sp)+,d6-d7/a5-a6
		rts

    ; End of function sub_13EA

