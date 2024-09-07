
; ASM FILE code\common\menus\menuactions.asm :
; 0x6B38..0x75A0 : Menu actions

; =============== S U B R O U T I N E =======================================

TalkMenuAction:
		
		clr.w   d1
		clr.w   d2
		move.b  ((CURSOR_POSITION_X-$1000000)).w,d1
		move.b  ((CURSOR_POSITION_Y-$1000000)).w,d2
loc_6B44:
		jsr     sub_80A8
		move.w  d2,d3
		mulu.w  ((MAP_WIDTH-$1000000)).w,d3
		add.w   d1,d3
		lea     (PASSABILITY_FLAGS).l,a0
		btst    #2,(a0,d3.w)
		bne.s   loc_6B44
		move.w  d1,d3
		moveq   #1,d0
		moveq   #$1D,d7
loc_6B66:
		jsr     j_GetCombatantX
		cmp.b   d1,d3
		bne.s   loc_6B7C
		jsr     j_GetCombatantY
		cmp.b   d1,d2
		beq.w   loc_6B9A
loc_6B7C:
		addq.w  #1,d0
		dbf     d7,loc_6B66
                
		openTxt
		txt     432             ; "No one is in that direction.[Wait2]"
loc_6B8A:
		bsr.w   j_WaitForVInt
		tst.b   (P1_INPUT).l    
		beq.s   loc_6B8A
		closeTxt
		rts
loc_6B9A:
		move.w  d0,-(sp)
		jsr     j_GetEntity
		move.w  d0,-(sp)
		move.w  d1,-(sp)
		move.w  d1,d0
		jsr     j_GetMapSprite
		move.l  a0,-(sp)
		movea.l (p_table_MapspriteSpeechSfx).l,a0
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d1
		addi.w  #SFX_DIALOG_BLEEP_1,d1
		move.w  d1,((SPEECH_SFX-$1000000)).w
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		move.w  (sp)+,d0
		clr.w   d2
		move.b  ((SPRITE_DIRECTION-$1000000)).w,d2
		bsr.w   sub_6894
		move.w  (sp)+,d0
		cmpi.w  #1,d0           ; Advisor's entity index (HQ)
		bne.s   loc_6BF6
		jsr     (j_ExecuteHeadquartersMenu).l
		bsr.w   sub_66FA
		jsr     j_ClosePortraitWindow
		jsr     (j_CloseMessageWindow).l
		rts
loc_6BF6:
		move.w  d0,-(sp)
		moveq   #-1,d2
		moveq   #35,d0
		jsr     (j_CheckEventFlag).l
		beq.s   loc_6C08
		moveq   #MAPSPRITE_NOVA,d2
		bra.s   loc_6C12
loc_6C08:
		cmpi.b  #$15,((CURSOR_POSITION_Y-$1000000)).w
		bge.s   loc_6C12
		moveq   #$1C,d2
loc_6C12:
		move.w  (sp)+,d0
		jsr     j_GetEntity
		move.w  d1,d0
		movem.w d0/d2,-(sp)
		move.w  d0,-(sp)
		jsr     j_GetPortrait
		move.w  d1,d0
		jsr     j_OpenPortraitWindow
		move.w  (sp)+,d0
		jsr     sub_80D0
		openTxt
		movem.w (sp)+,d0/d2
		move.w  d0,-(sp)
		jsr     j_GetCurrentHp
		tst.w   d1
		ble.s   byte_6C56       
		andi.w  #$FF,d0
		addi.w  #$105,d0
		add.w   d2,d0
		bra.s   byte_6C56+4     
byte_6C56:
		txt     348             ; "....[Wait2]"
		move.w  (sp)+,d0
		jsr     sub_80D4
		jsr     j_ClosePortraitWindow
		closeTxt
		rts

    ; End of function TalkMenuAction


; =============== S U B R O U T I N E =======================================

sub_6C6E:
		bsr.w   BuildEquipMenuStatsWindow
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C09,d0
		move.l  #$9042004,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		bsr.w   sub_735A
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$1203,d0
		move.l  #$9012001,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		move.w  (CURRENT_OBJECT).l,d0
		jmp     j_ClosePortraitWindow

    ; End of function sub_6C6E


