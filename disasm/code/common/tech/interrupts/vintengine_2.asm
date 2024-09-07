
; ASM FILE code\common\tech\interrupts\vintengine_2.asm :
; 0xB9C..0x137E : Vertical Interrupt Engine - Main Technical Engine - Triggered at each frame display

; =============== S U B R O U T I N E =======================================

; Horizontal Interrupt

HInt:
		rte

    ; End of function HInt


; =============== S U B R O U T I N E =======================================

; waits for 0xc00004 (VDP DMA register) to be cleared

WaitDmaEnd:
		movem.w d0,-(sp)
@Wait:
		move.w  (VDP_Control).l,d0
		btst    #1,d0           ; control if DMA in progress
		bne.s   @Wait           ; loop if DMA in progress
		move.w  (sp)+,d0
		rts

    ; End of function WaitDmaEnd


; =============== S U B R O U T I N E =======================================

; VDP Reg Status -> D0

GetVdpRegStatus:
		
		movem.l a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		move.w  (a0,d0.w),d0
		movem.l (sp)+,a0
		rts

    ; End of function GetVdpRegStatus


; =============== S U B R O U T I N E =======================================

SetVdpReg:
		bsr.s   WaitDmaEnd      
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		move.w  d0,(VDP_Control).l
		move.w  d0,d1
		andi.w  #$7F00,d0
		lsr.w   #7,d0
		move.w  d1,(a0,d0.w)    ; store new vdp reg status
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function SetVdpReg


; =============== S U B R O U T I N E =======================================

ApplyLogicalOrOnVdpReg:
		
		bsr.s   WaitDmaEnd      
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		or.b    d1,1(a0,d0.w)   ; enable display
		bra.s   SendVdpCommand

    ; End of function ApplyLogicalOrOnVdpReg


; =============== S U B R O U T I N E =======================================

ApplyLogicalAndOnVdpReg:
		
		bsr.s   WaitDmaEnd      
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		and.b   d1,1(a0,d0.w)   ; disable display

    ; End of function ApplyLogicalAndOnVdpReg


; START OF FUNCTION CHUNK FOR ApplyLogicalOrOnVdpReg

SendVdpCommand:
		
		move.w  (a0,d0.w),d1
		move.w  d1,(VDP_Control).l
		movem.l (sp)+,d0-d1/a0
		rts

; END OF FUNCTION CHUNK FOR ApplyLogicalOrOnVdpReg


; =============== S U B R O U T I N E =======================================

EnableDisplayOnVdp:
		
		move.w  #1,d0           ; get vdp reg 01
		move.w  #$40,d1 
		bra.s   ApplyLogicalOrOnVdpReg

    ; End of function EnableDisplayOnVdp


; =============== S U B R O U T I N E =======================================

DisableDisplayOnVdp:
		
		move.w  #1,d0
		move.w  #$BF,d1 
		bra.s   ApplyLogicalAndOnVdpReg

    ; End of function DisableDisplayOnVdp


; =============== S U B R O U T I N E =======================================

EnableInterrupts:
		
		move.b  #$80,(VINT_ENABLED).l
		move    #$2300,sr       ; set interrupt mask to level 3
		rts

    ; End of function EnableInterrupts


; =============== S U B R O U T I N E =======================================

DisableInterrupts:
		
		clr.b   (VINT_ENABLED).l
		move    #$2700,sr       ; set interrupt mask to level 7 : no more HInt/VInt !
		rts

    ; End of function DisableInterrupts


; =============== S U B R O U T I N E =======================================

EnableDisplayAndInterrupts:
		
		bsr.s   EnableDisplayOnVdp
		bra.s   EnableInterrupts

    ; End of function EnableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

DisableDisplayAndInterrupts:
		
		bsr.s   DisableInterrupts
		bra.s   DisableDisplayOnVdp

    ; End of function DisableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

ActivateVIntDmaQueueProcessing:
		
		bclr    #DEACTIVATE_DMA,(VINT_PARAMS).l
		rts

    ; End of function ActivateVIntDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

DeactivateVIntDmaQueueProcessing:
		
		bset    #DEACTIVATE_DMA,(VINT_PARAMS).l
		rts

    ; End of function DeactivateVIntDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

