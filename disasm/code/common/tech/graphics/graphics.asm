
; ASM FILE code\common\tech\graphics\graphics.asm :
; 0x1550..0x2046 : Graphics functions

; =============== S U B R O U T I N E =======================================

; D0 = Number of sprites to initialize

InitSprites:
		movem.l d0-d1/a0,-(sp)
		lea     (SPRITE_00_PROPERTIES).l,a0
		move.w  #1,d1
@Loop:
		move.w  #1,(a0)+
		move.w  d1,(a0)+
		move.w  #1,(a0)+
		move.w  #1,(a0)+
		addq.w  #1,d1
		dbf     d0,@Loop
                
		subq.l  #6,a0
		clr.w   (a0)
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function InitSprites


; =============== S U B R O U T I N E =======================================

sub_157C:
		movem.l d1,-(sp)
		andi.w  #$FF,d7
		add.w   d7,d7
		move.w  word_1594(pc,d7.w),d7
		muls.w  d6,d7
		asr.w   #7,d7
		movem.l (sp)+,d1
		rts

    ; End of function sub_157C

word_1594:      dc.w 0
		dc.w 3
		dc.w 6
		dc.w 9
		dc.w $C
		dc.w $10
		dc.w $13
		dc.w $16
		dc.w $19
		dc.w $1C
		dc.w $1F
		dc.w $22
		dc.w $25
		dc.w $28
		dc.w $2B
		dc.w $2E
		dc.w $31
		dc.w $33
		dc.w $36
		dc.w $39
		dc.w $3C
		dc.w $3F
		dc.w $41
		dc.w $44
		dc.w $47
		dc.w $49
		dc.w $4C
		dc.w $4E
		dc.w $51
		dc.w $53
		dc.w $55
		dc.w $58
		dc.w $5A
		dc.w $5C
		dc.w $5E
		dc.w $60
		dc.w $62
		dc.w $64
		dc.w $66
		dc.w $68
		dc.w $6A
		dc.w $6B
		dc.w $6D
		dc.w $6F
		dc.w $70
		dc.w $71
		dc.w $73
		dc.w $74
		dc.w $75
		dc.w $76
		dc.w $78
		dc.w $79
		dc.w $7A
		dc.w $7A
		dc.w $7B
		dc.w $7C
		dc.w $7D
		dc.w $7D
		dc.w $7E
		dc.w $7E
		dc.w $7E
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7E
		dc.w $7E
		dc.w $7E
		dc.w $7D
		dc.w $7D
		dc.w $7C
		dc.w $7B
		dc.w $7A
		dc.w $7A
		dc.w $79
		dc.w $78
		dc.w $76
		dc.w $75
		dc.w $74
		dc.w $73
		dc.w $71
		dc.w $70
		dc.w $6F
		dc.w $6D
		dc.w $6B
		dc.w $6A
		dc.w $68
		dc.w $66
		dc.w $64
		dc.w $62
		dc.w $60
		dc.w $5E
		dc.w $5C
		dc.w $5A
		dc.w $58
		dc.w $55
		dc.w $53
		dc.w $51
		dc.w $4E
		dc.w $4C
		dc.w $49
		dc.w $47
		dc.w $44
		dc.w $41
		dc.w $3F
		dc.w $3C
		dc.w $39
		dc.w $36
		dc.w $33
		dc.w $31
		dc.w $2E
		dc.w $2B
		dc.w $28
		dc.w $25
		dc.w $22
		dc.w $1F
		dc.w $1C
		dc.w $19
		dc.w $16
		dc.w $13
		dc.w $10
		dc.w $C
		dc.w 9
		dc.w 6
		dc.w 3
		dc.w 0
		dc.w $FFFD
		dc.w $FFFA
		dc.w $FFF7
		dc.w $FFF4
		dc.w $FFF0
		dc.w $FFED
		dc.w $FFEA
		dc.w $FFE7
		dc.w $FFE4
		dc.w $FFE1
		dc.w $FFDE
		dc.w $FFDB
		dc.w $FFD8
		dc.w $FFD5
		dc.w $FFD2
		dc.w $FFCF
		dc.w $FFCD
		dc.w $FFCA
		dc.w $FFC7
		dc.w $FFC4
		dc.w $FFC1
		dc.w $FFBF
		dc.w $FFBC
		dc.w $FFB9
		dc.w $FFB7
		dc.w $FFB4
		dc.w $FFB2
		dc.w $FFAF
		dc.w $FFAD
		dc.w $FFAB
		dc.w $FFA8
		dc.w $FFA6
		dc.w $FFA4
		dc.w $FFA2
		dc.w $FFA0
		dc.w $FF9E
		dc.w $FF9C
		dc.w $FF9A
		dc.w $FF98
		dc.w $FF96
		dc.w $FF95
		dc.w $FF93
		dc.w $FF91
		dc.w $FF90
		dc.w $FF8F
		dc.w $FF8D
		dc.w $FF8C
		dc.w $FF8B
		dc.w $FF8A
		dc.w $FF88
		dc.w $FF87
		dc.w $FF86
		dc.w $FF86
		dc.w $FF85
		dc.w $FF84
		dc.w $FF83
		dc.w $FF83
		dc.w $FF82
		dc.w $FF82
		dc.w $FF82
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF82
		dc.w $FF82
		dc.w $FF82
		dc.w $FF83
		dc.w $FF83
		dc.w $FF84
		dc.w $FF85
		dc.w $FF86
		dc.w $FF86
		dc.w $FF87
		dc.w $FF88
		dc.w $FF8A
		dc.w $FF8B
		dc.w $FF8C
		dc.w $FF8D
		dc.w $FF8F
		dc.w $FF90
		dc.w $FF91
		dc.w $FF93
		dc.w $FF95
		dc.w $FF96
		dc.w $FF98
		dc.w $FF9A
		dc.w $FF9C
		dc.w $FF9E
		dc.w $FFA0
		dc.w $FFA2
		dc.w $FFA4
		dc.w $FFA6
		dc.w $FFA8
		dc.w $FFAB
		dc.w $FFAD
		dc.w $FFAF
		dc.w $FFB2
		dc.w $FFB4
		dc.w $FFB7
		dc.w $FFB9
		dc.w $FFBC
		dc.w $FFBF
		dc.w $FFC1
		dc.w $FFC4
		dc.w $FFC7
		dc.w $FFCA
		dc.w $FFCD
		dc.w $FFCF
		dc.w $FFD2
		dc.w $FFD5
		dc.w $FFD8
		dc.w $FFDB
		dc.w $FFDE
		dc.w $FFE1
		dc.w $FFE4
		dc.w $FFE7
		dc.w $FFEA
		dc.w $FFED
		dc.w $FFF0
		dc.w $FFF4
		dc.w $FFF7
		dc.w $FFFA
		dc.w $FFFD

