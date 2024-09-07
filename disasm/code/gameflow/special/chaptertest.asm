
; ASM FILE code\gameflow\special\chaptertest.asm :
; 0x4D9A..0x4F00 : Chapter test functions

; =============== S U B R O U T I N E =======================================

debugMode_ChapterTest:
		
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
loc_4DFC:
		jsr     j_JoinForce
		addq.w  #1,d0
		dbf     d7,loc_4DFC
                
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     layout_ChapterTestWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
loc_4E42:
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		moveq   #1,d0
		moveq   #$14,d1
loc_4E5E:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4E76
		addq.w  #1,d0
		cmpi.w  #9,d0
		blt.s   byte_4E72
		moveq   #1,d0
byte_4E72:
		sndCom  SFX_MENU_SELECTION
loc_4E76:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4E8A
		subq.w  #1,d0
		bne.s   byte_4E86
		moveq   #8,d0
byte_4E86:
		sndCom  SFX_MENU_SELECTION
loc_4E8A:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_4EF2
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_4EF2
		movem.l d7-a1,-(sp)
		lea     layout_ChapterTestWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
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
		bra.w   loc_4E5E
loc_4EF2:
		move.b  d0,((CURRENT_CHAPTER-$1000000)).w
		jsr     (j_FadeOutToBlack).l
		bra.w   loc_30FC

    ; End of function debugMode_ChapterTest

