
; ASM FILE code\common\menus\portraitfunctions.asm :
; 0xE156..0xE322 : Portrait functions

; =============== S U B R O U T I N E =======================================

; Load portrait tiles.

LoadPortrait:
		movea.l (p_pt_Portraits).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.w  (a0)+,d0
		move.w  d0,((word_FFB54C-$1000000)).w
		beq.s   loc_E176
		subq.w  #1,d0
		lea     ((byte_FFB54E-$1000000)).w,a1
loc_E170:
		move.l  (a0)+,(a1)+
		dbf     d0,loc_E170
loc_E176:
		move.w  (a0)+,d0
		move.w  d0,((word_FFB56C-$1000000)).w
		beq.s   loc_E18A
		subq.w  #1,d0
		lea     ((byte_FFB56E-$1000000)).w,a1
loc_E184:
		move.l  (a0)+,(a1)+
		dbf     d0,loc_E184
loc_E18A:
		lea     ((byte_FFB58C-$1000000)).w,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		lea     ($B800).l,a1
		move.w  #$380,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jmp     (j_EnableDmaQueueProcessing).l

    ; End of function LoadPortrait


; =============== S U B R O U T I N E =======================================

sub_E1B4:
		move.w  #$85C0,((word_FFB5AE-$1000000)).w
		move.w  #2,((word_FFB548-$1000000)).w
		move.w  #2,((word_FFB54A-$1000000)).w
		move.w  #$14,((word_FFB56A-$1000000)).w
		move.w  #$14,((word_FFB58A-$1000000)).w
		movem.l d7-a1,-(sp)
		lea     layout_PortraitWindow2(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$A0,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$80A,d0
		move.l  #$1F60101,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		move.b  #1,((IS_DISPLAYING_PORTRAIT-$1000000)).w
		rts

    ; End of function sub_E1B4


; =============== S U B R O U T I N E =======================================

OpenPortraitWindow:
		
		move.w  d0,-(sp)
		bsr.w   LoadPortrait    
		jsr     (j_WaitForVInt).l
		lea     ((byte_FFB58C-$1000000)).w,a0
		lea     (PALETTE_2_CURRENT).l,a1
		moveq   #7,d7
loc_E222:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_E222
                
		jsr     (j_ApplyVIntCramDma).l
		move.w  #$A5C0,((word_FFB5AE-$1000000)).w
		move.w  #2,((word_FFB548-$1000000)).w
		move.w  #2,((word_FFB54A-$1000000)).w
		move.w  #$14,((word_FFB56A-$1000000)).w
		move.w  #$14,((word_FFB58A-$1000000)).w
		movem.l d7-a1,-(sp)
		lea     layout_PortraitWindow1(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$A0,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$80A,d0
		move.l  #$1F60101,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		move.b  #1,((IS_DISPLAYING_PORTRAIT-$1000000)).w
		move.w  (sp)+,d0
		rts

    ; End of function OpenPortraitWindow


; =============== S U B R O U T I N E =======================================

ClosePortraitWindow:
		
		movem.w d0,-(sp)
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		movem.l d7-a1,-(sp)
		lea     layout_PortraitWindow1(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$A0,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$80A,d0
		move.l  #$10101F6,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		move.w  (sp)+,d0
		rts

    ; End of function ClosePortraitWindow


; =============== S U B R O U T I N E =======================================

sub_E2C2:
		movem.w d0,-(sp)
		bsr.s   BuildSpeakerNameWindow
		move.l  #$F60B000B,d1
		bsr.w   MoveWindowWithSfx
		move.w  (sp)+,d0
		rts

    ; End of function sub_E2C2


; =============== S U B R O U T I N E =======================================

sub_E2D6:
		move.w  d0,-(sp)
		bsr.s   BuildSpeakerNameWindow
		move.l  #$BF60B,d1
		bsr.w   MoveWindowWithSfx
		move.w  (sp)+,d0
		rts

    ; End of function sub_E2D6


; =============== S U B R O U T I N E =======================================

BuildSpeakerNameWindow:
		
		movem.l d7-a1,-(sp)
		lea     layout_SpeakerNameWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$3C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     j_GetEntityStatsAddress
		move.w  d1,d7
		lea     ((CURRENT_SPEAKER_NAME_VDPTILES-$1000000)).w,a1
		moveq   #-16,d1
		bsr.w   WriteTilesFromAscii
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$A03,d0
		move.w  #4,d2
		rts

    ; End of function BuildSpeakerNameWindow