; =============== S U B R O U T I N E =======================================

sub_1794:
		movem.l d0-d2,-(sp)
		ext.l   d6
		move.w  d6,d0
		moveq   #$13,d2
		lsr.w   #1,d0
		move.w  d0,d7
loc_17A2:
		move.w  d7,d1
		mulu.w  d1,d1
		lsr.w   #1,d0
		cmp.l   d1,d6
		beq.w   loc_17BA
		blt.s   loc_17B4
		add.w   d0,d7
		bra.s   loc_17B6
loc_17B4:
		sub.w   d0,d7
loc_17B6:
		dbf     d2,loc_17A2
loc_17BA:
		movem.l (sp)+,d0-d2
		rts

    ; End of function sub_1794


; =============== S U B R O U T I N E =======================================

sub_17C0:
		movem.l d0-d2,-(sp)
		move.w  d6,d0
		move.w  d7,d1
		muls.w  d6,d6
		muls.w  d7,d7
		add.w   d7,d6
		bsr.s   sub_1794
		move.w  d7,d6
		move.w  d1,d7
		bge.s   loc_17D8
		neg.w   d7
loc_17D8:
		lsl.w   #6,d7
		divs.w  d6,d7
		move.b  byte_1814(pc,d7.w),d7
		andi.w  #$FF,d7
		movem.l d0,-(sp)
		muls.w  d1,d0
		movem.l (sp)+,d0
		blt.s   loc_1800
		tst.w   d1
		bge.s   loc_17FA
		addi.w  #$40,d7 
		bra.s   loc_17FE
loc_17FA:
		addi.w  #$C0,d7 
loc_17FE:
		bra.s   loc_180E
loc_1800:
		subi.w  #$40,d7 
		neg.w   d7
		tst.w   d1
		bge.s   loc_180E
		addi.w  #$80,d7 
