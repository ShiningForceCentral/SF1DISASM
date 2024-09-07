
; ASM FILE code\common\tech\input.asm :
; 0x1410..0x14EE : Input functions

; =============== S U B R O U T I N E =======================================

UpdatePlayerInputs:
		
		lea     (P1_INPUT).l,a5 
		lea     ((DATA1+1)).l,a6
		bsr.s   sub_1428
		neg.b   d6
		add.w   d6,(RANDOM_SEED).l; Update random seed
		addq.w  #2,a6

    ; End of function UpdatePlayerInputs


; =============== S U B R O U T I N E =======================================

sub_1428:
		move.b  #0,(a6)
		nop
		nop
		move.b  (a6),d6
		lsl.b   #2,d6
		andi.b  #$C0,d6
		move.b  #$40,(a6) 
		nop
		nop
		move.b  (a6),d7
		andi.b  #$3F,d7 
		or.b    d7,d6
		not.b   d6
		move.b  d6,(a5)+
		rts

    ; End of function sub_1428


; =============== S U B R O U T I N E =======================================

WaitForPlayerInput:
		
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(CURRENT_PLAYER_INPUT).l
		bne.s   @Return
		bsr.w   WaitForVInt     
		bra.s   WaitForPlayerInput
@Return:
		rts

    ; End of function WaitForPlayerInput


; =============== S U B R O U T I N E =======================================

WaitForPlayer1NewInput:
		
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P1_INPUT).l
		beq.s   @Wait
		bsr.w   WaitForVInt     
		bra.s   WaitForPlayer1NewInput
@Wait:
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P1_INPUT).l
		bne.s   @Return
		bsr.w   WaitForVInt     
		bra.s   @Wait
@Return:
		rts

    ; End of function WaitForPlayer1NewInput


; =============== S U B R O U T I N E =======================================

sub_1482:
		movem.l d7,-(sp)
		move.b  (P1_INPUT).l,d7 
		and.b   (byte_FF0E9A).l,d7
		beq.s   loc_14B2
		addq.b  #1,(byte_FF0E9B).l
		move.b  (byte_FF0E9B).l,d7
		cmpi.b  #$A,d7
		bcc.s   loc_14B2
		clr.b   (P1_INPUT).l    
		movem.l (sp)+,d7
		rts
loc_14B2:
		clr.b   (byte_FF0E9A).l
		clr.b   (byte_FF0E9B).l
		movem.l (sp)+,d7
		rts

    ; End of function sub_1482


; =============== S U B R O U T I N E =======================================

WaitForInputFor1Second:
		
		movem.l d5,-(sp)
		moveq   #59,d5          ; number of frames to wait, minus one
WaitForInput_Loop:
		
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P1_INPUT).l
		bne.s   @Done
		bsr.w   WaitForVInt     
		dbf     d5,WaitForInput_Loop
@Done:
		movem.l (sp)+,d5
		rts

    ; End of function WaitForInputFor1Second


; =============== S U B R O U T I N E =======================================

WaitForInputFor3Seconds:
		
		movem.l d5,-(sp)
		move.l  #179,d5
		bra.s   WaitForInput_Loop

    ; End of function WaitForInputFor3Seconds

