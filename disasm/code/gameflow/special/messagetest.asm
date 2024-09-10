
; ASM FILE code\gameflow\special\messagetest.asm :
; 0x51D2..0x530E : Message test functions

; =============== S U B R O U T I N E =======================================

DebugModeMessageTest:
		
		btst    #INPUT_BIT_B,(P1_INPUT).l
		bne.s   loc_51DE
		rts
loc_51DE:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     layout_MessageTestWindow(pc), a0
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
		openTxt
		moveq   #0,d0
		moveq   #$14,d1
loc_5236:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5250
		addq.w  #1,d0
		cmpi.w  #$8BF,d0
		blt.s   byte_524C
		move.w  #$8BF,d0
byte_524C:
		sndCom  SFX_MENU_SELECTION
loc_5250:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5264
		subq.w  #1,d0
		bpl.s   byte_5260
		clr.w   d0
byte_5260:
		sndCom  SFX_MENU_SELECTION
loc_5264:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5280
		addi.w  #$A,d0
		cmpi.w  #$8BF,d0
		blt.s   byte_527C
		move.w  #$8BF,d0
byte_527C:
		sndCom  SFX_MENU_SELECTION
loc_5280:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5296
		subi.w  #$A,d0
		bpl.s   byte_5292
		clr.w   d0
byte_5292:
		sndCom  SFX_MENU_SELECTION
loc_5296:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_52FE
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_52FE
		movem.l d7-a1,-(sp)
		lea     layout_MessageTestWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((byte_FFB854-$1000000)).w,a1
		ext.l   d0
		moveq   #4,d7
		jsr     j_WriteTilesFromNumber
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_5236
loc_52FE:
		movem.w d0,-(sp)
		clearTxt
		txtD0
		movem.w (sp)+,d0
		bra.w   loc_5236

    ; End of function DebugModeMessageTest

