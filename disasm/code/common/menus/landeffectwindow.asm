
; ASM FILE code\common\menus\landeffectwindow.asm :
; 0xDEC0..0xDF8C : Land effect window functions

; =============== S U B R O U T I N E =======================================

sub_DEC0:
		movem.l d0-a1,-(sp)
		bsr.w   BuildLandEffectWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$806,d0
		move.l  #$F8010101,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		movem.l (sp)+,d0-a1
		rts

    ; End of function sub_DEC0


; =============== S U B R O U T I N E =======================================

sub_DEE4:
		movem.l d0-a1,-(sp)
		bsr.w   BuildLandEffectWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$806,d0
		move.l  #$101F801,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		movem.l (sp)+,d0-a1
		rts

    ; End of function sub_DEE4


; =============== S U B R O U T I N E =======================================

CreateLandEffectWindow:
		
		movem.l d0-a1,-(sp)
		bsr.w   BuildLandEffectWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$806,d0
		move.l  #$101,d1
		move.w  #8,d2
		bsr.w   CreateWindow    
		bsr.w   sub_AF66
		movem.l (sp)+,d0-a1
		rts

    ; End of function CreateLandEffectWindow


; =============== S U B R O U T I N E =======================================

BuildLandEffectWindow:
		
		lea     layout_LandEffectWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$60,d7 
		jsr     (j_CopyBytes).l
		clr.w   d0
		clr.w   d1
		clr.w   d2
		move.b  ((byte_FFB4C5-$1000000)).w,d0
		move.b  ((CURSOR_POSITION_X-$1000000)).w,d2
		move.b  ((CURSOR_POSITION_Y-$1000000)).w,d1
		jsr     j_GetLandEffectAtPosition
		move.w  d1,-(sp)
		lea     aLandEffect(pc), a0
		lea     ((byte_FFB7EC-$1000000)).w,a1
		moveq   #-16,d1
		clr.w   d7
		move.b  (a0)+,d7
		bsr.w   WriteTilesFromAscii
		move.w  (sp)+,d0
		ext.l   d0
		moveq   #2,d7
		lea     ((byte_FFB822-$1000000)).w,a1
		bsr.w   WriteTilesFromNumber
		rts

    ; End of function BuildLandEffectWindow

aLandEffect:    dc.b $C,'Land',9,'Effect',0,$FF