; =============== S U B R O U T I N E =======================================

sub_6CB6:
		tst.b   (CURRENT_MENU).l
		bne.s   loc_6CC4
		move.w  #$100,d1
		bra.s   loc_6CC8
loc_6CC4:
		move.w  #$200,d1
loc_6CC8:
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetEquippedItem
		move.w  d2,(word_FFBC5A).l
		move.w  d2,(word_FFBC5C).l
		move.w  d3,(word_FFBC58).l
		bne.s   loc_6CEE
		clr.w   d0
		bra.w   loc_6D1E
loc_6CEE:
		cmpi.w  #-1,d3
		bne.s   loc_6D08
		cmpi.w  #4,(TABLE_AT_FFA8C0).l
		bne.s   loc_6D02
		clr.w   d0
		bra.s   loc_6D04
loc_6D02:
		moveq   #3,d0
loc_6D04:
		bra.w   loc_6D1E
loc_6D08:
		bsr.w   sub_71A2
		clr.w   d0
		lea     (byte_FFA8C2).l,a0
loc_6D14:
		cmp.w   (a0),d3
		beq.s   loc_6D1E
		addq.w  #1,d0
		addq.l  #4,a0
		bra.s   loc_6D14
loc_6D1E:
		move.b  d0,(CURRENT_DIAMOND_MENU_SELECTION).l
		move.w  d0,(word_FFBC5E).l
		move.b  d0,(byte_FFB529).l
		bsr.w   sub_70A6
		tst.w   (word_FFD082).l
		bne.w   loc_6D8E
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetPortrait
		move.w  d1,d0
		jsr     j_OpenPortraitWindow
		bsr.w   sub_735A
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$1203,d0
		move.l  #$20010901,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		bsr.w   BuildEquipMenuStatsWindow
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C09,d0
		move.l  #$20040904,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
loc_6D8E:
		bsr.w   sub_6FE6
		bsr.w   sub_70E8
		bsr.w   nullsub_70A4
		bsr.w   sub_71A2
		moveq   #$F,d6
loc_6DA0:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6DC4
		cmpi.w  #2,(TABLE_AT_FFA8C0).l
		blt.s   loc_6DC4
		move.b  #1,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6DC4:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6DE8
		cmpi.w  #3,(TABLE_AT_FFA8C0).l
		blt.s   loc_6DE8
		move.b  #2,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6DE8:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E00
		clr.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6E00:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E1A
		move.b  #3,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6E1A:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E42
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		bsr.w   BuildEquipMenuStatsWindow
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		moveq   #-1,d0
		bra.w   loc_6F8E
loc_6E42:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E58
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   loc_6EB8
loc_6E58:
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_6EA4
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   loc_6EB8
loc_6E70:
		bsr.w   sub_70A6
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (j_WaitForVInt).l
		moveq   #$13,d6
		bsr.w   sub_7054
		move.w  d6,-(sp)
		bsr.w   BuildEquipMenuStatsWindow
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		move.w  (sp)+,d6
		bra.s   loc_6EA8
loc_6EA4:
		bsr.w   sub_7054
loc_6EA8:
		jsr     (j_WaitForVInt).l
		subq.w  #1,d6
		bne.s   loc_6EB4
		moveq   #$14,d6
loc_6EB4:
		bra.w   loc_6DA0
loc_6EB8:
		movem.w d0-d1,-(sp)
		move.w  (word_FFBC5A).l,d1
		move.w  d1,(MESSAGE_ARG_NAME_1).l
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_6F3C
		move.w  (word_FFBC5E).l,d3
		cmp.b   (CURRENT_DIAMOND_MENU_SELECTION).l,d3
		beq.s   loc_6F3A
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		jsr     j_PlayCursedItemMusic
		move.b  d3,(CURRENT_DIAMOND_MENU_SELECTION).l
loc_6EF8:
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (j_WaitForVInt).l
		moveq   #$13,d6
		bsr.w   sub_7054
		bsr.w   BuildEquipMenuStatsWindow
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		bsr.w   sub_6FA0
		clearTxt
		txt     15              ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		clearTxt
		jsr     sub_8088
		bsr.w   loc_73B6