DuplicatePalettes:
		
		movem.l d7/a5-a6,-(sp)
		lea     (PALETTE_1_BASE).l,a5
		lea     (PALETTE_1_CURRENT).l,a6
		move.w  #CRAM_COLORS_COUNTER,d7
@Loop:
		move.w  (a5)+,(a6)+
		dbf     d7,@Loop
                
		movem.l (sp)+,d7/a5-a6

    ; End of function DuplicatePalettes


; =============== S U B R O U T I N E =======================================

; VDP CRAM

ApplyVIntCramDma:
		
		move    sr,-(sp)
		move    #$2700,sr       ; disable interrupts
		movem.l a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.w  #$8F02,(a6)+    ; auto increment : 2
		move.w  #$9400,(a6)+    ; DMA length : 64
		move.w  #$9340,(a6)+
		move.w  #$9680,(a6)+
		move.w  #$9500,(a6)+
		move.w  #$977F,(a6)+    ; RAM to VRAM, address : ?
		move.w  #$C000,(a6)+
		move.w  #$80,(a6)+      ; CRAM DMA Write
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,a6
		move    (sp)+,sr
		rts

    ; End of function ApplyVIntCramDma


; =============== S U B R O U T I N E =======================================

CopyPalette1:
		lea     (PALETTE_1_BASE).l,a1

    ; End of function CopyPalette1


; =============== S U B R O U T I N E =======================================

CopyPalette:
		move.w  #PALETTE_COLORS_COUNTER,d0

    ; End of function CopyPalette


; =============== S U B R O U T I N E =======================================

CopyPalette_Loop:
		
		move.w  (a0)+,(a1)+
		dbf     d0,CopyPalette_Loop
                
		rts

    ; End of function CopyPalette_Loop


; =============== S U B R O U T I N E =======================================

FadeInFromBlack:
		
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		bra.w   ExecuteFading

    ; End of function FadeInFromBlack


; =============== S U B R O U T I N E =======================================

FadeOutToBlack:
		
		move.b  #OUT_TO_BLACK,(FADING_SETTING).l
		bra.w   ExecuteFading

    ; End of function FadeOutToBlack


; =============== S U B R O U T I N E =======================================

FadeInFromWhite:
		
		move.b  #IN_FROM_WHITE,(FADING_SETTING).l
		bra.w   ExecuteFading

    ; End of function FadeInFromWhite


; =============== S U B R O U T I N E =======================================

FadeOutToWhite:
		
		move.b  #OUT_TO_WHITE,(FADING_SETTING).l

    ; End of function FadeOutToWhite


; =============== S U B R O U T I N E =======================================

ExecuteFading:
		
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$F,(FADING_PALETTE_FLAGS).l
@Wait:
		bsr.w   WaitForVInt     
		tst.b   (FADING_SETTING).l; wait until fade end
		bne.s   @Wait
		bsr.w   WaitForVInt     
		rts

    ; End of function ExecuteFading


; =============== S U B R O U T I N E =======================================

ApplyCurrentColorFadingValue:
		
		movem.l d2-a2,-(sp)
		lea     (PALETTE_1_BASE).l,a0
		lea     (PALETTE_1_CURRENT).l,a1
		moveq   #3,d6
loc_D48:
		moveq   #3,d5
		sub.w   d6,d5
		btst    d5,d1
		bne.s   loc_D5C
		adda.w  #$20,a0 
		adda.w  #$20,a1 
		bra.w   loc_DC0
loc_D5C:
		moveq   #$F,d7
loc_D5E:
		movem.l d0,-(sp)
		move.w  (a0)+,d2
		add.w   d0,d0
		move.w  d2,d3
		andi.w  #$F,d3
		add.w   d0,d3
		bpl.s   loc_D74
		clr.w   d3
		bra.s   loc_D7E
loc_D74:
		cmpi.w  #$F,d3
		ble.s   loc_D7E
loc_D7A:
		move.w  #$F,d3
loc_D7E:
		asl.w   #4,d0
		move.w  d2,d4
		andi.w  #$F0,d4 
		add.w   d0,d4
		bpl.s   loc_D8E
		clr.w   d4
		bra.s   loc_D98
