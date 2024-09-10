
; ASM FILE code\gameflow\start\initsystem.asm :
; 0x398..0x47A : System init functions

; =============== S U B R O U T I N E =======================================

InitSystem:
		bsr.s   InitVdp
		bsr.w   InitZ80
		bsr.s   InitVdpData
		jmp     (InitializeMain).l

    ; End of function InitSystem


; =============== S U B R O U T I N E =======================================

InitVdp:
		move.w  #16382,d0
		lea     (PALETTE_1_CURRENT).l,a0
@ClearRam_Loop:
		
		clr.l   (a0)+           ; clear all RAM
		dbf     d0,@ClearRam_Loop
                
		move.b  #3,(FADING_COUNTER_MAX).l
		clr.b   (FADING_SETTING).l
		lea     vdp_init_params(pc), a0
		moveq   #18,d1
@SetVdpReg_Loop:
		
		move.w  (a0)+,d0
		bsr.w   SetVdpReg
		dbf     d1,@SetVdpReg_Loop
                
		clr.w   d0
		clr.w   d1
		clr.w   d2
		bsr.w   ApplyVramDmaFill
		rts

    ; End of function InitVdp


; =============== S U B R O U T I N E =======================================

InitVdpData:
		move.l  #VDP_COMMAND_QUEUE,(VDP_COMMAND_QUEUE_POINTER).l
		move.l  #DMA_QUEUE,(DMA_QUEUE_POINTER).l
		moveq   #$40,d0 ; PD2 output mode ?
		move.b  d0,(CTRL1+1).l  
loc_3FC:
		move.b  d0,(CTRL2+1).l
		move.b  d0,(CTRL3+1).l
		lea     (HORIZONTAL_SCROLL_DATA).l,a0
		move.w  #255,d0
loc_412:
		move.w  #0,(a0)+        ; clear from FF0100 to FF0500
		move.w  #0,(a0)+
		dbf     d0,loc_412
                
		lea     (VERTICAL_SCROLL_DATA).l,a0
		move.w  #19,d0
loc_428:
		move.w  #0,(a0)+        ; clear next 80d bytes
		move.w  #0,(a0)+
		dbf     d0,loc_428
                
		lea     (PALETTE_1_BASE).l,a0
		moveq   #127,d1
loc_43C:
		clr.w   (a0)+           ; clear palette replicas ?
		dbf     d1,loc_43C
                
		bsr.w   ClearSpriteTable
		bsr.w   UpdateVdpHScrollData
		bsr.w   UpdateVdpVScrollData
		bsr.w   EnableDmaQueueProcessing
		rts

    ; End of function InitVdpData

vdp_init_params:dc.w $8004              ; disable H int, enable read H V counter
		dc.w $8124              ; disable display, enable V int, disable DMA, V28 cell mode
		dc.w $8230              ; scroll A table VRAM address : C000
		dc.w $8338              ; window table VRAM address : E000
		dc.w $8407              ; scroll B table VRAM address : E000
		dc.w $8578              ; sprite attribute table VRAM address : F000
		dc.w $8600              ; always 0
		dc.w $8700              ; background color : plt 0, clr 0
		dc.w $8800              ; always 0
		dc.w $8900              ; always 0
		dc.w $8A00              ; Hint timing : 0
		dc.w $8B00              ; disable external interrupt, full scrolls
		dc.w $8C81              ; H40 cell mode, no interlace
		dc.w $8D3D              ; H Scroll table VRAM address : F400
		dc.w $8E00              ; always 0
		dc.w $8F02              ; auto increment bias number : 2
		dc.w $9001              ; scroll size : V32 cell, H64 cell
		dc.w $9194              ; window is 20 cells from right
		dc.w $929C              ; window is 28 cells from bottom
