
; ASM FILE code\common\menus\goldwindow.asm :
; 0x550C..0x55CC : Gold window functions

; =============== S U B R O U T I N E =======================================

sub_550C:
		bsr.w   CreateGoldWindow
		move.l  #$C1C0C15,d1
		moveq   #4,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_WaitForPlayerInput).l
		move.l  #$C152015,d1
		moveq   #6,d2
		jmp     j_MoveWindowWithSfx

    ; End of function sub_550C


; =============== S U B R O U T I N E =======================================

sub_5532:
		bsr.w   CreateGoldWindow
		move.l  #$200F160F,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function sub_5532


; =============== S U B R O U T I N E =======================================

sub_5544:
		bsr.w   CreateGoldWindow
		move.l  #$160F200F,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function sub_5544


; =============== S U B R O U T I N E =======================================

DisplayGoldWindow:
		
		bsr.w   CreateGoldWindow
		move.l  #$F8010101,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function DisplayGoldWindow


; =============== S U B R O U T I N E =======================================

HideGoldWindow:
		
		bsr.w   CreateGoldWindow
		move.l  #$101F801,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function HideGoldWindow


; =============== S U B R O U T I N E =======================================

sub_557A:
		bsr.w   CreateGoldWindow
		move.w  #$160F,d1
		jsr     j_CreateWindow
		jmp     sub_8054

    ; End of function sub_557A


; =============== S U B R O U T I N E =======================================

CreateGoldWindow:
		
		movem.l d7-a1,-(sp)
		lea     layout_GoldWindow(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$40,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     j_GetGold
		move.l  d1,d0
		lea     (byte_FFB7FC).l,a1
		moveq   #6,d7
		jsr     j_WriteTilesFromNumber
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$804,d0
		rts

    ; End of function CreateGoldWindow