loc_D8E:
		cmpi.w  #$F0,d4 
		ble.s   loc_D98
		move.w  #$F0,d4 
loc_D98:
		or.w    d4,d3
		asl.w   #4,d0
		move.w  d2,d4
		andi.w  #$F00,d4
		add.w   d0,d4
		bpl.s   loc_DAA
		clr.w   d4
		bra.s   loc_DB4
loc_DAA:
		cmpi.w  #$F00,d4
		ble.s   loc_DB4
		move.w  #$F00,d4
loc_DB4:
		or.w    d4,d3
		move.w  d3,(a1)+
		movem.l (sp)+,d0
		dbf     d7,loc_D5E
loc_DC0:
		dbf     d6,loc_D48
                
		bsr.w   ApplyVIntCramDma
		bsr.w   EnableDmaQueueProcessing
		movem.l (sp)+,d2-a2
		rts

    ; End of function ApplyCurrentColorFadingValue


; =============== S U B R O U T I N E =======================================

ClearScrollAndSpriteTables:
		
		bsr.s   ClearScrollTable
		bsr.s   ClearSpriteTable

    ; End of function ClearScrollAndSpriteTables


; =============== S U B R O U T I N E =======================================

UpdateVdpSpriteTable:
		
		lea     (VDP_Control).l,a6
		move.w  #$8134,(a6)     ; disable display, enable VInt, enable DMA
		move.l  #$94019300,(a6) ; DMA Length : $100
		move.l  #$96869540,(a6)
		move.w  #$977F,(a6)
		move.w  #$7000,(a6)
		move.w  #$83,(TEMP_DMA_VALUE).l 
		move.w  (TEMP_DMA_VALUE).l,(a6)
		move.w  (VDP_REG01_STATUS).l,(a6)
		rts

    ; End of function UpdateVdpSpriteTable


; =============== S U B R O U T I N E =======================================

ClearSpriteTable:
		
		movem.l d0-d1/a0,-(sp)
		lea     (SPRITE_00_PROPERTIES).l,a0
		moveq   #VDP_SPRITES_COUNTER,d1
		moveq   #1,d0
@Loop:
		move.l  d0,(a0)
		clr.l   4(a0)
		addq.w  #8,a0
		addq.b  #1,d0
		dbf     d1,@Loop
                
		clr.b   -5(a0)
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function ClearSpriteTable


; =============== S U B R O U T I N E =======================================

ClearScrollTable:
		
		movem.l d7/a6,-(sp)
		move.w  #$C000,d0       ; clear scroll A table
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   ApplyVramDmaFill
		move.w  #$E000,d0       ; clear scroll B table
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   ApplyVramDmaFill
		move.w  #$7FF,d7
		lea     (PLANE_A_MAP_LAYOUT).l,a6
@Loop:
		clr.l   (a6)+
		dbf     d7,@Loop
                
		movem.l (sp)+,d7/a6
		rts

    ; End of function ClearScrollTable


; =============== S U B R O U T I N E =======================================

; Wait until VInt function is called, i.e., next frame

WaitForVInt:
		bset    #ENABLE_VINT,(VINT_PARAMS).l
		move.b  #1,(VINT_WAIT_TOGGLE).l
@Wait:
		tst.b   (VINT_WAIT_TOGGLE).l; wait until toggle cleared
		bne.s   @Wait
		rts

    ; End of function WaitForVInt


; =============== S U B R O U T I N E =======================================

; Wait for D0 frames

Sleep:
		movem.w d0,-(sp)
		subq.w  #1,d0
		bcs.w   @Done
@Loop:
		bsr.s   WaitForVInt     
		dbf     d0,@Loop
@Done:
		movem.w (sp)+,d0
		rts

    ; End of function Sleep


; =============== S U B R O U T I N E =======================================

RequestVdpCommandQueueProcessing:
		
		bset    #VDP_COMMAND_REQUEST,(VINT_PARAMS).l
		rts

    ; End of function RequestVdpCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

WaitForVdpCommandQueueProcessing:
		
		bsr.s   RequestVdpCommandQueueProcessing
		bra.w   WaitForVInt     

    ; End of function WaitForVdpCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