loc_180E:
		movem.l (sp)+,d0-d2
		rts

    ; End of function sub_17C0

byte_1814:      dc.b 0
		dc.b 1
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 5
		dc.b 6
		dc.b 6
		dc.b 7
		dc.b 8
		dc.b 8
		dc.b 9
		dc.b $A
		dc.b $A
		dc.b $B
		dc.b $C
		dc.b $C
		dc.b $D
		dc.b $E
		dc.b $E
		dc.b $F
		dc.b $10
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $13
		dc.b $13
		dc.b $14
		dc.b $15
		dc.b $16
		dc.b $16
		dc.b $17
		dc.b $18
		dc.b $19
		dc.b $19
		dc.b $1A
		dc.b $1B
		dc.b $1C
		dc.b $1D
		dc.b $1D
		dc.b $1E
		dc.b $1F
		dc.b $20
		dc.b $21
		dc.b $22
		dc.b $23
		dc.b $24
		dc.b $25
		dc.b $26
		dc.b $27
		dc.b $28
		dc.b $29
		dc.b $2B
		dc.b $2C
		dc.b $2D
		dc.b $2F
		dc.b $31
		dc.b $32
		dc.b $35
		dc.b $37
		dc.b $3B
		dc.b $40
		dc.b 0

; =============== S U B R O U T I N E =======================================

; something with clearing/resetting sprite info when transitioning to battle scene?

sub_1856:
		movem.l d0-d2/d7-a1,-(sp)
		lea     (SPRITE_00_LINK).l,a1
		clr.w   d1
		moveq   #2,d0
		bsr.w   sub_1880
		bsr.w   sub_1880
		bsr.w   sub_18A0
		clr.w   d2
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
		movem.l (sp)+,d0-d2/d7-a1
		rts

    ; End of function sub_1856


; =============== S U B R O U T I N E =======================================

sub_1880:
		lea     (byte_FFB4DB).l,a0
		moveq   #$3E,d7 
		moveq   #1,d2
loc_188A:
		cmp.b   (a0)+,d0
		bne.s   loc_1896
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
loc_1896:
		addq.w  #1,d2
		dbf     d7,loc_188A
                
		subq.w  #1,d0
		rts

    ; End of function sub_1880


; =============== S U B R O U T I N E =======================================

sub_18A0:
		lea     (byte_FFB4DB).l,a0
		moveq   #$3E,d7 
		moveq   #1,d2
loc_18AA:
		cmp.b   (a0)+,d0
		bne.s   loc_18BC
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
		bclr    #7,1(a1,d1.w)
loc_18BC:
		addq.w  #1,d2
		dbf     d7,loc_18AA
                
		rts

    ; End of function sub_18A0


; =============== S U B R O U T I N E =======================================

sub_18C4:
		movem.l d0/a0,-(sp)
		moveq   #$3F,d0 
		lea     (byte_FFB4DA).l,a0
loc_18D0:
		clr.b   (a0)+
		dbf     d0,loc_18D0
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_18C4


; =============== S U B R O U T I N E =======================================

OpenMessageWindow:
		
		movem.l d0-a6,-(sp)
		bsr.w   HandleDialogueTypewriting
		bsr.s   sub_191C
		movem.l (sp)+,d0-a6
		rts

    ; End of function OpenMessageWindow


; =============== S U B R O U T I N E =======================================

CreateMessageWindow:
		
		movem.l d0-a6,-(sp)
		bsr.w   HandleDialogueTypewriting
		bsr.w   LoadMessageWindowLayout
		btst    #0,(VDP_REG10_VALUE).l
		beq.s   loc_1916
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1C08,d0
		move.w  #$213,d1
		bsr.w   j_CreateWindow
		bsr.w   sub_8054
loc_1916:
		movem.l (sp)+,d0-a6
		rts

    ; End of function CreateMessageWindow


; =============== S U B R O U T I N E =======================================

sub_191C:
		move.b  #1,((byte_FFF804-$1000000)).w
		bsr.w   LoadMessageWindowLayout
		btst    #0,(VDP_REG10_VALUE).l
		beq.w   loc_1B74
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$21C0213,d1
		move.w  #7,d2
		bra.w   j_MoveWindow

    ; End of function sub_191C


; =============== S U B R O U T I N E =======================================

