
; GAME SECTION 04 :
; 

; FREE SPACE : 1224 bytes.


off_2C000:          dc.l VariableWidthFont
off_2C004:          dc.l pt_Portraits

; =============== S U B R O U T I N E =======================================

sub_2C008:
										
										jmp     *+4(pc)
										move.b  #$80,d1
										bne.s   loc_2C014
										rts
loc_2C014:
										
										move.b  (HW_Info).l,d0  
										andi.b  #$C0,d0
										cmp.b   d0,d1
										bne.s   loc_2C024
										rts
loc_2C024:
										
										jsr     (sub_214).l
										lea     unk_2C0D6(pc), a0
										lea     (unk_FFD488).l,a1
										bsr.w   sub_2C0CA
										move.b  #$80,d1
										cmpi.b  #$80,d1
										bne.s   loc_2C052
										lea     aNtscGenesis(pc), a0
										lea     (unk_FFD608).l,a1
										bsr.w   sub_2C0CA
										bra.s   loc_2C060
loc_2C052:
										
										lea     aPalAndFrenchSe(pc), a0
										lea     (unk_FFD608).l,a1
										bsr.w   sub_2C0CA
loc_2C060:
										
										lea     aSystems_(pc), a0
										lea     (unk_FFD788).l,a1
										bsr.w   sub_2C0CA
										jsr     (sub_210).l
										lea     (unk_FFD000).l,a0
										lea     ($C000).l,a1
										move.w  #$800,d0
										moveq   #2,d1
										jsr     (sub_278).l
										clr.l   (dword_FF0004).l
										clr.l   (dword_FF0008).l
										clr.l   (dword_FF000C).l
										clr.l   (dword_FF0010).l
										clr.l   (dword_FF0014).l
										clr.l   (dword_FF0018).l
										clr.l   (dword_FF001C).l
										jsr     (sub_224).l
										jsr     (sub_260).l
loc_2C0C2:
										
										jsr     (sub_240).l
										bra.s   loc_2C0C2

	; End of function sub_2C008


; =============== S U B R O U T I N E =======================================

sub_2C0CA:
										
										clr.w   d0
										move.b  (a0)+,d0
										bne.s   loc_2C0D2
										rts
loc_2C0D2:
										
										move.w  d0,(a1)+
										bra.s   sub_2C0CA

	; End of function sub_2C0CA

unk_2C0D6:          dc.b $20
										dc.b $20
aDevelopedForUseOnlyWi:
										dc.b 'DEVELOPED FOR USE ONLY WITH'
										dc.b   0
aNtscGenesis:       dc.b '         NTSC GENESIS',0
aPalAndFrenchSe:    dc.b 'PAL AND FRENCH SECAM MEGA DRIVE',0
aSystems_:          dc.b '           SYSTEMS.',0
VariableWidthFont:  incbin "graphics/fonts/variablewidthfont.bin"
pt_Portraits:       dc.l Portrait00
										dc.l Portrait01
										dc.l Portrait02
										dc.l Portrait03
										dc.l Portrait04
										dc.l Portrait05
										dc.l Portrait06
										dc.l Portrait07
										dc.l Portrait08
										dc.l Portrait09
										dc.l Portrait10
										dc.l Portrait11
										dc.l Portrait12
										dc.l Portrait13
										dc.l Portrait14
										dc.l Portrait15
										dc.l Portrait16
										dc.l Portrait17
										dc.l Portrait18
										dc.l Portrait19
										dc.l Portrait20
										dc.l Portrait21
										dc.l Portrait22
										dc.l Portrait23
										dc.l Portrait24
										dc.l Portrait25
										dc.l Portrait26
										dc.l Portrait27
										dc.l Portrait28
										dc.l Portrait29
										dc.l Portrait30
										dc.l Portrait31
										dc.l Portrait32
										dc.l Portrait33
										dc.l Portrait34
										dc.l Portrait35
										dc.l Portrait36
										dc.l Portrait37
										dc.l Portrait38
										dc.l Portrait39
										dc.l Portrait40
										dc.l Portrait41
										dc.l Portrait42
										dc.l Portrait43
										dc.l Portrait44
										dc.l Portrait45
										dc.l Portrait46
										dc.l Portrait47
										dc.l Portrait48
										dc.l Portrait49
										dc.l Portrait49
										dc.l Portrait49
