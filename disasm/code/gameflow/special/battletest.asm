
; ASM FILE code\gameflow\special\battletest.asm :
; 0x4F00..0x50E2 : Battle test functions

; =============== S U B R O U T I N E =======================================

debugMode_BattleTest:
		
		move.b  #1,((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		moveq   #ALLY_KEN,d0
		jsr     j_JoinForce
		moveq   #ALLY_LUKE,d0
		jsr     j_JoinForce
		moveq   #ALLY_TAO,d0
		jsr     j_JoinForce
		moveq   #ALLY_LOWE,d0
		jsr     j_JoinForce
		moveq   #ALLY_HANS,d0
		jsr     j_JoinForce
		moveq   #ALLY_BLEU,d0
		jsr     j_JoinForce
		moveq   #ALLY_ADAM,d0
		jsr     j_JoinForce
		moveq   #ALLY_ZYLO,d0
		jsr     j_JoinForce
		moveq   #ALLY_MUSASHI,d0
		jsr     j_JoinForce
		moveq   #ALLY_HANZOU,d0
		jsr     j_JoinForce
		moveq   #ALLY_JOGURT,d0
		jsr     j_JoinForce
		moveq   #ALLY_MAE,d0
		moveq   #NON_LEADER_FORCE_MEMBERS_COUNTER,d7
loc_4F62:
		jsr     j_JoinForce
		addq.w  #1,d0
		dbf     d7,loc_4F62
loc_4F6E:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     layout_BattleTestWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
loc_4FC0:
		tst.b   (P1_INPUT).l    
		bne.s   loc_4FC0
		clr.w   d0
		moveq   #$14,d1
loc_4FCC:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4FE4
		addq.w  #1,d0
		cmpi.w  #$1E,d0
		blt.s   byte_4FE0
		moveq   #0,d0
byte_4FE0:
		sndCom  SFX_MENU_SELECTION
loc_4FE4:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4FF8
		subq.w  #1,d0
		bgt.s   byte_4FF4
		moveq   #$1D,d0
byte_4FF4:
		sndCom  SFX_MENU_SELECTION
loc_4FF8:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_5086
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_5086
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5034
		movem.w d0-d1,-(sp)
		jsr     j_ResetCombatants
		jsr     j_ExecuteChurchMenu
		jsr     (j_ExecuteHeadquartersMenu).l
		movem.w (sp)+,d0-d1
loc_5034:
		movem.l d7-a1,-(sp)
		lea     layout_BattleTestWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		addq.w  #1,d0
		lea     ((byte_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_WriteTilesFromNumber
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_4FCC
loc_5086:
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		move.w  d0,-(sp)
		lsl.w   #3,d0
		lea     table_BattleTestTargets(pc), a0
		adda.w  d0,a0
		move.b  (a0)+,((CURRENT_CHAPTER-$1000000)).w
		move.b  (a0)+,((CURRENT_REGION-$1000000)).w
		move.b  (a0)+,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  (a0)+,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.w   d1
		move.b  (a0)+,d1
		bmi.w   loc_50CC
		lsl.w   #3,d1
		clr.w   d0
		move.b  (a0)+,d0
		add.w   d1,d0
		bsr.w   j_SetEventFlag
		clr.w   d1
		move.b  (a0)+,d1
		bmi.w   loc_50CC
		lsl.w   #3,d1
		clr.w   d0
		move.b  (a0)+,d0
		add.w   d1,d0
		bsr.w   j_SetEventFlag
loc_50CC:
		moveq   #39,d0
		bsr.w   ClearEventFlag
		jsr     (j_FadeOutToBlack).l
		bsr.w   sub_313A
		move.w  (sp)+,d0
		bra.w   loc_4F6E

    ; End of function debugMode_BattleTest

