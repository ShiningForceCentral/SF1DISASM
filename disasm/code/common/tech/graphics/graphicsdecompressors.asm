
; ASM FILE code\common\tech\graphics\graphicsdecompressors.asm :
; 0x25D0..0x2F72 : Graphics decompression functions

; =============== S U B R O U T I N E =======================================

DecompressGraphics:
		
		movem.l a4-a6,-(sp)
		clr.w   d2
		move.b  (a0)+,d2
		move.b  d2,(byte_FF0FFC).l
		lsl.w   #3,d2
		clr.w   d1
		move.b  (a0)+,d1
		move.b  d1,(byte_FF0FFD).l
		lsl.w   #3,d1
		mulu.w  d2,d1
		move.w  d1,d7
		lsr.w   #5,d7
		lea     (byte_FF0FFD).l,a2
		lea     1(a2,d1.w),a3
		moveq   #0,d3
		move.l  d3,d4
		move.l  d3,d5
		move.l  d3,d6
		move.l  d3,d0
		movea.l d3,a4
		movea.l d3,a5
		movea.l d3,a6
		movea.l a3,a1
		lsr.w   #1,d7
		bcc.s   loc_2616
		movem.l d0/d3-d6/a4-a6,-(a1)
loc_2616:
		dbf     d7,loc_261C
                
		bra.s   loc_2628
loc_261C:
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		dbf     d7,loc_261C
loc_2628:
		moveq   #-128,d6
		moveq   #$F,d7
		clr.w   d3
loc_262E:
		moveq   #-1,d4
		moveq   #2,d5
loc_2632:
		dbf     d3,loc_263A
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_263A:
		add.w   d0,d0
		dbcs    d4,loc_2632
		negx.w  d4
		lsl.w   d4,d5
		lea     -2(a2,d5.w),a2
		clr.w   d5
loc_264A:
		dbf     d3,loc_2652
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2652:
		add.w   d0,d0
		addx.w  d5,d5
		dbf     d4,loc_264A
                
		adda.w  d5,a2
		cmpa.l  a3,a2
		bcc.w   loc_28C6
		subq.w  #4,d3
		bcc.s   loc_2682
		addq.w  #4,d3
		rol.l   d3,d0
		move.w  (a0)+,d0
		subq.w  #4,d3
		neg.w   d3
		rol.l   d3,d0
		neg.w   d3
		addi.w  #$10,d3
		move.l  d0,d1
		swap    d1
		and.b   d7,d1
		or.b    d6,d1
		bra.s   loc_268A
loc_2682:
		rol.w   #4,d0
		move.b  d0,d1
		and.b   d7,d1
		or.b    d6,d1
loc_268A:
		move.b  d1,(a2)
		dbf     d3,loc_2694
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2694:
		add.w   d0,d0
		bcc.s   loc_262E
		movea.l a2,a1
		subq.w  #3,d3
		bcs.s   loc_26B0
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.s   loc_262E
		bra.s   loc_26DC
loc_26B0:
		addq.w  #3,d3
		dbf     d3,loc_26BA
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26BA:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_26C8
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26C8:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_26D6
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26D6:
		add.w   d0,d0
		bcc.w   loc_262E
