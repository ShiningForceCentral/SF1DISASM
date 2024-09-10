
; ASM FILE code\common\scripting\text\textfunctions.asm :
; 0x2046..0x25D0 : Text functions

; =============== S U B R O U T I N E =======================================

; d0 : string index

LoadText:
		nop
		nop
		move.b  #1,(CURRENTLY_TYPEWRITING).l
		movem.l d0-a6,-(sp)
		bsr.w   sub_20DA
		cmpi.b  #1,(COMPRESSED_STRING_LENGTH).l
		beq.w   loc_21C2
		jsr     j_InitDecoder
		move.l  a0,(COMPRESSED_STRING_POINTER).l
						; keep string pointer
		bsr.s   sub_20E0
loc_2074:
		bsr.w   GetNextTextSymbol
loc_2078:
		cmpi.w  #$FFF0,d0
		beq.s   loc_2086
		cmpi.w  #$FFF6,d0
		beq.s   loc_2086
		bsr.s   sub_208C
loc_2086:
		bsr.w   sub_21C8
		bra.s   loc_2074

    ; End of function LoadText


; =============== S U B R O U T I N E =======================================

sub_208C:
		cmpi.b  #$C4,(TEXT_X_POSITION).l
		bls.s   return_20D8
		move.b  #2,(TEXT_X_POSITION).l
		addi.b  #$10,(TEXT_Y_POSITION).l
		btst    #0,(VDP_REG10_VALUE).l
		bne.s   loc_20BA
		cmpi.b  #$20,(TEXT_Y_POSITION).l 
		bra.s   loc_20C2
loc_20BA:
		cmpi.b  #$30,(TEXT_Y_POSITION).l 
loc_20C2:
		bcs.s   return_20D8

    ; End of function sub_208C


; =============== S U B R O U T I N E =======================================

sub_20C4:
		movem.l d0,-(sp)
		bsr.w   sub_1AF0
		movem.l (sp)+,d0
		subi.b  #$10,(TEXT_Y_POSITION).l
return_20D8:
		rts

    ; End of function sub_20C4


; =============== S U B R O U T I N E =======================================

sub_20DA:
		bsr.s   FindString
		bsr.s   sub_2100
		rts

    ; End of function sub_20DA


; =============== S U B R O U T I N E =======================================

sub_20E0:
		bsr.w   GetNextTextSymbol
		cmpi.w  #$FFEA,d0
		beq.s   @Return
		movem.l d0,-(sp)
		bsr.w   sub_2458
		movem.l (sp)+,d0
		movem.l (sp)+,d1
		bra.w   loc_2078
@Return:
		rts

    ; End of function sub_20E0


; =============== S U B R O U T I N E =======================================

