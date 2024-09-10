
; ASM FILE code\gameflow\special\soundtest.asm :
; 0xBC01C..0xBC29E : Sound test functions

; =============== S U B R O U T I N E =======================================

debugMode_SoundTest:
		
		tst.b   (GAME_COMPLETED).l
		beq.w   return_BC226
debugMode_CheckInputForSoundTest:
		
		cmpi.b  #INPUT_DOWN|INPUT_START,(P1_INPUT).l
		bne.w   return_BC226
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_DisableDisplayAndInterrupts).l
		moveq   #$3F,d0 
		jsr     (j_InitSprites).l
		jsr     (sub_324).l
		move.w  #$8C00,d0       ; H32 cell mode, no interlace
		jsr     (j_SetVdpReg).w
		move.w  #$9010,d0       ; scroll size : V64 cell, H32 cell
		jsr     (j_SetVdpReg).w
		move.w  #$8238,d0       ; scroll A table VRAM address : E000
		jsr     (j_SetVdpReg).w
		move.w  #$8407,d0       ; scroll B table VRAM address : E000
		jsr     (j_SetVdpReg).w
		move.w  #$8B03,d0
		jsr     (j_SetVdpReg).w
		move.w  #0,d6
		jsr     (j_UpdateForegroundVScrollData).w
		move.w  #$100,d6
		jsr     (j_UpdateBackgroundVScrollData).w
		jsr     (j_EnableDmaQueueProcessing).w
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		move.w  #$3FF,d7
loc_BC096:
		clr.l   (a0)+
		dbf     d7,loc_BC096
                
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		lea     tiles_SoundTest1(pc), a0
		nop
		lea     ($2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		lea     tiles_SoundTest2(pc), a0
		nop
		lea     ($4000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		lea     tiles_SoundTest3(pc), a0
		nop
		lea     ($6000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		lea     palettes_SoundTest(pc), a0
		nop
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		jsr     (j_EnableDisplayAndInterrupts).l
		lea     layout_SoundTest(pc), a0
		nop
		move.w  #$201C,d0
		move.w  #0,d1
		jsr     j_CreateWindow
		bsr.w   sub_BC228
		movem.l d7-a1,-(sp)
		lea     layout_SoundTestWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$A0,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$1005,d0
		move.l  #$813,d1
		jsr     j_CreateWindow
		bsr.w   sub_BC228
		sndCom  MUSIC_TOWN
		jsr     (j_FadeInFromBlack).l
		move.l  #sub_BC246,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #1,d0
loc_BC17E:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_BC192
		addq.w  #1,d0
		cmpi.w  #$6D,d0 
		blt.s   loc_BC192
		moveq   #1,d0
loc_BC192:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_BC1A2
		subq.w  #1,d0
		bne.s   loc_BC1A2
		moveq   #$6C,d0 
loc_BC1A2:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   byte_BC218
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   byte_BC218
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_BC1C8
		sndCom  SOUND_COMMAND_FADE_OUT
loc_BC1C8:
		movem.l d7-a1,-(sp)
		lea     layout_SoundTestWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     (byte_FFB84E).l,a1
		ext.l   d0
		moveq   #3,d7
		jsr     j_WriteTilesFromNumber
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$1005,d0
		move.l  #$813,d1
		jsr     j_CreateWindow
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_BC17E
byte_BC218:
		sndCom  SOUND_COMMAND_GET_D0_PARAMETER
		jsr     (j_WaitForVInt).l
		bra.w   loc_BC17E
return_BC226:
		rts

    ; End of function debugMode_SoundTest


; =============== S U B R O U T I N E =======================================

sub_BC228:
		lea     ($E000).l,a1
		move.w  #$780,d0
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_EnableDmaQueueProcessing).l

    ; End of function sub_BC228


; =============== S U B R O U T I N E =======================================

sub_BC246:
		moveq   #5,d7
		lea     (SPELLENTITY_PROPERTIES).l,a0
loc_BC24E:
		movem.l d7-a0,-(sp)
		tst.w   (a0)
		bne.s   loc_BC27E
		move.w  d7,-(sp)
		moveq   #20,d6
		jsr     (j_GenerateRandomNumber).l
		addi.w  #10,d7
		move.w  d7,(a0)
		move.w  (sp)+,d7
		eori.w  #1,2(a0)
		moveq   #5,d0
		sub.w   d7,d0
		add.w   d0,d0
		add.w   2(a0),d0
		bsr.w   sub_BC28E
		bra.s   loc_BC280
loc_BC27E:
		subq.w  #1,(a0)
loc_BC280:
		movem.l (sp)+,d7-a0
		addq.l  #4,a0
		dbf     d7,loc_BC24E
                
		bsr.s   sub_BC228
		rts

    ; End of function sub_BC246


; =============== S U B R O U T I N E =======================================

sub_BC28E:
		lsl.w   #2,d0
		movea.l off_BC29E(pc,d0.w),a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		jmp     j_CreateWindow

    ; End of function sub_BC28E