loc_26DC:
		dbf     d3,loc_26E4
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26E4:
		add.w   d0,d0
		bcs.w   loc_27CE
		lea     -2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2706
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.s   loc_26DC
loc_2706:
		addq.w  #3,d3
		dbf     d3,loc_2710
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2710:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_271E
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_271E:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_272C
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_272C:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2736:
		move.l  a1,d5
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #2,d3
		bcs.s   loc_2754
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.s   loc_26DC
loc_2754:
		addq.w  #3,d3
		dbf     d3,loc_275E
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_275E:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_276C
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_276C:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_277A
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_277A:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2784:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #2,d3
		bcs.s   loc_279E
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_279E:
		addq.w  #3,d3
		dbf     d3,loc_27A8
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27A8:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_27B6
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27B6:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_27C4
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27C4:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_27CE:
		lea     2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_27EC
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_27EC:
		addq.w  #3,d3
		dbf     d3,loc_27F6
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27F6:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_2804
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2804:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_2812
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2812:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_281C:
		move.l  a1,d5
		dbf     d3,loc_2826
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2826:
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2848
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2848:
		addq.w  #3,d3
		dbf     d3,loc_2852
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2852:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_2860
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2860:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_286E
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_286E:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2878:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #3,d3
		bcs.s   loc_2896
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2896:
		addq.w  #3,d3
		dbf     d3,loc_28A0
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28A0:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_28AE
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28AE:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_28BC
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28BC:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_28C6:
		lea     (FF0FFE_LOADING_SPACE).l,a0
		movea.l a0,a1
		move.w  #$8080,(a3)
		moveq   #$FFFFFFF0,d6
		move.w  (a1)+,d1
loc_28D6:
		bpl.s   loc_292A
		tst.b   d1
		bpl.s   loc_2906
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		beq.s   loc_2950
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
loc_28EC:
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_2906:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_292A:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_2950:
		lea     (FF0FFE_LOADING_SPACE).l,a3
		lea     (FF3000_LOADING_SPACE).l,a1
		lsr.w   #1,d2
		move.w  d2,d7
		lsl.w   #5,d7
		clr.w   d4
		move.b  (byte_FF0FFD).l,d4
		lsr.w   #2,d4
		subq.w  #1,d4
		clr.w   d5
		move.b  (byte_FF0FFC).l,d5
		lsr.w   #2,d5
		subq.w  #1,d5
loc_297A:
		movea.l a3,a0
		move.w  d4,d6
loc_297E:
		lea     (a0),a2
		moveq   #7,d3
loc_2982:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_2982
                
		lea     4(a0),a2
		moveq   #7,d3
loc_299C:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_299C
                
		lea     8(a0),a2
		moveq   #7,d3
loc_29B6:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_29B6
                
		lea     $C(a0),a2
		moveq   #7,d3
loc_29D0:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_29D0
                
		adda.w  d7,a0
		dbf     d6,loc_297E
                
		lea     $10(a3),a3
		dbf     d5,loc_297A
                
		movem.l (sp)+,a4-a6
		rts

    ; End of function DecompressGraphics


; =============== S U B R O U T I N E =======================================

sub_29F8:
		movem.l a4-a6,-(sp)
		move.b  #6,(byte_FF0FFC).l
		moveq   #$30,d2 
		move.b  #3,(byte_FF0FFD).l
		moveq   #$18,d1
		lea     (byte_FF0FFD).l,a2
		lea     $481(a2),a3
		moveq   #0,d3
		move.l  d3,d4
		move.l  d3,d5
		move.l  d3,d6
		move.l  d3,d0
		movea.l d3,a4
		movea.l d3,a5
		movea.l d3,a6
		movea.l a3,a1
		moveq   #8,d7
loc_2A2E:
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		dbf     d7,loc_2A2E
                
		moveq   #-128,d6
		moveq   #$F,d7
		clr.w   d3
loc_2A48:
		moveq   #-1,d4
		moveq   #2,d5
loc_2A4C:
		dbf     d3,loc_2A54
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2A54:
		add.w   d0,d0
		dbcs    d4,loc_2A4C
		negx.w  d4
		lsl.w   d4,d5
		lea     -2(a2,d5.w),a2
		clr.w   d5
loc_2A64:
		dbf     d3,loc_2A6C
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2A6C:
		add.w   d0,d0
		addx.w  d5,d5
		dbf     d4,loc_2A64
                
		adda.w  d5,a2
		cmpa.l  a3,a2
		bcc.w   loc_2CE0
		subq.w  #4,d3
		bcc.s   loc_2A9C
		addq.w  #4,d3
		rol.l   d3,d0
		move.w  (a0)+,d0
		subq.w  #4,d3
		neg.w   d3
		rol.l   d3,d0
		neg.w   d3
		addi.w  #$10,d3
		move.l  d0,d1
		swap    d1
		and.b   d7,d1
		or.b    d6,d1
		bra.s   loc_2AA4