EnableDmaQueueProcessing:
		
		bset    #DMA_REQUEST,(VINT_PARAMS).l
		rts

    ; End of function EnableDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

WaitForDmaQueueProcessing:
		
		bsr.s   EnableDmaQueueProcessing
		bra.w   WaitForVInt     

    ; End of function WaitForDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

sub_EB6:
		bsr.w   DisableInterrupts
		movem.l d7/a4-a5,-(sp)
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		move.w  a6,(a4)+
loc_ECC:
		move.w  d0,(a4)+
		move.l  a4,(VDP_COMMAND_QUEUE_POINTER).l
		addq.b  #1,(VDP_COMMAND_COUNTER).l
		clr.l   d7
		move.w  a6,d7
		ori.l   #PALETTE_1_CURRENT,d7
		movea.l d7,a6
		movem.l (sp)+,d7/a4-a5
		bsr.w   EnableInterrupts
		rts

    ; End of function sub_EB6


; =============== S U B R O U T I N E =======================================

sub_EF0:
		bsr.w   DisableInterrupts
loc_EF4:
		movem.l d7/a4-a5,-(sp)
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		bsr.s   SwapA6
		move.w  a6,(a4)+
		bra.s   loc_ECC

    ; End of function sub_EF0


; =============== S U B R O U T I N E =======================================

sub_F0A:
		movem.l d5-d7,-(sp)
		lea     ($E000).l,a6
		lsl.w   #1,d5
		lsl.w   #7,d6
		or.w    d6,d5
		adda.w  d5,a6
		bsr.s   SwapA6
		movem.l (sp)+,d5-d6
		movem.l d5-d6,-(sp)
		adda.l  #$C000,a6
		lsl.w   #1,d5
		lsl.w   #7,d6
		or.w    d6,d5
		adda.w  d5,a6
		movem.l (sp)+,d5-d7
		andi.w  #$7E,d5 
		andi.w  #$F80,d6
		rts

    ; End of function sub_F0A


; =============== S U B R O U T I N E =======================================

SwapA6:
		movem.l d7,-(sp)
		move.l  a6,d7
		swap    d7
		movea.l d7,a6
		movem.l (sp)+,d7
		rts

    ; End of function SwapA6


; =============== S U B R O U T I N E =======================================

sub_F52:
		bsr.w   DisableInterrupts
		lea     (byte_FF0B80).l,a4

    ; End of function sub_F52


; =============== S U B R O U T I N E =======================================

sub_F5C:
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.s   sub_F0A
		movem.l (sp)+,d5-d6
loc_F78:
		movem.l d3-d4/a3-a6,-(sp)
		clr.l   d3
		move.w  a6,d3
		cmpi.w  #$E000,d3
		bcc.s   loc_F8A
		addi.w  #$1000,d3
loc_F8A:
		ori.l   #$FF0000,d3
		movea.l d3,a3
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a5
		move.w  (word_FF0EC6).l,d3
		andi.l  #$FF,d3
		move.b  d3,(VDP_COMMAND_COUNTER).l
		subq.w  #1,d3
loc_FAC:
		movem.l a3,-(sp)
		move.w  (word_FF0EC6).l,d4
		andi.l  #$FF00,d4
		lsr.w   #8,d4
		subq.w  #1,d4
		move.w  d4,(a5)+
		move.w  a6,(a5)+
loc_FC4:
		move.w  (a4),(a5)+
		move.w  (a4)+,(a3)+
		dbf     d4,loc_FC4
                
		adda.w  #$80,a6 
		movem.l (sp)+,a3
		adda.w  #$80,a3 
		dbf     d3,loc_FAC
                
		movem.l (sp)+,d3-d4/a3-a6
		bsr.w   EnableInterrupts
		bra.w   WaitForVdpCommandQueueProcessing

    ; End of function sub_F5C


; =============== S U B R O U T I N E =======================================

sub_FE8:
		bsr.w   DisableInterrupts
		lea     (byte_FF0B80).l,a4
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.w   sub_F0A
		movem.l (sp)+,d5-d6
		bsr.w   SwapA6
		bra.w   loc_F78

    ; End of function sub_FE8


; =============== S U B R O U T I N E =======================================