loc_6F3A:
		bra.s   loc_6F8A
loc_6F3C:
		move.w  (word_FFBC5C).l,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_6F8A
		jsr     j_PlayCursedItemMusic
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		move.w  d0,(MESSAGE_ARG_NAME_1).l
		bsr.w   sub_6FA0
		clearTxt
		txt     19              ; "[Name] has been cursed....[Wait2]"
		clearTxt
		jsr     sub_8088
		bsr.w   loc_73B6
		move.w  (CURRENT_OBJECT).l,d0
		moveq   #STATUSEFFECT_CURSE,d1
		jsr     j_SetStatusEffects
loc_6F8A:
		movem.w (sp)+,d0-d1
loc_6F8E:
		movem.w d0-d1,-(sp)
		clr.w   d6
		bsr.w   sub_7054
loc_6F98:
		bsr.s   sub_6FA0
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_6CB6


; =============== S U B R O U T I N E =======================================

sub_6FA0:
		tst.w   (word_FFD692).l
		beq.s   @Return
		clr.w   d6
		bsr.w   sub_7054
		bsr.w   sub_70E8
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.l  #$90D200D,d1
		move.w  #$C05,d0
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		lea     layout_75A0(pc), a0
		move.w  #$606,d0
		move.l  #$20BFA0B,d1
		move.w  #4,d2
		jmp     j_MoveWindowWithSfx
@Return:
		rts

    ; End of function sub_6FA0


; =============== S U B R O U T I N E =======================================

sub_6FE6:
		bsr.w   sub_71C0
		lea     layout_75A0(pc), a0
		move.w  #$606,d0
loc_6FF2:
		move.l  #$FA0B020B,d1
loc_6FF8:
		move.w  #4,d2
loc_6FFC:
		jsr     j_MoveWindowWithSfx
		bsr.w   sub_70E8
loc_7006:
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
loc_700C:
		move.w  #$C05,d0
loc_7010:
		move.l  #$200D090D,d1
		move.w  #4,d2
loc_701A:
		jmp     j_MoveWindowWithSfx

    ; End of function sub_6FE6


; =============== S U B R O U T I N E =======================================

sub_7020:
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C05,d0
		move.l  #$90D,d1
		jsr     j_CreateWindow
		bra.w   loc_73B6

    ; End of function sub_7020


; =============== S U B R O U T I N E =======================================

sub_703A:
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C09,d0
		move.l  #$904,d1
		jsr     j_CreateWindow
		bra.w   loc_73B6

    ; End of function sub_703A


; =============== S U B R O U T I N E =======================================

sub_7054:
		lea     (SPRITE_00_PROPERTIES).l,a1
		lea     sprite_MenuSelection(pc), a0
		nop
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		move.w  (a0)+,d0
		cmpi.w  #$A,d6
		bge.s   loc_7076
		moveq   #1,d0
loc_7076:
		btst    #INPUT_BIT_START,(P1_INPUT).l
		beq.s   loc_7082
		moveq   #1,d0
loc_7082:
		move.w  d0,(a1)+
		move.w  (a0)+,d0
		lsr.w   #8,d0
		move.b  d0,(a1)+
		addq.l  #1,a1
		move.l  (a0)+,(a1)+
		rts

    ; End of function sub_7054


; =============== S U B R O U T I N E =======================================

sub_7090:
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d7
		cmp.b   (byte_FFB529).l,d7
		beq.s   nullsub_70A4
		move.b  d7,(byte_FFB529).l

    ; End of function sub_7090


; =============== S U B R O U T I N E =======================================

nullsub_70A4:
		rts

    ; End of function nullsub_70A4


; =============== S U B R O U T I N E =======================================

sub_70A6:
		lea     (byte_FFA8C2).l,a0
		clr.w   d2
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d2
		lsl.w   #2,d2
		move.w  2(a0,d2.w),(word_FFBC5C).l
		move.w  (a0,d2.w),d2
