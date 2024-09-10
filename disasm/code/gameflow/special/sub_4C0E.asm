
; ASM FILE code\gameflow\special\sub_4C0E.asm :
; 0x4C0E..0x4D9A : Related to the battle test debug function

; =============== S U B R O U T I N E =======================================

sub_4C0E:
		clr.w   d0
		move.b  (CURRENT_CHAPTER).l,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_4C22(pc,d0.w),d0
		jmp     off_4C22(pc,d0.w)

    ; End of function sub_4C0E

off_4C22:       dc.w sub_4C32-off_4C22
		dc.w sub_4CC6-off_4C22
		dc.w sub_4CFC-off_4C22
		dc.w sub_4D00-off_4C22
		dc.w sub_4D20-off_4C22
		dc.w sub_4D4E-off_4C22
		dc.w sub_4D64-off_4C22
		dc.w sub_4D88-off_4C22

; =============== S U B R O U T I N E =======================================

sub_4C32:
		move.b  (CURRENT_MAP_ENTRANCE).l,d7
loc_4C38:
		clr.b   (CURRENT_MAP_ENTRANCE).l
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #3,d1
		bne.s   loc_4C70
		moveq   #56,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4C60
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
		bsr.w   SetEventFlag
loc_4C60:
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4C6C
		moveq   #2,d0
		bra.s   return_4C6E
loc_4C6C:
		moveq   #3,d0
return_4C6E:
		rts
loc_4C70:
		cmpi.w  #4,d1
		bne.s   loc_4C7A
		moveq   #$C,d0
		rts
loc_4C7A:
		moveq   #39,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4C92
		moveq   #43,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4C8E
		moveq   #4,d0
		bra.s   return_4C90
loc_4C8E:
		moveq   #5,d0
return_4C90:
		rts
loc_4C92:
		cmpi.b  #4,d7
		bne.s   loc_4C9E
		move.b  d7,(CURRENT_MAP_ENTRANCE).l
loc_4C9E:
		moveq   #49,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4CAA
		moveq   #4,d0
		rts
loc_4CAA:
		cmpi.b  #2,d7
		bne.s   loc_4CBA
		move.b  d7,(CURRENT_MAP_ENTRANCE).l
		moveq   #5,d0
		rts
loc_4CBA:
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
		moveq   #4,d0
		rts

    ; End of function sub_4C32


; =============== S U B R O U T I N E =======================================

sub_4CC6:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #8,d1
		bne.s   loc_4CD8
		moveq   #8,d0
		rts
loc_4CD8:
		tst.b   (CURRENT_MAP_ENTRANCE).l
		beq.s   loc_4CE8
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
loc_4CE8:
		cmpi.w  #6,d1
		bne.s   loc_4CF2
		moveq   #$D,d0
		rts
loc_4CF2:
		cmpi.w  #7,d1
		bne.s   sub_4CFC
		moveq   #6,d0
		rts

    ; End of function sub_4CC6


; =============== S U B R O U T I N E =======================================

sub_4CFC:
		moveq   #7,d0
		rts

    ; End of function sub_4CFC


; =============== S U B R O U T I N E =======================================

sub_4D00:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #6,d1
		bne.s   loc_4D12
		moveq   #9,d0
		rts
loc_4D12:
		cmpi.w  #7,d1
		bne.s   loc_4D1C
		moveq   #$A,d0
		rts
loc_4D1C:
		moveq   #$1D,d0
		rts

    ; End of function sub_4D00


; =============== S U B R O U T I N E =======================================

sub_4D20:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D4A
		moveq   #39,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4D3A
		moveq   #$20,d0 
		rts
loc_4D3A:
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4D46
		moveq   #$20,d0 
		bra.s   return_4D48
loc_4D46:
		moveq   #$2A,d0 
return_4D48:
		rts
loc_4D4A:
		moveq   #$29,d0 
		rts

    ; End of function sub_4D20


; =============== S U B R O U T I N E =======================================

sub_4D4E:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D60
		moveq   #$21,d0 
		rts
loc_4D60:
		moveq   #$1F,d0
		rts

    ; End of function sub_4D4E


; =============== S U B R O U T I N E =======================================

sub_4D64:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D84
		cmpi.b  #3,(CURRENT_MAP_ENTRANCE).l
		bne.s   loc_4D80
		moveq   #$10,d0
		bra.s   return_4D82
loc_4D80:
		moveq   #$1E,d0
return_4D82:
		rts
loc_4D84:
		moveq   #$24,d0 
		rts

    ; End of function sub_4D64


; =============== S U B R O U T I N E =======================================

sub_4D88:
		cmpi.b  #2,(CURRENT_MAP_ENTRANCE).l
		bgt.s   loc_4D96
		moveq   #$E,d0
		bra.s   return_4D98
loc_4D96:
		moveq   #$25,d0 
return_4D98:
		rts

    ; End of function sub_4D88