ApplyImmediateVramDma:
		
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		lea     (VDP_Control).l,a6
		cmpi.w  #2,d1
		beq.s   loc_1036
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)
		move.l  d2,d1
loc_1036:
		moveq   #$10,d2
		or.w    (VDP_REG01_STATUS).l,d2
		move.w  d2,(a6)
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)
		move.l  #$96009500,d2
		move.l  a0,d0
		lsr.l   #1,d0
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d2
		move.b  d0,d2
		swap    d2
		move.l  d2,(a6)
		swap    d0
		ori.w   #$9700,d0
		move.w  d0,(a6)
		move.w  #$100,(Z80BusReq).l
loc_1078:
		btst    #0,(Z80BusReq).l
		bne.s   loc_1078
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(TEMP_DMA_VALUE).l
		move.w  (TEMP_DMA_VALUE).l,(a6)
		move.w  (VDP_REG01_STATUS).l,(a6)
		move.w  #0,(Z80BusReq).l
		cmpi.w  #2,d1
		beq.s   loc_10BE
		move.w  #$8F02,(a6)
loc_10BE:
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		rts

    ; End of function ApplyImmediateVramDma


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D0=Length, D1=Auto-increment

ApplyVIntVramDma:
		
		bsr.w   DisableInterrupts
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)+        ; Apply auto-increment from D1
		move.l  d2,d1
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)+        ; Apply DMA Length from D0
		move.l  #$96009500,d2
		move.l  a0,d0
		lsr.l   #1,d0
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d2
		move.b  d0,d2
		swap    d2
		move.l  d2,(a6)+
		swap    d0
		ori.w   #$9700,d0
		move.w  d0,(a6)+        ; Apply source address from A0
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)+
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(a6)+        ; Apply VRAM write destination address from A1
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		bra.w   EnableInterrupts

    ; End of function ApplyVIntVramDma


; =============== S U B R O U T I N E =======================================

sub_115A:
		movem.w d7,-(sp)
		move.w  a6,d7
		andi.w  #$3FFF,d7
		ori.w   #$4000,d7
		move.w  d7,(VDP_Control).l
		move.w  a6,d7
		lsr.w   #8,d7
		lsr.w   #6,d7
		move.w  d7,(VDP_Control).l
		movem.w (sp)+,d7
		rts

    ; End of function sub_115A


; =============== S U B R O U T I N E =======================================

UpdateVdpHScrollData:
		
		movem.l a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.w  #$8F02,(a6)+    ; auto-increment : 2
		btst    #1,(VDP_REG0B_VALUE).l; Check HScroll mode
		bne.s   loc_11A2        
		move.w  #$9400,(a6)+    ; If HScroll mode = 00, then full screen
		move.w  #$9302,(a6)+    ; DMA length = 2
		bra.s   loc_11AA
loc_11A2:
		move.w  #$9402,(a6)+    ; If HScroll mode = 10, then 8 pixel rows
		move.w  #$9300,(a6)+    ; DMA length = $200 = 512
loc_11AA:
		move.w  #$9680,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+    ; RAM to VRAM, address :
		move.w  #$7400,(a6)+
		move.w  #$83,(a6)+ 
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,a6
		rts

    ; End of function UpdateVdpHScrollData


; =============== S U B R O U T I N E =======================================

UpdateForegroundHScrollData:
		
		movem.l d7/a6,-(sp)
		lea     (HORIZONTAL_SCROLL_DATA).l,a6
loc_11DA:
		move.w  #$FF,d7
loc_11DE:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_11DE
                
		movem.l (sp)+,d7/a6
		bra.s   UpdateVdpHScrollData

    ; End of function UpdateForegroundHScrollData


; =============== S U B R O U T I N E =======================================

UpdateBackgroundHScrollData:
		
		movem.l d7/a6,-(sp)
		lea     ((HORIZONTAL_SCROLL_DATA+2)).l,a6
		bra.s   loc_11DA

    ; End of function UpdateBackgroundHScrollData


; =============== S U B R O U T I N E =======================================

; VDP Vertical Scroll Data

UpdateVdpVScrollData:
		
		movem.l a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.w  #$8F02,(a6)+
		move.w  #$9400,(a6)+
		move.w  #$9328,(a6)+
		move.w  #$9682,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$4000,(a6)+
		move.w  #$90,(a6)+ 
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,a6
		rts

    ; End of function UpdateVdpVScrollData