loc_70C2:
		move.w  (CURRENT_OBJECT).l,d0
		tst.b   (CURRENT_MENU).l
		bne.s   loc_70D6
		move.w  #$100,d1
		bra.s   loc_70DA
loc_70D6:
		move.w  #$200,d1
loc_70DA:
		jmp     j_EquipItem

    ; End of function sub_70A6

		dc.b 0
		dc.b $AE
		dc.b 0
		dc.b $AE
		dc.b 0
		dc.b $62
		dc.b 0
		dc.b $88

; =============== S U B R O U T I N E =======================================

sub_70E8:
		bsr.w   sub_71A2
		lea     layout_EquipMenuItemNameWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$CC,d7 
loc_70FA:
		jsr     (j_CopyBytes).l
		bra.w   loc_72D8

    ; End of function sub_70E8


; =============== S U B R O U T I N E =======================================

BuildEquipMenuStatsWindow:
		
		lea     layout_EquipMenuStatsWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$D8,d7 
		jsr     (j_CopyBytes).l
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedAttack
		lea     (byte_FFB804).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedDefense
		lea     (byte_FFB834).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedMove
		lea     (byte_FFB864).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedAgility
		lea     (byte_FFB894).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		rts

    ; End of function BuildEquipMenuStatsWindow


; =============== S U B R O U T I N E =======================================

sub_71A2:
		tst.b   (CURRENT_MENU).l
		bne.s   loc_71B0
		move.w  #$100,d1
		bra.s   loc_71B4
loc_71B0:
		move.w  #$200,d1
loc_71B4:
		move.w  (CURRENT_OBJECT).l,d0
		jmp     j_LoadEquippableItems

    ; End of function sub_71A2


; =============== S U B R O U T I N E =======================================

sub_71C0:
		bsr.s   sub_71A2
		move.w  (TABLE_AT_FFA8C0).l,d7
		subq.w  #1,d7
		lea     (byte_FFA8C2).l,a3
		clr.w   d1
		bsr.w   sub_72A0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$C0,d7 
		jsr     (j_CopyBytes).l
		adda.w  #$C0,a1 
		move.l  a1,-(sp)
		move.w  #$BF,d0 
loc_71F0:
		clr.l   (a1)+
		dbf     d0,loc_71F0
                
		movea.l (sp)+,a1
		moveq   #1,d1
		bsr.w   sub_72A0
		moveq   #5,d7
loc_7200:
		move.l  (a0)+,$10(a1)
		move.l  (a0)+,$14(a1)
		move.l  (a0)+,$18(a1)
		move.l  (a0)+,$1C(a1)
		move.l  (a0)+,$40(a1)
		move.l  (a0)+,$44(a1)
		move.l  (a0)+,$48(a1)
		move.l  (a0)+,$4C(a1)
		adda.w  #$20,a1 
		dbf     d7,loc_7200
                
		adda.w  #$40,a1 
		moveq   #2,d1
		bsr.w   sub_72A0
		moveq   #5,d7
loc_7234:
		move.l  (a0)+,$10(a1)
		move.l  (a0)+,$14(a1)
		move.l  (a0)+,$18(a1)
		move.l  (a0)+,$1C(a1)
		move.l  (a0)+,$40(a1)
		move.l  (a0)+,$44(a1)
		move.l  (a0)+,$48(a1)
		move.l  (a0)+,$4C(a1)
		adda.w  #$20,a1 
		dbf     d7,loc_7234
                
		adda.w  #$40,a1 
		moveq   #3,d1
		bsr.w   sub_72A0
		move.w  #$C0,d7 
		jsr     (j_CopyBytes).l
		adda.w  #$C0,a1 
		lea     tiles_EquipMenuIconHighlight(pc), a0
		move.w  #$200,d7
		jsr     (j_CopyBytes).l
loc_7282:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($F800).l,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_WaitForDmaQueueProcessing).l

    ; End of function sub_71C0


; =============== S U B R O U T I N E =======================================

