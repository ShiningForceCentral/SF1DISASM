
; ASM FILE code\gameflow\start\initgame.asm :
; 0x309A..0x327E : Game init functions

; =============== S U B R O U T I N E =======================================

InitializeMain:
		
		jsr     j_LoadBaseTilesAndPalette
		bsr.w   EnableInterrupts
		bsr.w   WaitForVInt     
		bsr.w   DisableInterrupts
		cmpi.b  #INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P2_INPUT).l
		bne.s   loc_30BC
		move.b  #1,((DEBUG_MODE_UNLOCKED-$1000000)).w
loc_30BC:
		jsr     j_DisplaySegaLogo
		jsr     PlayIntro
		bsr.w   DisplayReaderScreen
		jsr     j_debugMode_SoundTest
		tst.b   ((DEBUG_MODE_ACTIVATED-$1000000)).w
		beq.s   loc_30FC
		btst    #INPUT_BIT_A,(P1_INPUT).l
		bne.w   debugMode_BattleTest
		btst    #INPUT_BIT_B,(P1_INPUT).l
		bne.w   debugMode_ChapterTest
		btst    #INPUT_BIT_C,(P1_INPUT).l
		bne.w   debugMode_PlayEnding
loc_30FC:
		move.b  #-1,((byte_FFC140-$1000000)).w
		moveq   #38,d0
		bsr.w   CheckEventFlag
		bne.s   loc_3110
		jsr     (DisplayChapterScreen).l
loc_3110:
		bsr.w   sub_312A
		moveq   #37,d0
		bsr.w   CheckEventFlag
		beq.s   loc_3124
		jsr     (EndChapter).l  
		bra.s   loc_30FC
loc_3124:
		bsr.w   ExecuteMapExitScript
		bra.s   loc_30FC

    ; End of function InitializeMain


; =============== S U B R O U T I N E =======================================

sub_312A:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #36,d0
		bsr.w   CheckEventFlag
		bne.w   loc_31C2

    ; End of function sub_312A


; =============== S U B R O U T I N E =======================================

sub_313A:
		moveq   #39,d0
		bsr.w   CheckEventFlag
		beq.s   loc_314E
		bsr.w   ClearEventFlag
		jsr     sub_8004
		bra.s   loc_3154
loc_314E:
		jsr     j_BattleLoop
loc_3154:
		bpl.s   return_31C0
		cmpi.b  #-1,d0
		bne.s   loc_3174
		jsr     j_GetGold
		lsr.l   #1,d1
		jsr     j_SetGold
		clr.w   d0
		clr.w   d1
		jsr     j_SetStatusEffects
loc_3174:
		jsr     j_RefillHp
		jsr     j_RefillMp
		jsr     j_ResetForceMemberStats
		jsr     j_ResetCombatants
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		move.b  ((EGRESS_LOCATION-$1000000)).w,((CURRENT_REGION-$1000000)).w
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bsr.w   sub_4C0E
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.w  d0,-(sp)
		moveq   #36,d0
		bsr.w   SetEventFlag
		move.w  (sp)+,d0
		bra.s   loc_31F6
return_31C0:
		rts
loc_31C2:
		move.b  ((CURRENT_REGION-$1000000)).w,((EGRESS_LOCATION-$1000000)).w
		jsr     j_ResetForceMemberStats
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		bsr.w   sub_4C0E
		move.w  d0,-(sp)
		moveq   #39,d0
		bsr.w   CheckEventFlag
		beq.s   loc_31F4
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_31F4:
		move.w  (sp)+,d0
loc_31F6:
		move.w  d0,-(sp)
		jsr     j_ResetCombatants
		move.w  (sp)+,d0
		move.b  #1,(byte_FF0F03).l
		move.w  d0,-(sp)
		clr.l   (HORIZONTAL_SCROLL_DATA).l
		bsr.w   j_UpdateVdpHScrollData
		bsr.w   j_EnableDmaQueueProcessing
		move.w  (sp)+,d0
		jsr     sub_10000
		bsr.w   j_FadeOutToBlack
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		bsr.w   j_WaitForVInt
		moveq   #37,d0
		bsr.w   CheckEventFlag
		bne.w   return_327C
		cmpi.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   return_327C
		move.b  ((byte_FFF807-$1000000)).w,d0
		move.b  ((CURRENT_REGION-$1000000)).w,d1
		move.b  ((CURRENT_MAP_VERSION-$1000000)).w,d2
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		movem.w d0-d2,-(sp)
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (sub_340).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		movem.w (sp)+,d0-d2
		move.b  d1,((CURRENT_REGION-$1000000)).w
		move.b  d2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_31F6
return_327C:
		rts

    ; End of function sub_313A