LoadMessageWindowLayout_TopBorder:
		
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_WINDOW_HORIZONTAL_BORDER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_MIRRORED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
		bra.s   LoadMessageWindowSingleRow
		                
		bsr.s   LoadMessageWindowLayout_TopBorder
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_ASCII_SPACE|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_MIRRORED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
		move.w  #5,d6
loc_196C:
		bsr.s   LoadMessageWindowSingleRow
		dbf     d6,loc_196C
; ---------------------------------------------------------------------------
LoadMessageWindowLayout_BottomBorder:
		
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_FLIPPED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_WINDOW_HORIZONTAL_BORDER|VDPTILE_FLIPPED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_MIRRORED_BIT|VDPTILE_FLIPPED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
LoadMessageWindowSingleRow:
		
		move.w  d0,(a0)+
		move.w  #$19,d7
@Loop:
		move.w  d1,(a0)+
		dbf     d7,@Loop
                
		move.w  d2,(a0)+
		rts

    ; End of function LoadMessageWindowLayout_TopBorder


; =============== S U B R O U T I N E =======================================

HandleDialogueTypewriting:
		
		move.b  #2,((TEXT_X_POSITION-$1000000)).w
		move.b  #2,((TEXT_Y_POSITION-$1000000)).w
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$9BF,d7
loc_19A4:
		move.w  #$DDDD,(a0)+
		dbf     d7,loc_19A4
                
		clr.w   d0
loc_19AE:
		move.w  d0,-(sp)
		bsr.w   HandleBlinkingDialogueCursor
		move.w  (sp)+,d1
		clr.w   d0
		moveq   #3,d2
		sub.b   ((MESSAGE_SPEED-$1000000)).w,d2
		beq.s   loc_19C4
		subq.w  #1,d2
		bset    d2,d0
loc_19C4:
		cmpi.w  #$7B,d1 
		bne.s   loc_19CC
		clr.w   d0
loc_19CC:
		cmpi.w  #$7C,d1 
		bne.s   loc_19D4
		clr.w   d0
loc_19D4:
		beq.s   loc_19F4
		tst.w   d1
		beq.s   loc_19F0
		eori.b  #1,((SPEECH_SOUND_TOGGLE-$1000000)).w
		beq.s   loc_19EE
		move.w  d0,-(sp)
		move.w  ((SPEECH_SFX-$1000000)).w,d0
		sndCom  SOUND_COMMAND_GET_D0_PARAMETER
		move.w  (sp)+,d0
loc_19EE:
		bra.s   loc_19F4
loc_19F0:
		clr.b   ((SPEECH_SOUND_TOGGLE-$1000000)).w
loc_19F4:
		subq.w  #1,d0
		blt.s   return_1A0C
loc_19F8:
		tst.b   (P1_INPUT).l    
		bne.s   return_1A0C
		move    sr,-(sp)
		bsr.w   WaitForVInt     
		move    (sp)+,ccr
		dbne    d0,loc_19F8
return_1A0C:
		rts

    ; End of function HandleDialogueTypewriting


; =============== S U B R O U T I N E =======================================

