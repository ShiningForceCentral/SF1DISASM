
; ASM FILE code\specialscreens\readerscreen\readerfunctions_2.asm :
; 0x3852..0x394C : Simone screen functions, part 2

; =============== S U B R O U T I N E =======================================

InitializeReaderScreen:
		
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		bsr.w   j_DisableDisplayAndInterrupts
		bsr.w   j_ClearScrollAndSpriteTables
		move.w  #$8C00,d0       ; H32 cell mode, no interlace
		bsr.w   j_SetVdpReg
		move.w  #$9001,d0       ; scroll size : V32 cell, H64 cell
		bsr.w   j_SetVdpReg
		move.w  #$8230,d0       ; scroll A table VRAM address : C000
		bsr.w   j_SetVdpReg
		move.w  #$8407,d0       ; scroll B table VRAM address : E000
		bsr.w   j_SetVdpReg
		move.w  #$8B00,d0       ; disable external interrupt, full scrolls
		bsr.w   j_SetVdpReg
		jsr     sub_16400C
		bsr.w   j_EnableDisplayAndInterrupts
		movem.l d7-a1,-(sp)
		lea     palettes_ReaderScreen(pc), a0
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$80,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		clr.l   (HORIZONTAL_SCROLL_DATA).l
		clr.l   (VERTICAL_SCROLL_DATA).l
		bsr.w   j_UpdateVdpHScrollData
		bsr.w   j_UpdateVdpVScrollData
		bsr.w   j_FadeInFromBlack
		move.w  #$14,((word_FFB56A-$1000000)).w
		move.w  #$14,((word_FFB58A-$1000000)).w
		move.b  #1,((IS_DISPLAYING_PORTRAIT-$1000000)).w
		move.l  #sub_164010,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function InitializeReaderScreen


; =============== S U B R O U T I N E =======================================

DisplayShiningForceLogo:
		
		move.w  #60,d0
		jsr     (j_Sleep).l
		movea.l (p_ShiningForceLogoTiles).l,a0
		lea     ($A000).l,a1
		move.w  #$1000,d0
		moveq   #2,d1
		bsr.w   j_ApplyVIntVramDmaOnCompressedTiles
		bsr.w   j_EnableDmaQueueProcessing
		move.b  #2,(FADING_PALETTE_FLAGS).l
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #3,d0
		bsr.w   j_Sleep
		lea     layout_ShiningForceLogo(pc), a0
		move.w  #$C05,d0
		move.w  #$1215,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #60,d0
		bra.w   j_Sleep

    ; End of function DisplayShiningForceLogo