sub_2100:
		clr.l   (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		clr.b   (byte_FFF806).l
		clr.w   (word_FFF842).l
		move.b  (a0)+,(COMPRESSED_STRING_LENGTH).l
						; keep length of current string
		move.l  #MESSAGE_ARG_NAME_1,(CURRENT_MESSAGE_NAME_INDEX_ADDRESS).l
		rts

    ; End of function sub_2100


; =============== S U B R O U T I N E =======================================

FindString:
		movem.w d0,-(sp)        ; save string index
		lsr.w   #6,d0
		andi.b  #$FC,d0         ; string index -> bank pointer offset
		movea.l (p_pt_TextBanks).l,a0; load script bank pointer
		movea.l (a0,d0.w),a0
		movem.w (sp)+,d0        ; restore string index
@GoToNextString:
		
		tst.b   d0
		beq.s   @Return
		moveq   #0,d7
		move.b  (a0),d7         ; first string byte : string length
		adda.l  d7,a0
		subq.b  #1,d0
		bra.s   @GoToNextString ; loop until wanted string reached
@Return:
		rts

    ; End of function FindString


; =============== S U B R O U T I N E =======================================

GetNextTextSymbol:
		
		tst.l   (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		bne.w   loc_219A
loc_2156:
		movea.l (COMPRESSED_STRING_POINTER).l,a0
		jsr     j_HuffmanDecode
		move.l  a0,(COMPRESSED_STRING_POINTER).l
		cmpi.b  #$C0,d0
		beq.s   loc_218A
		bcs.s   loc_2184
		subi.b  #$C1,d0
		andi.w  #$FF,d0
		add.w   d0,d0
		lea     word_24AA(pc), a1
		move.w  (a1,d0.w),d0
		rts
loc_2184:
		andi.w  #$FF,d0
		rts
loc_218A:
		movem.l (sp)+,d0
		clr.b   (CURRENTLY_TYPEWRITING).l
		movem.l (sp)+,d0-a6
		rts
loc_219A:
		movea.l (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l,a1
		move.w  (a1)+,d0
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		cmpi.w  #-1,d0
		beq.s   loc_21B8
		lea     byte_24D0(pc), a1
		move.b  (a1,d0.w),d0
		rts
loc_21B8:
		clr.l   (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		bra.w   loc_2156

    ; End of function GetNextTextSymbol


; START OF FUNCTION CHUNK FOR LoadText

loc_21C2:
		movem.l (sp)+,d0-a6
		rts

; END OF FUNCTION CHUNK FOR LoadText


; =============== S U B R O U T I N E =======================================

sub_21C8:
		tst.w   d0
		bpl.s   loc_21D4
		not.w   d0
		lsl.w   #2,d0
		jmp     sub_21DE(pc,d0.w)
loc_21D4:
		bsr.w   sub_1CC6
		bsr.w   loc_19AE
		rts

    ; End of function sub_21C8


; =============== S U B R O U T I N E =======================================

sub_21DE:
		bra.w   sub_2246

    ; End of function sub_21DE


; =============== S U B R O U T I N E =======================================

sub_21E2:
		bra.w   sub_224C

    ; End of function sub_21E2


; =============== S U B R O U T I N E =======================================

sub_21E6:
		bra.w   sub_2280

    ; End of function sub_21E6


; =============== S U B R O U T I N E =======================================

sub_21EA:
		bra.w   sub_2296

    ; End of function sub_21EA


; =============== S U B R O U T I N E =======================================

j_nullsub_22A2:
		
		bra.w   nullsub_22A2

    ; End of function j_nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_21F2:
		bra.w   sub_22C8

    ; End of function sub_21F2


; =============== S U B R O U T I N E =======================================

sub_21F6:
		bra.w   sub_230A

    ; End of function sub_21F6


; =============== S U B R O U T I N E =======================================

j_nullsub_2318:
		
		bra.w   nullsub_2318

    ; End of function j_nullsub_2318


; =============== S U B R O U T I N E =======================================

sub_21FE:
		bra.w   sub_231A

    ; End of function sub_21FE


; =============== S U B R O U T I N E =======================================

sub_2202:
		bra.w   sub_2430

    ; End of function sub_2202


; =============== S U B R O U T I N E =======================================

sub_2206:
		bra.w   sub_2354

    ; End of function sub_2206


; =============== S U B R O U T I N E =======================================

sub_220A:
		bra.w   sub_235A

    ; End of function sub_220A


; =============== S U B R O U T I N E =======================================

sub_220E:
		bra.w   sub_237E

    ; End of function sub_220E


; =============== S U B R O U T I N E =======================================

sub_2212:
		bra.w   sub_23B4

    ; End of function sub_2212


; =============== S U B R O U T I N E =======================================

sub_2216:
		bra.w   sub_2458

    ; End of function sub_2216


; =============== S U B R O U T I N E =======================================

sub_221A:
		bra.w   loc_23B8

    ; End of function sub_221A


; =============== S U B R O U T I N E =======================================

sub_221E:
		bra.w   sub_2430

    ; End of function sub_221E

		dcb.b $10,0

; =============== S U B R O U T I N E =======================================

j_nullsub_2466:
		
		bra.w   nullsub_2466

    ; End of function j_nullsub_2466

		dcb.b 4,0

; =============== S U B R O U T I N E =======================================

sub_223A:
		bra.w   sub_22A4

    ; End of function sub_223A


; =============== S U B R O U T I N E =======================================

sub_223E:
		bra.w   sub_22B0

    ; End of function sub_223E


; =============== S U B R O U T I N E =======================================

sub_2242:
		bra.w   sub_22BC

    ; End of function sub_2242


; =============== S U B R O U T I N E =======================================

sub_2246:
		movem.l (sp)+,d0
		rts

    ; End of function sub_2246


; =============== S U B R O U T I N E =======================================

sub_224C:
		move.b  #2,(TEXT_X_POSITION).l
		addi.b  #$10,(TEXT_Y_POSITION).l
		btst    #0,(VDP_REG10_VALUE).l
		bne.s   loc_2270
		cmpi.b  #$20,(TEXT_Y_POSITION).l 
		bra.s   loc_2278
loc_2270:
		cmpi.b  #$30,(TEXT_Y_POSITION).l 
loc_2278:
		bcs.s   return_227E
		bsr.w   sub_20C4
return_227E:
		rts

    ; End of function sub_224C


; =============== S U B R O U T I N E =======================================

sub_2280:
		bsr.w   sub_2468
		jsr     j_GetSpellNameAddress

    ; End of function sub_2280


; START OF FUNCTION CHUNK FOR sub_2296

loc_228A:
		movea.l a0,a2
		move.w  d1,d7
		subi.w  #1,d7
		bra.w   loc_248E

; END OF FUNCTION CHUNK FOR sub_2296


; =============== S U B R O U T I N E =======================================

sub_2296:
		bsr.w   sub_2468
		jsr     j_GetItemNameAddress
		bra.s   loc_228A

    ; End of function sub_2296


; =============== S U B R O U T I N E =======================================

nullsub_22A2:
		rts

    ; End of function nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_22A4:
		bsr.w   sub_2468
		jsr     j_GetClassNameAddress
		bra.s   loc_228A

    ; End of function sub_22A4


; =============== S U B R O U T I N E =======================================

sub_22B0:
		bsr.w   sub_2468
		jsr     j_GetItemNameAddress
		bra.s   loc_228A

    ; End of function sub_22B0


; =============== S U B R O U T I N E =======================================

sub_22BC:
		bsr.w   sub_2468
		move.b  d1,(byte_FFF804).l
		rts

    ; End of function sub_22BC


; =============== S U B R O U T I N E =======================================

sub_22C8:
		bsr.w   sub_2468
		move.w  d1,d0
		jsr     j_GetDisplayedNameAddress
loc_22D4:
		lea     (DIALOG_STRING_TO_PRINT).l,a1
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		subq.w  #1,d1
loc_22E2:
		clr.w   d0
		move.b  (a0)+,d0
		move.w  d0,(a1)+
loc_22E8:
		dbf     d1,loc_22E2
loc_22EC:
		tst.w   -(a1)
		bne.s   loc_22F2
		bra.s   loc_22EC
loc_22F2:
		adda.w  #2,a1
		move.w  #-1,(a1)+
		rts

    ; End of function sub_22C8

		move.w  -2(a1),d2
		move.w  d3,-2(a1)
		move.w  d2,(a1)+
		bra.s   loc_22E8
		rts

; =============== S U B R O U T I N E =======================================

sub_230A:
		clr.w   d0
		jsr     j_GetEntityStatsAddress
		moveq   #$A,d1
		bra.w   loc_22D4

    ; End of function sub_230A


; =============== S U B R O U T I N E =======================================

nullsub_2318:
		rts

    ; End of function nullsub_2318


; =============== S U B R O U T I N E =======================================

sub_231A:
		move.w  #$15,d0
loc_231E:
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
loc_232E:
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #INPUT_B|INPUT_C|INPUT_A,d1
		bne.s   loc_2342
		bsr.w   WaitForVInt     
		dbf     d0,loc_232E
loc_2342:
		movem.w (sp)+,d0
		move.b  d0,(CURRENTLY_TYPEWRITING).l
		rts

    ; End of function sub_231A

		move.w  #$3B,d0 
		bra.s   loc_231E

; =============== S U B R O U T I N E =======================================

sub_2354:
		move.w  #$77,d0 
		bra.s   loc_231E

    ; End of function sub_2354


; =============== S U B R O U T I N E =======================================

sub_235A:
		move.w  #59,d0
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
		bsr.w   Sleep           
		movem.w (sp)+,d0
		move.b  d0,(CURRENTLY_TYPEWRITING).l
		rts

    ; End of function sub_235A


; =============== S U B R O U T I N E =======================================

sub_237E:
		move.l  (MESSAGE_ARG_NUMBER).l,d0
		jsr     (j_WriteAsciiNumber).l
		lea     (DIALOG_STRING_TO_PRINT).l,a1
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		lea     (LOADED_NUMBER).l,a0
		moveq   #9,d1
loc_239E:
		clr.w   d0
		move.b  (a0)+,d0
		cmpi.b  #$20,d0 
		beq.s   loc_23AA
		move.w  d0,(a1)+
loc_23AA:
		dbf     d1,loc_239E
                
		move.w  #-1,(a1)+
		rts

    ; End of function sub_237E


; =============== S U B R O U T I N E =======================================

sub_23B4:
		bsr.w   sub_224C
loc_23B8:
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
		moveq   #$14,d2
loc_23CA:
		bsr.w   WaitForVInt     
		bsr.s   sub_23DE
		beq.s   loc_23CA
		sndCom  SFX_VALIDATION
		clr.w   d2
		bsr.s   sub_23EC
		bra.w   loc_2342

    ; End of function sub_23B4


; =============== S U B R O U T I N E =======================================

sub_23DE:
		bsr.s   sub_23EC
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #INPUT_B|INPUT_C|INPUT_A,d1
		rts

    ; End of function sub_23DE


; =============== S U B R O U T I N E =======================================

sub_23EC:
		lea     (SPRITE_00_PROPERTIES).l,a0
		cmpi.w  #7,d2
		bge.s   loc_2404
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_241E
loc_2404:
		move.w  #$160,6(a0)
		btst    #0,(VDP_REG10_VALUE).l
		beq.s   loc_241A
		move.w  #$148,(a0)
		bra.s   loc_241E
loc_241A:
		move.w  #$130,(a0)
loc_241E:
		clr.b   2(a0)
		move.w  #$C084,4(a0)
		subq.w  #1,d2
		bne.s   return_242E
		moveq   #$14,d2
return_242E:
		rts

    ; End of function sub_23EC


; =============== S U B R O U T I N E =======================================

sub_2430:
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
loc_2440:
		bsr.w   WaitForVInt     
		bsr.s   sub_244C
		beq.s   loc_2440
		bra.w   loc_2342

    ; End of function sub_2430


; =============== S U B R O U T I N E =======================================

sub_244C:
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #INPUT_B|INPUT_C|INPUT_A,d1
		rts

    ; End of function sub_244C


; =============== S U B R O U T I N E =======================================

sub_2458:
		cmpi.b  #2,(TEXT_X_POSITION).l
		bne.w   sub_224C
		rts

    ; End of function sub_2458


; =============== S U B R O U T I N E =======================================

nullsub_2466:
		rts

    ; End of function nullsub_2466


; =============== S U B R O U T I N E =======================================

sub_2468:
		movea.l (CURRENT_MESSAGE_NAME_INDEX_ADDRESS).l,a1
		move.w  (a1)+,d1
		move.l  a1,(CURRENT_MESSAGE_NAME_INDEX_ADDRESS).l
		rts

    ; End of function sub_2468


; =============== S U B R O U T I N E =======================================

sub_2478:
		dbf     d0,loc_247E
                
		bra.s   loc_2486
loc_247E:
		clr.l   d1
		move.b  (a2),d1
		adda.l  d1,a2
		bra.s   sub_2478
loc_2486:
		clr.l   d7
		move.b  (a2)+,d7
		subq.w  #2,d7
		rts

    ; End of function sub_2478


; START OF FUNCTION CHUNK FOR sub_2296

loc_248E:
		lea     (DIALOG_STRING_TO_PRINT).l,a1
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
loc_249A:
		clr.w   d0
		move.b  (a2)+,d0
		move.w  d0,(a1)+
		dbf     d7,loc_249A
                
		move.w  #-1,(a1)
		rts

; END OF FUNCTION CHUNK FOR sub_2296

word_24AA:      dc.w $FFEA
		dc.w $FFF1
		dc.w $FFFE
		dc.w $FFF4
		dc.w $FFF3
		dc.w $FFFA
		dc.w $FFF8
		dc.w $FFF9
		dc.w $FFFB
		dc.w $FFFC
		dc.w $FFFD
		dc.w $FFE7
		dc.w $FFF0
		dc.w $FFF2
		dc.w $FFF7
		dc.w $FFF6
		dc.w $FFF5
		dc.w $FFE8
		dc.w $FFE6
byte_24D0:      dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $43
		dc.b $46
		dc.b $4A
		dc.b 0
		dc.b $4B
		dc.b $4C
		dc.b $47
		dc.b $48
		dc.b $49
		dc.b 0
		dc.b $4D
		dc.b $42
		dc.b $40
		dc.b $41
		dc.b $4E
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 6
		dc.b 7
		dc.b 8
		dc.b 9
		dc.b $A
		dc.b $4F
		dc.b $45
		dc.b $48
		dc.b 0
		dc.b $49
		dc.b $44
		dc.b 0
		dc.b $B
		dc.b $C
		dc.b $D
		dc.b $E
		dc.b $F
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $13
		dc.b $14
		dc.b $15
		dc.b $16
		dc.b $17
		dc.b $18
		dc.b $19
		dc.b $1A
		dc.b $1B
		dc.b $1C
		dc.b $1D
		dc.b $1E
		dc.b $1F
		dc.b $20
		dc.b $21
		dc.b $22
		dc.b $23
		dc.b $24
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $3F
		dc.b 0
		dc.b $25
		dc.b $26
		dc.b $27
		dc.b $28
		dc.b $29
		dc.b $2A
		dc.b $2B
		dc.b $2C
		dc.b $2D
		dc.b $2E
		dc.b $2F
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
		dc.b $3A
		dc.b $3B
		dc.b $3C
		dc.b $3D
		dc.b $3E
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