HandleBlinkingDialogueCursor:
		
		btst    #0,(VDP_REG10_VALUE).l
		beq.w   loc_1A44
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($D000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		lea     ($F800).l,a1
		move.w  #$1C0,d0
		bsr.w   ApplyVIntVramDma
		bra.w   WaitForDmaQueueProcessing
loc_1A44:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		moveq   #$19,d0
loc_1A52:
		moveq   #3,d1
loc_1A54:
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		adda.w  #$320,a0
		dbf     d1,loc_1A54
                
		suba.w  #$CE0,a0
		dbf     d0,loc_1A52
                
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     ($D120).l,a1
		move.w  #$680,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   WaitForDmaQueueProcessing
		rts

    ; End of function HandleBlinkingDialogueCursor


; =============== S U B R O U T I N E =======================================

CloseMessageWindow:
		
		bsr.s   LoadMessageWindowLayout
		btst    #0,(VDP_REG10_VALUE).l
		beq.w   loc_1B6E
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$213021C,d1
		move.w  #7,d2
		bra.w   j_MoveWindow

    ; End of function CloseMessageWindow


; =============== S U B R O U T I N E =======================================

LoadMessageWindowLayout:
		
		bsr.w   LoadMessageWindowLayout_TopBorder
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_MESSAGE_START1|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_MIRRORED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
		move.w  #5,d6
@Loop:
		bsr.s   LoadMessageWindowLayout_Content
		dbf     d6,@Loop
                
		bra.w   LoadMessageWindowLayout_BottomBorder

    ; End of function LoadMessageWindowLayout


; =============== S U B R O U T I N E =======================================

LoadMessageWindowLayout_Content:
		
		move.w  d0,(a0)+
		move.w  #$19,d7
@Loop:
		move.w  d1,(a0)+
		addq.w  #1,d1
		cmpi.w  #VDPTILE_MESSAGE_END1|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		bne.s   @Continue
		move.w  #VDPTILE_MESSAGE_START2|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
@Continue:
		dbf     d7,@Loop
                
		move.w  d2,(a0)+
		rts

    ; End of function LoadMessageWindowLayout_Content


; =============== S U B R O U T I N E =======================================

sub_1AF0:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		btst    #0,(VDP_REG10_VALUE).l
		bne.s   loc_1B06
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
loc_1B06:
		move.w  #7,d5
loc_1B0A:
		bsr.s   sub_1B1E
		bsr.s   sub_1B1E
		bsr.w   HandleBlinkingDialogueCursor
		dbf     d5,loc_1B0A
                
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function sub_1AF0


; =============== S U B R O U T I N E =======================================

sub_1B1E:
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$19,d6
loc_1B28:
		bsr.s   sub_1B34
		suba.w  #$103C,a0
		dbf     d6,loc_1B28
                
		rts

    ; End of function sub_1B1E


; =============== S U B R O U T I N E =======================================

sub_1B34:
		move.w  #4,d7
loc_1B38:
		bsr.s   sub_1B4A
		adda.w  #$324,a0
		dbf     d7,loc_1B38
                
		move.l  #$DDDDDDDD,d0
		bra.s   loc_1B4E

    ; End of function sub_1B34


; =============== S U B R O U T I N E =======================================

sub_1B4A:
		move.l  $340(a0),d0
loc_1B4E:
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  d0,(a0)
		rts

    ; End of function sub_1B4A


; START OF FUNCTION CHUNK FOR CloseMessageWindow

loc_1B6E:
		moveq   #$60,d1 
		bra.w   loc_1B98

; END OF FUNCTION CHUNK FOR CloseMessageWindow


; START OF FUNCTION CHUNK FOR sub_191C

loc_1B74:
		lea     byte_1F26(pc), a0
		nop
		lea     ($D000).l,a1
		move.w  #$90,d0 
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   EnableDmaQueueProcessing
		jsr     (WaitForVInt).l 
		clr.w   d1
loc_1B98:
		lea     sprite_1C0E(pc), a0
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		lea     (SPRITE_01_PROPERTIES).l,a1
		moveq   #5,d7
loc_1BAA:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BAA
                
		lea     (SPRITE_25_PROPERTIES).l,a1
		moveq   #6,d7
loc_1BC0:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BC0
                
		lea     (SPRITE_54_PROPERTIES).l,a1
		moveq   #9,d7
loc_1BD6:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BD6
                
		move.l  #$2020202,d0
		lea     ((byte_FFB4DB-$1000000)).w,a0
		move.b  d0,(a0)+
		move.l  d0,(a0)+
		move.b  d0,(a0)+
		lea     ((byte_FFB4F3-$1000000)).w,a0
		move.b  d0,(a0)+
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		lea     ((word_FFB510-$1000000)).w,a0
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		move.l  d0,(a0)+
		jmp     (sub_320).l

; END OF FUNCTION CHUNK FOR sub_191C

sprite_1C0E:    ; sprite properties data
		vdpSprite 280, V4|H4|0, 1673|PALETTE3|PRIORITY_BIT, 152
		vdpSprite 280, V4|H4|0, 1689|PALETTE3|PRIORITY_BIT, 184
		vdpSprite 280, V4|H4|0, 1705|PALETTE3|PRIORITY_BIT, 216
		vdpSprite 280, V4|H4|0, 1721|PALETTE3|PRIORITY_BIT, 248
		vdpSprite 280, V4|H4|0, 1737|PALETTE3|PRIORITY_BIT, 280
		vdpSprite 280, V4|H4|0, 1753|PALETTE3|PRIORITY_BIT, 312
		vdpSprite 280, V4|H2|0, 1769|PALETTE3|PRIORITY_BIT, 344
		vdpSprite 272, V1|H4|0, 1664|PALETTE3|PRIORITY_BIT, 144
		vdpSprite 272, V1|H4|0, 1665|PALETTE3|PRIORITY_BIT, 176
		vdpSprite 272, V1|H4|0, 1665|PALETTE3|PRIORITY_BIT, 208
		vdpSprite 272, V1|H4|0, 1665|PALETTE3|PRIORITY_BIT, 240
		vdpSprite 272, V1|H4|0, 1665|PALETTE3|PRIORITY_BIT, 272
		vdpSprite 272, V1|H4|0, 1665|PALETTE3|PRIORITY_BIT, 304
		vdpSprite 272, V1|H4|0, 1664|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 336
		vdpSprite 312, V1|H4|0, 1664|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 144
		vdpSprite 312, V1|H4|0, 1665|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 176
		vdpSprite 312, V1|H4|0, 1665|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 208
		vdpSprite 312, V1|H4|0, 1665|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 240
		vdpSprite 312, V1|H4|0, 1665|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 272
		vdpSprite 312, V1|H4|0, 1665|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 304
		vdpSprite 312, V1|H4|0, 1664|MIRRORED_BIT|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 336
		vdpSprite 280, V4|H1|0, 1669|PALETTE3|PRIORITY_BIT, 144
		vdpSprite 280, V4|H1|0, 1669|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 360

; =============== S U B R O U T I N E =======================================

sub_1CC6:
		movem.w d0-d1,-(sp)
		move.w  d0,d7
		move.b  ((byte_FFF804-$1000000)).w,d1
		bsr.s   sub_1CD8
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_1CC6


; =============== S U B R O U T I N E =======================================

sub_1CD8:
		move.w  #$D,d6
		lsl.w   #5,d7
		movea.l (p_font_VariableWidth).l,a0
		adda.l  d7,a0
		move.w  (a0)+,d4
		bsr.s   sub_1CFE
		move.w  d6,d7
loc_1CEC:
		bsr.w   sub_1D4A
		bsr.w   sub_1D36
		dbf     d7,loc_1CEC
                
		add.b   d4,((TEXT_X_POSITION-$1000000)).w
		rts

    ; End of function sub_1CD8


; =============== S U B R O U T I N E =======================================

sub_1CFE:
		move.b  d1,d2
		lsl.b   #4,d2
		clr.w   d0
		move.b  ((TEXT_Y_POSITION-$1000000)).w,d0
		lsr.b   #3,d0
		mulu.w  #$340,d0
		clr.w   d3
		move.b  ((TEXT_Y_POSITION-$1000000)).w,d3
		andi.b  #7,d3
		move.b  d3,d5
		lsl.b   #2,d3
		add.w   d3,d0
		clr.w   d3
		move.b  ((TEXT_X_POSITION-$1000000)).w,d3
		andi.b  #$F8,d3
		lsl.w   #2,d3
		add.w   d3,d0
		lea     (FF3000_LOADING_SPACE).l,a2
		adda.w  d0,a2
		rts

    ; End of function sub_1CFE


; =============== S U B R O U T I N E =======================================

sub_1D36:
		adda.w  #4,a2
		addq.b  #1,d5
		cmpi.b  #8,d5
		bcs.s   @Return
		clr.b   d5
		adda.w  #$320,a2
@Return:
		rts

    ; End of function sub_1D36


; =============== S U B R O U T I N E =======================================

sub_1D4A:
		move.w  (a0)+,d0
		moveq   #$B,d6
loc_1D4E:
		lsl.w   #1,d0
		bcc.s   loc_1D90
		move.b  ((TEXT_X_POSITION-$1000000)).w,d3
		andi.w  #7,d3
		addi.w  #$B,d3
		sub.w   d6,d3
		add.w   d3,d3
		move.w  off_1D6A(pc,d3.w),d3
		jmp     off_1D6A(pc,d3.w)
off_1D6A:
		dc.w sub_1D96-off_1D6A
		dc.w sub_1D9E-off_1D6A
		dc.w sub_1DA6-off_1D6A
		dc.w sub_1DB2-off_1D6A
		dc.w sub_1DBE-off_1D6A
		dc.w sub_1DCA-off_1D6A
		dc.w sub_1DD6-off_1D6A
		dc.w sub_1DE2-off_1D6A
		dc.w sub_1DEE-off_1D6A
		dc.w sub_1DFA-off_1D6A
		dc.w sub_1E06-off_1D6A
		dc.w sub_1E14-off_1D6A
		dc.w sub_1E22-off_1D6A
		dc.w sub_1E30-off_1D6A
		dc.w sub_1E3E-off_1D6A
		dc.w sub_1E4C-off_1D6A
		dc.w sub_1E5A-off_1D6A
		dc.w sub_1E68-off_1D6A
		dc.w sub_1E76-off_1D6A
loc_1D90:
		dbf     d6,loc_1D4E
                
		rts

    ; End of function sub_1D4A


; =============== S U B R O U T I N E =======================================

sub_1D96:
		andi.b  #$F,(a2)
		or.b    d2,(a2)
		bra.s   loc_1D90

    ; End of function sub_1D96


; =============== S U B R O U T I N E =======================================

sub_1D9E:
		andi.b  #$F0,(a2)
		or.b    d1,(a2)
		bra.s   loc_1D90

    ; End of function sub_1D9E


; =============== S U B R O U T I N E =======================================

sub_1DA6:
		andi.b  #$F,1(a2)
		or.b    d2,1(a2)
		bra.s   loc_1D90

    ; End of function sub_1DA6


; =============== S U B R O U T I N E =======================================

sub_1DB2:
		andi.b  #$F0,1(a2)
		or.b    d1,1(a2)
		bra.s   loc_1D90

    ; End of function sub_1DB2


; =============== S U B R O U T I N E =======================================

sub_1DBE:
		andi.b  #$F,2(a2)
		or.b    d2,2(a2)
		bra.s   loc_1D90

    ; End of function sub_1DBE


; =============== S U B R O U T I N E =======================================

sub_1DCA:
		andi.b  #$F0,2(a2)
		or.b    d1,2(a2)
		bra.s   loc_1D90

    ; End of function sub_1DCA


; =============== S U B R O U T I N E =======================================

sub_1DD6:
		andi.b  #$F,3(a2)
		or.b    d2,3(a2)
		bra.s   loc_1D90

    ; End of function sub_1DD6


; =============== S U B R O U T I N E =======================================

sub_1DE2:
		andi.b  #$F0,3(a2)
		or.b    d1,3(a2)
		bra.s   loc_1D90

    ; End of function sub_1DE2


; =============== S U B R O U T I N E =======================================

sub_1DEE:
		andi.b  #$F,$20(a2)
		or.b    d2,$20(a2)
		bra.s   loc_1D90

    ; End of function sub_1DEE


; =============== S U B R O U T I N E =======================================

sub_1DFA:
		andi.b  #$F0,$20(a2)
		or.b    d1,$20(a2)
		bra.s   loc_1D90

    ; End of function sub_1DFA


; =============== S U B R O U T I N E =======================================

sub_1E06:
		andi.b  #$F,$21(a2)
		or.b    d2,$21(a2)
		bra.w   loc_1D90

    ; End of function sub_1E06


; =============== S U B R O U T I N E =======================================

sub_1E14:
		andi.b  #$F0,$21(a2)
		or.b    d1,$21(a2)
		bra.w   loc_1D90

    ; End of function sub_1E14


; =============== S U B R O U T I N E =======================================

sub_1E22:
		andi.b  #$F,$22(a2)
		or.b    d2,$22(a2)
		bra.w   loc_1D90

    ; End of function sub_1E22


; =============== S U B R O U T I N E =======================================

sub_1E30:
		andi.b  #$F0,$22(a2)
		or.b    d1,$22(a2)
		bra.w   loc_1D90

    ; End of function sub_1E30


; =============== S U B R O U T I N E =======================================

sub_1E3E:
		andi.b  #$F,$23(a2)
		or.b    d2,$23(a2)
		bra.w   loc_1D90

    ; End of function sub_1E3E


; =============== S U B R O U T I N E =======================================

sub_1E4C:
		andi.b  #$F0,$23(a2)
		or.b    d1,$23(a2)
		bra.w   loc_1D90

    ; End of function sub_1E4C


; =============== S U B R O U T I N E =======================================

sub_1E5A:
		andi.b  #$F,$40(a2)
		or.b    d2,$40(a2)
		bra.w   loc_1D90

    ; End of function sub_1E5A


; =============== S U B R O U T I N E =======================================

sub_1E68:
		andi.b  #$F0,$40(a2)
		or.b    d1,$40(a2)
		bra.w   loc_1D90

    ; End of function sub_1E68


; =============== S U B R O U T I N E =======================================

sub_1E76:
		andi.b  #$F,$41(a2)
		or.b    d2,$41(a2)
		bra.w   loc_1D90
		lea     byte_1E9E(pc), a0
		move.w  #1,d7
loc_1E8C:
		move.b  (a0,d7.w),d2
		beq.s   loc_1E9A
		cmp.b   d0,d2
		beq.s   return_1E9C
		addq.w  #1,d7
		bra.s   loc_1E8C
loc_1E9A:
		clr.w   d7
return_1E9C:
		rts

    ; End of function sub_1E76

byte_1E9E:      dc.b 0
		dc.b $30
		dc.b $31
		dc.b $32
		dc.b $33
		dc.b $34
		dc.b $35
		dc.b $36
		dc.b $37
		dc.b $38
		dc.b $39
		dc.b $71
		dc.b $72
		dc.b $73
		dc.b $74
		dc.b $75
		dc.b $76
		dc.b $77
		dc.b $78
		dc.b $79
		dc.b $7A
		dc.b $7B
		dc.b $7C
		dc.b $7D
		dc.b $7E
		dc.b $7F
		dc.b $80
		dc.b $81
		dc.b $82
		dc.b $83
		dc.b $84
		dc.b $85
		dc.b $86
		dc.b $87
		dc.b $88
		dc.b $89
		dc.b $8A
		dc.b $8B
		dc.b $8C
		dc.b $8D
		dc.b $8E
		dc.b $8F
		dc.b $90
		dc.b $91
		dc.b $92
		dc.b $93
		dc.b $94
		dc.b $95
		dc.b $96
		dc.b $97
		dc.b $98
		dc.b $99
		dc.b $9A
		dc.b $9B
		dc.b $9C
		dc.b $66
		dc.b $9D
		dc.b $67
		dc.b $68
		dc.b $69
		dc.b $6A
		dc.b $6B
		dc.b $6C
		dc.b $6D
		dc.b $6E
		dc.b $6F
		dc.b $B1
		dc.b $B2
		dc.b $B3
		dc.b $B4
		dc.b $B5
		dc.b $B6
		dc.b $B7
		dc.b $B8
		dc.b $B9
		dc.b $BA
		dc.b $BB
		dc.b $BC
		dc.b $BD
		dc.b $BE
		dc.b $BF
		dc.b $C0
		dc.b $C1
		dc.b $C2
		dc.b $C3
		dc.b $C4
		dc.b $C5
		dc.b $C6
		dc.b $C7
		dc.b $C8
		dc.b $C9
		dc.b $CA
		dc.b $CB
		dc.b $CC
		dc.b $CD
		dc.b $CE
		dc.b $CF
		dc.b $D0
		dc.b $D1
		dc.b $D2
		dc.b $D3
		dc.b $D4
		dc.b $D5
		dc.b $D6
		dc.b $D7
		dc.b $D8
		dc.b $D9
		dc.b $DA
		dc.b $DB
		dc.b $DC
		dc.b $A6
		dc.b $DD
		dc.b $A7
		dc.b $A8
		dc.b $A9
		dc.b $AA
		dc.b $AB
		dc.b $AC
		dc.b $AD
		dc.b $AE
		dc.b $AF
		dc.b $A4
		dc.b $A1
		dc.b $9E
		dc.b $9F
		dc.b $2D
		dc.b $21
		dc.b $3F
		dc.b $2E
		dc.b $A2
		dc.b $A3
		dc.b $A4
		dc.b $A5
		dc.b $A6
		dc.b 0
		dc.b $FF
byte_1F26:      dc.b 0
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $E
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $EC
		dc.b $CB
		dc.b $BB
		dc.b $BB
		dc.b $EC
		dc.b $BE
		dc.b $CB
		dc.b $11
		dc.b $EC
		dc.b $BC
		dc.b $B1
		dc.b $CC
		dc.b $EC
		dc.b $BB
		dc.b $1C
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $CC
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
		dc.b $EC
		dc.b $B1
		dc.b $CD
		dc.b $DD
