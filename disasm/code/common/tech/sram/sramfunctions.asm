
; ASM FILE code\common\tech\sram\sramfunctions.asm :
; 0x3660..0x3852 : SRAM functions

; =============== S U B R O U T I N E =======================================

CheckSram:
		lea     (FF0FFE_LOADING_SPACE).l,a0
						; load SRAM string into RAM
		lea     (SRAM_STRING).l,a1
		moveq   #21,d7
		bsr.w   CopyBytesFromSram
		bne.w   loc_378A
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     aYasuhirohiroko(pc), a1
		moveq   #20,d7
@CheckSramString_Loop:
		
		cmpm.b  (a0)+,(a1)+
		bne.w   loc_378A
		dbf     d7,@CheckSramString_Loop
                
		move.b  (SAVE_FLAGS).l,d0
		cmp.b   (byte_20022F).l,d0
		bne.w   loc_378A
		btst    #1,(SAVE_FLAGS).l
		beq.s   @Slot2
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_1_DATA).l,a1
		move.w  #SAVE_SLOT_SIZE,d7
		bsr.w   CopyBytesFromSram
		beq.s   @Slot2
		move.l  #1,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   sub_3758
		bclr    #1,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
@Slot2:
		btst    #2,(SAVE_FLAGS).l
		beq.s   @Slot3
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_2_DATA).l,a1
		move.w  #SAVE_SLOT_SIZE,d7
		bsr.w   CopyBytesFromSram
		beq.s   @Slot3
		move.l  #2,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   sub_3758
		bclr    #2,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
@Slot3:
		btst    #3,(SAVE_FLAGS).l
		beq.s   @Return
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_3_DATA).l,a1
		move.w  #SAVE_SLOT_SIZE,d7
		bsr.w   CopyBytesFromSram
		beq.s   @Return
		move.l  #3,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   sub_3758
		bclr    #3,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
@Return:
		rts

    ; End of function CheckSram


; =============== S U B R O U T I N E =======================================

sub_3758:
		jsr     (j_OpenMessageWindow).l
		sndCom  MUSIC_CURSED_ITEM
		txt     58              ; "Oh no! I can't find adventure[Line][Num]! I hope you're not too[Line]mad![Wait2]"
		bsr.w   j_WaitForInputFor3Seconds
		jsr     (j_CloseMessageWindow).l
		rts

    ; End of function sub_3758

aYasuhirohiroko:dc.b 'YASUHIROHIROKOinSERA ',0

; START OF FUNCTION CHUNK FOR CheckSram

loc_378A:
		clr.b   (GAME_COMPLETED).l
		lea     (MAP_SPRITE_POSITION).l,a0
		lea     (SRAM_START).l,a1
		move.w  #SRAM_COUNTER_MINUS_ONE,d7
		bsr.w   CopyBytesToSram
		lea     aYasuhirohiroko(pc), a0
		lea     (SRAM_STRING).l,a1
		moveq   #21,d7
		bsr.w   CopyBytesToSram
		moveq   #1,d7

; END OF FUNCTION CHUNK FOR CheckSram


; =============== S U B R O U T I N E =======================================

CopyBytesToSram:
		
		tst.b   ((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		bne.w   @Return
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
@Loop:
		move.b  (a0)+,d1
		add.w   d1,d0
		move.b  d1,(a1)
		addq.l  #2,a1
		dbf     d7,@Loop
                
		move.b  d0,(a1)
		addq.l  #2,a1
@Return:
		rts

    ; End of function CopyBytesToSram


; =============== S U B R O U T I N E =======================================

CopyBytesFromSram:
		
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
@Loop:
		move.b  (a1),d1
		add.w   d1,d0
		move.b  d1,(a0)+
		addq.l  #2,a1
		dbf     d7,@Loop
                
		cmp.b   (a1),d0
		addq.l  #2,a1
		rts

    ; End of function CopyBytesFromSram


; =============== S U B R O U T I N E =======================================

SaveGame:
		jsr     sub_20024

    ; End of function SaveGame


; =============== S U B R O U T I N E =======================================

DeleteGame:
		moveq   #39,d0
		bsr.w   SetEventFlag
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		bne.s   loc_3808
		lea     (SAVE_SLOT_1_DATA).l,a1
		bra.s   loc_381C
loc_3808:
		cmpi.w  #1,d0
		bne.s   loc_3816
		lea     (SAVE_SLOT_2_DATA).l,a1
		bra.s   loc_381C
loc_3816:
		lea     (SAVE_SLOT_3_DATA).l,a1
loc_381C:
		move.w  #SAVE_SLOT_SIZE,d7
		lea     ((CURRENT_CHAPTER-$1000000)).w,a0
		bra.s   CopyBytesToSram

    ; End of function DeleteGame


; =============== S U B R O U T I N E =======================================

LoadGame:
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		bne.s   @Slot2
		lea     (SAVE_SLOT_1_DATA).l,a1
		bra.s   @Continue
@Slot2:
		cmpi.w  #1,d0
		bne.s   @Slot3
		lea     (SAVE_SLOT_2_DATA).l,a1
		bra.s   @Continue
@Slot3:
		lea     (SAVE_SLOT_3_DATA).l,a1
@Continue:
		move.w  #SAVE_SLOT_SIZE,d7
		lea     ((CURRENT_CHAPTER-$1000000)).w,a0
		bra.s   CopyBytesFromSram

    ; End of function LoadGame