loc_2A9C:
		rol.w   #4,d0
		move.b  d0,d1
		and.b   d7,d1
		or.b    d6,d1
loc_2AA4:
		move.b  d1,(a2)
		dbf     d3,loc_2AAE
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AAE:
		add.w   d0,d0
		bcc.s   loc_2A48
		movea.l a2,a1
		subq.w  #3,d3
		bcs.s   loc_2ACA
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.s   loc_2A48
		bra.s   loc_2AF6
loc_2ACA:
		addq.w  #3,d3
		dbf     d3,loc_2AD4
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AD4:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2AE2
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AE2:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2AF0
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AF0:
		add.w   d0,d0
		bcc.w   loc_2A48
loc_2AF6:
		dbf     d3,loc_2AFE
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AFE:
		add.w   d0,d0
		bcs.w   loc_2BE8
		lea     -2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2B20
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.s   loc_2AF6
loc_2B20:
		addq.w  #3,d3
		dbf     d3,loc_2B2A
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B2A:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2B38
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B38:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2B46
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B46:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2B50:
		move.l  a1,d5
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #2,d3
		bcs.s   loc_2B6E
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.s   loc_2AF6
loc_2B6E:
		addq.w  #3,d3
		dbf     d3,loc_2B78
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B78:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2B86
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B86:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2B94
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B94:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2B9E:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #2,d3
		bcs.s   loc_2BB8
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2BB8:
		addq.w  #3,d3
		dbf     d3,loc_2BC2
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BC2:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2BD0
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BD0:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2BDE
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BDE:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2BE8:
		lea     2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2C06
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C06:
		addq.w  #3,d3
		dbf     d3,loc_2C10
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C10:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2C1E
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C1E:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2C2C
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C2C:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C36:
		move.l  a1,d5
		dbf     d3,loc_2C40
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C40:
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2C62
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C62:
		addq.w  #3,d3
		dbf     d3,loc_2C6C
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C6C:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2C7A
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C7A:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2C88
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C88:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C92:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #3,d3
		bcs.s   loc_2CB0
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2CB0:
		addq.w  #3,d3
		dbf     d3,loc_2CBA
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CBA:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2CC8
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CC8:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2CD6
                
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CD6:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2CE0:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		move.w  #$8080,(a3)
		moveq   #$FFFFFFF0,d6
		moveq   #5,d5
		move.w  (a1)+,d1
loc_2CF6:
		bpl.w   loc_2D7E
		tst.b   d1
		bpl.s   loc_2D42
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		beq.w   loc_2F6C
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
loc_2D10:
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2D36
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2D36:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2D42:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2D72
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2D72:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2D7E:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2DB0
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2DB0:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2DBC:
		bpl.s   loc_2E2E
		tst.b   d1
		bpl.s   loc_2DFA
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2DEE
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2DEE:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2DFA:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E22
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E22:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E2E:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E58
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E58:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E64:
		bpl.s   loc_2EC6
		tst.b   d1
		bpl.s   loc_2E9A
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E8E
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E8E:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E9A:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2EBA
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2EBA:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2EC6:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2EE8
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2EE8:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2EF4:
		bpl.s   loc_2F46
		tst.b   d1
		bpl.s   loc_2F22
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		lea     $5C(a0),a0
		dbf     d5,loc_2F16
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F16:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F22:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2F3A
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F3A:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F46:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		lea     $5C(a0),a0
		dbf     d5,loc_2F60
                
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F60:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F6C:
		movem.l (sp)+,a4-a6
		rts

    ; End of function sub_29F8