Portrait00:         incbin "graphics/portraits/portrait00.bin"
Portrait01:         incbin "graphics/portraits/portrait01.bin"
Portrait02:         incbin "graphics/portraits/portrait02.bin"
Portrait03:         incbin "graphics/portraits/portrait03.bin"
Portrait04:         incbin "graphics/portraits/portrait04.bin"
Portrait05:         incbin "graphics/portraits/portrait05.bin"
Portrait06:         incbin "graphics/portraits/portrait06.bin"
Portrait07:         incbin "graphics/portraits/portrait07.bin"
Portrait08:         incbin "graphics/portraits/portrait08.bin"
Portrait09:         incbin "graphics/portraits/portrait09.bin"
Portrait10:         incbin "graphics/portraits/portrait10.bin"
Portrait11:         incbin "graphics/portraits/portrait11.bin"
Portrait12:         incbin "graphics/portraits/portrait12.bin"
Portrait13:         incbin "graphics/portraits/portrait13.bin"
Portrait14:         incbin "graphics/portraits/portrait14.bin"
Portrait15:         incbin "graphics/portraits/portrait15.bin"
Portrait16:         incbin "graphics/portraits/portrait16.bin"
Portrait17:         incbin "graphics/portraits/portrait17.bin"
Portrait18:         incbin "graphics/portraits/portrait18.bin"
Portrait19:         incbin "graphics/portraits/portrait19.bin"
Portrait20:         incbin "graphics/portraits/portrait20.bin"
Portrait21:         incbin "graphics/portraits/portrait21.bin"
Portrait22:         incbin "graphics/portraits/portrait22.bin"
Portrait23:         incbin "graphics/portraits/portrait23.bin"
Portrait24:         incbin "graphics/portraits/portrait24.bin"
Portrait25:         incbin "graphics/portraits/portrait25.bin"
Portrait26:         incbin "graphics/portraits/portrait26.bin"
Portrait27:         incbin "graphics/portraits/portrait27.bin"
Portrait28:         incbin "graphics/portraits/portrait28.bin"
Portrait29:         incbin "graphics/portraits/portrait29.bin"
Portrait30:         incbin "graphics/portraits/portrait30.bin"
Portrait31:         incbin "graphics/portraits/portrait31.bin"
Portrait32:         incbin "graphics/portraits/portrait32.bin"
Portrait33:         incbin "graphics/portraits/portrait33.bin"
Portrait34:         incbin "graphics/portraits/portrait34.bin"
Portrait35:         incbin "graphics/portraits/portrait35.bin"
Portrait37:         incbin "graphics/portraits/portrait37.bin"
Portrait36:         incbin "graphics/portraits/portrait36.bin"
Portrait38:         incbin "graphics/portraits/portrait38.bin"
Portrait39:         incbin "graphics/portraits/portrait39.bin"
Portrait40:         incbin "graphics/portraits/portrait40.bin"
Portrait41:         incbin "graphics/portraits/portrait41.bin"
Portrait42:         incbin "graphics/portraits/portrait42.bin"
Portrait43:         incbin "graphics/portraits/portrait43.bin"
Portrait44:         incbin "graphics/portraits/portrait44.bin"
Portrait45:         incbin "graphics/portraits/portrait45.bin"
Portrait46:         incbin "graphics/portraits/portrait46.bin"
Portrait47:         incbin "graphics/portraits/portrait47.bin"
Portrait48:         incbin "graphics/portraits/portrait48.bin"
Portrait49:         incbin "graphics/portraits/portrait49.bin"
										align $8000