; =============== S U B R O U T I N E =======================================

UpdateForegroundVScrollData:
		
		movem.l d7/a6,-(sp)
		lea     (VERTICAL_SCROLL_DATA).l,a6
loc_123E:
		move.w  #$13,d7
loc_1242:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_1242
                
		movem.l (sp)+,d7/a6
		bra.s   UpdateVdpVScrollData

    ; End of function UpdateForegroundVScrollData


; =============== S U B R O U T I N E =======================================

UpdateBackgroundVScrollData:
		
		movem.l d7/a6,-(sp)
		lea     ((VERTICAL_SCROLL_DATA+2)).l,a6
		bra.s   loc_123E

    ; End of function UpdateBackgroundVScrollData


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D0=Length, D1=Auto-increment

ApplyImmediateVramDmaOnCompressedTiles:
		
		movem.w d1,-(sp)
		bsr.s   DecompressTilesForVramDma
		bsr.w   ApplyImmediateVramDma
		movem.w (sp)+,d1
		rts

    ; End of function ApplyImmediateVramDmaOnCompressedTiles


; =============== S U B R O U T I N E =======================================

DecompressTilesForVramDma:
		
		movem.l d0-d1/a1,-(sp)
		bsr.w   DecompressGraphics
		lea     (FF3000_LOADING_SPACE).l,a0
		movem.l (sp)+,d0-d1/a1
		move.w  #2,d1
		rts

    ; End of function DecompressTilesForVramDma


; =============== S U B R O U T I N E =======================================

ApplyVIntVramDmaOnCompressedTiles:
		
		movem.w d1,-(sp)
		bsr.s   DecompressTilesForVramDma
		bsr.w   ApplyVIntVramDma
		movem.w (sp)+,d1
		rts

    ; End of function ApplyVIntVramDmaOnCompressedTiles


; =============== S U B R O U T I N E =======================================

; DMA code

sub_1294:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($C000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   EnableDmaQueueProcessing
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_1294


; =============== S U B R O U T I N E =======================================

; DMA code

sub_12BA:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   EnableDmaQueueProcessing
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_12BA


; =============== S U B R O U T I N E =======================================

DmaAndWait:
		bsr.s   sub_1294        
		bra.w   WaitForVInt     

    ; End of function DmaAndWait


; =============== S U B R O U T I N E =======================================

; D0=Destination, D1=Length, D2=Filler value

ApplyVramDmaFill:
		
		movem.l d0-d3,-(sp)
		move.w  (VDP_REG01_STATUS).l,d3; get last 16+ vdp reg config command ?
		ori.b   #$10,d3         ; make sure it concerns a 16+ vdp reg
		move.w  d3,(VDP_Control).l; send command again
		move.w  #$8F01,(VDP_Control).l; set auto increment bias number to 1
		movem.l d1,-(sp)
		andi.w  #$FF,d1
		ori.w   #$9300,d1
		move.w  d1,(VDP_Control).l; DMA length counter low : 0
		movem.l (sp)+,d1
		lsr.w   #8,d1
		ori.w   #$9400,d1       ; DMA length counter high : 1
		move.w  d1,(VDP_Control).l
		move.w  #$9780,(VDP_Control).l; VRAM fill
		movem.l d0,-(sp)
		andi.w  #$3FFF,d0       ; d0 : destination address
		ori.w   #$4000,d0
		move.w  d0,(VDP_Control).l
		movem.l (sp)+,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.w   #$80,d0 ; errr .. CD5 set to 1 ? doesn't correspond to any access mode
		move.w  d0,(VDP_Control).l; destination address, second word
		move.w  d2,(VDP_Data).l ; writes 0 everytime
@Wait:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0           ; wait for DMA free
		bne.s   @Wait
		move.w  (VDP_REG01_STATUS).l,d3; get last vdp 16+ reg config command and send it
		move.w  d3,(VDP_Control).l
		move.w  #$8F02,(VDP_Control).l; auto increment bias number : 2
		movem.l (sp)+,d0-d3
		rts

    ; End of function ApplyVramDmaFill