sub_72A0:
		movea.l (p_icons_Item).l,a0
		cmp.w   (TABLE_AT_FFA8C0).l,d1
		blt.s   loc_72C2
		adda.l  #$2F40,a0       ; +$3F index
		cmpi.w  #3,d1
		bne.s   loc_72C0
		adda.l  #ICONTILES_BYTESIZE,a0
loc_72C0:
		bra.s   return_72D6
loc_72C2:
		lsl.w   #2,d1
		move.w  2(a3,d1.w),d1
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,d7
		add.w   d1,d1
		add.w   d7,d1
		lsl.w   #6,d1
		adda.w  d1,a0
return_72D6:
		rts

    ; End of function sub_72A0


; START OF FUNCTION CHUNK FOR sub_70E8

loc_72D8:
		movem.l d7-a1,-(sp)
		lea     layout_EquipMenuItemNameWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$78,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     aWeaponring(pc), a0
		lea     (byte_FFB7F4).l,a1
		btst    #0,(CURRENT_MENU).l
		beq.s   loc_730A
		addq.w  #6,a0
loc_730A:
		moveq   #6,d7
		moveq   #-24,d1
		jsr     j_WriteTilesFromAscii
		clr.w   d1
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d1
		cmpi.w  #4,(TABLE_AT_FFA8C0).l
		beq.w   loc_7338
		cmpi.w  #3,d1
		bne.s   loc_7338
		lea     aRemove(pc), a0
		nop
		moveq   #6,d7
		bra.s   loc_734C
loc_7338:
		lea     (byte_FFA8C2).l,a0
		lsl.w   #2,d1
		move.w  2(a0,d1.w),d1
		jsr     j_GetItemNameAddress
		move.w  d1,d7
loc_734C:
		lea     (byte_FFB80C).l,a1
		moveq   #-24,d1
		jmp     j_WriteTilesFromAscii

; END OF FUNCTION CHUNK FOR sub_70E8


; =============== S U B R O U T I N E =======================================

sub_735A:
		movem.l d7-a1,-(sp)
		lea     layout_EquipMenuNenberNameWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     (byte_FFB804).l,a1
		move.l  a1,-(sp)
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetEntityStatsAddress
		moveq   #-36,d1
		moveq   #$A,d7
		jsr     j_WriteTilesFromAscii
		movea.l (sp)+,a1
		lea     $12(a1),a1
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetClass
		jsr     j_GetClassNameAddress
		move.w  d1,d7
		moveq   #-36,d1
		jsr     j_WriteTilesFromAscii
loc_73B6:
		lea     ($C000).l,a1
		move.w  #$780,d0
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_EnableDmaQueueProcessing).l

    ; End of function sub_735A


; =============== S U B R O U T I N E =======================================

; Find force member D2 combatant slot number -> D0 if exists, else D0 = $FFFFFFFF

FindCombatantSlot:
		
		clr.w   d0
		moveq   #31,d7
@Loop:
		jsr     j_GetEntity
		cmp.b   d2,d1
		beq.w   @Return
		addq.w  #1,d0
		dbf     d7,@Loop
                
		moveq   #-1,d0
@Return:
		rts

    ; End of function FindCombatantSlot

sprite_MenuSelection:
		; sprite properties data
		vdpSprite 215, V4|H3|1, 2012|PALETTE3|PRIORITY_BIT, 159
		vdpSprite 227, V4|H3|1, 2012|PALETTE3|PRIORITY_BIT, 143
		vdpSprite 227, V4|H3|1, 2012|PALETTE3|PRIORITY_BIT, 175
		vdpSprite 239, V4|H3|1, 2012|PALETTE3|PRIORITY_BIT, 159
                
tiles_EquipMenuIconHighlight:
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
                
aRemove:        dc.b VDPTILE_ORANGE_UPPERCASE_R
		dc.b VDPTILE_ORANGE_UPPERCASE_E
		dc.b VDPTILE_ORANGE_UPPERCASE_M
		dc.b VDPTILE_ORANGE_UPPERCASE_O
		dc.b VDPTILE_ORANGE_UPPERCASE_V
		dc.b VDPTILE_ORANGE_UPPERCASE_E
                
aWeaponring:    dc.b 'WEAPONRING',0,0
                
