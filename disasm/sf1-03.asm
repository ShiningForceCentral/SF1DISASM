
; GAME SECTION 03 :
; Exploration engine, ...
; FREE SPACE : 3992 bytes.



; =============== S U B R O U T I N E =======================================

sub_10000:
		jmp     sub_10050(pc)

    ; End of function sub_10000


; =============== S U B R O U T I N E =======================================

j_ExecuteShopMenu:
		
		jmp     ExecuteShopMenu(pc)

    ; End of function j_ExecuteShopMenu


; =============== S U B R O U T I N E =======================================

sub_10008:
		jmp     sub_1005C(pc)

    ; End of function sub_10008


; =============== S U B R O U T I N E =======================================

sub_1000C:
		jmp     sub_175DE(pc)

    ; End of function sub_1000C


; =============== S U B R O U T I N E =======================================

sub_10010:
		jmp     sub_17CCA(pc)

    ; End of function sub_10010


; =============== S U B R O U T I N E =======================================

sub_10014:
		jmp     sub_175F2(pc)

    ; End of function sub_10014


; =============== S U B R O U T I N E =======================================

j_ExecuteChurchMenu:
		
		jmp     ExecuteChurchMenu(pc)

    ; End of function j_ExecuteChurchMenu

p_SpriteTextSounds:
		dc.l SpriteTextSounds

; =============== S U B R O U T I N E =======================================

j_MainMenuAction_Search:
		
		jmp     MainMenuAction_Search(pc)

    ; End of function j_MainMenuAction_Search


; =============== S U B R O U T I N E =======================================

sub_10024:
		jmp     sub_17B10(pc)

    ; End of function sub_10024


; =============== S U B R O U T I N E =======================================

sub_10028:
		jmp     sub_11148(pc)

    ; End of function sub_10028

p_pt_BattleExits:
		dc.l pt_BattleExits
p_BattleChests: dc.l BattleChests
off_10034:      dc.l byte_1E37A

; =============== S U B R O U T I N E =======================================

j_PlayEnding:
		jmp     PlayEnding

    ; End of function j_PlayEnding


; =============== S U B R O U T I N E =======================================

sub_1003E:
		nop

    ; End of function sub_1003E


; =============== S U B R O U T I N E =======================================

j_InitDecoder:
		
		jmp     InitDecoder     

    ; End of function j_InitDecoder


; =============== S U B R O U T I N E =======================================

sub_10046:
		nop

    ; End of function sub_10046


; =============== S U B R O U T I N E =======================================

j_HuffmanDecode:
		
		jmp     HuffmanDecode

    ; End of function j_HuffmanDecode


; =============== S U B R O U T I N E =======================================

sub_1004E:
		nop

    ; End of function sub_1004E


; =============== S U B R O U T I N E =======================================

sub_10050:
		bsr.w   sub_1010E
		move.b  (CURRENT_MAP_ENTRANCE).l,d1
		bra.s   loc_1005E

    ; End of function sub_10050


; =============== S U B R O U T I N E =======================================

sub_1005C:
		clr.w   d1
loc_1005E:
		movem.w d1,-(sp)
		movem.w d0,-(sp)
		jsr     (j_DisableDisplayAndInterrupts).l
		movem.w (sp)+,d0
		bsr.w   sub_118C6
		bsr.w   sub_10FA0
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_FadeInFromBlack).l
		movem.w (sp)+,d1
loc_10088:
		bsr.w   sub_102D6
		bcc.s   loc_10088
		cmpi.b  #1,d0
		beq.s   loc_100FC
		cmpi.b  #$12,d0
		beq.s   loc_100F8
		cmpi.b  #$1B,d0
		beq.s   loc_100F2
		cmpi.b  #$1D,d0
		beq.s   loc_100EC
		movem.w d0,-(sp)
		bsr.w   sub_12C62       
		movem.w (sp)+,d1
		bcs.s   loc_100FC
		cmpi.b  #$1A,d1
		beq.s   loc_100C2
		jsr     (j_FadeOutToBlack).l
		bra.s   sub_1005C
loc_100C2:
		jsr     (j_FadeOutToWhite).l
		movem.w d0,-(sp)
		jsr     (j_DisableDisplayAndInterrupts).l
		movem.w (sp)+,d0
		bsr.w   sub_118C6
		bsr.w   sub_10FA0
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_FadeInFromWhite).l
		bra.s   loc_10088
loc_100EC:
		move.b  #4,d0
		bra.s   loc_100FC
loc_100F2:
		move.b  #3,d0
		bra.s   loc_100FC
loc_100F8:
		move.b  #2,d0
loc_100FC:
		subq.b  #1,d0
		move.b  d0,(CURRENT_MAP_ENTRANCE).l
		sndCom  SFX_WARP
		bsr.w   sub_11940
		rts

    ; End of function sub_1005C


; =============== S U B R O U T I N E =======================================

sub_1010E:
		bsr.w   sub_12D74
		clr.w   d1
		move.b  (CURRENT_MAP_ENTRANCE).l,d1
		lsl.w   #2,d1
		movea.l off_10180(pc,d1.w),a0
loc_10120:
		move.b  (a0)+,d1
		bmi.s   loc_1017C
		cmp.b   d1,d0
		beq.s   loc_1012C
		addq.l  #3,a0
		bra.s   loc_10120
loc_1012C:
		lea     (MAP_SPRITE_POSITION).l,a1
		move.b  (a0)+,(a1)+
		move.b  (a0)+,(a1)+
		move.b  (a0)+,d7
		ori.b   #$C0,d7
		move.b  d7,(a1)+
		clr.b   (a1)+
		move.w  #$800,(a1)+
		move.w  #$7F8,(a1)+
		clr.w   (a1)+
		clr.w   (a1)+
		clr.w   (a1)+
		clr.w   (a1)+
		move.w  #2,(word_FFF8E2).l
		move.b  #$FF,(byte_FFF807).l
		lea     (byte_FF92EA).l,a0
		move.l  a0,(dword_FFF928).l
		move.w  #$7F,d7 
loc_10170:
		move.l  #$FFFFFFFF,(a0)+
		dbf     d7,loc_10170
		rts
loc_1017C:
		nop
		bra.s   loc_1017C

    ; End of function sub_1010E

off_10180:      dc.l byte_10194
		dc.l byte_101EE
		dc.l byte_10228
		dc.l byte_10272
		dc.l byte_102B0
byte_10194:     dc.b 2
		dc.b $22
		dc.b $23
		dc.b 0
		dc.b 3
		dc.b $22
		dc.b $22
		dc.b 0
		dc.b 4
		dc.b $1A
		dc.b $29
		dc.b 0
		dc.b 6
		dc.b $B
		dc.b $2D
		dc.b 0
		dc.b $D
		dc.b 9
		dc.b $1C
		dc.b 0
		dc.b 7
		dc.b $17
		dc.b $20
		dc.b 0
		dc.b $20
		dc.b $1A
		dc.b $2A
		dc.b $10
		dc.b $21
		dc.b $2E
		dc.b $12
		dc.b $10
		dc.b $1E
		dc.b $1E
		dc.b $24
		dc.b $18
		dc.b $E
		dc.b $2C
		dc.b $21
		dc.b $18
		dc.b $25
		dc.b $A
		dc.b $3C
		dc.b 0
		dc.b $1F
		dc.b $1E
		dc.b $27
		dc.b 0
		dc.b 8
		dc.b 9
		dc.b $2D
		dc.b 0
		dc.b 9
		dc.b 6
		dc.b $1A
		dc.b 8
		dc.b $A
		dc.b 6
		dc.b $F
		dc.b 8
		dc.b $C
		dc.b $A
		dc.b $F
		dc.b 0
		dc.b $1B
		dc.b $D
		dc.b $1B
		dc.b 0
		dc.b $1D
		dc.b $46
		dc.b $20
		dc.b 0
		dc.b $10
		dc.b 7
		dc.b $26
		dc.b 0
		dc.b $2A
		dc.b $19
		dc.b $E
		dc.b 0
		dc.b $29
		dc.b 7
		dc.b $2D
		dc.b 8
		dc.b $24
		dc.b 9
		dc.b $3A
		dc.b 0
		dc.b $FF
		dc.b $FF
byte_101EE:     dc.b 0
		dc.b 9
		dc.b $1A
		dc.b $18
		dc.b 4
		dc.b $36
		dc.b $2D
		dc.b 8
		dc.b 6
		dc.b 9
		dc.b $28
		dc.b $18
		dc.b $D
		dc.b $11
		dc.b $16
		dc.b 8
		dc.b 7
		dc.b $30
		dc.b $1E
		dc.b 8
		dc.b $20
		dc.b $14
		dc.b 9
		dc.b 8
		dc.b $21
		dc.b $14
		dc.b $18
		dc.b 8
		dc.b $1E
		dc.b $10
		dc.b $D
		dc.b 8
		dc.b $E
		dc.b $1A
		dc.b $23
		dc.b 8
		dc.b $1F
		dc.b $39
		dc.b $34
		dc.b $18
		dc.b 9
		dc.b $27
		dc.b 8
		dc.b $18
		dc.b $A
		dc.b $A
		dc.b $A
		dc.b $18
		dc.b $1D
		dc.b $30
		dc.b $1E
		dc.b 8
		dc.b $29
		dc.b 5
		dc.b $2D
		dc.b 8
		dc.b $FF
		dc.b $FF
byte_10228:     dc.b 2
		dc.b $E
		dc.b 6
		dc.b 0
		dc.b 3
		dc.b $E
		dc.b 6
		dc.b 0
		dc.b 4
		dc.b $20
		dc.b $10
		dc.b 0
		dc.b 5
		dc.b $3B
		dc.b $17
		dc.b $18
		dc.b 6
		dc.b $A
		dc.b 9
		dc.b 0
		dc.b $D
		dc.b $12
		dc.b $16
		dc.b 8
		dc.b 7
		dc.b $18
		dc.b $E
		dc.b 0
		dc.b $20
		dc.b $D
		dc.b $12
		dc.b 0
		dc.b $21
		dc.b $1A
		dc.b $19
		dc.b 0
		dc.b $1E
		dc.b $1E
		dc.b $C
		dc.b 0
		dc.b $E
		dc.b $1F
		dc.b $22
		dc.b 0
		dc.b $1F
		dc.b $34
		dc.b $30
		dc.b 0
		dc.b 8
		dc.b 8
		dc.b 9
		dc.b 0
		dc.b 9
		dc.b $D
		dc.b 8
		dc.b 0
		dc.b $A
		dc.b $1E
		dc.b 8
		dc.b 0
		dc.b $C
		dc.b $B
		dc.b 8
		dc.b 0
		dc.b $1D
		dc.b $26
		dc.b $D
		dc.b 0
		dc.b $29
		dc.b 6
		dc.b $2B
		dc.b 0
		dc.b $FF
		dc.b $FF
byte_10272:     dc.b 4
		dc.b $34
		dc.b $2E
		dc.b 8
		dc.b 6
		dc.b $19
		dc.b $2C
		dc.b $10
		dc.b 2
		dc.b 6
		dc.b 9
		dc.b 0
		dc.b $1D
		dc.b $2F
		dc.b $1F
		dc.b 0
		dc.b $20
		dc.b $35
		dc.b $2D
		dc.b $10
		dc.b 7
		dc.b $24
		dc.b $18
		dc.b 0
		dc.b $21
		dc.b $D
		dc.b $2D
		dc.b $10
		dc.b $D
		dc.b $2B
		dc.b $14
		dc.b $10
		dc.b $29
		dc.b $10
		dc.b $1B
		dc.b 0
		dc.b 8
		dc.b 8
		dc.b 7
		dc.b 0
		dc.b $E
		dc.b 6
		dc.b $25
		dc.b 8
		dc.b $25
		dc.b 3
		dc.b $2A
		dc.b 8
		dc.b $1F
		dc.b $1E
		dc.b $1E
		dc.b $10
		dc.b $10
		dc.b 7
		dc.b $28
		dc.b 0
		dc.b $24
		dc.b $27
		dc.b $C
		dc.b 0
		dc.b $FE
		dc.b $FF
byte_102B0:     dc.b 4
		dc.b 9
		dc.b $23
		dc.b 8
		dc.b $20
		dc.b $19
		dc.b 4
		dc.b 0
		dc.b 9
		dc.b $22
		dc.b $19
		dc.b 0
		dc.b 7
		dc.b $1D
		dc.b $C
		dc.b $10
		dc.b $1F
		dc.b $30
		dc.b $34
		dc.b $18
		dc.b $1E
		dc.b $19
		dc.b 8
		dc.b $18
		dc.b $24
		dc.b $29
		dc.b $20
		dc.b 0
		dc.b $25
		dc.b $A
		dc.b $29
		dc.b $10
		dc.b $1D
		dc.b $2F
		dc.b $13
		dc.b $10
		dc.b $FE
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_102D6:
		bsr.s   sub_10310
		bsr.w   sub_15EFE
		bsr.w   sub_1096C
		jsr     sub_10AEE
		bsr.w   sub_1646A
		bsr.w   sub_106EC
		bsr.w   sub_1106C
		bsr.w   sub_106F6
		bsr.w   sub_10A6E
		bsr.w   sub_11C0C
		jsr     (j_WaitForVInt).l
		addq.b  #1,(byte_FFF820).l
		bsr.w   sub_108BC
		rts

    ; End of function sub_102D6


; =============== S U B R O U T I N E =======================================

sub_10310:
		jsr     (j_nullsub_13E8).l
		move.b  (P1_INPUT).l,d0 
		andi.b  #INPUT_C|INPUT_A,d0
		and.b   d0,(byte_FFF81C).l
		bne.s   loc_1032E
		or.b    d0,(TEMP_INPUT_STATES).l
loc_1032E:
		tst.w   (word_FFF834).l 
		bne.w   return_103C6
		tst.b   (byte_FF500F).l 
		bne.s   loc_1035A
loc_10340:
		move.b  (P1_INPUT).l,d0 
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d0
		andi.b  #$F0,(TEMP_INPUT_STATES).l
		or.b    d0,(TEMP_INPUT_STATES).l
		bra.s   loc_1039C
loc_1035A:
		move.l  #$10000,d1
		subq.b  #1,(byte_FF500F).l
		bne.s   loc_1038C
		addq.w  #2,(word_FF500C).l
		move.w  (word_FF500C).l,d1
		movea.l d1,a0
		move.b  1(a0),d0
		move.b  d0,(byte_FF500F).l
		move.b  (a0),d0
		bpl.s   loc_10396
		clr.b   (byte_FF500F).l 
		bra.s   loc_10340
loc_1038C:
		move.w  (word_FF500C).l,d1
		movea.l d1,a0
		move.b  (a0),d0
loc_10396:
		move.b  d0,(TEMP_INPUT_STATES).l
loc_1039C:
		btst    #INPUT_BIT_A,(TEMP_INPUT_STATES).l
		bne.s   loc_103B0
		btst    #INPUT_BIT_C,(TEMP_INPUT_STATES).l
		beq.s   loc_103C8
loc_103B0:
		jsr     (j_ExecuteMainMenu).l
		andi.b  #$F,(TEMP_INPUT_STATES).l
		move.b  #$FF,(byte_FFF81C).l
return_103C6:
		rts
loc_103C8:
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		clr.w   d2
		move.b  #3,d5
		move.b  (TEMP_INPUT_STATES).l,d3
		andi.b  #$F,d3
		lsl.b   #2,d3
		ext.w   d3
		jmp     loc_103EC(pc,d3.w)

    ; End of function sub_10310

loc_103EC:      bra.w   sub_106E4
		bra.w   sub_10574
		bra.w   sub_105BA
		bra.w   sub_106E4
		bra.w   sub_10606
		bra.w   sub_104EC
		bra.w   sub_104AC
		bra.w   sub_106E4
		bra.w   sub_1052C
		bra.w   sub_1042C
		bra.w   sub_1046C
		bra.w   sub_106E4
		bra.w   sub_106E4
		bra.w   sub_106E4
		bra.w   sub_106E4
		bra.w   sub_106E4

; =============== S U B R O U T I N E =======================================

sub_1042C:
		cmpi.b  #1,(byte_FFF821).l
		beq.s   loc_10442
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_1044C
		bra.s   loc_10458
loc_10442:
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_10458
loc_1044C:
		bsr.w   sub_1052C
		bcs.s   loc_10462
		bsr.w   sub_10574
		bra.s   loc_10462
loc_10458:
		bsr.w   sub_10574
		bcs.s   loc_10462
		bsr.w   sub_1052C
loc_10462:
		move.b  #1,(byte_FFF821).l
		rts

    ; End of function sub_1042C


; =============== S U B R O U T I N E =======================================

sub_1046C:
		cmpi.b  #2,(byte_FFF821).l
		beq.s   loc_10482
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_1048C
		bra.s   loc_10498
loc_10482:
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_10498
loc_1048C:
		bsr.w   sub_1052C
		bcs.s   loc_104A2
		bsr.w   sub_105BA
		bra.s   loc_104A2
loc_10498:
		bsr.w   sub_105BA
		bcs.s   loc_104A2
		bsr.w   sub_1052C
loc_104A2:
		move.b  #2,(byte_FFF821).l
		rts

    ; End of function sub_1046C


; =============== S U B R O U T I N E =======================================

sub_104AC:
		cmpi.b  #3,(byte_FFF821).l
		beq.s   loc_104C2
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_104CC
		bra.s   loc_104D8
loc_104C2:
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_104D8
loc_104CC:
		bsr.w   sub_10606
		bcs.s   loc_104E2
		bsr.w   sub_105BA
		bra.s   loc_104E2
loc_104D8:
		bsr.w   sub_105BA
		bcs.s   loc_104E2
		bsr.w   sub_10606
loc_104E2:
		move.b  #3,(byte_FFF821).l
		rts

    ; End of function sub_104AC


; =============== S U B R O U T I N E =======================================

sub_104EC:
		cmpi.b  #4,(byte_FFF821).l
		beq.s   loc_10502
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_1050C
		bra.s   loc_10518
loc_10502:
		btst    #3,(MAP_SPRITE_FACING).l
		beq.s   loc_10518
loc_1050C:
		bsr.w   sub_10606
		bcs.s   loc_10522
		bsr.w   sub_10574
		bra.s   loc_10522
loc_10518:
		bsr.w   sub_10574
		bcs.s   loc_10522
		bsr.w   sub_10606
loc_10522:
		move.b  #4,(byte_FFF821).l
		rts

    ; End of function sub_104EC


; =============== S U B R O U T I N E =======================================

sub_1052C:
		clr.b   (byte_FFF821).l 
		movem.w d0-d1,-(sp)
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		ori.b   #8,(MAP_SPRITE_FACING).l
		addq.b  #1,d0
		bsr.w   sub_1071E
		bcs.w   loc_106D6
		addq.b  #1,(MAP_SPRITE_POSITION).l
		move.w  (word_FFF8D6).l,d0
		andi.w  #$EF80,(word_FFF8D6).l
		addq.w  #6,d0
		andi.b  #$7F,d0 
		or.b    d0,(word_FFF8D6+1).l
		bra.w   loc_10642

    ; End of function sub_1052C


; =============== S U B R O U T I N E =======================================

sub_10574:
		clr.b   (byte_FFF821).l 
		movem.w d0-d1,-(sp)
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		subq.b  #1,d1
		bsr.w   sub_1071E
		bcs.w   loc_106D6
		subq.b  #1,(MAP_SPRITE_POSITION+1).l
		move.w  (word_FFF8D6).l,d0
		andi.w  #$7F,(word_FFF8D6).l 
		subi.w  #$180,d0
		andi.w  #$EF80,d0
		ori.w   #$E000,d0
		or.w    d0,(word_FFF8D6).l
		bra.w   loc_10642

    ; End of function sub_10574


; =============== S U B R O U T I N E =======================================

sub_105BA:
		clr.b   (byte_FFF821).l 
		movem.w d0-d1,-(sp)
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		ori.b   #$10,(MAP_SPRITE_FACING).l
		addq.b  #1,d1
		bsr.w   sub_1071E
		bcs.w   loc_106D6
		addq.b  #1,(MAP_SPRITE_POSITION+1).l
		move.w  (word_FFF8D6).l,d0
		andi.w  #$7F,(word_FFF8D6).l 
		addi.w  #$180,d0
		andi.w  #$EF80,d0
		ori.w   #$E000,d0
		or.w    d0,(word_FFF8D6).l
		bra.s   loc_10642

    ; End of function sub_105BA


; =============== S U B R O U T I N E =======================================

sub_10606:
		clr.b   (byte_FFF821).l 
		movem.w d0-d1,-(sp)
		ori.b   #$18,(MAP_SPRITE_FACING).l
		subq.b  #1,d0
		bsr.w   sub_1071E
		bcs.w   loc_106D6
		subq.b  #1,(MAP_SPRITE_POSITION).l
		move.w  (word_FFF8D6).l,d0
		andi.w  #$EF80,(word_FFF8D6).l
		subq.w  #6,d0
		andi.b  #$7F,d0 
		or.b    d0,(word_FFF8D6+1).l
loc_10642:
		move.w  (word_FFF8E2).l,d0
		move.w  d0,(word_FFF832).l
		bset    #7,(byte_FF5009).l
		move.b  #1,d5
		cmpi.w  #2,(word_FFF832).l
		beq.s   loc_10666
		clr.b   d5
loc_10666:
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		cmpi.b  #1,(byte_FFF81B).l
		bne.s   loc_10688
		move.b  d0,(byte_FFF819).l
		move.b  d1,(byte_FFF81A).l
loc_10688:
		bsr.w   sub_10D20
		move.w  (TILE_NUMBER).l,d0
		move.w  (a3),d1
		move.w  d1,(TILE_EVENT).l
		move.w  (a2),d1
		move.w  d1,(TILE_NUMBER).l
		andi.w  #$7000,d0
		move.w  d0,(word_FFF8D4).l
		andi.w  #$7000,d1
		move.w  d1,(word_FFF8D2).l
		cmp.w   d0,d1
		beq.s   loc_106C6
		movem.w d5-d6,-(sp)
		bsr.w   sub_115F8
		movem.w (sp)+,d5-d6
loc_106C6:
		move.b  d5,(FRAMES_BETWEEN_EVENT_STEPS).l
		movem.w (sp)+,d0-d1
		ori     #1,ccr
		rts
loc_106D6:
		move.b  d5,(FRAMES_BETWEEN_EVENT_STEPS).l
		movem.w (sp)+,d0-d1
		tst.b   d0
		rts

    ; End of function sub_10606


; =============== S U B R O U T I N E =======================================

sub_106E4:
		move.b  d5,(FRAMES_BETWEEN_EVENT_STEPS).l
		rts

    ; End of function sub_106E4


; =============== S U B R O U T I N E =======================================

sub_106EC:
		lea     (MAP_SPRITE_POSITION).l,a0
		bra.w   sub_164EC

    ; End of function sub_106EC


; =============== S U B R O U T I N E =======================================

sub_106F6:
		move.w  #$C,d1
		cmpi.w  #2,(word_FFF8E2).l
		beq.s   loc_10708
		move.w  #6,d1
loc_10708:
		move.w  (word_FFF834).l,d0
		addq.w  #1,d0
		cmp.w   d1,d0
		bcs.s   loc_10716
		clr.w   d0
loc_10716:
		move.w  d0,(word_FFF834).l
		rts

    ; End of function sub_106F6


; =============== S U B R O U T I N E =======================================

sub_1071E:
		tst.b   (byte_FF500F).l 
		bne.w   loc_107B4
		cmpi.b  #1,(byte_FFF81B).l
		beq.s   loc_10756
		cmp.b   (byte_FFF819).l,d0
		bne.s   loc_10756
		cmp.b   (byte_FFF81A).l,d1
		bne.s   loc_10756
		move.b  #1,(byte_FFF81B).l
		move.b  #$FF,(word_FF51B0+1).l
		tst.b   d0
		rts
loc_10756:
		bsr.w   sub_165BC
		bcs.s   loc_10786
		tst.b   (byte_FF500F).l 
		bne.s   loc_107B4
		movem.l a1,-(sp)
		bsr.w   sub_10842
		bcs.s   loc_10780
		andi.w  #$C00,d2
		beq.s   loc_1077E
		bsr.w   byte_112E0
		movem.l (sp)+,a1
		rts
loc_1077E:
		tst.b   d0
loc_10780:
		movem.l (sp)+,a1
		rts
loc_10786:
		lea     (MAP_SPRITE_POSITION).l,a6
		clr.w   d7
		lea     (byte_FFF88C).l,a0
loc_10794:
		move.w  d3,(a0)+
		movem.l d7-a0,-(sp)
		bsr.s   sub_107C6
		movem.l (sp)+,d7-a0
		bcs.s   loc_107B8
		lea     (byte_FFF88C).l,a0
loc_107A8:
		move.w  (a0)+,d3
		bset    #7,8(a6,d3.w)
		dbf     d7,loc_107A8
loc_107B4:
		tst.b   d0
		rts
loc_107B8:
		tst.b   d0
		bne.s   loc_107C0
		addq.w  #1,d7
		bra.s   loc_10794
loc_107C0:
		ori     #1,ccr
		rts

    ; End of function sub_1071E


; =============== S U B R O U T I N E =======================================

sub_107C6:
		btst    #6,8(a6,d3.w)
		beq.s   loc_10830
		andi.b  #$E7,2(a6,d3.w)
		move.b  2(a6),d0
		andi.b  #$18,d0
		or.b    d0,2(a6,d3.w)
		clr.w   d2
		move.b  d0,d2
		lsr.b   #2,d2
		move.b  (a6,d3.w),d0
		move.b  1(a6,d3.w),d1
		add.b   byte_1083A(pc,d2.w),d0
		add.b   byte_1083B(pc,d2.w),d1
		move.w  d3,d2
		movem.l a6,-(sp)
		bsr.w   sub_165BC
		movem.l (sp)+,a6
		bcs.s   loc_10824
		movem.l d2-d3/a0-a1,-(sp)
		jsr     sub_10D20
		btst    #$F,d2
		bne.s   loc_1082C
		andi.w  #$7C00,d3
		bne.s   loc_1082C
		movem.l (sp)+,d2-d3/a0-a1
		tst.b   d0
		rts
loc_10824:
		clr.b   d0
		ori     #1,ccr
		rts
loc_1082C:
		movem.l (sp)+,d2-d3/a0-a1
loc_10830:
		move.b  #1,d0
		ori     #1,ccr
		rts

    ; End of function sub_107C6

byte_1083A:     dc.b 0
byte_1083B:     dc.b $FF
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b 0

; =============== S U B R O U T I N E =======================================

sub_10842:
		jsr     sub_10D20
		tst.w   d2
		bmi.s   loc_108A2
		cmpi.b  #1,(byte_FFF81B).l
		bne.s   loc_1089E
		clr.b   (byte_FFF81B).l
		move.w  (MAP_SPRITE_POSITION).l,d0
		move.w  d0,(word_FF51B0).l
		move.w  (MAP_SPRITE_X_RELATIVE_TO_PLAYER).l,d0
		move.w  d0,(word_FF51B4).l
		move.w  (MAP_SPRITE_Y_RELATIVE_TO_PLAYER).l,d0
		move.w  d0,(word_FF51B6).l
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$18,d0
		andi.b  #$E7,(byte_FF51B2).l
		or.b    d0,(byte_FF51B2).l
		clr.b   (MAP_SPRITE_GFX).l
loc_1089E:
		tst.b   d0
		rts
loc_108A2:
		andi.w  #$7C00,d3
		cmpi.w  #$5000,d3
		bne.s   loc_108B6
		cmpi.b  #1,(byte_FFF81B).l
		beq.s   loc_1089E
loc_108B6:
		ori     #1,ccr
		rts

    ; End of function sub_10842


; =============== S U B R O U T I N E =======================================

sub_108BC:
		tst.w   (word_FFF8D8).l
		beq.s   loc_10932
		cmpi.b  #1,(byte_FFF81B).l
		bne.s   loc_108E0
		clr.w   (word_FF51B4).l
		move.b  (byte_FF51B3).l,d0
		move.b  d0,(MAP_SPRITE_GFX).l
loc_108E0:
		move.b  (MAP_SPRITE_POSITION).l,d0
		cmp.b   (MAP_WIDTH_0).l,d0
		bcc.s   loc_1095C
		move.b  (MAP_SPRITE_POSITION+1).l,d0
		cmp.b   (MAP_HEIGHT_0).l,d0
		bcc.s   loc_1095C
		move.b  (TILE_EVENT).l,d0
		lsr.b   #2,d0
		andi.w  #$1F,d0
		cmpi.w  #1,d0
		beq.s   loc_10966
		cmpi.w  #3,d0
		beq.s   loc_10936
		cmpi.w  #4,d0
		beq.s   loc_10960
		cmpi.w  #$12,d0
		beq.s   loc_10960
		cmpi.w  #$1A,d0
		beq.s   loc_10960
		cmpi.w  #$1B,d0
		beq.s   loc_10960
		cmpi.w  #$1D,d0
		beq.s   loc_10960
loc_10932:
		tst.b   d0
		rts
loc_10936:
		cmpi.b  #$1F,(byte_FFF807).l
		bne.s   loc_10960
		cmpi.b  #$30,(MAP_SPRITE_POSITION).l 
		bne.s   loc_10960
		btst    #4,(byte_FF9C5D).l
		beq.s   loc_10960
		bset    #0,(byte_FF9C54).l
loc_1095C:
		move.b  #1,d0
loc_10960:
		ori     #1,ccr
		rts
loc_10966:
		ori     #1,ccr
		rts

    ; End of function sub_108BC


; =============== S U B R O U T I N E =======================================

sub_1096C:
		bcc.w   return_10A6C
		tst.b   d0
		bne.s   loc_1098E
		movem.l (sp)+,d0-d1
		jsr     (j_FadeOutToBlack).l
		move.b  #$FF,(byte_FFF807).l
		move.b  #2,d0
		bra.w   sub_1005C
loc_1098E:
		cmpi.b  #1,d0
		bne.s   loc_109B6
		movem.l (sp)+,d0-d1
		jsr     (j_FadeOutToBlack).l
		move.b  #$FF,(byte_FFF807).l
		move.b  #9,d0
		move.b  #4,(CURRENT_MAP_ENTRANCE).l
		bra.w   sub_10050
loc_109B6:
		cmpi.b  #2,d0
		bne.s   loc_109CA
		movem.l (sp)+,d0
		move.b  #1,d0
		ori     #1,ccr
		rts
loc_109CA:
		cmpi.b  #3,d0
		bne.s   loc_10A00
		movem.l (sp)+,d0-d1
		jsr     (j_FadeOutToBlack).l
		bset    #4,(byte_FF9C5B).l
		clr.b   (byte_FFF81B).l
		move.b  #$FF,(byte_FFF807).l
		move.b  #$20,d0 
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
		bra.w   sub_10050
loc_10A00:
		cmpi.b  #4,d0
		bne.s   loc_10A14
		movem.l (sp)+,d0
		move.b  #1,d0
		ori     #1,ccr
		rts
loc_10A14:
		cmpi.b  #5,d0
		bne.s   loc_10A28
		movem.l (sp)+,d0
		move.b  #1,d0
		ori     #1,ccr
		rts
loc_10A28:
		cmpi.b  #6,d0
		bne.s   loc_10A3C
		movem.l (sp)+,d0
		move.b  #1,d0
		ori     #1,ccr
		rts
loc_10A3C:
		cmpi.b  #7,d0
		bne.s   loc_10A58
		movem.l (sp)+,d0
		move.b  #1,d0
		bset    #5,(byte_FF9C52).l
		ori     #1,ccr
		rts
loc_10A58:
		cmpi.b  #8,d0
		bne.s   return_10A6C
		movem.l (sp)+,d0
		move.b  #$1B,d0
		ori     #1,ccr
		rts
return_10A6C:
		rts

    ; End of function sub_1096C


; =============== S U B R O U T I N E =======================================

sub_10A6E:
		tst.b   (byte_FFF81D).l
		bpl.s   return_10A9E
		eori.b  #1,(byte_FFF81D).l
		move.w  (VERTICAL_SCROLL_DATA+2).l,d6
		btst    #0,(byte_FFF81D).l
		bne.s   loc_10A90
		subq.w  #4,d6
loc_10A90:
		addq.w  #2,d6
		jsr     (j_UpdateBackgroundVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_10A9E:
		rts

    ; End of function sub_10A6E


; =============== S U B R O U T I N E =======================================

sub_10AA0:
		move.w  #$C000,(VDP_Control).l
		move.w  #0,(VDP_Control).l
		move.w  #$F,d0
loc_10AB4:
		move.w  #$E0,(VDP_Data).l 
		dbf     d0,loc_10AB4
		nop
		nop
loc_10AC4:
		dbf     d0,loc_10AC4
		move.w  #$C000,(VDP_Control).l
		move.w  #0,(VDP_Control).l
		move.w  #$F,d0
		lea     (PALETTE_1_BASE).l,a0
loc_10AE2:
		move.w  (a0)+,(VDP_Data).l
		dbf     d0,loc_10AE2
		rts

    ; End of function sub_10AA0


; =============== S U B R O U T I N E =======================================

sub_10AEE:
		bsr.w   sub_10EE2
		bsr.w   sub_10F46
		bsr.s   sub_10AFC
		bsr.s   sub_10B26
		rts

    ; End of function sub_10AEE


; =============== S U B R O U T I N E =======================================

sub_10AFC:
		move.w  (word_FFF832).l,d0
		add.w   (word_FFF830).l,d0
		cmpi.w  #$18,d0
		bcs.s   loc_10B1E
		clr.w   d0
		clr.w   (word_FFF832).l
		move.w  #1,(word_FFF8D8).l
loc_10B1E:
		move.w  d0,(word_FFF830).l
		rts

    ; End of function sub_10AFC


; =============== S U B R O U T I N E =======================================

sub_10B26:
		move.w  (word_FFF830).l,d0
		cmpi.w  #4,d0
		beq.s   loc_10B46
		cmpi.w  #8,d0
		beq.s   loc_10B46
		cmpi.w  #$C,d0
		beq.s   loc_10B46
		cmpi.w  #$10,d0
		beq.s   loc_10B46
		rts
loc_10B46:
		subi.w  #4,d0
		lsl.w   #2,d0
		move.b  (MAP_SPRITE_FACING).l,d1
		andi.b  #$18,d1
		lsr.b   #1,d1
		or.b    d1,d0
		jmp     loc_10B5E(pc,d0.w)

    ; End of function sub_10B26

loc_10B5E:      bra.w   sub_10D2C
		bra.w   sub_10B9E
		bra.w   sub_10D26
		bra.w   sub_10BA4
		bra.w   sub_10DE6
		bra.w   sub_10D92
		bra.w   sub_10E0A
		bra.w   sub_10DBC
		bra.w   sub_10DF2
		bra.w   sub_10DA0
		bra.w   sub_10E16
		bra.w   sub_10DCA
		bra.w   sub_10DFE
		bra.w   sub_10DAE
		bra.w   sub_10E22
		bra.w   sub_10DD8

; =============== S U B R O U T I N E =======================================

sub_10B9E:
		move.b  #6,d0
		bra.s   loc_10BA8

    ; End of function sub_10B9E


; =============== S U B R O U T I N E =======================================

sub_10BA4:
		move.b  #$FA,d0
loc_10BA8:
		move.b  #$FB,d1
		bsr.w   sub_10C60
		move.w  #9,d7
loc_10BB4:
		bsr.s   sub_10BBC
		dbf     d7,loc_10BB4
		rts

    ; End of function sub_10BA4


; =============== S U B R O U T I N E =======================================

sub_10BBC:
		bsr.s   sub_10C00
		mulu.w  #$12,d2
		move.w  (a0,d2.w),(a1)
		move.w  6(a0,d2.w),2(a1)
		move.w  $C(a0,d2.w),4(a1)
		move.w  2(a0,d2.w),$4E(a1)
		move.w  8(a0,d2.w),$50(a1)
		move.w  $E(a0,d2.w),$52(a1)
		move.w  4(a0,d2.w),$9C(a1)
		move.w  $A(a0,d2.w),$9E(a1)
		move.w  $10(a0,d2.w),$A0(a1)
		addq.w  #6,a1
		addq.b  #1,d1
		adda.w  d4,a2
		adda.w  d4,a3
		rts

    ; End of function sub_10BBC


; =============== S U B R O U T I N E =======================================

sub_10C00:
		bsr.w   sub_10CCE
		move.w  d2,d5
		andi.w  #$7000,d5
		beq.s   loc_10C22
		cmp.w   (word_FFF8D2).l,d5
		beq.s   loc_10C22
		movea.l (dword_FFF918).l,a0
		move.w  d3,d2
		andi.w  #$3F,d2 
		rts
loc_10C22:
		movea.l (dword_FFF910).l,a0
		move.w  d2,d5
		andi.w  #$C00,d5
		bne.s   loc_10C46
		andi.w  #$3FF,d2
		cmpi.w  #$294,d2
		bcs.s   return_10C44
		subi.w  #$294,d2
		movea.l (dword_FFF914).l,a0
return_10C44:
		rts
loc_10C46:
		movea.l (dword_FFF91C).l,a0
		lsr.w   #6,d3
		move.w  d3,d2
		andi.w  #$F,d2
		rts

    ; End of function sub_10C00

		bsr.w   sub_10D20
		bsr.w   sub_10C00
		rts

; =============== S U B R O U T I N E =======================================

sub_10C60:
		add.b   (MAP_SPRITE_POSITION).l,d0
		add.b   (MAP_SPRITE_POSITION+1).l,d1

    ; End of function sub_10C60


; =============== S U B R O U T I N E =======================================

sub_10C6C:
		ext.w   d0
		ext.w   d1

    ; End of function sub_10C6C


; =============== S U B R O U T I N E =======================================

sub_10C70:
		bsr.s   sub_10CA4
		bcc.s   loc_10C8C
		lea     (MAP_DATA).l,a2
		suba.w  d2,a2
		lea     (byte_FF72EA).l,a3
		suba.w  d2,a3
		lea     (byte_FF5200).l,a1
		rts
loc_10C8C:
		lea     (MAP_DATA).l,a2
		adda.w  d2,a2
		lea     (byte_FF72EA).l,a3
		adda.w  d2,a3
		lea     (byte_FF5200).l,a1
		rts

    ; End of function sub_10C70


; =============== S U B R O U T I N E =======================================

sub_10CA4:
		move.b  (MAP_WIDTH_0).l,d2
		ext.w   d2
		add.w   d2,d2
		move.w  d2,d4
		tst.w   d1
		bmi.s   loc_10CBE
		mulu.w  d1,d2
		add.w   d0,d2
		add.w   d0,d2
		tst.b   d0
		rts
loc_10CBE:
		neg.w   d1
		mulu.w  d1,d2
		sub.w   d0,d2
		sub.w   d0,d2
		neg.w   d1
		ori     #1,ccr
		rts

    ; End of function sub_10CA4


; =============== S U B R O U T I N E =======================================

sub_10CCE:
		cmp.b   (MAP_WIDTH_0).l,d0
		bcc.s   loc_10CE6
		cmp.b   (MAP_HEIGHT_0).l,d1
		bcc.s   loc_10CE6
		move.w  (a2),d2
		move.w  (a3),d3
		tst.b   d0
		rts
loc_10CE6:
		move.w  (word_FFF8DE).l,d2
		move.w  #0,d3
		ori     #1,ccr
		rts

    ; End of function sub_10CCE

byte_10CF6:     dc.b 0
byte_10CF7:     dc.b $FF
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b 0

; =============== S U B R O U T I N E =======================================

sub_10CFE:
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		move.b  (MAP_SPRITE_FACING).l,d2
		andi.b  #$18,d2
		lsr.b   #2,d2
		ext.w   d2
		add.b   byte_10CF6(pc,d2.w),d0
		add.b   byte_10CF7(pc,d2.w),d1

    ; End of function sub_10CFE


; =============== S U B R O U T I N E =======================================

sub_10D20:
		bsr.w   sub_10C6C
		bra.s   sub_10CCE

    ; End of function sub_10D20


; =============== S U B R O U T I N E =======================================

sub_10D26:
		move.b  #4,d1
		bra.s   loc_10D30

    ; End of function sub_10D26


; =============== S U B R O U T I N E =======================================

sub_10D2C:
		move.b  #$FB,d1
loc_10D30:
		move.b  #$FA,d0
		bsr.w   sub_10C60
loc_10D38:
		move.w  #$C,d7
loc_10D3C:
		bsr.s   sub_10D44
		dbf     d7,loc_10D3C
		rts

    ; End of function sub_10D2C


; =============== S U B R O U T I N E =======================================

sub_10D44:
		bsr.w   sub_10C00
		mulu.w  #$12,d2
		move.w  (a0,d2.w),(a1)
		move.w  2(a0,d2.w),2(a1)
		move.w  4(a0,d2.w),4(a1)
		move.w  6(a0,d2.w),$4E(a1)
		move.w  8(a0,d2.w),$50(a1)
		move.w  $A(a0,d2.w),$52(a1)
		move.w  $C(a0,d2.w),$9C(a1)
		move.w  $E(a0,d2.w),$9E(a1)
		move.w  $10(a0,d2.w),$A0(a1)
		addq.w  #6,a1
		addq.b  #1,d0
		addq.w  #2,a2
		addq.w  #2,a3
		rts

    ; End of function sub_10D44


; =============== S U B R O U T I N E =======================================

sub_10D8A:
		bsr.w   sub_10C70
		bra.w   loc_10D38

    ; End of function sub_10D8A


; =============== S U B R O U T I N E =======================================

sub_10D92:
		lea     (byte_FF5200).l,a1
		move.w  #$FED0,d2
		bra.w   loc_10E9A

    ; End of function sub_10D92


; =============== S U B R O U T I N E =======================================

sub_10DA0:
		lea     (byte_FF524E).l,a1
		move.w  #$FECA,d2
		bra.w   loc_10E9A

    ; End of function sub_10DA0


; =============== S U B R O U T I N E =======================================

sub_10DAE:
		lea     (byte_FF529C).l,a1
		move.w  #$FEC6,d2
		bra.w   loc_10E9A

    ; End of function sub_10DAE


; =============== S U B R O U T I N E =======================================

sub_10DBC:
		lea     (byte_FF529C).l,a1
		move.w  #0,d2
		bra.w   loc_10E9A

    ; End of function sub_10DBC


; =============== S U B R O U T I N E =======================================

sub_10DCA:
		lea     (byte_FF524E).l,a1
		move.w  #4,d2
		bra.w   loc_10E9A

    ; End of function sub_10DCA


; =============== S U B R O U T I N E =======================================

sub_10DD8:
		lea     (byte_FF5200).l,a1
		move.w  #8,d2
		bra.w   loc_10E9A

    ; End of function sub_10DD8


; =============== S U B R O U T I N E =======================================

sub_10DE6:
		lea     (byte_FF529C).l,a1
		move.b  #$F8,d1
		bra.s   loc_10E2C

    ; End of function sub_10DE6


; =============== S U B R O U T I N E =======================================

sub_10DF2:
		lea     (byte_FF524E).l,a1
		move.b  #$F4,d1
		bra.s   loc_10E2C

    ; End of function sub_10DF2


; =============== S U B R O U T I N E =======================================

sub_10DFE:
		lea     (byte_FF5200).l,a1
		move.b  #$F0,d1
		bra.s   loc_10E2C

    ; End of function sub_10DFE


; =============== S U B R O U T I N E =======================================

sub_10E0A:
		lea     (byte_FF5200).l,a1
		move.b  #$E0,d1
		bra.s   loc_10E2C

    ; End of function sub_10E0A


; =============== S U B R O U T I N E =======================================

sub_10E16:
		lea     (byte_FF524E).l,a1
		move.b  #$E4,d1
		bra.s   loc_10E2C

    ; End of function sub_10E16


; =============== S U B R O U T I N E =======================================

sub_10E22:
		lea     (byte_FF529C).l,a1
		move.b  #$E8,d1
loc_10E2C:
		clr.w   d2
		bsr.s   sub_10E38
		bsr.s   sub_10E60
		jmp     (j_RequestVdpCommandQueueProcessing).l

    ; End of function sub_10E22


; =============== S U B R O U T I N E =======================================

sub_10E38:
		move.w  (VERTICAL_SCROLL_DATA+2).l,d0
		add.b   d1,d0
		lsl.w   #5,d0
		move.w  (HORIZONTAL_SCROLL_DATA+2).l,d1
		add.w   d2,d1
		addi.w  #$1C,d1
		lsr.w   #1,d1
		neg.b   d1
		andi.b  #$FE,d1
		add.b   d1,d0
		lsr.w   #1,d0
		ori.w   #$E000,d0
		rts

    ; End of function sub_10E38


; =============== S U B R O U T I N E =======================================

sub_10E60:
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a0
		move.w  #$26,d7 
loc_10E6A:
		movea.l a0,a2
		move.w  #$FFFF,(a0)+
		move.w  d0,(a0)+
		addq.b  #1,(VDP_COMMAND_COUNTER).l
loc_10E78:
		move.w  (a1)+,(a0)+
		addq.w  #1,(a2)
		dbf     d7,loc_10E88
		move.l  a0,(VDP_COMMAND_QUEUE_POINTER).l
		rts
loc_10E88:
		addi.w  #2,d0
		move.b  d0,d1
		andi.b  #$7F,d1 
		bne.s   loc_10E78
		subi.w  #$80,d0 
		bra.s   loc_10E6A

    ; End of function sub_10E60


; START OF FUNCTION CHUNK FOR sub_10D92

loc_10E9A:
		move.b  #$F8,d1
		bsr.s   sub_10E38
		bsr.s   sub_10EA8
		jmp     (j_RequestVdpCommandQueueProcessing).l

; END OF FUNCTION CHUNK FOR sub_10D92


; =============== S U B R O U T I N E =======================================

sub_10EA8:
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a0
		move.w  #$1D,d7
loc_10EB2:
		movea.l a0,a2
		move.w  #$BFFF,(a0)+
		move.w  d0,(a0)+
		addq.b  #1,(VDP_COMMAND_COUNTER).l
loc_10EC0:
		move.w  (a1)+,(a0)+
		addq.w  #1,(a2)
		dbf     d7,loc_10ED0
		move.l  a0,(VDP_COMMAND_QUEUE_POINTER).l
		rts
loc_10ED0:
		addi.w  #$80,d0 
		move.w  d0,d1
		andi.w  #$F80,d1
		bne.s   loc_10EC0
		andi.w  #$E07E,d0
		bra.s   loc_10EB2

    ; End of function sub_10EA8


; =============== S U B R O U T I N E =======================================

sub_10EE2:
		clr.w   (word_FFF8D8).l
		move.w  (word_FFF832).l,d6
		beq.s   loc_10F40
		move.w  (HORIZONTAL_SCROLL_DATA+2).l,d4
		move.w  (VERTICAL_SCROLL_DATA+2).l,d5
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$18,d0
		beq.s   loc_10F28
		cmpi.b  #$10,d0
		bcs.s   loc_10F14
		beq.s   loc_10F2E
		add.w   d4,d6
		bra.s   loc_10F18
loc_10F14:
		sub.w   d6,d4
		move.w  d4,d6
loc_10F18:
		andi.w  #$1FF,d6
		jsr     (j_UpdateBackgroundHScrollData).l
		jmp     (j_EnableDmaQueueProcessing).l
loc_10F28:
		sub.w   d6,d5
		move.w  d5,d6
		bra.s   loc_10F30
loc_10F2E:
		add.w   d5,d6
loc_10F30:
		andi.w  #$FF,d6
		jsr     (j_UpdateBackgroundVScrollData).l
		jmp     (j_EnableDmaQueueProcessing).l
loc_10F40:
		movem.l (sp)+,d0
		rts

    ; End of function sub_10EE2


; =============== S U B R O U T I N E =======================================

sub_10F46:
		move.b  (MAP_SPRITE_FACING).l,d2
		andi.b  #$18,d2
		beq.s   loc_10F70
		cmpi.b  #$10,d2
		bcs.s   loc_10F64
		beq.s   loc_10F7A
		move.w  (word_FFF832).l,d0
		clr.w   d1
		bra.s   loc_10F84
loc_10F64:
		move.w  (word_FFF832).l,d0
		neg.w   d0
		clr.w   d1
		bra.s   loc_10F84
loc_10F70:
		clr.w   d0
		move.w  (word_FFF832).l,d1
		bra.s   loc_10F84
loc_10F7A:
		clr.w   d0
		move.w  (word_FFF832).l,d1
		neg.w   d1
loc_10F84:
		lea     (byte_FF5010).l,a0
		move.w  #$1E,d7
loc_10F8E:
		add.w   d0,4(a0)
		add.w   d1,6(a0)
		lea     $10(a0),a0
		dbf     d7,loc_10F8E
		rts

    ; End of function sub_10F46


; =============== S U B R O U T I N E =======================================

sub_10FA0:
		bsr.s   sub_10FB0
		bsr.w   sub_10FFA
		bsr.w   sub_10FEE
		bsr.w   sub_112BA
		rts

    ; End of function sub_10FA0


; =============== S U B R O U T I N E =======================================

sub_10FB0:
		clr.w   (word_FFF830).l
		clr.w   (word_FFF832).l
		clr.w   (word_FFF834).l 
		move.w  #$E000,(word_FFF8D6).l
		move.w  #$8C00,d0
		jsr     (j_SetVdpReg).l
		move.w  #$FFE4,d6
		jsr     (j_UpdateBackgroundHScrollData).l
		move.w  #8,d6
		jsr     (j_UpdateBackgroundVScrollData).l
		jmp     (j_EnableDmaQueueProcessing).l

    ; End of function sub_10FB0


; =============== S U B R O U T I N E =======================================

sub_10FEE:
		jsr     (j_ClearSpriteTable).l
		bsr.w   sub_1106C
		rts

    ; End of function sub_10FEE


; =============== S U B R O U T I N E =======================================

sub_10FFA:
		move.w  #$8F02,d0
		jsr     (j_SetVdpReg).l
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		subi.b  #6,d0
		subi.b  #5,d1
		ext.w   d0
		ext.w   d1
		move.w  #9,d7
		move.w  #$6000,d6
loc_11024:
		movem.w d0-d1/d6-d7,-(sp)
		bsr.w   sub_10D8A
		movem.w (sp)+,d0-d1/d6-d7
		bsr.s   sub_1103C
		addq.b  #1,d1
		ext.w   d1
		dbf     d7,loc_11024
		rts

    ; End of function sub_10FFA


; =============== S U B R O U T I N E =======================================

sub_1103C:
		lea     (byte_FF5200).l,a0
		move.w  #2,d5
loc_11046:
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  #$26,d4 
loc_11058:
		move.w  (a0)+,(VDP_Data).l
		dbf     d4,loc_11058
		addi.w  #$80,d6 
		dbf     d5,loc_11046
		rts

    ; End of function sub_1103C


; =============== S U B R O U T I N E =======================================

sub_1106C:
		movem.l a0-a1,-(sp)
		bsr.s   sub_1107A
		bsr.s   sub_11092
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_1106C


; =============== S U B R O U T I N E =======================================

sub_1107A:
		lea     (SPRITE_22_PROPERTIES).l,a1
		move.w  #$1F,d7
loc_11084:
		clr.w   (a1)+
		move.b  #$A,(a1)
		addq.w  #6,a1
		dbf     d7,loc_11084
		rts

    ; End of function sub_1107A


; =============== S U B R O U T I N E =======================================

sub_11092:
		lea     (MAP_SPRITE_POSITION).l,a0
		lea     (SPRITE_22_PROPERTIES).l,a1
		move.w  #$1F,d7
loc_110A2:
		tst.w   (a0)
		bmi.w   return_1111C
		cmpi.w  #$758,4(a0)
		bcs.w   loc_11114
		cmpi.w  #$8C0,4(a0)
		bcc.s   loc_11114
		cmpi.w  #$758,6(a0)
		bcs.s   loc_11114
		cmpi.w  #$8C0,6(a0)
		bcc.s   loc_11114
		move.w  6(a0),d0
		subi.w  #$710,d0
		move.w  d0,(a1)+
		addq.w  #2,a1
		move.b  2(a0),d0
		lsr.b   #2,d0
		andi.w  #6,d0
		move.w  2(a0),d1
		move.w  d1,d2
		andi.w  #$6000,d2
		andi.w  #$F,d1
		mulu.w  #$36,d1 
		addi.w  #$100,d1
		or.w    d2,d1
		add.w   word_1111E(pc,d0.w),d1
		btst    #5,9(a0)
		beq.s   loc_11108
		addi.w  #9,d1
loc_11108:
		move.w  d1,(a1)+
		move.w  4(a0),d0
		subi.w  #$70C,d0
		move.w  d0,(a1)+
loc_11114:
		lea     $10(a0),a0
		dbf     d7,loc_110A2
return_1111C:
		rts

    ; End of function sub_11092

word_1111E:     dc.w 0
		dc.w $824
		dc.w $12
		dc.w $24

; =============== S U B R O U T I N E =======================================

; Set sprite direction

sub_11126:
		movem.l d0-d2/d7-a1,-(sp)
		lsl.w   #4,d0
		lea     (MAP_SPRITE_POSITION).l,a0
		andi.b  #$E7,2(a0,d0.w)
		lsl.b   #3,d1
		or.b    d1,2(a0,d0.w)
		bsr.w   sub_1106C
		movem.l (sp)+,d0-d2/d7-a1
		rts

    ; End of function sub_11126


; =============== S U B R O U T I N E =======================================

sub_11148:
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  (a0),d0
		move.b  1(a0),d1
		move.b  2(a0),d2
		andi.w  #$18,d2
		lsr.b   #2,d2
		add.b   byte_111DC(pc,d2.w),d0
		add.b   byte_111DD(pc,d2.w),d1
		cmpi.b  #$19,(DIALOG_INDEX).l
		bne.s   loc_11180
		cmpi.b  #$2A,d0 
		bne.s   loc_11180
		cmpi.b  #$31,d1 
		bne.s   loc_11180
		tst.b   d2
		bne.s   loc_111BE
loc_11180:
		movem.w d0-d2,-(sp)
		bsr.w   sub_10D20
		movem.w (sp)+,d0-d2
		andi.w  #$7C00,d3
		cmpi.w  #$800,d3
		bne.s   loc_1119E
		add.b   byte_111DC(pc,d2.w),d0
		add.b   byte_111DD(pc,d2.w),d1
loc_1119E:
		lea     (byte_FF5010).l,a0
		move.w  #$1E,d7
loc_111A8:
		tst.w   (a0)
		bmi.s   loc_111BE
		cmp.b   (a0),d0
		bne.s   loc_111B6
		cmp.b   1(a0),d1
		beq.s   loc_111E4
loc_111B6:
		adda.w  #$10,a0
		dbf     d7,loc_111A8
loc_111BE:
		jsr     (sub_304).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  #$1B0,d0        ; "No one is in that direction.[Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     (j_WaitForPlayerInput).l
		jsr     (j_CloseMessageWindow).l
		rts
byte_111DC:
		dc.b 0
byte_111DD:
		dc.b $FF
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b 0
loc_111E4:
		move.b  2(a0),d0
		movem.l d0/a0,-(sp)
		clr.b   d1
		move.w  $E(a0),d1
		move.w  2(a0),d0
		movem.w d0-d1,-(sp)
		btst    #6,9(a0)
		bne.s   loc_1123C
		move.b  3(a0),d0
		andi.w  #$F,d0
		lea     (byte_FFF80B).l,a1
		cmpi.b  #$7A,(a1,d0.w) 
		beq.s   loc_1123C
		cmpi.b  #$5D,(a1,d0.w) 
		beq.s   loc_1123C
		cmpi.b  #$99,(a1,d0.w)
		beq.s   loc_1123C
		lsl.b   #2,d2
		eori.b  #$10,d2
		andi.b  #$E7,2(a0)
		or.b    d2,2(a0)
		bsr.w   sub_1106C
loc_1123C:
		movem.w (sp)+,d0
		andi.w  #$7F0,d0
		lsr.w   #4,d0
		move.w  d0,(word_FFF8CC).l
		beq.s   loc_11254
		jsr     j_OpenPortraitWindow
loc_11254:
		move.b  3(a0),d3
		ext.w   d3
		lea     (byte_FFF80B).l,a0
		move.b  (a0,d3.w),d3
		movem.w (sp)+,d2
		move.w  d2,d1
		lsr.w   #6,d2
		andi.b  #$1F,d2
		rol.w   #5,d1
		andi.w  #$1F,d1
		move.b  (DIALOG_INDEX).l,d0
		ext.w   d0
		bsr.w   sub_17CCA
		bclr    #3,(byte_FF9C60).l
		bne.s   loc_112A4
		tst.w   (word_FFF8CC).l
		beq.s   loc_1129A
		jsr     j_ClosePortraitWindow
loc_1129A:
		movem.l (sp)+,d0/a0
		move.b  d0,2(a0)
		rts
loc_112A4:
		movem.l (sp)+,d0/a0
		movem.l (sp)+,d0
		movem.l (sp)+,d0-d1
		move.b  #1,d0
		ori     #1,ccr
		rts

    ; End of function sub_11148


; =============== S U B R O U T I N E =======================================

sub_112BA:
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		bsr.w   sub_10D20
		andi.w  #$C00,d2
		beq.s   loc_11302
		sndCom  SFX_DOOR_OPEN
		subi.w  #$1400,d3
		lsr.w   #6,d3
		bsr.w   sub_113EE
		bra.s   loc_11318
byte_112E0:
		sndCom  SFX_DOOR_OPEN
		move.b  #4,d1
		cmpi.w  #$C00,d2
		beq.s   loc_112F8
		move.b  #6,d1
		cmpi.w  #$800,d2
		bne.s   loc_11308
loc_112F8:
		move.b  (byte_FF9C87).l,d0
		and.b   d1,d0
		bne.s   loc_11308
loc_11302:
		ori     #1,ccr
		rts
loc_11308:
		andi.w  #$7C00,d3
		beq.s   loc_11302
		subi.w  #$1400,d3
		lsr.w   #6,d3
		bsr.w   sub_113B8
loc_11318:
		lea     (VDP_Data).l,a6
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		lea     byte_113F4(pc), a4
		lea     byte_1141C(pc), a5
		add.b   5(a4,d4.w),d0
		add.b   9(a5,d3.w),d0
		add.b   7(a4,d4.w),d1
		add.b   $B(a5,d3.w),d1
		move.w  6(a5,d3.w),d7
		move.w  4(a5,d3.w),d5
		movea.l (dword_FFF928).l,a5
loc_11350:
		movem.w d0/d5-d7,-(sp)
loc_11354:
		movem.w d0-d1/d5,-(sp)
		bsr.w   sub_10D20
		andi.w  #$F3FF,(a2)
		andi.w  #$803F,(a3)
		move.b  (byte_FFF807).l,d5
		ext.w   d5
		move.w  d5,(a5)+
		move.w  a2,(a5)+
		bsr.w   sub_10C00
		bsr.w   sub_116F0
		movem.w (sp)+,d0-d1/d5
		move.w  d6,d2
		andi.w  #$6F80,d2
		addq.w  #6,d6
		andi.w  #$7E,d6 
		or.w    d2,d6
		addq.w  #1,d0
		dbf     d5,loc_11354
		movem.w (sp)+,d0/d5-d7
		move.w  d6,d2
		andi.w  #$7E,d2 
		addi.w  #$180,d6
		andi.w  #$6F80,d6
		ori.w   #$6000,d6
		or.w    d2,d6
		addq.w  #1,d1
		dbf     d7,loc_11350
		move.l  a5,(dword_FFF928).l
		tst.b   d0
		rts

    ; End of function sub_112BA


; =============== S U B R O U T I N E =======================================

sub_113B8:
		move.b  (MAP_SPRITE_FACING).l,d4
		andi.w  #$18,d4

    ; End of function sub_113B8


; START OF FUNCTION CHUNK FOR sub_113EE

loc_113C2:
		move.w  (word_FFF8D6).l,d6
		andi.w  #$6FFE,d6
		move.w  d6,d5
		add.w   byte_113F4(pc,d4.w),d6
		add.w   byte_1141C(pc,d3.w),d6
		andi.w  #$7E,d6 
		add.w   byte_113F6(pc,d4.w),d5
		add.w   byte_1141E(pc,d3.w),d5
		andi.w  #$6F80,d5
		ori.w   #$6000,d5
		or.w    d5,d6
		rts

; END OF FUNCTION CHUNK FOR sub_113EE


; =============== S U B R O U T I N E =======================================

sub_113EE:
		move.w  #$20,d4 
		bra.s   loc_113C2

    ; End of function sub_113EE

byte_113F4:     dc.b 0
		dc.b $24
byte_113F6:     dc.b 6
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b $2A
		dc.b 7
		dc.b $80
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $24
		dc.b 9
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b $1E
		dc.b 7
		dc.b $80
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $24
		dc.b 7
		dc.b $80
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
byte_1141C:     dc.b 0
		dc.b 0
byte_1141E:     dc.b 0
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
		dc.b 1
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
		dc.b $FE
		dc.b $80
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
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
		dc.b $FE
		dc.b $80
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FA
		dc.b $FE
		dc.b $80
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 1
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
		dc.b $FE
		dc.b $80
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FA
		dc.b $FE
		dc.b $80
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $F4
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FE
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $F4
		dc.b $FE
		dc.b $80
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FE
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0

; =============== S U B R O U T I N E =======================================

sub_114EC:
		bsr.s   sub_11530
		bsr.s   sub_11554
		rts

    ; End of function sub_114EC


; =============== S U B R O U T I N E =======================================

sub_114F2:
		bsr.s   sub_114F8
		bsr.s   sub_11554
		rts

    ; End of function sub_114F2


; =============== S U B R O U T I N E =======================================

sub_114F8:
		movem.w d2,-(sp)
		bsr.w   sub_10CA4
		move.w  d2,d4
		movem.w (sp)+,d2
		lea     (MAP_DATA).l,a2
		andi.w  #$F000,(a2,d4.w)
		or.w    d2,(a2,d4.w)
		move.w  (a2,d4.w),d2
		lea     (byte_FF72EA).l,a2
		andi.w  #$803F,(a2,d4.w)
		or.w    d3,(a2,d4.w)
		move.w  (a2,d4.w),d3
		rts

    ; End of function sub_114F8


; =============== S U B R O U T I N E =======================================

sub_11530:
		movem.w d2,-(sp)
		bsr.w   sub_10CA4
		move.w  d2,d4
		movem.w (sp)+,d2
		lea     (MAP_DATA).l,a2
		move.w  d2,(a2,d4.w)
		lea     (byte_FF72EA).l,a2
		move.w  d3,(a2,d4.w)
		rts

    ; End of function sub_11530


; =============== S U B R O U T I N E =======================================

sub_11554:
		move.w  d2,d4
		andi.w  #$7000,d4
		beq.s   loc_11564
		cmp.w   (word_FFF8D2).l,d4
		bne.s   return_1156E
loc_11564:
		bsr.s   sub_11570
		bsr.s   sub_115A4
		bcs.s   return_1156E
		bsr.w   sub_116F0
return_1156E:
		rts

    ; End of function sub_11554


; =============== S U B R O U T I N E =======================================

sub_11570:
		movea.l (dword_FFF910).l,a0
		move.w  d2,d4
		andi.w  #$C00,d4
		beq.s   loc_1158E
		movea.l (dword_FFF91C).l,a0
		lsr.w   #6,d3
		move.w  d3,d2
		andi.w  #$F,d2
		bra.s   return_115A2
loc_1158E:
		andi.w  #$3FF,d2
		cmpi.w  #$294,d2
		bcs.s   return_115A2
		subi.w  #$294,d2
		movea.l (dword_FFF914).l,a0
return_115A2:
		rts

    ; End of function sub_11570


; =============== S U B R O U T I N E =======================================

sub_115A4:
		move.b  (MAP_SPRITE_POSITION).l,d4
		subq.b  #6,d4
		sub.b   d4,d0
		cmpi.b  #$D,d0
		bcc.s   loc_115F2
		move.b  (MAP_SPRITE_POSITION+1).l,d5
		subq.b  #5,d5
		sub.b   d5,d1
		cmpi.b  #$A,d1
		bcc.s   loc_115F2
		ext.w   d0
		mulu.w  #6,d0
		ext.w   d1
		mulu.w  #$180,d1
		move.w  (word_FFF8D6).l,d6
		move.w  d6,d3
		andi.w  #$6F80,d6
		add.w   d0,d3
		andi.w  #$7E,d3 
		or.w    d3,d6
		add.w   d1,d6
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		tst.b   d0
		rts
loc_115F2:
		ori     #1,ccr
		rts

    ; End of function sub_115A4


; =============== S U B R O U T I N E =======================================

sub_115F8:
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		subq.b  #6,d0
		subq.b  #5,d1
		move.w  (word_FFF8D6).l,d6
		andi.w  #$6FFE,d6
		move.b  (MAP_SPRITE_FACING).l,d7
		andi.b  #$18,d7
		beq.s   loc_11634
		cmpi.b  #$10,d7
		bne.s   loc_11642
		subi.w  #$180,d6
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		subq.b  #1,d1
		bra.s   loc_11642
loc_11634:
		addi.w  #$180,d6
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		addq.b  #1,d1
loc_11642:
		move.w  #9,d7
loc_11646:
		movem.w d0/d6-d7,-(sp)
		move.w  #$C,d7
loc_1164E:
		bsr.w   sub_10D20
		move.w  d2,d4
		andi.w  #$7000,d2
		beq.w   loc_116C4
		movea.l (dword_FFF910).l,a0
		cmp.w   (word_FFF8D4).l,d2
		beq.s   loc_11676
		cmp.w   (word_FFF8D2).l,d2
		beq.s   loc_11686
		bne.w   loc_116C4
loc_11676:
		move.w  d3,d2
		movea.l (dword_FFF918).l,a0
		andi.w  #$3F,d2 
		move.w  d2,d4
		bra.s   loc_1169E
loc_11686:
		move.w  d4,d2
		andi.w  #$C00,d2
		beq.s   loc_1169E
		movea.l (dword_FFF91C).l,a0
		lsr.w   #6,d3
		move.w  d3,d2
		andi.w  #$F,d2
		bra.s   loc_116B4
loc_1169E:
		move.w  d4,d2
		andi.w  #$3FF,d2
		cmpi.w  #$294,d2
		bcs.s   loc_116B4
		subi.w  #$294,d2
		movea.l (dword_FFF914).l,a0
loc_116B4:
		jsr     (j_DisableInterrupts).l
		bsr.w   sub_116F0
		jsr     (j_EnableInterrupts).l
loc_116C4:
		addq.b  #1,d0
		move.w  d6,d5
		andi.w  #$6F80,d6
		addq.w  #6,d5
		andi.b  #$7F,d5 
		or.b    d5,d6
		dbf     d7,loc_1164E
		movem.w (sp)+,d0/d6-d7
		addq.b  #1,d1
		addi.w  #$180,d6
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		dbf     d7,loc_11646
		rts

    ; End of function sub_115F8


; =============== S U B R O U T I N E =======================================

sub_116F0:
		mulu.w  #$12,d2
		adda.l  d2,a0
		lea     (VDP_Data).l,a6
		movem.w d6,-(sp)
		andi.b  #$7E,d6 
		cmpi.b  #$7E,d6 
		beq.w   loc_11776
		cmpi.b  #$7C,d6 
		beq.w   loc_1181E
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		addi.w  #$80,d6 
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		addi.w  #$80,d6 
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		rts
loc_11776:
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		andi.w  #$6F80,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		addi.w  #$80,d6 
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		andi.w  #$6F80,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		addi.w  #$100,d6
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		andi.w  #$6F80,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		rts
loc_1181E:
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		andi.w  #$6F80,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		addi.w  #$80,d6 
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		andi.w  #$6F80,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		movem.w d6,-(sp)
		addi.w  #$100,d6
		andi.w  #$6FFE,d6
		ori.w   #$6000,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		move.w  (a0)+,(a6)
		andi.w  #$6F80,d6
		move.w  d6,(VDP_Control).l
		move.w  #3,(VDP_Control).l
		move.w  (a0)+,(a6)
		movem.w (sp)+,d6
		rts

    ; End of function sub_116F0


; =============== S U B R O U T I N E =======================================

sub_118C6:
		jsr     sub_1D356
		bsr.w   sub_12D74
		cmp.b   (byte_FFF807).l,d0
		beq.s   loc_11902
		bsr.w   sub_1195C
		bsr.w   sub_11B4A
		bsr.w   sub_131A4
		bsr.w   sub_11EB2
		bsr.w   sub_11C5C
		bsr.w   sub_11FF8
		bsr.w   sub_17C70
		bclr    #7,(byte_FF9C52).l
		clr.b   (byte_FF9C57).l
loc_11902:
		bsr.w   sub_11D36
		bsr.s   sub_1190A
		rts

    ; End of function sub_118C6


; =============== S U B R O U T I N E =======================================

sub_1190A:
		move.b  (MAP_SPRITE_POSITION).l,d0
		move.b  (MAP_SPRITE_POSITION+1).l,d1
		bsr.w   sub_10D20
		move.w  (a2),(TILE_NUMBER).l
		move.w  (a2),(word_FFF8D2).l
		andi.w  #$7000,(word_FFF8D2).l
		andi.w  #$7000,(word_FFF8D4).l
		move.w  #2,(word_FFF8E2).l
		rts

    ; End of function sub_1190A


; =============== S U B R O U T I N E =======================================

sub_11940:
		lea     (byte_FF92EA).l,a0
		move.l  a0,(dword_FFF928).l
		move.w  #$7F,d7 
loc_11950:
		move.l  #$FFFFFFFF,(a0)+
		dbf     d7,loc_11950
		rts

    ; End of function sub_11940


; =============== S U B R O U T I N E =======================================

sub_1195C:
		ext.w   d0
		move.b  d0,(byte_FFF807).l
		clr.w   d1
		move.b  (CURRENT_CHAPTER).l,d2
		subq.b  #1,d2
		movea.l (p_pt_Maps).l,a0
loc_11974:
		dbf     d0,loc_1197A
		bra.s   loc_11994
loc_1197A:
		move.b  $1B(a0),d3
		andi.b  #7,d3
		cmp.b   d3,d2
		bne.s   loc_1198E
		move.b  $1B(a0),d3
		lsr.b   #3,d3
		add.b   d3,d1
loc_1198E:
		lea     $20(a0),a0
		bra.s   loc_11974
loc_11994:
		move.w  d1,(word_FFF8E0).l
		move.l  (a0)+,(dword_FFF910).l
		move.l  (a0)+,(dword_FFF914).l
		move.l  (a0)+,(dword_FFF918).l
		move.l  (a0)+,(dword_FFF91C).l
		move.l  (a0)+,(dword_FFF920).l
		move.l  (a0)+,(dword_FFF924).l
		move.w  (a0)+,(word_FFF8DE).l
		move.b  (a0),d0
		lsr.b   #4,d0
		move.b  d0,(byte_FFF80A).l
		move.b  (a0)+,(byte_FFF80B).l
		andi.b  #$F,(byte_FFF80B).l
		tst.b   (a0)+
		tst.l   (a0)+
		move.b  (byte_FFF807).l,d0						; Set d0 to the map to be loaded
		lea     SpriteSetsByMap(pc), a0
		clr.w   d1
SpriteSetAssignmentLoop:
		tst.b   (a0,d1.w)
		bmi.s   SpriteSetAssignmentTableExhausted		; We've hit the end of the table if (a0,d1.w) is negative - get no sprite set and return
		cmp.b   (a0,d1.w),d0
		beq.s   SpriteSetAssignmentTableFound			; If (a0,d1.w) == d0 (map to be loaded), we've found our assignment
		addq.b  #2,d1
		bra.s   SpriteSetAssignmentLoop
SpriteSetAssignmentTableExhausted:
		move.l  #$FFFFFFFF,(MAP_SPRITE_DATA_POINTER).l
		move.b  #$FF,(DIALOG_INDEX).l
		rts
SpriteSetAssignmentTableFound:
		move.b  1(a0,d1.w),d0							; Set d0 to the sprite set to be loaded
		bsr.s   CheckSpriteSetConditions
		move.b  d0,(DIALOG_INDEX).l						; Set DIALOG_INDEX to the sprite set to be loaded
		ext.w   d0
		lsl.w   #2,d0
		movea.l (p_pt_SpriteSets).l,a0					; Get actual sprite set data
		move.l  (a0,d0.w),(MAP_SPRITE_DATA_POINTER).l
		rts

    ; End of function sub_1195C


; =============== S U B R O U T I N E =======================================

CheckSpriteSetConditions:
		cmpi.b  #3,d0					; Check for sprite set $03, Guardiana
		bne.s   CheckSpriteSet_00
		btst    #0,(byte_FF9C56).l
		bne.s   loc_11A46
		move.b  #$2D,d0 				; Load sprite set $2D, Varios and Lowe opening
		rts
loc_11A46:
		move.b  (byte_FF9C5B).l,d0
		andi.b  #$C,d0
		cmpi.b  #4,d0
		beq.s   UseSpriteSet_32
		move.b  #3,d0					; Load sprite set $03, normal Guardiana
		rts
UseSpriteSet_32:
		move.b  #$32,d0 				; Load sprite set $32, Guardiana party recruitment
		rts
CheckSpriteSet_00:
		cmpi.b  #0,d0					; Check for sprite set $00, Guardiana Castle
		bne.s   CheckSpriteSet_06
		tst.b   (byte_FF9C5A).l
		bpl.s   return_11A74
		move.b  #$2F,d0 				; Load sprite set $2F, Kane killing the king and Varios
return_11A74:
		rts
CheckSpriteSet_06:
		cmpi.b  #6,d0					; Check for sprite set $06, Alterone Castle
		bne.s   CheckSpriteSet_2E
		btst    #6,(byte_FF9C5A).l
		beq.w   return_SpriteSetUnchanged
		move.b  #$30,d0 				; Load sprite set $30, Alterone Castle post-battle
		rts
CheckSpriteSet_2E:
		cmpi.b  #$2E,d0 				; Check for sprite set $2E, Destroyed Guardiana
		bne.s   CheckSpriteSet_05
		btst    #1,(byte_FF9C59).l
		beq.s   return_SpriteSetUnchanged
		move.b  #4,d0					; Load sprite set $04, Alternate destroyed Guardiana
		rts
CheckSpriteSet_05:
		cmpi.b  #5,d0					; Check for sprite set $05, Alterone
		bne.s   CheckSpriteSet_09
		btst    #1,(byte_FF9C59).l
		bne.s   return_SpriteSetUnchanged
		move.b  #$31,d0 				; Load sprite set $31, Guards preventing entrance to Alterone
		rts
CheckSpriteSet_09:
		cmpi.b  #9,d0					; Check for sprite set $09, Shade Abbey
		bne.s   CheckSpriteSet_08
		btst    #4,(byte_FF9C5A).l
		beq.s   return_SpriteSetUnchanged
		move.b  #$33,d0 				; Load sprite set $33, Shade Abbey post-battle
		rts
CheckSpriteSet_08:
		cmpi.b  #8,d0					; Check for sprite set $08, Bustoke
		bne.s   CheckSpriteSet_0A
		btst    #3,(byte_FF9C5A).l
		beq.s   return_SpriteSetUnchanged
		move.b  #$34,d0 				; Load sprite set $34, Bustoke post-battle
		rts
CheckSpriteSet_0A:
		cmpi.b  #$A,d0					; Check for sprite set $0A, Pao 1
		bne.s   CheckSpriteSet_18
		btst    #2,(byte_FF9C59).l
		beq.s   return_SpriteSetUnchanged
		move.b  #$2C,d0 				; Load sprite set $2C, Vankar, Kokichi, and a priest
		rts
CheckSpriteSet_18:
		cmpi.b  #$18,d0					; Check for sprite set $18, Rudo
		bne.s   return_SpriteSetUnchanged
		btst    #7,(byte_FF9C56).l
		beq.s   return_SpriteSetUnchanged
		move.b  #$35,d0 				; Load sprite set $35, Alternate Rudo
		rts
return_SpriteSetUnchanged:
		rts

    ; End of function CheckSpriteSetConditions

SpriteSetsByMap:     dc.b MAP_GUARDIANA_CASTLE
		dc.b 0
		dc.b MAP_DEMON_CASTLE
		dc.b 33
		dc.b MAP_URANBATOL
		dc.b 2
		dc.b MAP_METAPHA
		dc.b 26
		dc.b MAP_GUARDIANA
		dc.b 3
		dc.b MAP_GUARDIANA_RUINED
		dc.b 46
		dc.b MAP_ALTERONE
		dc.b 5
		dc.b MAP_ALTERONE_CASTLE
		dc.b 6
		dc.b MAP_RINDO
		dc.b 7
		dc.b MAP_RINDO_SHIP
		dc.b 20
		dc.b MAP_MANARINA
		dc.b 15
		dc.b MAP_BUSTOKE
		dc.b 8
		dc.b MAP_WARAL
		dc.b 21
		dc.b MAP_RUDO
		dc.b 24
		dc.b MAP_PROMPT
		dc.b 16
		dc.b MAP_PROMPT_CASTLE
		dc.b 25
		dc.b MAP_RUNEFAUST
		dc.b 18
		dc.b MAP_RUNEFAUST_CASTLE
		dc.b 37
		dc.b MAP_DRAGONIA
		dc.b 17
		dc.b MAP_SHADE_ABBEY
		dc.b 9
		dc.b MAP_PAO1
		dc.b 10
		dc.b MAP_PAO2
		dc.b 11
		dc.b MAP_CABIN
		dc.b 13
		dc.b MAP_SHINING_PATH
		dc.b 23
		dc.b MAP_SHIP_DECK
		dc.b 22
		dc.b MAP_TOWER_OF_THE_ANCIENTS
		dc.b 34
		dc.w $FFFF

; =============== S U B R O U T I N E =======================================

sub_11B4A:
		clr.w   d0
		move.b  (byte_FFF80A).l,d0
		lsl.b   #2,d0
		movem.w d0,-(sp)
		movea.l (p_pt_MapTilesets).l,a0
		movea.l (a0,d0.w),a0
		lea     ($77C0).w,a1
		move.w  #$1000,d0
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movem.w (sp)+,d0
		movea.l (off_58010).l,a0
		movea.l (a0,d0.w),a0
		clr.w   d0
		move.b  (byte_FFF80B).l,d0
		lsl.b   #2,d0
		movea.l (a0,d0.w),a0
		lea     ($97C0).l,a1
		move.w  #$1000,d0
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		bsr.s   sub_11BA0
		rts

    ; End of function sub_11B4A


; =============== S U B R O U T I N E =======================================

sub_11BA0:
		clr.w   (word_FFF8EC).l
		lea     byte_12C00(pc), a0
loc_11BAA:
		move.b  (a0),d0
		bmi.s   return_11C0A
		cmp.b   (byte_FFF80A).l,d0
		bne.s   loc_11C04
		move.b  1(a0),d0
		cmp.b   (byte_FFF80B).l,d0
		bne.s   loc_11C04
		move.b  3(a0),(byte_FFF81F).l
		move.w  4(a0),(word_FFF8EA).l
		move.w  6(a0),(word_FFF8EC).l
		move.l  8(a0),(dword_FFF938).l
		move.l  $C(a0),(dword_FFF93C).l
		movea.l (dword_FFF938).l,a0
		move.l  (a0),(dword_FFF938).l
		movea.l (dword_FFF93C).l,a0
		move.l  (a0),(dword_FFF93C).l
		rts
loc_11C04:
		lea     $10(a0),a0
		bra.s   loc_11BAA
return_11C0A:
		rts

    ; End of function sub_11BA0


; =============== S U B R O U T I N E =======================================

sub_11C0C:
		move.w  (word_FFF8EC).l,d0
		beq.s   return_11C5A
		move.b  (byte_FFF820).l,d0
		move.b  (byte_FFF81F).l,d1
		andi.b  #$7F,d1 
		and.b   d1,d0
		bne.s   return_11C5A
		movea.l (dword_FFF938).l,a0
		bchg    #7,(byte_FFF81F).l
		beq.s   loc_11C3E
		movea.l (dword_FFF93C).l,a0
loc_11C3E:
		movea.w (word_FFF8EA).l,a1
		move.w  (word_FFF8EC).l,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
return_11C5A:
		rts

    ; End of function sub_11C0C


; =============== S U B R O U T I N E =======================================

sub_11C5C:
		lea     (byte_FF5010).l,a1
		lea     (MAP_SPRITES_LIST).l,a2
		move.w  #$FFFF,(a1)
		movea.l (MAP_SPRITE_DATA_POINTER).l,a0
		cmpa.l  #$FFFFFFFF,a0
		beq.w   loc_11D22
		move.w  #11,d7
loc_11C80:
		move.b  #$FF,(a2)+
		dbf     d7,loc_11C80
                
		move.w  #30,d7
		clr.w   d4
loc_11C8E:
		move.w  (a0)+,(a1)+
		bmi.w   loc_11D22
		move.b  (a0)+,d0
		move.b  d0,d2
		andi.b  #$C0,d0
		lsr.b   #3,d0
		ori.b   #$40,d0 
		move.b  d0,(a1)+
		move.b  -2(a1),d0
		andi.b  #$80,d0
		lsr.b   #2,d0
		or.b    d0,-1(a1)
		andi.b  #$7F,-2(a1) 
		move.b  (a0)+,d1
		lea     (MAP_SPRITES_LIST).l,a2
		clr.w   d0
loc_11CC2:
		cmp.b   (a2,d0.w),d1
		beq.s   loc_11CE2
		cmpi.b  #$FF,(a2,d0.w)
		beq.s   loc_11CD4
		addq.w  #1,d0
		bra.s   loc_11CC2
loc_11CD4:
		move.b  d1,(a2,d0.w)
		addq.b  #1,d0
		move.b  d0,(a1)+
		bsr.w   sub_11D84       
		bra.s   loc_11CE6
loc_11CE2:
		addq.b  #1,d0
		move.b  d0,(a1)+
loc_11CE6:
		addq.w  #4,a1
		clr.b   (a1)+
		move.b  d2,d0
		move.b  d2,d1
		andi.b  #$20,d0 
		add.b   d0,d0
		move.b  d0,(a1)+
		andi.w  #7,d2
		move.b  byte_11D2E(pc,d2.w),d2
		move.b  d2,(a1)+
		move.b  d2,d0
		beq.s   loc_11D0E
		bmi.s   loc_11D0E
		move.w  d7,d0
		ext.l   d0
		divu.w  d2,d0
		swap    d0
loc_11D0E:
		move.b  d0,(a1)+
		clr.b   (a1)+
		move.b  (a0)+,(a1)+
		move.b  (a0)+,(a1)+
		lsl.b   #3,d1
		andi.b  #$C0,d1
		move.b  d1,(a1)+
		dbf     d7,loc_11C8E
loc_11D22:
		clr.w   d0
		jsr     j_GetMapSprite
		bsr.s   sub_11D84       
		rts

    ; End of function sub_11C5C

byte_11D2E:     dc.b 0
		dc.b 1
		dc.b 3
		dc.b 7
		dc.b $F
		dc.b $1F
		dc.b $3F
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_11D36:
		lea     (word_FF5014).l,a1
		move.w  #$1E,d7
@Loop:
		tst.w   -4(a1)
		bmi.s   @Return
		bsr.s   sub_11D52
		lea     $A(a1),a1
		dbf     d7,@Loop
@Return:
		rts

    ; End of function sub_11D36


; =============== S U B R O U T I N E =======================================

sub_11D52:
		move.b  -4(a1),d0
		sub.b   (MAP_SPRITE_POSITION).l,d0
		ext.w   d0
		mulu.w  #$18,d0
		addi.w  #$800,d0
		move.w  d0,(a1)+
		move.b  -5(a1),d0
		sub.b   (MAP_SPRITE_POSITION+1).l,d0
		ext.w   d0
		mulu.w  #$18,d0
		addi.w  #$7F8,d0
		move.w  d0,(a1)+
		andi.w  #$E07F,(a1)+
		rts

    ; End of function sub_11D52


; =============== S U B R O U T I N E =======================================

; Load map sprite

sub_11D84:
		movem.l d2/d4/d7-a1,-(sp)
		mulu.w  #3,d0
		movea.l (p_pt_MapSprites+8).l,a0
		bsr.s   sub_11DAA
		movea.l (p_pt_MapSprites).l,a0
		bsr.s   sub_11DAA
		movea.l (p_pt_MapSprites+4).l,a0
		bsr.s   sub_11DAA
		movem.l (sp)+,d2/d4/d7-a1
		rts

    ; End of function sub_11D84


; =============== S U B R O U T I N E =======================================

sub_11DAA:
		movem.w d0-d1,-(sp)
		lsl.w   #2,d1
		movea.l (a0,d1.w),a0
		movem.w d0,-(sp)
		jsr     (sub_300).l
		lea     (FF3000_LOADING_SPACE).l,a0
		movem.w (sp)+,d0
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		movem.w (sp)+,d0-d1
		addq.w  #1,d0
		rts

    ; End of function sub_11DAA


; =============== S U B R O U T I N E =======================================

sub_11DE6:
		movem.l d2/d4/d7-a1,-(sp)
		mulu.w  #3,d0
		movea.l (p_pt_MapSprites+8).l,a0
		bsr.s   sub_11E0C
		movea.l (p_pt_MapSprites+4).l,a0
		bsr.s   sub_11E0C
		movea.l (p_pt_MapSprites).l,a0
		bsr.s   sub_11E0C
		movem.l (sp)+,d2/d4/d7-a1
		rts

    ; End of function sub_11DE6


; =============== S U B R O U T I N E =======================================

sub_11E0C:
		movem.w d0-d1,-(sp)
		lsl.w   #2,d1
		movea.l (a0,d1.w),a0
		movem.w d0,-(sp)
		jsr     (sub_300).l
		lea     (FF3000_LOADING_SPACE).l,a0
		bsr.w   sub_11F00
		movem.w (sp)+,d0
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		movem.w (sp)+,d0-d1
		addq.w  #1,d0
		rts

    ; End of function sub_11E0C


; =============== S U B R O U T I N E =======================================

sub_11E4C:
		movem.l d2/d4/d7-a1,-(sp)
		mulu.w  #3,d0
		movea.l (p_pt_MapSprites+8).l,a0
		bsr.s   sub_11E72
		movea.l (p_pt_MapSprites+4).l,a0
		bsr.s   sub_11E72
		movea.l (p_pt_MapSprites).l,a0
		bsr.s   sub_11E72
		movem.l (sp)+,d2/d4/d7-a1
		rts

    ; End of function sub_11E4C


; =============== S U B R O U T I N E =======================================

sub_11E72:
		movem.w d0-d1,-(sp)
		lsl.w   #2,d1
		movea.l (a0,d1.w),a0
		movem.w d0,-(sp)
		jsr     (sub_300).l
		lea     (FF3000_LOADING_SPACE).l,a0
		bsr.w   sub_11F7C
		movem.w (sp)+,d0
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		movem.w (sp)+,d0-d1
		addq.w  #1,d0
		rts

    ; End of function sub_11E72


; =============== S U B R O U T I N E =======================================

sub_11EB2:
		movea.l (dword_FFF924).l,a0
		lea     (PALETTE_1_BASE).l,a1
		clr.w   (a1)+
		move.w  #$E,d7
loc_11EC4:
		move.w  (a0)+,(a1)+
		dbf     d7,loc_11EC4
		lea     byte_11EE0(pc), a0
		lea     (PALETTE_4_BASE).l,a1
		move.w  #$F,d0
loc_11ED8:
		move.w  (a0)+,(a1)+
		dbf     d0,loc_11ED8
		rts

    ; End of function sub_11EB2

byte_11EE0:     dc.b 0
		dc.b 0
		dc.b $E
		dc.b $EE
		dc.b $A
		dc.b $88
		dc.b 6
		dc.b $44
		dc.b 6
		dc.b $A0
		dc.b 2
		dc.b $40
		dc.b 0
		dc.b $24
		dc.b $C
		dc.b $84
		dc.b 4
		dc.b $8C
		dc.b 2
		dc.b $46
		dc.b 2
		dc.b $2A
		dc.b 2
		dc.b $AC
		dc.b 8
		dc.b $26
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0

; =============== S U B R O U T I N E =======================================

sub_11F00:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF3303).l,a1
		bsr.s   sub_11F24
		lea     (byte_FF3120).l,a0
		lea     (byte_FF3423).l,a1
		bsr.s   sub_11F24
		lea     (byte_FF3240).l,a0
		rts

    ; End of function sub_11F00


; =============== S U B R O U T I N E =======================================

sub_11F24:
		bsr.s   sub_11F2C
		bsr.s   sub_11F2C
		bsr.s   sub_11F2C
		rts

    ; End of function sub_11F24


; =============== S U B R O U T I N E =======================================

sub_11F2C:
		bsr.s   sub_11F3A
		bsr.s   sub_11F3A
		bsr.s   sub_11F3A
		bsr.s   sub_11F3A
		lea     $5C(a0),a0
		rts

    ; End of function sub_11F2C


; =============== S U B R O U T I N E =======================================

sub_11F3A:
		bsr.s   sub_11F4A
		bsr.s   sub_11F4A
		bsr.s   sub_11F4A
		suba.w  #$5F,a0 
		lea     $128(a1),a1
		rts

    ; End of function sub_11F3A


; =============== S U B R O U T I N E =======================================

sub_11F4A:
		moveq   #3,d7
loc_11F4C:
		move.b  (a0),d0
		move.b  d0,d1
		lsr.b   #4,d0
		andi.b  #$F,d1
		move.b  d0,(a1)
		move.b  d1,4(a1)
		addq.w  #4,a0
		move.b  (a0),d0
		move.b  d0,d1
		andi.b  #$F0,d0
		lsl.b   #4,d1
		or.b    d0,(a1)
		or.b    d1,4(a1)
		addq.w  #4,a0
		subq.w  #1,a1
		dbf     d7,loc_11F4C
		suba.w  #$5C,a1 
		rts

    ; End of function sub_11F4A


; =============== S U B R O U T I N E =======================================

sub_11F7C:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF329C).l,a1
		bsr.s   sub_11FA0
		lea     (byte_FF3120).l,a0
		lea     (byte_FF33BC).l,a1
		bsr.s   sub_11FA0
		lea     (byte_FF3240).l,a0
		rts

    ; End of function sub_11F7C


; =============== S U B R O U T I N E =======================================

sub_11FA0:
		bsr.s   sub_11FA8
		bsr.s   sub_11FA8
		bsr.s   sub_11FA8
		rts

    ; End of function sub_11FA0


; =============== S U B R O U T I N E =======================================

sub_11FA8:
		bsr.s   sub_11FB6
		bsr.s   sub_11FB6
		bsr.s   sub_11FB6
		bsr.s   sub_11FB6
		lea     $5C(a0),a0
		rts

    ; End of function sub_11FA8


; =============== S U B R O U T I N E =======================================

sub_11FB6:
		bsr.s   sub_11FC6
		bsr.s   sub_11FC6
		bsr.s   sub_11FC6
		suba.w  #$5F,a0 
		suba.w  #$128,a1
		rts

    ; End of function sub_11FB6


; =============== S U B R O U T I N E =======================================

sub_11FC6:
		moveq   #3,d7
loc_11FC8:
		move.b  (a0),d0
		move.b  d0,d1
		lsl.b   #4,d0
		andi.b  #$F0,d1
		move.b  d1,(a1)
		move.b  d0,-4(a1)
		addq.w  #4,a0
		move.b  (a0),d0
		move.b  d0,d1
		andi.b  #$F,d0
		lsr.b   #4,d1
		or.b    d1,(a1)
		or.b    d0,-4(a1)
		addq.w  #4,a0
		addq.w  #1,a1
		dbf     d7,loc_11FC8
		lea     $5C(a1),a1
		rts

    ; End of function sub_11FC6


; =============== S U B R O U T I N E =======================================

sub_11FF8:
		cmpi.b  #$2D,(DIALOG_INDEX).l 
		bne.s   loc_12008
		bsr.w   sub_16306
		rts
loc_12008:
		cmpi.b  #0,(DIALOG_INDEX).l
		bne.s   loc_12058
		btst    #0,(byte_FF9C59).l
		beq.w   loc_1203C
		move.b  #$14,(byte_FF50D0).l
		move.b  #$F,(byte_FF50D1).l
		clr.b   (byte_FF50DD).l
		ori.b   #$18,(byte_FF50D2).l
loc_1203C:
		btst    #3,(byte_FF9C5B).l
		beq.s   return_12056
		move.b  #9,(byte_FF5180).l
		move.b  #$FF,(byte_FF50E1).l
return_12056:
		rts
loc_12058:
		cmpi.b  #4,(DIALOG_INDEX).l
		bne.s   loc_1207A
		tst.b   (byte_FF9C56).l
		bpl.s   return_12078
		move.b  #$FF,(byte_FF5111).l
		clr.b   (byte_FF511D).l
return_12078:
		rts
loc_1207A:
		cmpi.b  #$2E,(DIALOG_INDEX).l 
		bne.s   loc_120AC
		tst.b   (byte_FF9C56).l
		bpl.w   loc_1209C
		move.b  #$FF,(word_FF5080+1).l
		clr.b   (byte_FF508D).l
loc_1209C:
		btst    #3,(byte_FF9C5C).l
		bne.s   return_120AA
		bsr.w   sub_16306
return_120AA:
		rts
loc_120AC:
		cmpi.b  #$2F,(DIALOG_INDEX).l 
		bne.s   loc_120F0
		btst    #1,(byte_FF9C59).l
		beq.s   return_120EE
		move.b  #$FF,(byte_FF5011).l
		move.b  #$FF,(word_FF5030+1).l
		move.b  #$FF,(byte_FF5051).l
		move.b  #$14,(byte_FF5020).l
		move.b  #$10,(byte_FF5021).l
		clr.b   (word_FF502C+1).l
return_120EE:
		rts
loc_120F0:
		cmpi.b  #6,(DIALOG_INDEX).l
		bne.w   loc_121EC
		btst    #3,(byte_FF9C59).l
		beq.s   loc_12116
		move.b  #$14,(byte_FF5050).l
		move.b  #$10,(byte_FF5051).l
loc_12116:
		btst    #5,(byte_FF9C58).l
		beq.s   loc_12138
		move.b  #$13,(byte_FF5170).l
		move.b  #$1A,(byte_FF5171).l
		ori.b   #$18,(byte_FF5172).l
loc_12138:
		btst    #7,(byte_FF9C59).l
		bne.s   loc_12194
		btst    #4,(byte_FF9C59).l
		beq.s   loc_1218A
		move.b  #$39,(byte_FF50E0).l 
		move.b  #9,(byte_FF50E1).l
		andi.b  #$E7,(byte_FF50E2).l
		ori.b   #8,(byte_FF50E2).l
		clr.b   (byte_FF50ED).l
		clr.b   (byte_FF50FD).l
		ori.b   #$18,(byte_FF50F2).l
		move.b  #$1B,(byte_FF50F0).l
		bra.s   return_121EA
loc_1218A:
		move.b  #$FF,(byte_FF5141).l
		bra.s   return_121EA
loc_12194:
		move.b  #$FF,(byte_FF5141).l
		move.b  #$FF,(byte_FF5121).l
		move.b  #$FF,(byte_FF5131).l
		move.b  #$FF,(byte_FF50E1).l
		btst    #1,(byte_FF9C5B).l
		bne.s   loc_121E2
		btst    #0,(byte_FF9C5B).l
		beq.s   return_121EA
		move.b  #$3E,(byte_FF5050).l 
		move.b  #$14,(byte_FF5051).l
		move.b  #$15,(word_FF505C).l
		bra.s   return_121EA
loc_121E2:
		move.b  #$FF,(byte_FF5051).l
return_121EA:
		rts
loc_121EC:
		cmpi.b  #5,(DIALOG_INDEX).l
		bne.s   loc_12232
		btst    #6,(byte_FF9C5A).l
		beq.s   return_12230
		move.b  #$FF,(byte_FF5051).l
		move.b  #$FF,(byte_FF50F1).l
		move.b  #$24,(byte_FF5130).l 
		move.b  #$10,(byte_FF5131).l
		move.b  #$20,(byte_FF5140).l 
		move.b  #$F,(byte_FF5141).l
return_12230:
		rts
loc_12232:
		cmpi.b  #$F,(DIALOG_INDEX).l
		bne.s   loc_122AC
		btst    #0,(byte_FF9C5C).l
		beq.s   loc_1224E
		move.b  #$FF,(byte_FF5181).l
loc_1224E:
		btst    #1,(byte_FF9C5C).l
		beq.s   loc_1228A
		move.b  #$FF,(byte_FF51C1).l
		move.b  #$FF,(byte_FF5051).l
		btst    #2,(byte_FF9C5C).l
		bne.s   loc_1228A
		move.b  #$12,(byte_FF5050).l
		move.b  #$2E,(byte_FF5051).l 
		move.b  #$14,(word_FF505C).l
loc_1228A:
		btst    #1,(byte_FF9C5B).l
		beq.s   return_122AA
		move.b  #$25,(byte_FF5130).l 
		move.b  #$2C,(byte_FF5131).l 
		clr.b   (byte_FF513D).l
return_122AA:
		rts
loc_122AC:
		cmpi.b  #9,(DIALOG_INDEX).l
		bne.s   loc_122D8
		btst    #4,(byte_FF9C5C).l
		beq.s   return_122D6
		move.b  #6,(byte_FF5020).l
		move.b  #$20,(byte_FF5021).l 
		clr.b   (byte_FF507D).l
return_122D6:
		rts
loc_122D8:
		cmpi.b  #8,(DIALOG_INDEX).l
		bne.s   loc_1231C
		btst    #0,(byte_FF9C56).l
		beq.s   loc_12302
		move.b  #$1A,(byte_FF5020).l
		move.b  #$1A,(byte_FF5021).l
		clr.b   (word_FF502C+1).l
loc_12302:
		btst    #1,(byte_FF9C56).l
		beq.s   return_1231A
		move.b  #$FF,(word_FF5070+1).l
		clr.b   (byte_FF507D).l
return_1231A:
		rts
loc_1231C:
		cmpi.b  #$34,(DIALOG_INDEX).l 
		bne.s   loc_12394
		btst    #2,(byte_FF9C56).l
		beq.s   loc_12340
		move.b  #$23,(byte_FF5160).l 
		move.b  #$FF,(byte_FF5161).l
loc_12340:
		btst    #3,(byte_FF9C56).l
		beq.s   loc_12350
		clr.b   (byte_FF503C+1).l
loc_12350:
		btst    #4,(byte_FF9C56).l
		beq.s   loc_12360
		clr.b   (byte_FF50BD).l
loc_12360:
		btst    #5,(byte_FF9C56).l
		beq.s   loc_12372
		move.b  #$A,(byte_FF50EC).l
loc_12372:
		btst    #7,(byte_FF9C56).l
		beq.s   return_12392
		move.b  #$FF,(byte_FF50E1).l
		move.b  #$43,(byte_FF50E0).l 
		clr.b   (byte_FF50DD).l
return_12392:
		rts
loc_12394:
		cmpi.b  #$A,(DIALOG_INDEX).l
		bne.s   loc_12414
		btst    #0,(byte_FF9C59).l
		beq.s   loc_123B0
		move.b  #$FF,(word_FF5090+1).l
loc_123B0:
		btst    #1,(byte_FF9C59).l
		beq.s   loc_123C0
		clr.b   (byte_FF519D).l
loc_123C0:
		btst    #2,(byte_FF9C5C).l
		beq.s   loc_123D4
		move.b  #$FF,(byte_FF51A1).l
		bra.s   return_12412
loc_123D4:
		move.b  (byte_FF51A3).l,d0
		andi.w  #$F,d0
		mulu.w  #$6C0,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		movem.l a1,-(sp)
		movea.l (p_SpecialSprite_Jogurt2).l,a0
		move.w  #$90,d0 
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movem.l (sp)+,a1
		adda.w  #$480,a1
		move.w  #$120,d0
		jsr     (j_ApplyImmediateVramDma).l
return_12412:
		rts
loc_12414:
		cmpi.b  #$2C,(DIALOG_INDEX).l 
		bne.s   loc_12454
		btst    #3,(byte_FF9C59).l
		beq.s   loc_12430
		move.b  #$FF,(byte_FF5021).l
loc_12430:
		btst    #7,(byte_FF9C60).l
		beq.s   loc_1244A
		btst    #6,(byte_FF9C60).l
		bne.s   loc_1244A
		bsr.w   sub_16306
		rts
loc_1244A:
		move.b  #$FF,(word_FF5030+1).l
		rts
loc_12454:
		cmpi.b  #$B,(DIALOG_INDEX).l
		bne.s   loc_12484
		btst    #4,(byte_FF9C59).l
		beq.s   loc_12470
		move.b  #$FF,(byte_FF5191).l
loc_12470:
		btst    #6,(byte_FF9C59).l
		beq.s   return_12482
		move.b  #$FF,(byte_FF50B1).l
return_12482:
		rts
loc_12484:
		cmpi.b  #2,(DIALOG_INDEX).l
		bne.s   loc_12500
		btst    #7,(byte_FF9C59).l
		beq.s   loc_1249E
		clr.b   (byte_FF503C+1).l
loc_1249E:
		btst    #0,(byte_FF9C5B).l
		bne.s   loc_124B4
		btst    #0,(byte_FF9C54).l
		beq.s   return_124FE
		bne.s   loc_124C6
loc_124B4:
		move.b  #$FF,(byte_FF50B1).l
		move.b  #$FF,(word_FF50A0+1).l
		rts
loc_124C6:
		bset    #5,(byte_FF9C5B).l
		move.b  #$46,(word_FF50A0).l 
		move.b  #$A,(word_FF50A0+1).l
		ori.b   #$18,(byte_FF50A2).l
		move.w  #$101,(word_FF50AA).l
		move.b  #$20,(word_FF50AC).l 
		move.b  #$FF,(byte_FF50B1).l
return_124FE:
		rts
loc_12500:
		move.b  #$80,(byte_FFF819).l
		move.b  #$80,(byte_FFF81A).l
		cmpi.b  #$15,(DIALOG_INDEX).l
		bne.w   loc_12600
		cmpi.b  #9,(MAP_SPRITE_POSITION+1).l
		beq.s   loc_1253A
		cmpi.b  #$12,(MAP_SPRITE_POSITION+1).l
		beq.s   loc_1253A
		btst    #6,(byte_FF9C5B).l
		bne.s   loc_1254C
loc_1253A:
		move.b  #$1B,(byte_FFF819).l
		move.b  #$F,(byte_FFF81A).l
		bra.s   loc_1256C
loc_1254C:
		move.b  #$1D,(byte_FFF819).l
		move.b  #$2A,(byte_FFF81A).l 
		move.b  #$1D,(word_FF51B0).l
		move.b  #$2A,(word_FF51B0+1).l 
loc_1256C:
		btst    #2,(byte_FF9C5B).l
		beq.s   loc_12586
		move.b  #$27,(byte_FF5190).l 
		move.b  #5,(byte_FF5191).l
loc_12586:
		btst    #7,(byte_FF9C5B).l
		beq.s   loc_12596
		clr.b   (byte_FF512D).l
loc_12596:
		btst    #4,(byte_FF9C5B).l
		beq.s   loc_125BE
		move.b  #$15,(byte_FF50F0).l
		move.b  #$20,(byte_FF50F1).l 
		clr.b   (byte_FF50FD).l
		ori.b   #$18,(byte_FF50F2).l
loc_125BE:
		cmpi.b  #$2B,(MAP_SPRITE_POSITION+1).l 
		bne.s   loc_125CC
		bsr.w   sub_16306
loc_125CC:
		btst    #2,(byte_FF9C58).l
		beq.s   loc_125EE
		move.b  #$1B,(byte_FF5180).l
		move.b  #$2B,(byte_FF5181).l 
		ori.b   #$18,(byte_FF5182).l
loc_125EE:
		btst    #6,(byte_FF9C5B).l
		beq.s   return_125FE
		clr.b   (byte_FF518D).l
return_125FE:
		rts
loc_12600:
		cmpi.b  #$17,(DIALOG_INDEX).l
		bne.s   loc_1261A
		cmpi.b  #$19,(MAP_SPRITE_POSITION).l
		bne.s   return_12618
		bsr.w   sub_16306
return_12618:
		rts
loc_1261A:
		cmpi.b  #$16,(DIALOG_INDEX).l
		bne.s   loc_12634
		cmpi.b  #$10,(MAP_SPRITE_POSITION).l
		bne.s   return_12632
		bsr.w   sub_16306
return_12632:
		rts
loc_12634:
		cmpi.b  #$18,(DIALOG_INDEX).l
		bne.w   loc_126BC
		btst    #0,(byte_FF9C56).l
		beq.s   loc_12652
		move.b  #$FF,(byte_FF5051).l
loc_12652:
		btst    #4,(byte_FF9C56).l
		beq.s   loc_12698
		move.b  #$2F,(byte_FF50E0).l 
		move.b  #$12,(byte_FF50E1).l
		clr.b   (byte_FF50ED).l
		ori.b   #$18,(byte_FF50E2).l
		move.b  #$2F,(byte_FF51D0).l 
		move.b  #$30,(byte_FF51E0).l 
		clr.b   (byte_FF51DD).l
		clr.b   (byte_FF51ED).l
		rts
loc_12698:
		btst    #3,(byte_FF9C56).l
		beq.s   return_126BA
		move.b  #$2C,(byte_FF50E0).l 
		move.b  #$11,(byte_FF50E1).l
		move.b  #4,(byte_FF50EC).l
return_126BA:
		rts
loc_126BC:
		cmpi.b  #$33,(DIALOG_INDEX).l 
		bne.s   loc_126DA
		btst    #7,(byte_FF9C5C).l
		beq.s   return_126D8
		move.b  #$FF,(word_FF5030+1).l
return_126D8:
		rts
loc_126DA:
		cmpi.b  #$11,(DIALOG_INDEX).l
		bne.w   loc_127DA
		move.b  (byte_FF9C5D).l,d0
		andi.b  #$C,d0
		cmpi.b  #4,d0
		bne.s   loc_12716
		move.b  #$19,(word_FF5080).l
		move.b  #$1A,(word_FF5080+1).l
		andi.b  #$E7,(byte_FF5082).l
		ori.b   #$10,(byte_FF5082).l
loc_12716:
		btst    #7,(byte_FF9C5A).l
		beq.s   loc_12748
		move.b  #$24,(word_FF5080).l 
		move.b  #$18,(word_FF5080+1).l
		andi.b  #$E7,(byte_FF5082).l
		ori.b   #8,(byte_FF5082).l
		move.b  #$B,(byte_FF508C).l
loc_12748:
		btst    #1,(byte_FF9C59).l
		beq.s   loc_12772
		move.b  #2,(word_FF5080).l
		move.b  #$18,(word_FF5080+1).l
		andi.b  #$E7,(byte_FF5082).l
		move.b  #$2E,(byte_FF508C).l 
loc_12772:
		btst    #0,(byte_FF9C59).l
		beq.s   loc_12792
		move.b  #$FF,(word_FF5080+1).l
		move.b  #$FF,(word_FF5090+1).l
		clr.b   (word_FF502C+1).l
loc_12792:
		btst    #2,(byte_FF9C5A).l
		beq.s   loc_127B6
		move.b  #$FF,(byte_FF5051).l
		move.b  #$FF,(word_FF5060+1).l
		move.b  #$FF,(word_FF5070+1).l
		rts
loc_127B6:
		btst    #3,(byte_FF9C59).l
		beq.s   return_127D8
		move.b  #$1B,(byte_FF5050).l
		move.b  #7,(byte_FF5051).l
		move.b  #$C,(word_FF505C).l
return_127D8:
		rts
loc_127DA:
		cmpi.b  #$10,(DIALOG_INDEX).l
		bne.w   loc_1286A
		btst    #2,(byte_FF9C56).l
		beq.s   loc_12810
		move.b  #$1D,(byte_FF5160).l
		move.b  #$23,(byte_FF5161).l 
		andi.b  #$E7,(byte_FF5162).l
		ori.b   #$10,(byte_FF5162).l
loc_12810:
		btst    #1,(byte_FF9C58).l
		beq.s   loc_12844
		move.b  #$FF,(byte_FF5051).l
		clr.b   (byte_FF507D).l
		clr.b   (byte_FF508D).l
		clr.b   (byte_FF509D).l
		move.b  #$F,(word_FF5070+1).l
		move.b  #$1A,(word_FF5090).l
loc_12844:
		btst    #0,(byte_FF9C5D).l
		beq.s   loc_12856
		move.b  #$FF,(byte_FF5051).l
loc_12856:
		btst    #1,(byte_FF9C5A).l
		beq.s   return_12868
		move.b  #$FF,(byte_FF5171).l
return_12868:
		rts
loc_1286A:
		cmpi.b  #$19,(DIALOG_INDEX).l
		bne.w   loc_128FA
		btst    #4,(byte_FF9C56).l
		beq.s   loc_12888
		move.b  #$FF,(byte_FF5141).l
loc_12888:
		btst    #6,(byte_FF9C56).l
		beq.s   loc_1289E
		clr.b   (byte_FF50BD).l
		clr.b   (byte_FF50CD).l
loc_1289E:
		btst    #2,(byte_FF9C56).l
		beq.s   loc_128AE
		clr.b   (byte_FF509D).l
loc_128AE:
		btst    #0,(byte_FF9C59).l
		beq.s   loc_128C0
		move.b  #$FF,(byte_FF5131).l
loc_128C0:
		btst    #1,(byte_FF9C59).l
		beq.s   loc_128D0
		clr.b   (word_FF504C+1).l
loc_128D0:
		btst    #3,(byte_FF9C5D).l
		beq.s   return_128F8
		move.b  #$2A,(byte_FF5150).l 
		move.b  #$33,(byte_FF5151).l 
		clr.b   (byte_FF515D).l
		andi.b  #$E7,(byte_FF5152).l
return_128F8:
		rts
loc_128FA:
		cmpi.b  #$35,(DIALOG_INDEX).l 
		bne.w   loc_1292C
		btst    #0,(byte_FF9C56).l
		beq.s   loc_12918
		move.b  #$FF,(byte_FF5051).l
loc_12918:
		btst    #6,(byte_FF9C5A).l
		beq.s   return_1292A
		move.b  #$FF,(byte_FF5131).l
return_1292A:
		rts
loc_1292C:
		cmpi.b  #$1A,(DIALOG_INDEX).l
		bne.w   loc_12A04
		btst    #3,(byte_FF9C59).l
		beq.s   loc_12948
		clr.b   (word_FF502C+1).l
loc_12948:
		btst    #4,(byte_FF9C59).l
		beq.s   loc_12968
		clr.b   (byte_FF50FD).l
		move.b  #$10,(byte_FF50F0).l
		move.b  #$15,(byte_FF50F1).l
loc_12968:
		btst    #5,(byte_FF9C59).l
		beq.s   loc_12988
		clr.b   (byte_FF50ED).l
		move.b  #6,(byte_FF50E0).l
		move.b  #$15,(byte_FF50E1).l
loc_12988:
		move.b  (byte_FF9C59).l,d0
		andi.b  #$30,d0 
		cmpi.b  #$30,d0 
		bne.s   loc_129B0
		move.b  #$D,(byte_FF510C).l
		move.b  #$B,(word_FF5100).l
		move.b  #$13,(word_FF5100+1).l
loc_129B0:
		btst    #6,(byte_FF9C59).l
		beq.s   loc_129C2
		move.b  #$FF,(word_FF5100+1).l
loc_129C2:
		btst    #7,(byte_FF9C59).l
		beq.s   loc_129D4
		move.b  #$FF,(byte_FF50D1).l
loc_129D4:
		btst    #2,(byte_FF9C59).l
		bne.s   loc_129FA
		btst    #0,(byte_FF9C5A).l
		beq.s   return_12A02
		move.b  #$7F,(byte_FF5011).l 
		move.b  #$42,(byte_FF501C).l 
		bra.s   return_12A02
loc_129FA:
		move.b  #$FF,(byte_FF5011).l
return_12A02:
		rts
loc_12A04:
		cmpi.b  #$25,(DIALOG_INDEX).l 
		bne.w   loc_12A22
		btst    #3,(byte_FF9C5A).l
		beq.s   return_12A20
		clr.b   (byte_FF501D).l
return_12A20:
		rts
loc_12A22:
		cmpi.b  #$21,(DIALOG_INDEX).l 
		bne.s   loc_12A3A
		btst    #4,(byte_FF9C5A).l
		bne.s   return_12A38
		rts
return_12A38:
		rts
loc_12A3A:
		cmpi.b  #$22,(DIALOG_INDEX).l 
		bne.s   loc_12A88
		btst    #5,(byte_FF9C5A).l
		beq.s   loc_12A6E
		move.b  #$FF,(byte_FF5011).l
		move.b  #$FF,(byte_FF5021).l
		move.b  #$FF,(word_FF5030+1).l
		move.b  #$FF,(word_FF5040+1).l
loc_12A6E:
		cmpi.b  #$C,(MAP_SPRITE_POSITION+1).l
		bne.s   loc_12A7E
		bsr.w   sub_16306
		bra.s   return_12A86
loc_12A7E:
		move.b  #$FF,(byte_FF5011).l
return_12A86:
		rts
loc_12A88:
		cmpi.b  #$12,(DIALOG_INDEX).l
		bne.s   loc_12AD2
		btst    #0,(byte_FF9C58).l
		beq.s   return_12AD0
		move.w  #$925,(word_FF5100).l
		andi.b  #$E7,(byte_FF5102).l
		ori.b   #$10,(byte_FF5102).l
		clr.b   (byte_FF510D).l
		andi.b  #$E7,(byte_FF50F2).l
		ori.b   #$10,(byte_FF50F2).l
		clr.b   (byte_FF50FD).l
return_12AD0:
		rts
loc_12AD2:
		cmpi.b  #7,(DIALOG_INDEX).l
		bne.w   loc_12BDC
		btst    #4,(byte_FF9C5B).l
		beq.s   loc_12B0E
		move.b  #$20,(word_FF5040).l 
		move.b  #$21,(word_FF5040+1).l 
		andi.b  #$E7,(byte_FF5042).l
		ori.b   #$10,(byte_FF5042).l
		clr.b   (word_FF504C+1).l
loc_12B0E:
		btst    #7,(byte_FF9C5D).l
		bne.s   loc_12B44
		btst    #4,(byte_FF9C58).l
		beq.s   loc_12B4A
		move.b  #$1F,(word_FF5030).l
		move.b  #$25,(word_FF5030+1).l 
		andi.b  #$E7,(byte_FF5032).l
		move.b  #9,(byte_FF503C).l
		bra.s   loc_12B4A
loc_12B44:
		clr.b   (byte_FF503C+1).l
loc_12B4A:
		btst    #5,(byte_FF9C5A).l
		beq.s   loc_12B66
		btst    #2,(byte_FF9C53).l
		bne.s   loc_12B66
		move.b  #$FF,(word_FF51B0+1).l
loc_12B66:
		btst    #6,(byte_FF9C5B).l
		bne.s   loc_12BD2
		cmpi.b  #$24,(MAP_SPRITE_POSITION).l 
		bne.s   return_12BDA
		btst    #5,(byte_FF9C5B).l
		beq.s   return_12BDA
		move.b  (byte_FF50B3).l,d0
		andi.w  #$F,d0
		mulu.w  #$6C0,d0
		addi.w  #$2240,d0
		movea.w d0,a1
		movea.l (p_SpecialSprite_BurningShip).l,a0
		move.w  #$240,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		bsr.w   sub_16306
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		ori.b   #8,(MAP_SPRITE_FACING).l
		move.w  #$101,(word_FF50BA).l
		bset    #6,(byte_FF9C5B).l
		rts
loc_12BD2:
		move.b  #$FF,(byte_FF50B1).l
return_12BDA:
		rts
loc_12BDC:
		cmpi.b  #$D,(DIALOG_INDEX).l
		bne.w   loc_12BFC
		btst    #3,(byte_FF9C5D).l
		beq.s   return_12BFA
		move.b  #$FF,(word_FF5040+1).l
return_12BFA:
		rts
loc_12BFC:
		nop
		rts

    ; End of function sub_11FF8

byte_12C00:     dc.b 0
		dc.b 2
		dc.b 0
		dc.b $F
		dc.b $AF
		dc.b $60
		dc.b 1
		dc.b $B0
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $C
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $10
		dc.b 0
		dc.b 7
		dc.b 0
		dc.b 3
		dc.b $B6
		dc.b 0
		dc.b 0
		dc.b $80
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $14
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $18
		dc.b 0
		dc.b 4
		dc.b 0
		dc.b 7
		dc.b $9F
		dc.b $C0
		dc.b 0
		dc.b $20
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $1C
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $20
		dc.b 3
		dc.b 0
		dc.b 0
		dc.b $F
		dc.b $AE
		dc.b $C0
		dc.b 0
		dc.b $70
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $34
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $38
		dc.b 3
		dc.b 1
		dc.b 0
		dc.b 7
		dc.b $98
		dc.b $60
		dc.b 0
		dc.b $B0
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $24
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $28
		dc.b 3
		dc.b 7
		dc.b 0
		dc.b $F
		dc.b $A7
		dc.b $C0
		dc.b 2
		dc.b $30
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $2C
		dc.b 0
		dc.b 3
		dc.b $80
		dc.b $30
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

; Teleport map sprite (on same map?)

sub_12C62:
		lea     MapTeleports(pc), a0
		clr.w   d7
		move.b  (MAP_SPRITE_POSITION).l,d1
		move.b  (MAP_SPRITE_POSITION+1).l,d2
loc_12C74:
		move.b  (a0,d7.w),d0
		bmi.w   loc_12D40
		bsr.w   sub_12D74
		cmp.b   (byte_FFF807).l,d0
		bne.w   loc_12D3A
		cmp.b   1(a0,d7.w),d1
		bne.w   loc_12D3A
		cmp.b   2(a0,d7.w),d2
		bne.w   loc_12D3A
		tst.b   3(a0,d7.w)
		bne.w   loc_12D48
loc_12CA2:
		btst    #2,d7
		bne.s   sub_12D06
		move.b  4(a0,d7.w),d0
		bsr.w   sub_12D74
		move.b  5(a0,d7.w),(MAP_SPRITE_POSITION).l
		move.b  6(a0,d7.w),(MAP_SPRITE_POSITION+1).l
		tst.b   7(a0,d7.w)
		bmi.s   loc_12CCC
		sndCom  SFX_WARP
		bra.s   loc_12CD8
loc_12CCC:
		btst    #6,7(a0,d7.w)
		beq.s   loc_12CD8
		sndCom  SFX_SPELL_CAST
loc_12CD8:
		cmpi.b  #7,d0
		bne.s   loc_12D02
		btst    #3,(byte_FF9C5A).l
		beq.s   loc_12D02
		cmpi.b  #$47,(MAP_SPRITE_POSITION).l 
		bne.s   loc_12D02
		move.b  #$2D,(MAP_SPRITE_POSITION).l 
		move.b  #8,(MAP_SPRITE_POSITION+1).l
loc_12D02:
		tst.b   d0
		rts

    ; End of function sub_12C62


; =============== S U B R O U T I N E =======================================

sub_12D06:
		move.b  -4(a0,d7.w),d0
		bsr.w   sub_12D74
		move.b  -3(a0,d7.w),(MAP_SPRITE_POSITION).l
		move.b  -2(a0,d7.w),(MAP_SPRITE_POSITION+1).l
		tst.b   -1(a0,d7.w)
		bmi.s   loc_12D2A
		sndCom  SFX_WARP
		bra.s   loc_12D36
loc_12D2A:
		btst    #6,-1(a0,d7.w)
		beq.s   loc_12D36
		sndCom  SFX_SPELL_CAST
loc_12D36:
		tst.b   d0
		rts
loc_12D3A:
		addq.w  #4,d7
		bra.w   loc_12C74
loc_12D40:
		clr.b   d0
		ori     #1,ccr
		rts
loc_12D48:
		clr.w   d0
		clr.w   d1
		move.b  3(a0,d7.w),d0
		add.b   d0,d0
		move.b  byte_12D70(pc,d0.w),d1
		move.b  byte_12D71(pc,d0.w),d0
		lea     (EVENT_FLAGS).l,a1
		btst    d0,(a1,d1.w)
		beq.w   loc_12CA2
		move.b  #1,d0
		ori     #1,ccr
byte_12D70:
		dc.b $4E
byte_12D71:
		dc.b $75

    ; End of function sub_12D06

		dc.b 6
		dc.b 1

; =============== S U B R O U T I N E =======================================

sub_12D74:
		cmpi.b  #2,d0
		bne.s   @Return
		tst.b   (byte_FF9C5A).l
		bpl.s   @Return
		move.b  #3,d0
		rts
@Return:
		rts

    ; End of function sub_12D74

MapTeleports:   incbin "data/maps/global/mapteleports.bin"

; =============== S U B R O U T I N E =======================================

sub_131A4:
		bsr.s   sub_131B2
		bsr.s   sub_131BE
		bsr.w   sub_13214
		bsr.w   sub_13248
		rts

    ; End of function sub_131A4


; =============== S U B R O U T I N E =======================================

sub_131B2:
		movea.l (dword_FFF920).l,a0
		bsr.w   sub_175DE
		rts

    ; End of function sub_131B2


; =============== S U B R O U T I N E =======================================

sub_131BE:
		move.b  (MAP_WIDTH_0).l,d0
		ext.w   d0
		move.b  (MAP_HEIGHT_0).l,d7
		ext.w   d7
		mulu.w  d0,d7
		subq.w  #1,d7
		clr.w   d1
		lea     (MAP_DATA).l,a0
loc_131DA:
		move.w  (a0),d0
		andi.w  #$3FF,d0
		cmpi.w  #1,d0
		bhi.s   loc_131F0
		bsr.s   sub_131F8
		beq.s   loc_131EE
		ori.w   #1,(a0)
loc_131EE:
		addq.b  #1,d1
loc_131F0:
		addq.l  #2,a0
		dbf     d7,loc_131DA
		rts

    ; End of function sub_131BE


; =============== S U B R O U T I N E =======================================

sub_131F8:
		move.w  d1,d2
		add.w   (word_FFF8E0).l,d2
		move.w  d2,d3
		lsr.w   #3,d2
		andi.w  #7,d3
		lea     (byte_FF9C6E).l,a1
		btst    d3,(a1,d2.w)
		rts

    ; End of function sub_131F8


; =============== S U B R O U T I N E =======================================

sub_13214:
		lea     (byte_FF92EA).l,a0
		move.l  #PALETTE_1_CURRENT,d2
		move.w  #$7F,d7 
loc_13224:
		move.w  (a0),d0
		bmi.s   return_13246
		cmp.b   (byte_FFF807).l,d0
		bne.s   loc_13240
		move.w  2(a0),d2
		movea.l d2,a2
		andi.w  #$F3FF,(a2)
		andi.w  #$803F,$2000(a2)
loc_13240:
		addq.w  #4,a0
		dbf     d7,loc_13224
return_13246:
		rts

    ; End of function sub_13214


; =============== S U B R O U T I N E =======================================

sub_13248:
		cmpi.b  #5,(byte_FFF807).l
		bne.w   loc_132E8
		btst    #0,(byte_FF9C5B).l
		beq.s   loc_1327A
		move.w  #$3E,d0 
		move.w  #$1D,d1
		move.w  #$3E,d4 
		move.w  #$15,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
loc_1327A:
		btst    #1,(byte_FF9C5B).l
		beq.s   loc_132BC
		move.w  #$3F,d0 
		move.w  #$1D,d1
		move.w  #$3F,d4 
		move.w  #$17,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
		move.w  #$3D,d0 
		move.w  #$1D,d1
		move.w  #$3E,d4 
		move.w  #$15,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
loc_132BC:
		btst    #2,(byte_FF9C59).l
		beq.w   return_137C8
		move.w  #$2B,d0 
		move.w  #$1E,d1
		move.w  #$A,d4
		move.w  #$F,d5
		move.w  #1,d6
		move.w  #4,d7
		bsr.w   sub_137CA
		bra.w   return_137C8
loc_132E8:
		cmpi.b  #6,(byte_FFF807).l
		bne.s   loc_13340
		btst    #5,(byte_FF9C5B).l
		beq.s   loc_13318
		move.w  #$23,d0 
		move.w  #$22,d1 
		move.w  #$24,d4 
		move.w  #$22,d5 
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
loc_13318:
		btst    #5,(byte_FF9C5A).l
		beq.s   return_1333E
		move.w  #$2B,d0 
		move.w  #$26,d1 
		move.w  #$15,d4
		move.w  #$24,d5 
		move.w  #$A,d6
		move.w  #$A,d7
		bsr.w   sub_137CA
return_1333E:
		rts
loc_13340:
		cmpi.b  #7,(byte_FFF807).l
		bne.s   loc_133B4
		btst    #4,(byte_FF9C56).l
		beq.s   loc_13370
		move.w  #0,d0
		move.w  #$2B,d1 
		move.w  #6,d4
		move.w  #$15,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
loc_13370:
		btst    #3,(byte_FF9C5A).l
		bne.s   return_133B2
		move.w  #$30,d0 
		move.w  #5,d1
		move.w  #$3D,d4 
		move.w  #4,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
		move.w  #$30,d0 
		move.w  #7,d1
		move.w  #$3D,d4 
		move.w  #5,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
return_133B2:
		rts
loc_133B4:
		cmpi.b  #9,(byte_FFF807).l
		bne.s   loc_13428
		btst    #2,(byte_FF9C59).l
		beq.s   loc_13400
		move.w  #0,d0
		move.w  #$29,d1 
		move.w  #7,d4
		move.w  #$F,d5
		move.w  #$2A,d6 
		move.w  #$13,d7
		bsr.w   sub_137CA
		move.w  #$2B,d0 
		move.w  #$29,d1 
		move.w  #$1A,d4
		move.w  #8,d5
		move.w  #7,d6
		move.w  #5,d7
		bsr.w   sub_137CA
loc_13400:
		btst    #2,(byte_FF9C5C).l
		beq.s   return_13426
		move.w  #9,d0
		move.w  #2,d1
		move.w  #7,d4
		move.w  #2,d5
		move.w  #2,d6
		move.w  #1,d7
		bsr.w   sub_137CA
return_13426:
		rts
loc_13428:
		cmpi.b  #$1D,(byte_FFF807).l
		bne.w   loc_134EC
		btst    #7,(byte_FF9C59).l
		beq.s   loc_1345A
		move.w  #$57,d0 
		move.w  #$19,d1
		move.w  #$2E,d4 
		move.w  #$11,d5
		move.w  #2,d6
		move.w  #2,d7
		bsr.w   sub_137CA
loc_1345A:
		cmpi.b  #$2F,(MAP_SPRITE_POSITION).l 
		beq.s   loc_1346E
		btst    #0,(byte_FF9C5B).l
		beq.s   loc_1348A
loc_1346E:
		move.w  #$51,d0 
		move.w  #7,d1
		move.w  #$43,d4 
		move.w  #7,d5
		move.w  #3,d6
		move.w  #2,d7
		bsr.w   sub_137CA
loc_1348A:
		btst    #0,(byte_FF9C54).l
		beq.s   loc_134CE
		move.w  #$4D,d0 
		move.w  #$27,d1 
		move.w  #$2F,d4 
		move.w  #$21,d5 
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
		move.w  #$51,d0 
		move.w  #7,d1
		move.w  #$43,d4 
		move.w  #7,d5
		move.w  #3,d6
		move.w  #2,d7
		bsr.w   sub_137CA
		rts
loc_134CE:
		move.w  #$4E,d0 
		move.w  #$27,d1 
		move.w  #$46,d4 
		move.w  #$21,d5 
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
		rts
loc_134EC:
		cmpi.b  #4,(byte_FFF807).l
		bne.s   loc_1351E
		btst    #1,(byte_FF9C5B).l
		bne.s   return_1351C
		move.w  #$3F,d0 
		move.w  #6,d1
		move.w  #$3F,d4 
		move.w  #5,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
return_1351C:
		rts
loc_1351E:
		cmpi.b  #$20,(byte_FFF807).l 
		bne.s   loc_1355A
		btst    #4,(byte_FF9C5B).l
		beq.s   return_13558
		btst    #7,(byte_FF9C5B).l
		bne.s   return_13558
		move.w  #$33,d0 
		move.w  #$14,d1
		move.w  #5,d4
		move.w  #$24,d5 
		move.w  #$15,d6
		move.w  #$14,d7
		bsr.w   sub_137CA
return_13558:
		rts
loc_1355A:
		cmpi.b  #$21,(byte_FFF807).l 
		bne.s   loc_1358C
		btst    #3,(byte_FF9C56).l
		beq.s   return_1358A
		move.w  #$2F,d0 
		move.w  #$2F,d1 
		move.w  #$28,d4 
		move.w  #$E,d5
		move.w  #$A,d6
		move.w  #9,d7
		bsr.w   sub_137CA
return_1358A:
		rts
loc_1358C:
		cmpi.b  #8,(byte_FFF807).l
		bne.s   loc_135CC
		btst    #4,(byte_FF9C5A).l
		beq.s   return_135CA
		move.w  #8,d0
		move.w  #6,d1
		move.w  #8,d4
		move.w  #5,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
		btst    #7,(byte_FF9C5C).l
		bne.s   return_135CA
		bsr.w   sub_16306
return_135CA:
		rts
loc_135CC:
		cmpi.b  #$1F,(byte_FFF807).l
		bne.s   loc_13640
		btst    #0,(byte_FF9C59).l
		beq.s   loc_13618
		move.w  #2,d0
		move.w  #$15,d1
		move.w  #$A,d4
		move.w  #$15,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
		move.w  #0,d0
		move.w  #$24,d1 
		move.w  #0,d4
		move.w  #$13,d5
		move.w  #5,d6
		move.w  #4,d7
		bsr.w   sub_137CA
loc_13618:
		btst    #1,(byte_FF9C59).l
		beq.s   return_1363E
		move.w  #$39,d0 
		move.w  #7,d1
		move.w  #$27,d4 
		move.w  #$10,d5
		move.w  #2,d6
		move.w  #2,d7
		bsr.w   sub_137CA
return_1363E:
		rts
loc_13640:
		cmpi.b  #$22,(byte_FFF807).l 
		bne.s   loc_13698
		btst    #3,(byte_FF9C56).l
		beq.s   loc_13670
		move.w  #$20,d0 
		move.w  #0,d1
		move.w  #$20,d4 
		move.w  #$E,d5
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
loc_13670:
		btst    #1,(byte_FF9C59).l
		beq.s   return_13696
		move.w  #$E,d0
		move.w  #$3B,d1 
		move.w  #$C,d4
		move.w  #$E,d5
		move.w  #7,d6
		move.w  #5,d7
		bsr.w   sub_137CA
return_13696:
		rts
loc_13698:
		cmpi.b  #$10,(byte_FFF807).l
		bne.w   loc_1373C
		btst    #7,(byte_FF9C59).l
		bne.s   loc_136F0
		btst    #6,(byte_FF9C59).l
		beq.s   loc_136F0
		move.w  #$A,d0
		move.w  #$F,d1
		move.w  #$1B,d4
		move.w  #$18,d5
		move.w  #3,d6
		move.w  #2,d7
		bsr.w   sub_137CA
		move.w  #$1B,d0
		move.w  #$14,d1
		move.w  #$A,d4
		move.w  #$F,d5
		move.w  #3,d6
		move.w  #2,d7
		bsr.w   sub_137CA
loc_136F0:
		btst    #2,(byte_FF9C59).l
		beq.s   loc_13716
		move.w  #$1C,d0
		move.w  #$16,d1
		move.w  #7,d4
		move.w  #$24,d5 
		move.w  #2,d6
		move.w  #2,d7
		bsr.w   sub_137CA
loc_13716:
		cmpi.b  #$38,(MAP_SPRITE_POSITION+1).l 
		bne.s   return_1373A
		btst    #7,(byte_FF9C59).l
		beq.s   return_1373A
		move.b  #$16,(MAP_SPRITE_POSITION).l
		move.b  #$A,(MAP_SPRITE_POSITION+1).l
return_1373A:
		rts
loc_1373C:
		cmpi.b  #$24,(byte_FFF807).l 
		bne.s   loc_13794
		btst    #5,(byte_FF9C5A).l
		beq.s   loc_1376C
		move.w  #1,d0
		move.w  #$2E,d1 
		move.w  #$F,d4
		move.w  #$25,d5 
		move.w  #2,d6
		move.w  #1,d7
		bsr.w   sub_137CA
loc_1376C:
		btst    #0,(byte_FF9C59).l
		bne.s   return_13792
		move.w  #$32,d0 
		move.w  #0,d1
		move.w  #$29,d4 
		move.w  #$21,d5 
		move.w  #2,d6
		move.w  #1,d7
		bsr.w   sub_137CA
return_13792:
		rts
loc_13794:
		cmpi.b  #$25,(byte_FFF807).l 
		bne.s   loc_137C6
		btst    #1,(byte_FF9C53).l
		beq.s   return_137C4
		move.w  #1,d0
		move.w  #$30,d1 
		move.w  #3,d4
		move.w  #$2A,d5 
		move.w  #1,d6
		move.w  #1,d7
		bsr.w   sub_137CA
return_137C4:
		rts
loc_137C6:
		nop
return_137C8:
		rts

    ; End of function sub_13248


; =============== S U B R O U T I N E =======================================

sub_137CA:
		subq.w  #1,d6
		subq.w  #1,d7
loc_137CE:
		movem.w d0/d4/d6,-(sp)
loc_137D2:
		movem.w d4,-(sp)
		bsr.w   sub_10D20
		movem.w (sp)+,d4
		movem.w d0-d1/d4,-(sp)
		move.w  d4,d0
		move.w  d5,d1
		bsr.w   sub_13804
		movem.w (sp)+,d0-d1/d4
		addq.b  #1,d0
		addq.b  #1,d4
		dbf     d6,loc_137D2
		movem.w (sp)+,d0/d4/d6
		addq.b  #1,d1
		addq.b  #1,d5
		dbf     d7,loc_137CE
		rts

    ; End of function sub_137CA


; =============== S U B R O U T I N E =======================================

sub_13804:
		movem.w d2,-(sp)
		bsr.w   sub_10CA4
		move.w  d2,d4
		movem.w (sp)+,d2
		lea     (MAP_DATA).l,a2
		move.w  d2,(a2,d4.w)
		lea     (byte_FF72EA).l,a2
		move.w  d3,(a2,d4.w)
		rts

    ; End of function sub_13804


; =============== S U B R O U T I N E =======================================

sub_13828:
		jsr     (sub_304).l
		bsr.w   sub_10CFE
		move.w  d2,d4
		andi.w  #$3FF,d4
		bne.w   loc_139B0       
		movem.w d0,-(sp)
		move.w  #$4D,d0 ; "[Hero] opens[Line]the treasure chest![Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     (j_CreateMessageWindow).l
		movem.w (sp)+,d0
		ori.w   #1,d2
		movem.w d0-d3,-(sp)
		bsr.w   sub_114F2
		movem.w (sp)+,d0-d3
		movem.w d0-d3,-(sp)
		lea     (MAP_DATA).l,a0
		clr.l   d5
		clr.w   d6
		move.b  (MAP_WIDTH_0).l,d7
		ext.w   d7
		add.b   d7,d7
loc_13878:
		move.w  (a0,d5.w),d4
		andi.w  #$3FF,d4
		cmpi.w  #1,d4
		bhi.w   loc_13978
		move.l  d5,d4
		divu.w  d7,d4
		cmp.b   d1,d4
		bne.w   loc_13976
		swap    d4
		lsr.b   #1,d4
		cmp.b   d0,d4
		bne.w   loc_13976
		move.b  (CURRENT_CHAPTER).l,d0
		subq.b  #1,d0
		lsl.b   #2,d0
		ext.w   d0
		lea     off_139C6(pc), a0
		nop
		movea.l (a0,d0.w),a0
		add.w   (word_FFF8E0).l,d6
		movem.w d6,-(sp)
		move.b  (a0,d6.w),d1
		cmpi.b  #$FF,d1
		beq.w   loc_13996
		bmi.s   loc_13918
		cmpi.b  #NOTHING_ITEM,d1
		beq.w   loc_13996
		ext.w   d1
		move.w  d1,(MESSAGE_ARG_NAME_2).l
		clr.w   (MESSAGE_ARG_NAME_1).l
		clr.w   d0
		jsr     j_GiveItem
		bcs.s   loc_13908       
		sndCom  MUSIC_ITEM
		move.w  #$48,d0 ; "[Name] discovers a[Line][Item]![Wait2]"
		trap    #DISPLAY_MESSAGE
		movem.w d1,-(sp)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.w (sp)+,d1
		bra.s   loc_13958
loc_13908:
		move.w  #$48,d0 ; "[Name] discovers a[Line][Item]![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$49,d0 ; "But can't carry it![Wait2]"
		trap    #DISPLAY_MESSAGE
		bra.w   loc_1397E
loc_13918:
		lea     tbl_ExplorationChestGoldAmounts(pc), a0
		nop
		andi.w  #3,d1
		add.w   d1,d1
		move.w  (a0,d1.w),d1
		ext.l   d1
		move.l  d1,(MESSAGE_ARG_NUMBER).l
		clr.w   (MESSAGE_ARG_NAME_1).l
		sndCom  MUSIC_ITEM
		move.w  #$4C,d0 ; "[Name] gains [Num] coins.[Wait2]"
		trap    #DISPLAY_MESSAGE
		movem.w d1,-(sp)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.w (sp)+,d1
		jsr     j_IncreaseGold
loc_13958:
		trap    #6
		movem.w (sp)+,d6
		move.w  d6,d4
		lsr.w   #3,d4
		andi.w  #7,d6
		lea     (byte_FF9C6E).l,a1
		bset    d6,(a1,d4.w)
		movem.w (sp)+,d0-d3
		rts
loc_13976:
		addq.w  #1,d6
loc_13978:
		addq.w  #2,d5
		bra.w   loc_13878
loc_1397E:
		movem.w (sp)+,d6
		jsr     (j_CloseMessageWindow).l
		movem.w (sp)+,d0-d3
		andi.w  #$FC00,d2
		bsr.w   sub_114F2
		rts
loc_13996:
		movem.w (sp)+,d6
		move.w  d6,d4
		lsr.w   #3,d4
		andi.w  #7,d6
		lea     (byte_FF9C6E).l,a1
		bset    d6,(a1,d4.w)
		movem.w (sp)+,d0-d3
loc_139B0:
		move.w  #$4B,d0 ; "Nothing is found.[Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     (j_CloseMessageWindow).l
		rts

    ; End of function sub_13828

tbl_ExplorationChestGoldAmounts:
		dc.w 50
		dc.w 70
		dc.w 100
		dc.w 200
off_139C6:      dc.l byte_139E6
		dc.l byte_13A0A
		dc.l word_13A0D
		dc.l word_13A0D
		dc.l byte_13A16
		dc.l byte_13A1C
		dc.l byte_13A25
		dc.l byte_13A2D
byte_139E6:     dc.b $3F
		dc.b 5
		dc.b 6
		dc.b $80
		dc.b 4
		dc.b 2
		dc.b 0
		dc.b $3F
		dc.b $3F
		dc.b 0
		dc.b $3F
		dc.b $81
		dc.b $28
		dc.b $3F
		dc.b 0
		dc.b $3F
		dc.b $1E
		dc.b $3F
		dc.b 1
		dc.b $3F
		dc.b 5
		dc.b $3F
		dc.b $80
		dc.b 1
		dc.b $80
		dc.b 9
		dc.b $1E
		dc.b $82
		dc.b $35
		dc.b 6
		dc.b $3F
		dc.b $3F
		dc.b $80
		dc.b $3B
		dc.b 1
		dc.b $3F
byte_13A0A:     dc.b $3F
		dc.b $C
		dc.b $FF
word_13A0D:     dc.w $93F
		dc.b 7
		dc.b $3F
		dc.b $1F
		dc.b $24
		dc.b $20
		dc.b $3F
		dc.b $3F
byte_13A16:     dc.b 3
		dc.b $D
		dc.b 9
		dc.b 6
		dc.b 0
		dc.b $3F
byte_13A1C:     dc.b 3
		dc.b $21
		dc.b $3F
		dc.b $2C
		dc.b $3F
		dc.b 1
		dc.b $37
		dc.b $3F
		dc.b $3F
byte_13A25:     dc.b $3F
		dc.b $3F
		dc.b 8
		dc.b $3F
		dc.b $3F
		dc.b $2B
		dc.b $3F
		dc.b $FF
byte_13A2D:     dc.b $3F
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_13A30:
		lsl.w   #2,d0
		jmp     sub_13A36(pc,d0.w)

    ; End of function sub_13A30


; =============== S U B R O U T I N E =======================================

sub_13A36:
		bra.w   sub_13D1E
		bra.w   sub_13D2C
		bra.w   sub_13D38
		bra.w   sub_13D44
		bra.w   sub_13D54
		bra.w   sub_13DB0
		bra.w   sub_13DBE
		bra.w   sub_13DD2
		bra.w   sub_13EA0
		bra.w   sub_13ED2
		bra.w   sub_13F04
		bra.w   sub_13F60
		bra.w   sub_13F70
		bra.w   sub_13F80
		bra.w   sub_13FD2
		bra.w   sub_14038
		bra.w   sub_14090
		bra.w   sub_140B6
		bra.w   sub_14198
		bra.w   sub_141AC
		bra.w   sub_141BC
		bra.w   sub_141C6
		bra.w   sub_141D6
		bra.w   sub_141F2
		bra.w   sub_14206
		bra.w   sub_14216
		bra.w   sub_1423E
		bra.w   sub_14262
		bra.w   sub_14292
		bra.w   sub_142D8
		bra.w   sub_14300
		bra.w   sub_14336
		bra.w   sub_14356
		bra.w   sub_14394
		bra.w   sub_1439E
		bra.w   sub_143AE
		bra.w   sub_143C0
		bra.w   sub_143D4
		bra.w   sub_143E0
		bra.w   sub_143EC
		bra.w   sub_143F6
		bra.w   sub_14402
		bra.w   sub_1440E
		bra.w   sub_14420
		bra.w   sub_1444A
		bra.w   sub_1445C
		bra.w   sub_1447E
		bra.w   sub_144C2
		bra.w   sub_144E0
		bra.w   sub_14532
		bra.w   sub_14544
		bra.w   sub_145A4
		bra.w   sub_145B0
		bra.w   sub_145BC
		bra.w   sub_145C8
		bra.w   sub_145F6
		bra.w   sub_145FE
		bra.w   sub_14606
		bra.w   sub_1460E
		bra.w   sub_14616
		bra.w   sub_1461E
		bra.w   sub_14626
		bra.w   sub_14648
		bra.w   sub_1467C
		bra.w   sub_14684
		bra.w   sub_1468C
		bra.w   sub_14694
		bra.w   sub_146AA
		bra.w   sub_146CA
		bra.w   sub_146D2
		bra.w   sub_146DA
		bra.w   sub_146E2
		bra.w   sub_146EA
		bra.w   sub_1470A
		bra.w   sub_1472C
		bra.w   sub_14738
		bra.w   sub_14770
		bra.w   sub_1477C
		bra.w   sub_1479A
		bra.w   sub_147A6
		bra.w   sub_147B2
		bra.w   sub_147BE
		bra.w   sub_147D2
		bra.w   sub_147F2
		bra.w   sub_147FE
		bra.w   sub_1480A
		bra.w   sub_1482E
		bra.w   sub_1483A
		bra.w   sub_14846
		bra.w   sub_148C2
		bra.w   sub_148DE
		bra.w   sub_14958
		bra.w   sub_14964
		bra.w   sub_14970
		bra.w   sub_149AE
		bra.w   sub_149B8
		bra.w   sub_149CC
		bra.w   sub_149E0
		bra.w   sub_14ABE
		bra.w   sub_14AFC
		bra.w   sub_14B0C
		bra.w   sub_14B2C
		bra.w   sub_14B42
		bra.w   sub_14B62
		bra.w   sub_14B6E
		bra.w   sub_14B82
		bra.w   sub_14B92
		bra.w   sub_14B9E
		bra.w   sub_14BB8
		bra.w   sub_14C14
		bra.w   sub_14C3A
		bra.w   sub_14C5E
		bra.w   sub_14C90
		bra.w   sub_14CBE
		bra.w   sub_14D36
		bra.w   sub_14DE6
		bra.w   sub_14E18
		bra.w   sub_14E30
		bra.w   sub_14E48
		bra.w   sub_14E74
		bra.w   sub_14E80
		bra.w   sub_14E8A
		bra.w   sub_14EAA
		bra.w   sub_14EC2
		bra.w   sub_14ECE
		bra.w   sub_14EF6
		bra.w   sub_14F2A
		bra.w   sub_14F5E
		bra.w   sub_14F6A
		bra.w   sub_14F96
		bra.w   sub_14FC4
		bra.w   sub_15010
		bra.w   sub_15062
		bra.w   sub_1506E
		bra.w   sub_15080
		bra.w   sub_15094
		bra.w   sub_1511C
		bra.w   sub_15128
		bra.w   sub_15154
		bra.w   sub_1518C
		bra.w   sub_151AC
		bra.w   sub_151B8
		bra.w   sub_151C4
		bra.w   sub_151D0
		bra.w   sub_151DC
		bra.w   sub_1524E
		bra.w   sub_15278
		bra.w   sub_152FC
		bra.w   sub_1534E
		bra.w   sub_15374
		bra.w   sub_15380
		bra.w   sub_1538C
		bra.w   sub_15398
		bra.w   j_SetCarryBit
		bra.w   sub_155EC
		bra.w   sub_15600
		bra.w   sub_156C0
		bra.w   sub_156D4
		bra.w   sub_156EE
		bra.w   sub_156FA
		bra.w   sub_1574C
		bra.w   sub_157C4
		bra.w   sub_157D0
		bra.w   sub_157DC
		bra.w   sub_15816
		bra.w   sub_1586E
		bra.w   sub_1588A
		bra.w   sub_158D0
		bra.w   sub_158E6
		bra.w   sub_158F6
		bra.w   sub_15936
		bra.w   sub_159A8
		bra.w   sub_15AA6
		bra.w   sub_15B40
		bra.w   sub_15B60
		bra.w   sub_15B6A
		bra.w   sub_15B8C
		bra.w   sub_15BB6
		bra.w   sub_15BC2
		bra.w   sub_15BCE
		bra.w   sub_15BEA
		bra.w   sub_15C06
		bra.w   sub_15C12
		bra.w   sub_15C1E
		bra.w   sub_15C30
		bra.w   sub_15C3C

    ; End of function sub_13A36


; =============== S U B R O U T I N E =======================================

sub_13D1E:
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		clr.w   d0
		bra.w   SetCarryBit

    ; End of function sub_13D1E


; =============== S U B R O U T I N E =======================================

sub_13D2C:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_13D2C


; =============== S U B R O U T I N E =======================================

sub_13D38:
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_13D38


; =============== S U B R O U T I N E =======================================

sub_13D44:
		move.b  #$16,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_13D44


; =============== S U B R O U T I N E =======================================

sub_13D54:
		cmpi.b  #$22,(MAP_SPRITE_POSITION+1).l 
		bne.w   TestD0
		cmpi.b  #$1F,(MAP_SPRITE_POSITION).l
		bcs.w   TestD0
		move.b  #4,(byte_FF515C).l
		move.b  #4,(byte_FF516C).l
		move.w  #$101,(word_FF515A).l
		move.w  #$101,(word_FF516A).l
		move.b  #$23,d0 
		sub.b   (byte_FF5150).l,d0
		move.b  d0,(byte_FF515F).l
		move.b  (byte_FF5160).l,d0
		subi.b  #$22,d0 
		move.b  d0,(byte_FF516F).l
		bra.w   SetCarryBit

    ; End of function sub_13D54


; =============== S U B R O U T I N E =======================================

sub_13DB0:
		bclr    #7,8(a0)
		beq.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_13DB0


; =============== S U B R O U T I N E =======================================

sub_13DBE:
		cmpi.b  #$16,(byte_FF5190).l
		bne.w   TestD0
		sndCom  SFX_MENU_SELECTION
		bra.w   SetCarryBit

    ; End of function sub_13DBE


; =============== S U B R O U T I N E =======================================

sub_13DD2:
		lea     (MAP_SPRITE_POSITION).l,a6
		move.w  #$1812,word_FF5040-MAP_SPRITE_POSITION(a6)
		move.w  #$1A12,$50(a6)
		move.w  #$1C12,$60(a6)
		move.w  #$1814,$70(a6)
		move.w  #$1A14,$80(a6)
		move.w  #$1C14,$90(a6)
		move.w  #$1A10,$A0(a6)
		move.l  #$8180918,$44(a6)
		move.l  #$8480918,$54(a6)
		move.l  #$8780918,$64(a6)
		move.l  #$8180948,$74(a6)
		move.l  #$8480948,$84(a6)
		move.l  #$8780948,$94(a6)
		move.l  #$84808E8,$A4(a6)
		clr.b   $4D(a6)
		clr.b   $5D(a6)
		clr.b   $6D(a6)
		clr.b   $7D(a6)
		clr.b   $8D(a6)
		clr.b   $9D(a6)
		clr.b   $AD(a6)
		move.b  #$E7,d0
		and.b   d0,$42(a6)
		and.b   d0,$52(a6)
		and.b   d0,$62(a6)
		and.b   d0,$72(a6)
		and.b   d0,$82(a6)
		and.b   d0,$92(a6)
		and.b   d0,$A2(a6)
		ori.b   #$10,$A2(a6)
		move.w  #$E07F,d0
		and.w   d0,$48(a6)
		and.w   d0,$58(a6)
		and.w   d0,$68(a6)
		and.w   d0,$78(a6)
		and.w   d0,$88(a6)
		and.w   d0,$98(a6)
		and.w   d0,$A8(a6)
		bra.w   SetCarryBit

    ; End of function sub_13DD2


; =============== S U B R O U T I N E =======================================

sub_13EA0:
		cmpi.b  #$10,(MAP_SPRITE_POSITION+1).l
		beq.s   loc_13EB6
		cmpi.b  #$B,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
loc_13EB6:
		cmpi.b  #$F,(MAP_SPRITE_POSITION).l
		bcs.w   TestD0
		cmpi.b  #$15,(MAP_SPRITE_POSITION).l
		bhi.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_13EA0


; =============== S U B R O U T I N E =======================================

sub_13ED2:
		addq.b  #1,1(a0)
		move.w  #5,d7
loc_13EDA:
		movem.l d7-a1,-(sp)
		addq.w  #4,6(a0)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a1
		dbf     d7,loc_13EDA
		move.b  #$15,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_13ED2


; =============== S U B R O U T I N E =======================================

sub_13F04:
		cmpi.b  #$22,(MAP_SPRITE_POSITION+1).l 
		bne.w   TestD0
		cmpi.b  #$1F,(MAP_SPRITE_POSITION).l
		bcs.w   TestD0
		move.b  #4,(byte_FF501C).l
		move.b  #4,(word_FF502C).l
		move.w  #$101,(word_FF501A).l
		move.w  #$101,(word_FF502A).l
		move.b  #$23,d0 
		sub.b   (byte_FF5010).l,d0
		move.b  d0,(byte_FF501F).l
		move.b  (byte_FF5020).l,d0
		subi.b  #$22,d0 
		move.b  d0,(byte_FF502F).l
		bra.w   SetCarryBit

    ; End of function sub_13F04


; =============== S U B R O U T I N E =======================================

sub_13F60:
		move.b  #$C,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_13F60


; =============== S U B R O U T I N E =======================================

sub_13F70:
		cmpi.b  #$18,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_13F70


; =============== S U B R O U T I N E =======================================

sub_13F80:
		move.b  #2,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		move.b  (MAP_SPRITE_POSITION).l,d0
		subi.b  #$11,d0
		ext.w   d0
		lsl.b   #2,d0
		movea.l off_13FB0(pc,d0.w),a6
		move.w  a6,(word_FF500C).l
		move.b  1(a6),(byte_FF500F).l
		bra.w   SetCarryBit

    ; End of function sub_13F80

off_13FB0:      dc.l byte_13FBC
		dc.l byte_13FC4
		dc.l byte_13FCA
byte_13FBC:     dc.b 8
		dc.b 2
		dc.b 1
		dc.b 8
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
byte_13FC4:     dc.b 1
		dc.b 9
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
byte_13FCA:     dc.b 4
		dc.b 2
		dc.b 1
		dc.b 8
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0

; =============== S U B R O U T I N E =======================================

sub_13FD2:
		move.b  #3,d1
		move.b  #$A,d2
		bsr.w   loc_15CCE
		move.b  #3,d0
		bsr.w   sub_15D02
		move.b  #3,d1
		move.b  #$C,d2
		bsr.w   loc_15CCE
		move.w  #$3B,d0 
		jsr     (j_Sleep).l
		move.w  #5,d0
		move.b  #2,d1
		bsr.w   sub_11126       
		move.w  #2,d0
		move.b  #2,d1
		bsr.w   sub_11126       
		move.w  #0,d0
		move.b  #2,d1
		bsr.w   sub_11126       
		move.b  #4,d1
		move.b  #$D,d2
		bsr.w   loc_15CCE
		move.w  #$101,(word_FF504A).l
		bra.w   SetCarryBit

    ; End of function sub_13FD2


; =============== S U B R O U T I N E =======================================

sub_14038:
		 
		sndCom  SFX_HIT
		move.w  #$B,d7
loc_14040:
		movem.w d7,-(sp)
		addq.w  #4,(word_FF5046).l
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_14040
		addq.b  #2,(word_FF5040+1).l
		move.b  #5,d1
		move.b  #$E,d2
		bsr.w   loc_15CCE
		move.b  #5,d0
		bsr.w   sub_15D02
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		move.b  #4,d1
		move.b  #$10,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_14038


; =============== S U B R O U T I N E =======================================

sub_14090:
		move.b  #1,d1
		move.b  #$11,d2
		bsr.w   loc_15CCE
		move.b  #1,d0
		bsr.w   sub_15D02
		clr.b   d2
		bsr.w   sub_15CCA
		bset    #1,(byte_FF9C59).l
		bra.w   SetCarryBit

    ; End of function sub_14090


; =============== S U B R O U T I N E =======================================

sub_140B6:
		clr.w   d0
		move.b  #3,d1
		bsr.w   sub_11126       
		bsr.w   loc_14180
		move.b  #$F,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bsr.w   loc_14180
		move.b  #$F,d1
		move.b  #$A,d2
		bsr.w   loc_15CCE
		bsr.w   loc_14180
		move.b  #$F,d1
		move.b  #$B,d2
		bsr.w   loc_15CCE
		move.w  #$F,d0
		move.b  #1,d1
		bsr.w   sub_11126       
		move.b  #$F,d1
		move.b  #$C,d2
		bsr.w   loc_15CCE
		andi.b  #$C0,(byte_FF50F9).l
		move.w  #$F,d0
		clr.b   d1
		bsr.w   sub_11126       
		move.w  #$F,d0
		jsr     (j_Sleep).l
		andi.b  #$C0,(byte_FF51B9).l
		move.w  #$7B8,(word_FF51B4).l
		bsr.w   sub_1106C
		move.w  #$F,d0
		jsr     (j_Sleep).l
		ori.b   #$20,(byte_FF51B9).l 
		bsr.w   sub_1106C
		move.w  #$F,d0
		move.b  #3,d1
		bsr.w   sub_11126       
		move.w  #$F,d0
		jsr     (j_Sleep).l
		move.w  #$758,(word_FF51B4).l
		bsr.w   sub_1106C
		move.b  #$F,d1
		move.b  #$D,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit
loc_14180:
		jsr     (j_WaitForVInt).l
		jsr     (j_nullsub_13E8).l
		btst    #INPUT_BIT_RIGHT,(P1_INPUT).l
		beq.s   loc_14180
		rts

    ; End of function sub_140B6


; =============== S U B R O U T I N E =======================================

sub_14198:
		 
		sndCom  SFX_MENU_SELECTION
		move.b  #$18,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_14198


; =============== S U B R O U T I N E =======================================

sub_141AC:
		move.b  (byte_FF51A3).l,d0
		move.b  d0,(MAP_SPRITE_GFX).l
		bra.w   SetCarryBit

    ; End of function sub_141AC


; =============== S U B R O U T I N E =======================================

sub_141BC:
		clr.b   (MAP_SPRITE_GFX).l
		bra.w   SetCarryBit

    ; End of function sub_141BC


; =============== S U B R O U T I N E =======================================

sub_141C6:
		move.b  #$18,d1
		move.b  #$A,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_141C6


; =============== S U B R O U T I N E =======================================

sub_141D6:
		ori.b   #$18,2(a0)
		cmpi.b  #$12,(MAP_SPRITE_POSITION).l
		bcc.w   SetCarryBit
		andi.b  #$E8,2(a0)
		bra.w   SetCarryBit

    ; End of function sub_141D6


; =============== S U B R O U T I N E =======================================

sub_141F2:
		move.w  #$101,(word_FF512A).l
		move.w  #$101,(word_FF513A).l
		bra.w   SetCarryBit

    ; End of function sub_141F2


; =============== S U B R O U T I N E =======================================

sub_14206:
		move.b  #$E,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_14206


; =============== S U B R O U T I N E =======================================

sub_14216:
		movem.l a0-a1,-(sp)
		sndCom  SFX_DOOR_OPEN
		move.w  #$3E,d0 
		move.w  #$1D,d1
		bsr.w   sub_10D20
		move.w  #$3E,d0 
		move.w  #$15,d1
		bsr.w   sub_114F2
		movem.l (sp)+,a0-a1
		bra.w   SetCarryBit

    ; End of function sub_14216


; =============== S U B R O U T I N E =======================================

sub_1423E:
		movem.l a0-a1,-(sp)
		move.w  #$3D,d0 
		move.w  #$1D,d1
		bsr.w   sub_10D20
		move.w  #$3E,d0 
		move.w  #$15,d1
		bsr.w   sub_114F2
		movem.l (sp)+,a0-a1
		bra.w   SetCarryBit

    ; End of function sub_1423E


; =============== S U B R O U T I N E =======================================

sub_14262:
		move.b  #5,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		movem.l a0-a1,-(sp)
		move.w  #$3E,d0 
		move.w  #$1D,d1
		bsr.w   sub_10D20
		move.w  #$3E,d0 
		move.w  #$15,d1
		bsr.w   sub_114EC
		movem.l (sp)+,a0-a1
		bra.w   SetCarryBit

    ; End of function sub_14262


; =============== S U B R O U T I N E =======================================

sub_14292:
		move.b  #5,d1
		move.b  #$A,d2
		bsr.w   loc_15CCE
		movem.l a0-a1,-(sp)
		move.w  #$3F,d0 
		move.w  #$1D,d1
		bsr.w   sub_10D20
		move.w  #$3F,d0 
		move.w  #$17,d1
		bsr.w   sub_114F2
		movem.l (sp)+,a0-a1
		move.w  #5,d0
		clr.b   d1
		bsr.w   sub_11126       
		move.b  #5,d1
		move.b  #$B,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_14292


; =============== S U B R O U T I N E =======================================

sub_142D8:
		cmpi.b  #$14,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		cmpi.b  #$30,(MAP_SPRITE_POSITION).l 
		beq.w   SetCarryBit
		cmpi.b  #$31,(MAP_SPRITE_POSITION).l 
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_142D8


; =============== S U B R O U T I N E =======================================

sub_14300:
		clr.b   d2
		bsr.w   sub_15CCA
		sndCom  SFX_DESOUL_HOVERING
		move.w  #$27,d0 
		move.w  #$18,d1
		move.w  #$30,d2 
		move.w  #$12,d3
		move.w  #2,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #2,d0
		bra.w   SetCarryBit

    ; End of function sub_14300


; =============== S U B R O U T I N E =======================================

sub_14336:
		move.b  #$11,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		move.w  #$101,(word_FF515A).l
		move.w  #$101,(word_FF516A).l
		bra.w   SetCarryBit

    ; End of function sub_14336


; =============== S U B R O U T I N E =======================================

sub_14356:
		move.b  #$11,d1
		move.b  #$A,d2
		bsr.w   loc_15CCE
		move.w  #$11,d0
		clr.b   d1
		bsr.w   sub_11126       
		move.b  #$11,d1
		move.b  #$B,d2
		bsr.w   loc_15CCE
		move.w  #$11,d0
		move.b  #3,d1
		bsr.w   sub_11126       
		move.b  #$11,d1
		move.b  #$C,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_14356


; =============== S U B R O U T I N E =======================================

sub_14394:
		clr.b   d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14394


; =============== S U B R O U T I N E =======================================

sub_1439E:
		cmpi.b  #$E,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_1439E


; =============== S U B R O U T I N E =======================================

sub_143AE:
		clr.w   d0
		clr.b   d1
		bsr.w   sub_11126       
		clr.b   d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_143AE


; =============== S U B R O U T I N E =======================================

sub_143C0:
		move.b  #1,d2
		bsr.w   sub_15CCA
		move.w  #$101,(word_FF506A).l
		bra.w   SetCarryBit

    ; End of function sub_143C0


; =============== S U B R O U T I N E =======================================

sub_143D4:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_143D4


; =============== S U B R O U T I N E =======================================

sub_143E0:
		move.w  #$101,(word_FF505A).l
		bra.w   SetCarryBit

    ; End of function sub_143E0


; =============== S U B R O U T I N E =======================================

sub_143EC:
		clr.b   d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_143EC


; =============== S U B R O U T I N E =======================================

sub_143F6:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_143F6


; =============== S U B R O U T I N E =======================================

sub_14402:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14402


; =============== S U B R O U T I N E =======================================

sub_1440E:
		clr.b   d2
		bsr.w   sub_15CCA
		move.w  #$101,(word_FF502A).l
		bra.w   SetCarryBit

    ; End of function sub_1440E


; =============== S U B R O U T I N E =======================================

sub_14420:
		move.b  #2,d0
		bsr.w   sub_15D7E
		move.b  #1,d2
		bsr.w   sub_15CCA
		move.w  #$101,d0
		move.w  d0,(word_FF503A).l
		move.w  d0,(word_FF504A).l
		move.w  d0,(word_FF505A).l
		bra.w   SetCarryBit

    ; End of function sub_14420


; =============== S U B R O U T I N E =======================================

sub_1444A:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		bsr.w   sub_15D7E
		bra.w   SetCarryBit

    ; End of function sub_1444A


; =============== S U B R O U T I N E =======================================

sub_1445C:
		move.b  #2,d2
		bsr.w   sub_15CCA
		move.w  #$101,d0
		move.w  d0,(word_FF506A).l
		move.w  d0,(word_FF507A).l
		move.w  d0,(word_FF508A).l
		bra.w   SetCarryBit

    ; End of function sub_1445C


; =============== S U B R O U T I N E =======================================

sub_1447E:
		move.b  #3,d2
		bsr.w   sub_15CCA
		move.b  #2,d0
		bsr.w   sub_15D02
		move.b  #4,d2
		bsr.w   sub_15CCA
		move.w  #$101,d0
		move.w  d0,(word_FF509A).l
		move.w  d0,(word_FF50AA).l
		move.w  d0,(word_FF50BA).l
		move.w  d0,(word_FF50CA).l
		move.w  d0,(word_FF50DA).l
		move.w  d0,(word_FF50EA).l
		bra.w   SetCarryBit

    ; End of function sub_1447E


; =============== S U B R O U T I N E =======================================

sub_144C2:
		move.b  (byte_FF9C5B).l,d0
		andi.b  #$60,d0 
		cmpi.b  #$20,d0 
		bne.w   TestD0
		ori.b   #$40,(byte_FF9C5B).l 
		bra.w   SetCarryBit

    ; End of function sub_144C2


; =============== S U B R O U T I N E =======================================

sub_144E0:
		move.w  #$3D,d0 
		move.w  #1,d1
		move.w  #$29,d2 
		move.w  #$A,d3
		move.w  #5,d4
		move.w  #3,d5
		bsr.s   loc_1451C
		move.w  #$3D,d0 
		move.w  #5,d1
		move.w  #$29,d2 
		move.w  #$A,d3
		bsr.s   loc_1451C
		move.w  #$3D,d0 
		move.w  #9,d1
		move.w  #$29,d2 
		move.w  #$A,d3
loc_1451C:
		bsr.w   sub_15E38
		sndCom  SFX_HIT
		move.w  #$F,d0
		jsr     (j_Sleep).l
		bra.w   SetCarryBit

    ; End of function sub_144E0


; =============== S U B R O U T I N E =======================================

sub_14532:
		clr.b   d2
		bsr.w   sub_15CCA
		move.w  #$101,(word_FF51DA).l
		bra.w   SetCarryBit

    ; End of function sub_14532


; =============== S U B R O U T I N E =======================================

sub_14544:
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		move.b  #3,d1
		move.w  #1,d0
		move.w  #9,d7
loc_14558:
		move.w  #7,d6
		cmpi.w  #4,d7
		bcc.s   loc_14566
		move.w  #3,d6
loc_14566:
		bsr.s   loc_1457E
		dbf     d6,loc_14566
		addq.w  #1,d0
		dbf     d7,loc_14558
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit
loc_1457E:
		movem.w d0/d6-d7,-(sp)
		movem.w d0-d1,-(sp)
		move.w  #$1D,d0
		bsr.w   sub_11126       
		movem.w (sp)+,d0-d1
		addq.b  #1,d1
		andi.b  #3,d1
		jsr     (j_Sleep).l
		movem.w (sp)+,d0/d6-d7
		rts

    ; End of function sub_14544


; =============== S U B R O U T I N E =======================================

sub_145A4:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_145A4


; =============== S U B R O U T I N E =======================================

sub_145B0:
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_145B0


; =============== S U B R O U T I N E =======================================

sub_145BC:
		move.b  #4,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_145BC


; =============== S U B R O U T I N E =======================================

sub_145C8:
		lea     byte_15C4C(pc), a2
loc_145CC:
		clr.w   d0
		move.b  (MAP_SPRITE_POSITION).l,d1
		move.b  (MAP_SPRITE_POSITION+1).l,d2
loc_145DA:
		cmpi.b  #$FF,(a2,d0.w)
		beq.w   TestD0
		cmp.b   (a2,d0.w),d1
		bne.s   loc_145F2
		cmp.b   1(a2,d0.w),d2
		beq.w   SetCarryBit
loc_145F2:
		addq.w  #2,d0
		bra.s   loc_145DA

    ; End of function sub_145C8


; =============== S U B R O U T I N E =======================================

sub_145F6:
		lea     byte_15C51(pc), a2
		bra.w   loc_145CC

    ; End of function sub_145F6


; =============== S U B R O U T I N E =======================================

sub_145FE:
		lea     byte_15C58(pc), a2
		bra.w   loc_145CC

    ; End of function sub_145FE


; =============== S U B R O U T I N E =======================================

sub_14606:
		lea     byte_15C61(pc), a2
		bra.w   loc_145CC

    ; End of function sub_14606


; =============== S U B R O U T I N E =======================================

sub_1460E:
		lea     byte_15C6C(pc), a2
		bra.w   loc_145CC

    ; End of function sub_1460E


; =============== S U B R O U T I N E =======================================

sub_14616:
		lea     byte_15C71(pc), a2
		bra.w   loc_145CC

    ; End of function sub_14616


; =============== S U B R O U T I N E =======================================

sub_1461E:
		lea     byte_15C78(pc), a2
		bra.w   loc_145CC

    ; End of function sub_1461E


; =============== S U B R O U T I N E =======================================

sub_14626:
		lea     byte_15C83(pc), a2
		bsr.w   loc_145CC
		bcc.w   TestD0
		clr.w   (byte_FF503C).l
		clr.w   (word_FF504C).l
		clr.w   (word_FF50AC).l
		bra.w   SetCarryBit

    ; End of function sub_14626


; =============== S U B R O U T I N E =======================================

sub_14648:
		lea     byte_15C8E(pc), a2
		bsr.w   loc_145CC
		bcc.w   TestD0
		move.w  #$101,(word_FF503A).l
		move.w  #$224C,d0
		move.w  d0,(word_FF502C).l
		move.w  d0,(byte_FF503C).l
		move.w  d0,(word_FF504C).l
		move.w  d0,(word_FF50AC).l
		bra.w   SetCarryBit

    ; End of function sub_14648


; =============== S U B R O U T I N E =======================================

sub_1467C:
		lea     byte_15C95(pc), a2
		bra.w   loc_145CC

    ; End of function sub_1467C


; =============== S U B R O U T I N E =======================================

sub_14684:
		lea     byte_15C9C(pc), a2
		bra.w   loc_145CC

    ; End of function sub_14684


; =============== S U B R O U T I N E =======================================

sub_1468C:
		lea     byte_15CA3(pc), a2
		bra.w   loc_145CC

    ; End of function sub_1468C


; =============== S U B R O U T I N E =======================================

sub_14694:
		lea     byte_15CAA(pc), a2
		bra.w   loc_145CC
loc_1469C:
		cmp.b   (MAP_SPRITE_POSITION+1).l,d0
		bne.w   TestD0
		beq.w   SetCarryBit

    ; End of function sub_14694


; =============== S U B R O U T I N E =======================================

sub_146AA:
		lea     byte_15CB1(pc), a2
		bsr.w   loc_145CC
		bcc.w   TestD0
		move.w  #$464C,(word_FF505C).l
		move.w  #$464C,(word_FF506C).l
		bra.w   SetCarryBit

    ; End of function sub_146AA


; =============== S U B R O U T I N E =======================================

sub_146CA:
		move.b  #$D,d0
		bra.w   loc_1469C

    ; End of function sub_146CA


; =============== S U B R O U T I N E =======================================

sub_146D2:
		move.b  #$C,d0
		bra.w   loc_1469C

    ; End of function sub_146D2


; =============== S U B R O U T I N E =======================================

sub_146DA:
		move.b  #$B,d0
		bra.w   loc_1469C

    ; End of function sub_146DA


; =============== S U B R O U T I N E =======================================

sub_146E2:
		move.b  #$A,d0
		bra.w   loc_1469C

    ; End of function sub_146E2


; =============== S U B R O U T I N E =======================================

sub_146EA:
		cmpi.b  #2,(byte_FF500F).l
		bne.w   TestD0
		move.w  #3,d0
		move.b  d0,d1
		bsr.w   sub_11126       
		clr.b   d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_146EA


; =============== S U B R O U T I N E =======================================

sub_1470A:
		 
		sndCom  SFX_DOOR_OPEN
		clr.w   d0
		move.w  #$2B,d1 
		move.w  #6,d2
		move.w  #$15,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_1470A


; =============== S U B R O U T I N E =======================================

sub_1472C:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_1472C


; =============== S U B R O U T I N E =======================================

sub_14738:
		move.b  #2,d2
		bsr.w   sub_15CCA
		move.b  (P1_INPUT).l,d0 
		andi.b  #INPUT_B|INPUT_C|INPUT_A|INPUT_START,d0
		cmpi.b  #$E0,d0
		bne.w   SetCarryBit
		move.b  (byte_FF5153).l,d0
		andi.w  #$F,d0
		move.w  #$1D,d1
		bsr.w   sub_11E4C
		move.w  #$101,(word_FF515A).l
		bra.w   SetCarryBit

    ; End of function sub_14738


; =============== S U B R O U T I N E =======================================

sub_14770:
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14770


; =============== S U B R O U T I N E =======================================

sub_1477C:
		 
		sndCom  SFX_HIT
		move.b  (byte_FF5153).l,d0
		andi.w  #$F,d0
		move.w  #$7F,d1 
		bsr.w   sub_11D84       
		bsr.w   sub_15E76
		bra.w   SetCarryBit

    ; End of function sub_1477C


; =============== S U B R O U T I N E =======================================

sub_1479A:
		move.b  #4,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_1479A


; =============== S U B R O U T I N E =======================================

sub_147A6:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_147A6


; =============== S U B R O U T I N E =======================================

sub_147B2:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_147B2


; =============== S U B R O U T I N E =======================================

sub_147BE:
		 
		sndCom  SFX_TRAIN_WHISTLE
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #1,d0
		bra.w   SetCarryBit

    ; End of function sub_147BE


; =============== S U B R O U T I N E =======================================

sub_147D2:
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$18,d0
		ori.b   #8,d0
		andi.b  #$E7,(byte_FF5022).l
		or.b    d0,(byte_FF5022).l
		bra.w   SetCarryBit

    ; End of function sub_147D2


; =============== S U B R O U T I N E =======================================

sub_147F2:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_147F2


; =============== S U B R O U T I N E =======================================

sub_147FE:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_147FE


; =============== S U B R O U T I N E =======================================

sub_1480A:
		 
		sndCom  SFX_DOOR_OPEN
		move.w  #$57,d0 
		move.w  #$19,d1
		move.w  #$2E,d2 
		move.w  #$11,d3
		move.w  #2,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_1480A


; =============== S U B R O U T I N E =======================================

sub_1482E:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_1482E


; =============== S U B R O U T I N E =======================================

sub_1483A:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_1483A


; =============== S U B R O U T I N E =======================================

sub_14846:
		movem.l a0-a1,-(sp)
		moveq   #5,d7
loc_1484C:
		addq.w  #4,(word_FF50B4).l
		subq.w  #4,(word_FF50A4).l
		movem.w d7,-(sp)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_1484C
		sndCom  SFX_HIT
		moveq   #5,d7
loc_14874:
		movem.w d7,-(sp)
		subq.w  #4,(word_FF50A4).l
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_14874
		move.b  #2,d2
		bsr.w   sub_15CCA
		moveq   #$11,d7
loc_1489A:
		movem.w d7,-(sp)
		addq.w  #4,(word_FF50A4).l
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_1489A
		movem.l (sp)+,a0-a1
		sndCom  SFX_HIT
		bra.w   SetCarryBit

    ; End of function sub_14846


; =============== S U B R O U T I N E =======================================

sub_148C2:
		move.w  #$B,d0
		bsr.w   sub_15D02
		move.b  #3,d2
		bsr.w   sub_15CCA
		move.w  #$101,(word_FF50AA).l
		bra.w   SetCarryBit

    ; End of function sub_148C2


; =============== S U B R O U T I N E =======================================

sub_148DE:
		movem.l a0-a1,-(sp)
		bsr.s   loc_14928
		moveq   #$17,d7
loc_148E6:
		movem.w d7,-(sp)
		addq.w  #2,(word_FF50A6).l
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_148E6
		bsr.s   loc_14928
		movem.l (sp)+,a0-a1
		move.w  #$51,d0 
		move.w  #7,d1
		move.w  #$43,d2 
		move.w  #7,d3
		move.w  #3,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit
loc_14928:
		move.b  #4,d2
		bsr.w   sub_15CCA
		moveq   #$B,d7
loc_14932:
		movem.w d7,-(sp)
		subq.w  #4,(word_FF50A6).l
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_14932
		sndCom  SFX_HIT
		bsr.w   sub_15E76
		rts

    ; End of function sub_148DE


; =============== S U B R O U T I N E =======================================

sub_14958:
		move.b  #5,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14958


; =============== S U B R O U T I N E =======================================

sub_14964:
		move.b  #5,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14964


; =============== S U B R O U T I N E =======================================

sub_14970:
		btst    #3,(byte_FF9C5C).l
		bne.w   SetCarryBit
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		ori.b   #$10,(MAP_SPRITE_FACING).l
		movem.l a0-a1,-(sp)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,a0-a1
		move.b  #1,d1
		move.b  #9,d2
		bsr.w   loc_15CCE
		bra.w   SetCarryBit

    ; End of function sub_14970


; =============== S U B R O U T I N E =======================================

sub_149AE:
		move.w  #$101,$A(a0)
		bra.w   SetCarryBit

    ; End of function sub_149AE


; =============== S U B R O U T I N E =======================================

sub_149B8:
		move.w  #4,(word_FFF8E2).l
		move.w  #4,(word_FFF832).l
		bra.w   SetCarryBit

    ; End of function sub_149B8


; =============== S U B R O U T I N E =======================================

sub_149CC:
		move.w  #2,(word_FFF8E2).l
		move.w  #2,(word_FFF832).l
		bra.w   SetCarryBit

    ; End of function sub_149CC


; =============== S U B R O U T I N E =======================================

sub_149E0:
		movem.l a0-a1,-(sp)
		move.w  #$FFFF,d1
		move.w  #$17,d6
		move.w  #1,d0
		bsr.s   loc_14A64
		move.w  #$17,d6
		move.w  #2,d0
		bsr.s   loc_14A64
		move.w  #$17,d6
		move.w  #3,d0
		bsr.s   loc_14A64
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		move.w  #1,d1
		move.w  #1,d6
		move.w  #$10,d0
		bsr.s   loc_14A64
		move.w  #3,d6
		move.w  #$A,d0
		bsr.s   loc_14A64
		move.w  #7,d6
		move.w  #4,d0
		bsr.s   loc_14A64
		move.w  #$D,d6
		move.w  #2,d0
		bsr.s   loc_14A64
		move.w  #$13,d6
		move.w  #1,d0
		bsr.s   loc_14A64
		move.w  #2,d1
		move.w  #$B,d6
		move.w  #1,d0
		bsr.s   loc_14A64
		movem.l (sp)+,a0-a1
		move.b  #5,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit
loc_14A64:
		movem.w d1,-(sp)
		movem.w d0-d1,-(sp)
		bsr.w   sub_164EC
		movem.w (sp)+,d0-d1
		movem.l d6/a0,-(sp)
		movem.w d0,-(sp)
		add.w   d1,(word_FF5196).l
		movem.w (sp)+,d0
		movem.w d0,-(sp)
		subq.w  #1,d0
loc_14A8C:
		movem.w d0,-(sp)
		lea     (MAP_SPRITE_POSITION).l,a0
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d0
		dbf     d0,loc_14A8C
		movem.w (sp)+,d0
		movem.l (sp)+,d6/a0
		movem.w (sp)+,d1
		dbf     d6,loc_14A64
		rts

    ; End of function sub_149E0


; =============== S U B R O U T I N E =======================================

sub_14ABE:
		cmpi.b  #$C,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		cmpi.b  #6,(MAP_SPRITE_POSITION).l
		bne.w   loc_14AE0
		ori.b   #$18,2(a0)
		bra.w   SetCarryBit
loc_14AE0:
		cmpi.b  #$E,(MAP_SPRITE_POSITION).l
		bne.w   TestD0
		andi.b  #$E7,2(a0)
		ori.b   #8,2(a0)
		bra.w   SetCarryBit

    ; End of function sub_14ABE


; =============== S U B R O U T I N E =======================================

sub_14AFC:
		cmpi.b  #$D,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_14AFC


; =============== S U B R O U T I N E =======================================

sub_14B0C:
		cmpi.b  #6,(a0)
		bne.s   loc_14B22
		andi.b  #$E7,2(a0)
		ori.b   #8,2(a0)
		bra.w   SetCarryBit
loc_14B22:
		ori.b   #$18,2(a0)
		bra.w   SetCarryBit

    ; End of function sub_14B0C


; =============== S U B R O U T I N E =======================================

sub_14B2C:
		move.b  #0,d2
		cmpi.b  #6,(a0)
		beq.s   loc_14B3A
		move.b  #1,d2
loc_14B3A:
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14B2C


; =============== S U B R O U T I N E =======================================

sub_14B42:
		moveq   #$17,d7
loc_14B44:
		subq.w  #1,6(a0)
		movem.l d7-a1,-(sp)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a1
		dbf     d7,loc_14B44
		bra.w   SetCarryBit

    ; End of function sub_14B42


; =============== S U B R O U T I N E =======================================

sub_14B62:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14B62


; =============== S U B R O U T I N E =======================================

sub_14B6E:
		 
		sndCom  SFX_DESOUL_HOVERING
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #3,d0
		bra.w   SetCarryBit

    ; End of function sub_14B6E


; =============== S U B R O U T I N E =======================================

sub_14B82:
		cmpi.b  #$17,(MAP_SPRITE_POSITION).l
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_14B82


; =============== S U B R O U T I N E =======================================

sub_14B92:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14B92


; =============== S U B R O U T I N E =======================================

sub_14B9E:
		move.b  #1,d2
		bsr.w   sub_15CCA
		move.b  #2,d2
		bsr.w   sub_15CCA
		clr.w   (word_FFF8E4).l
		bra.w   SetCarryBit

    ; End of function sub_14B9E


; =============== S U B R O U T I N E =======================================

sub_14BB8:
		 
		sndCom  MUSIC_EARTHQUAKE
		ori.b   #$80,(byte_FFF81D).l
		move.w  (word_FFF8E4).l,d0
		andi.b  #3,d0
		bne.s   loc_14BF2
		move.w  (word_FFF8E4).l,d0
		andi.w  #$FFFC,d0
		lsl.w   #2,d0
		cmpi.w  #$50,d0 
		bcc.s   loc_14BF2
		sndCom  SFX_REFUSAL
		lea     (byte_FF5050).l,a2
		move.w  #0,$A(a2,d0.w)
loc_14BF2:
		addq.w  #1,(word_FFF8E4).l
		cmpi.w  #$1A,(word_FFF8E4).l
		bne.w   TestD0
		move.w  #$101,(word_FF50AA).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		bra.w   SetCarryBit

    ; End of function sub_14BB8


; =============== S U B R O U T I N E =======================================

sub_14C14:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		movem.w d0,-(sp)
		bsr.w   sub_15D7E
		move.b  #6,d2
		bsr.w   sub_15CCA
		movem.w (sp)+,d0
		bsr.w   sub_15D02
		bra.w   SetCarryBit

    ; End of function sub_14C14


; =============== S U B R O U T I N E =======================================

sub_14C3A:
		move.b  #3,d2
		bsr.w   sub_15CCA
		ori.b   #$80,(byte_FFF81D).l
		move.w  #0,(word_FF503A).l
		move.w  #0,(word_FF504A).l
		bra.w   SetCarryBit

    ; End of function sub_14C3A


; =============== S U B R O U T I N E =======================================

sub_14C5E:
		move.b  #4,d2
		bsr.w   sub_15CCA
		move.b  #5,d2
		bsr.w   sub_15CCA
		move.b  #$A,d0
		bsr.w   sub_15D02
		move.b  #6,d2
		bsr.w   sub_15CCA
		clr.b   (byte_FFF81D).l
		bset    #6,(byte_FF9C5B).l
		bra.w   SetCarryBit

    ; End of function sub_14C5E


; =============== S U B R O U T I N E =======================================

sub_14C90:
		move.b  (byte_FF9C5B).l,d0
		andi.b  #$C0,d0
		cmpi.b  #$40,d0 
		bne.w   TestD0
		cmpi.b  #$19,(MAP_SPRITE_POSITION).l
		beq.w   SetCarryBit
		cmpi.b  #$2B,(MAP_SPRITE_POSITION+1).l 
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_14C90


; =============== S U B R O U T I N E =======================================

sub_14CBE:
		 
		sndCom  MUSIC_EARTHQUAKE
		bsr.w   sub_15E76
		move.w  #$42,d0 
		move.w  #$28,d1 
		move.w  #$14,d2
		move.w  #$2A,d3 
		move.w  #6,d4
		move.w  #6,d5
		bsr.w   sub_15E38
		move.w  #30,d0
		jsr     (j_Sleep).l
		move.w  #$42,d0 
		move.w  #$2E,d1 
		move.w  #$14,d2
		move.w  #$28,d3 
		move.w  #6,d4
		move.w  #8,d5
		bsr.w   sub_15E38
		move.w  #30,d0
		jsr     (j_Sleep).l
		move.w  #$33,d0 
		move.w  #0,d1
		move.w  #5,d2
		move.w  #$24,d3 
		move.w  #$15,d4
		move.w  #$14,d5
		bsr.w   sub_15E38
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		bra.w   SetCarryBit

    ; End of function sub_14CBE


; =============== S U B R O U T I N E =======================================

sub_14D36:
		move.b  #7,d2
		bsr.w   sub_15CCA
		bsr.s   loc_14D78
		move.w  #$3B,d7 
loc_14D44:
		clr.w   d0
		jsr     j_GetMapSprite
		btst    #0,d7
		bne.s   loc_14D56
		move.b  #$8A,d1
loc_14D56:
		bsr.w   sub_11D84       
		bsr.s   loc_14DBC
		sndCom  SFX_DIALOG_BLEEP_1
		jsr     (j_WaitForVInt).l
		dbf     d7,loc_14D44
		bsr.s   loc_14D9A
		move.b  #8,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit
loc_14D78:
		move.w  #$3C,d7 
		move.w  #$32,d0 
loc_14D80:
		bsr.s   loc_14DBC
		sndCom  SFX_DIALOG_BLEEP_1
		jsr     (j_Sleep).l
		subq.b  #4,d0
		bpl.s   loc_14D94
		move.w  #1,d0
loc_14D94:
		dbf     d7,loc_14D80
		rts
loc_14D9A:
		move.w  #$3C,d7 
		move.w  #1,d0
loc_14DA2:
		bsr.s   loc_14DBC
		sndCom  SFX_DIALOG_BLEEP_1
		jsr     (j_Sleep).l
		cmpi.w  #$F,d7
		bcc.s   loc_14DB6
		addq.b  #3,d0
loc_14DB6:
		dbf     d7,loc_14DA2
		rts
loc_14DBC:
		movem.l d0/d7-a1,-(sp)
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$E7,(MAP_SPRITE_FACING).l
		addi.b  #8,d0
		andi.b  #$18,d0
		or.b    d0,(MAP_SPRITE_FACING).l
		bsr.w   sub_1106C
		movem.l (sp)+,d0/d7-a1
		rts

    ; End of function sub_14D36


; =============== S U B R O U T I N E =======================================

sub_14DE6:
		bsr.s   loc_14D78
		move.w  #$3B,d7 
loc_14DEC:
		clr.w   d0
		jsr     j_GetMapSprite
		btst    #0,d7
		beq.s   loc_14DFE
		move.b  #$8A,d1
loc_14DFE:
		bsr.w   sub_11D84       
		bsr.s   loc_14DBC
		sndCom  SFX_DIALOG_BLEEP_1
		jsr     (j_WaitForVInt).l
		dbf     d7,loc_14DEC
		bsr.s   loc_14D9A
		bra.w   SetCarryBit

    ; End of function sub_14DE6


; =============== S U B R O U T I N E =======================================

sub_14E18:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bsr.w   sub_15E76
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14E18


; =============== S U B R O U T I N E =======================================

sub_14E30:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bsr.w   sub_15E76
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14E30


; =============== S U B R O U T I N E =======================================

sub_14E48:
		btst    #3,(byte_FF9C56).l
		beq.w   TestD0
		move.w  #$2F,d0 
		move.w  #$2F,d1 
		move.w  #$28,d2 
		move.w  #$E,d3
		move.w  #$A,d4
		move.w  #9,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_14E48


; =============== S U B R O U T I N E =======================================

sub_14E74:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14E74


; =============== S U B R O U T I N E =======================================

sub_14E80:
		move.w  #$300,$A(a0)
		bra.w   SetCarryBit

    ; End of function sub_14E80


; =============== S U B R O U T I N E =======================================

sub_14E8A:
		move.w  #$11,d0
		move.w  #0,d1
		move.w  #$19,d2
		move.w  #$12,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_14E8A


; =============== S U B R O U T I N E =======================================

sub_14EAA:
		move.b  #0,d2
		bsr.w   sub_15CCA
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #8,d0
		bra.w   SetCarryBit

    ; End of function sub_14EAA


; =============== S U B R O U T I N E =======================================

sub_14EC2:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14EC2


; =============== S U B R O U T I N E =======================================

sub_14ECE:
		cmpi.b  #$12,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		cmpi.b  #$27,(MAP_SPRITE_POSITION).l 
		beq.w   SetCarryBit
		cmpi.b  #$28,(MAP_SPRITE_POSITION).l 
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_14ECE


; =============== S U B R O U T I N E =======================================

sub_14EF6:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bset    #7,(byte_FF9C5A).l
		btst    #7,(byte_FF9C56).l
		bne.w   SetCarryBit
		bclr    #7,(byte_FF9C5A).l
		clr.b   (byte_FF500F).l 
		move.b  #$46,$C(a0) 
		bra.w   SetCarryBit

    ; End of function sub_14EF6


; =============== S U B R O U T I N E =======================================

sub_14F2A:
		btst    #0,(byte_FF9C59).l
		bne.w   TestD0
		cmpi.b  #$28,(MAP_SPRITE_POSITION+1).l 
		bne.w   TestD0
		cmpi.b  #$1E,(MAP_SPRITE_POSITION).l
		beq.w   SetCarryBit
		cmpi.b  #$1F,(MAP_SPRITE_POSITION).l
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_14F2A


; =============== S U B R O U T I N E =======================================

sub_14F5E:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14F5E


; =============== S U B R O U T I N E =======================================

sub_14F6A:
		 
		sndCom  SFX_DOOR_OPEN
		move.w  #$39,d0 
		move.w  #7,d1
		move.w  #$27,d2 
		move.w  #$10,d3
		move.w  #2,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_14F6A


; =============== S U B R O U T I N E =======================================

sub_14F96:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		bsr.w   sub_15D7E
		move.b  #3,d2
		bsr.w   sub_15CCA
		bsr.w   loc_1562A
		move.b  #4,d2
		bsr.w   sub_15CCA
		bset    #2,(byte_FF9C59).l
		bra.w   SetCarryBit

    ; End of function sub_14F96


; =============== S U B R O U T I N E =======================================

sub_14FC4:
		move.w  #2,d0
		move.w  #$15,d1
		move.w  #$A,d2
		move.w  #$15,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		move.w  #0,d0
		move.w  #$24,d1 
		move.w  #0,d2
		move.w  #$13,d3
		move.w  #5,d4
		move.w  #4,d5
		bsr.w   sub_15E38
		sndCom  SFX_HIT
		bsr.w   sub_15E76
		bset    #0,(byte_FF9C59).l
		bra.w   SetCarryBit

    ; End of function sub_14FC4


; =============== S U B R O U T I N E =======================================

sub_15010:
		move.w  #0,d1
		move.w  #$FFFC,d2
		move.w  #5,d6
		bsr.s   loc_15030
		move.w  #4,d1
		move.w  #0,d2
		move.w  #$B,d6
		bsr.s   loc_15030
		bra.w   SetCarryBit
loc_15030:
		movem.l d1-d2/d6/a0,-(sp)
		add.w   d1,(dword_FF5054).l
		add.w   d2,(dword_FF5054+2).l
		bsr.w   sub_164EC
		lea     (MAP_SPRITE_POSITION).l,a0
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d1-d2/d6/a0
		dbf     d6,loc_15030
		rts

    ; End of function sub_15010


; =============== S U B R O U T I N E =======================================

sub_15062:
		move.b  #5,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15062


; =============== S U B R O U T I N E =======================================

sub_1506E:
		move.b  #6,d2
		bsr.w   sub_15CCA
		clr.w   (word_FF505A).l
		bra.w   SetCarryBit

    ; End of function sub_1506E


; =============== S U B R O U T I N E =======================================

sub_15080:
		move.w  #$101,(word_FF505A).l
		move.b  #7,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15080


; =============== S U B R O U T I N E =======================================

sub_15094:
		move.b  #8,d2
		bsr.w   sub_15CCA
		sndCom  SFX_HIT
		movem.l a0,-(sp)
		move.w  #9,d7
loc_150A8:
		movem.w d7,-(sp)
		lea     (PALETTE_1_BASE).l,a0
		move.w  #$F,d7
loc_150B6:
		move.w  (a0),d0
		move.w  #$E,(a0)+
		movem.w d0,-(sp)
		dbf     d7,loc_150B6
		jsr     (j_DuplicatePalettes).l
		jsr     (j_EnableDmaQueueProcessing).l
		jsr     (j_WaitForVInt).l
		move.w  #$F,d7
		lea     (PALETTE_2_BASE).l,a0
loc_150E0:
		movem.w (sp)+,d0
		move.w  d0,-(a0)
		dbf     d7,loc_150E0
		jsr     (j_DuplicatePalettes).l
		jsr     (j_EnableDmaQueueProcessing).l
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_150A8
		movem.l (sp)+,a0
		move.b  #9,d2
		bsr.w   sub_15CCA
		move.b  #7,d0
		bsr.w   sub_15D7E
		bra.w   SetCarryBit

    ; End of function sub_15094


; =============== S U B R O U T I N E =======================================

sub_1511C:
		move.b  #$A,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_1511C


; =============== S U B R O U T I N E =======================================

sub_15128:
		move.b  #0,d2
		bsr.w   sub_15CCA
		sndCom  SFX_DOOR_OPEN
		move.w  #$20,d0 
		move.w  #0,d1
		move.w  #$20,d2 
		move.w  #$E,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_15128


; =============== S U B R O U T I N E =======================================

sub_15154:
		 
		sndCom  SFX_DOOR_OPEN
		move.w  #$20,d0 
		move.w  #$E,d1
		move.w  #$20,d2 
		move.w  #1,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		move.w  #$20,d0 
		move.w  #0,d1
		move.w  #$20,d2 
		move.w  #$E,d3
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_15154


; =============== S U B R O U T I N E =======================================

sub_1518C:
		move.w  #$20,d0 
		move.w  #1,d1
		move.w  #$20,d2 
		move.w  #$E,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_1518C


; =============== S U B R O U T I N E =======================================

sub_151AC:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_151AC


; =============== S U B R O U T I N E =======================================

sub_151B8:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_151B8


; =============== S U B R O U T I N E =======================================

sub_151C4:
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_151C4


; =============== S U B R O U T I N E =======================================

sub_151D0:
		move.b  #4,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_151D0


; =============== S U B R O U T I N E =======================================

sub_151DC:
		 
		sndCom  SFX_DOOR_OPEN
		move.w  #0,d0
		move.w  #$3B,d1 
		move.w  #$C,d2
		move.w  #$E,d3
		move.w  #7,d4
		move.w  #5,d5
		bsr.w   sub_15E38
		move.w  #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_DOOR_OPEN
		move.w  #7,d0
		move.w  #$3B,d1 
		move.w  #$C,d2
		move.w  #$E,d3
		bsr.w   sub_15E38
		move.w  #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_DOOR_OPEN
		move.w  #$E,d0
		move.w  #$3B,d1 
		move.w  #$C,d2
		move.w  #$E,d3
		bsr.w   sub_15E38
		move.w  #30,d0
		jsr     (j_Sleep).l
		bra.w   SetCarryBit

    ; End of function sub_151DC


; =============== S U B R O U T I N E =======================================

sub_1524E:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		movem.w d0,-(sp)
		bsr.w   sub_15D7E
		move.b  #0,d2
		bsr.w   sub_15CCA
		movem.w (sp)+,d0
		bsr.w   sub_15D02
		clr.b   1(a0)
		bra.w   SetCarryBit

    ; End of function sub_1524E


; =============== S U B R O U T I N E =======================================

sub_15278:
		move.w  #$A,d0
		move.w  #$F,d1
		move.w  #$1B,d2
		move.w  #$18,d3
		bsr.s   loc_152E0
		move.w  #$1B,d0
		move.w  #$10,d1
		move.w  #$A,d2
		move.w  #$F,d3
		bsr.s   loc_152E0
		move.w  #$1B,d0
		move.w  #$12,d1
		move.w  #$A,d2
		move.w  #$F,d3
		bsr.s   loc_152E0
		move.w  #$1B,d0
		move.w  #$14,d1
		move.w  #$A,d2
		move.w  #$F,d3
		bsr.s   loc_152E0
		move.w  #$1C,d0
		move.w  #$1A,d1
		move.w  #7,d2
		move.w  #$24,d3 
		move.w  #2,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit
loc_152E0:
		move.w  #3,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		sndCom  SFX_HIT
		move.w  #30,d0
		jsr     (j_Sleep).l
		rts

    ; End of function sub_15278


; =============== S U B R O U T I N E =======================================

sub_152FC:
		move.w  #$1B,d0
		move.w  #$12,d1
		move.w  #$A,d2
		move.w  #$F,d3
		bsr.s   loc_15336
		move.w  #$1B,d0
		move.w  #$10,d1
		move.w  #$A,d2
		move.w  #$F,d3
		bsr.s   loc_15336
		move.w  #$1B,d0
		move.w  #$18,d1
		move.w  #$A,d2
		move.w  #$F,d3
		bsr.s   loc_15336
		bra.w   SetCarryBit
loc_15336:
		move.w  #3,d4
		move.w  #2,d5
		bsr.w   sub_15E38
		move.w  #30,d0
		jsr     (j_Sleep).l
		rts

    ; End of function sub_152FC


; =============== S U B R O U T I N E =======================================

sub_1534E:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		movem.w d0,-(sp)
		bsr.w   sub_15D7E
		move.b  #1,d2
		bsr.w   sub_15CCA
		movem.w (sp)+,d0
		bsr.w   sub_15D02
		bra.w   SetCarryBit

    ; End of function sub_1534E


; =============== S U B R O U T I N E =======================================

sub_15374:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15374


; =============== S U B R O U T I N E =======================================

sub_15380:
		move.b  #2,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15380


; =============== S U B R O U T I N E =======================================

sub_1538C:
		move.b  #4,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_1538C


; =============== S U B R O U T I N E =======================================

sub_15398:
		 
		sndCom  SFX_DOOR_OPEN
		move.w  #$3D,d0 
		move.w  #$1D,d1
		move.w  #$3E,d2 
		move.w  #$15,d3
		move.w  #1,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		bra.w   SetCarryBit

    ; End of function sub_15398


; =============== S U B R O U T I N E =======================================

j_SetCarryBit:
		
		bra.w   SetCarryBit

    ; End of function j_SetCarryBit

		move.b  #2,d2
		bsr.w   sub_15CCA
		move.b  #8,(FADING_COUNTER_MAX).l
		move.b  #1,(FADING_PALETTE_FLAGS).l
		move.b  #OUT_TO_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
loc_153F0:      jsr     (j_WaitForVInt).l
		tst.b   (FADING_SETTING).l
		bne.s   loc_153F0
		move.b  #3,d2
		bsr.w   sub_15CCA
		move.w  #$52A,(word_FF5030).l
		move.w  #$72A,(word_FF5040).l
		move.w  #$42A,(word_FF50C0).l
		move.w  #$429,(word_FF5060).l
		move.w  #$329,(word_FF5070).l
		move.w  #$32A,(word_FF5080).l
		move.w  #$32B,(word_FF5090).l
		move.w  #$42B,(word_FF50A0).l
		move.w  #$529,(unk_FF50B0).l
		movem.l a0-a1,-(sp)
		bsr.w   sub_11D36
		bsr.w   sub_1106C
		movem.l (sp)+,a0-a1
		move.b  #8,(FADING_COUNTER_MAX).l
		move.b  #1,(FADING_PALETTE_FLAGS).l
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.w  #4,d7
loc_1548A:      move.w  #8,d0
		jsr     (j_Sleep).l
		dbf     d7,loc_1548A
		clr.b   (FADING_SETTING).l
		move.b  #4,d2
		bsr.w   sub_15CCA
		move.w  #6,d0
		moveq   #4,d7
loc_154AC:      bsr.w   sub_155B8
		addq.w  #1,d0
		dbf     d7,loc_154AC
		moveq   #$B,d7
loc_154B8:      movem.l d7-a1,-(sp)
		lea     (word_FF5030).l,a0
		addq.w  #2,word_FF5034-word_FF5030(a0)
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a1
		dbf     d7,loc_154B8
		move.b  #5,d2
		bsr.w   sub_15CCA
		move.b  #8,(FADING_COUNTER_MAX).l
		move.b  #1,(FADING_PALETTE_FLAGS).l
		move.b  #OUT_TO_BLACK,(FADING_SETTING).l
		move.b  #1,(FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.w  #4,d7
loc_15512:      move.w  #8,d0
		jsr     (j_Sleep).l
		dbf     d7,loc_15512
		move.w  #$212B,d0
		move.w  d0,(word_FF5090).l
		move.w  d0,(word_FF50A0).l
		subq.b  #1,d0
		move.w  d0,(word_FF5030).l
		move.w  d0,(word_FF5040).l
		move.w  d0,(word_FF50C0).l
		move.w  d0,(word_FF5080).l
		subq.b  #1,d0
		move.w  d0,(word_FF5060).l
		move.w  d0,(word_FF5070).l
		move.w  d0,(unk_FF50B0).l
		movem.l a0-a1,-(sp)
		bsr.w   sub_11D36
		bsr.w   sub_1106C
		movem.l (sp)+,a0-a1
		move.b  #8,(FADING_COUNTER_MAX).l
		move.b  #1,(FADING_PALETTE_FLAGS).l
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
loc_15596:      jsr     (j_WaitForVInt).l
		tst.b   (FADING_SETTING).l
		bne.s   loc_15596
		move.b  #6,d2
		bsr.w   sub_15CCA
		move.b  #3,(FADING_COUNTER_MAX).l
		bra.w   SetCarryBit

; =============== S U B R O U T I N E =======================================

sub_155B8:
		movem.w d0/d7,-(sp)
		movem.w d0,-(sp)
		lsl.w   #4,d0
		lea     (MAP_SPRITE_POSITION).l,a2
		move.l  4(a2,d0.w),d1
		move.l  d1,(dword_FF5054).l
		movem.l a0-a1,-(sp)
		bsr.w   sub_1106C
		movem.l (sp)+,a0-a1
		movem.w (sp)+,d0
		bsr.w   sub_15D02
		movem.w (sp)+,d0/d7
		rts

    ; End of function sub_155B8


; =============== S U B R O U T I N E =======================================

sub_155EC:
		move.b  #$C,d0
		bsr.w   sub_15D7E
		move.b  #7,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_155EC


; =============== S U B R O U T I N E =======================================

sub_15600:
		move.b  #8,d2
		bsr.w   sub_15CCA
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		bsr.w   sub_15D02
		bsr.s   loc_1562A
		bsr.s   loc_15640
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #4,d0
		bra.w   SetCarryBit
loc_1562A:
		move.w  #4,d7
loc_1562E:
		movem.w d7,-(sp)
		bsr.s   loc_15640
		bsr.s   loc_15680
		movem.w (sp)+,d7
		dbf     d7,loc_1562E
		rts
loc_15640:
		move.b  #1,(FADING_COUNTER_MAX).l
		move.b  #$F,(FADING_PALETTE_FLAGS).l
		move.b  #OUT_TO_WHITE,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
loc_15668:
		jsr     (j_WaitForVInt).l
		tst.b   (FADING_SETTING).l
		bne.s   loc_15668
		move.b  #3,(FADING_COUNTER_MAX).l
		rts
loc_15680:
		move.b  #1,(FADING_COUNTER_MAX).l
		move.b  #$F,(FADING_PALETTE_FLAGS).l
		move.b  #IN_FROM_WHITE,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
loc_156A8:
		jsr     (j_WaitForVInt).l
		tst.b   (FADING_SETTING).l
		bne.s   loc_156A8
		move.b  #3,(FADING_COUNTER_MAX).l
		rts

    ; End of function sub_15600


; =============== S U B R O U T I N E =======================================

sub_156C0:
		move.w  #$301,(word_FF51DA).l
		move.w  #$301,(word_FF51EA).l
		bra.w   SetCarryBit

    ; End of function sub_156C0


; =============== S U B R O U T I N E =======================================

sub_156D4:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		bsr.w   sub_15D7E
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_156D4


; =============== S U B R O U T I N E =======================================

sub_156EE:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_156EE


; =============== S U B R O U T I N E =======================================

sub_156FA:
		move.b  #2,d2
		bsr.w   sub_15CCA
		move.w  #$3B,d7 
loc_15706:
		movem.l d7-a1,-(sp)
		bsr.w   sub_164EC
		lea     (MAP_SPRITE_POSITION).l,a0
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a1
		dbf     d7,loc_15706
		move.b  #3,d2
		bsr.w   sub_15CCA
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		bsr.w   sub_15D02
		bset    #3,(byte_FF9C5A).l
		bra.w   SetCarryBit

    ; End of function sub_156FA


; =============== S U B R O U T I N E =======================================

sub_1574C:
		bsr.w   loc_1562A
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		bsr.w   sub_15D7E
		move.b  #0,d2
		bsr.w   sub_15CCA
		bsr.s   loc_1579E
		move.b  #1,d2
		bsr.w   sub_15CCA
		bsr.s   loc_1579E
		move.b  #2,d2
		bsr.w   sub_15CCA
		bsr.s   loc_1579E
		bsr.s   loc_1579E
		bsr.w   loc_1562A
		bsr.w   loc_15640
		bset    #4,(byte_FF9C5A).l
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #5,d0
		bra.w   SetCarryBit
loc_1579E:
		move.w  #$17,d7
loc_157A2:
		movem.l d7-a0,-(sp)
		subi.w  #1,6(a0)
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a0
		dbf     d7,loc_157A2
		rts

    ; End of function sub_1574C


; =============== S U B R O U T I N E =======================================

sub_157C4:
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_157C4


; =============== S U B R O U T I N E =======================================

sub_157D0:
		move.b  #4,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_157D0


; =============== S U B R O U T I N E =======================================

sub_157DC:
		move.b  #5,d2
		bsr.w   sub_15CCA
		bsr.w   loc_1562A
		move.b  #6,d2
		bsr.w   sub_15CCA
		andi.b  #$E7,2(a0)
		movem.l a0-a1,-(sp)
		bsr.w   sub_1106C
		movem.l (sp)+,a0-a1
		move.b  #7,d2
		bsr.w   sub_15CCA
		move.w  #$101,(word_FF504A).l
		bra.w   SetCarryBit

    ; End of function sub_157DC


; =============== S U B R O U T I N E =======================================

sub_15816:
		move.b  #8,d2
		bsr.w   sub_15CCA
		move.b  #9,d2
		bsr.w   sub_15CCA
		move.b  #3,d0
		bsr.w   sub_15D02
		move.b  #$A,d2
		bsr.w   sub_15CCA
		move.b  #4,d0
		bsr.w   sub_15D02
		move.b  #$B,d2
		bsr.w   sub_15CCA
		move.w  #1,d0
		move.w  #$2E,d1 
		move.w  #$F,d2
		move.w  #$25,d3 
		move.w  #2,d4
		move.w  #1,d5
		bsr.w   sub_15E38
		bset    #5,(byte_FF9C5A).l
		bra.w   SetCarryBit

    ; End of function sub_15816


; =============== S U B R O U T I N E =======================================

sub_1586E:
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$18,d0
		eori.b  #$10,d0
		andi.b  #$E7,2(a0)
		or.b    d0,2(a0)
		bra.w   SetCarryBit

    ; End of function sub_1586E


; =============== S U B R O U T I N E =======================================

sub_1588A:
		move.w  #$77,d7 
		bsr.s   loc_158B4
		move.w  #$17,d7
loc_15894:
		movem.l d7-a0,-(sp)
		addi.w  #1,6(a0)
		move.w  #5,d7
		bsr.s   loc_158B4
		movem.l (sp)+,d7-a0
		dbf     d7,loc_15894
		addq.b  #1,1(a0)
		bra.w   SetCarryBit
loc_158B4:
		movem.w d7,-(sp)
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d7
		dbf     d7,loc_158B4
		rts

    ; End of function sub_1588A


; =============== S U B R O U T I N E =======================================

sub_158D0:
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_158D0


; =============== S U B R O U T I N E =======================================

sub_158E6:
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #6,d0
		bra.w   SetCarryBit

    ; End of function sub_158E6


; =============== S U B R O U T I N E =======================================

sub_158F6:
		cmpi.b  #$1E,(MAP_SPRITE_POSITION).l
		bne.w   TestD0
		cmpi.b  #$12,(MAP_SPRITE_POSITION+1).l
		bne.w   TestD0
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$18,d0
		bne.w   TestD0
		tst.w   (word_FFF832).l
		beq.w   TestD0
		bset    #6,(byte_FF9C5B).l
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_158F6


; =============== S U B R O U T I N E =======================================

sub_15936:
		move.w  #30,d0
		jsr     (j_Sleep).l
		move.w  #$78,d7 
loc_15944:
		movem.l d7-a0,-(sp)
		move.b  9(a0),d0
		addq.b  #4,d0
		cmpi.b  #$14,d7
		bcs.s   loc_15964
		addq.b  #6,d0
		cmpi.b  #$32,d7 
		bcs.s   loc_15964
		sndCom  SFX_JOGURT
		addi.b  #$A,d0
loc_15964:
		andi.b  #$3F,d0 
		andi.b  #$C0,9(a0)
		or.b    d0,9(a0)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a0
		dbf     d7,loc_15944
		andi.b  #$C0,9(a0)
		move.w  #30,d0
		jsr     (j_Sleep).l
		bset    #2,(byte_FF9C5C).l
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15936


; =============== S U B R O U T I N E =======================================

sub_159A8:
		movem.l a0-a1,-(sp)
		move.b  3(a0),d0
		andi.w  #$F,d0
		mulu.w  #$6C0,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		movea.l (p_pt_MapSprites+$3C).l,a0
		move.w  #$240,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movem.l (sp)+,a0-a1
		andi.b  #$E7,2(a0)
		move.w  #$3C,d7 
loc_159E0:
		movem.l d7-a0,-(sp)
		move.b  9(a0),d0
		addi.b  #8,d0
		andi.b  #$3F,d0 
		andi.b  #$C0,9(a0)
		or.b    d0,9(a0)
		bsr.w   loc_15A7E
		movem.l (sp)+,d7-a0
		dbf     d7,loc_159E0
		movem.l a0-a1,-(sp)
		movem.l a0,-(sp)
		ori.b   #$10,2(a0)
		andi.b  #$C0,9(a0)
		bsr.w   sub_1106C
		move.w  #$F,d7
loc_15A22:
		bsr.w   loc_15A7E
		dbf     d7,loc_15A22
		ori.b   #$20,9(a0) 
		bsr.w   sub_1106C
		move.w  #$5A,d7 
loc_15A38:
		bsr.w   loc_15A7E
		dbf     d7,loc_15A38
		sndCom  SFX_JOGURT
		andi.b  #$C0,9(a0)
		bsr.w   sub_1106C
		move.w  #$A,d7
loc_15A52:
		bsr.w   loc_15A7E
		dbf     d7,loc_15A52
		movem.l (sp)+,a0
		move.b  3(a0),d0
		andi.w  #$F,d0
		move.w  #$1D,d1
		bsr.w   sub_11D84       
		movem.l (sp)+,a0-a1
		bset    #6,(byte_FF9C5A).l
		bra.w   SetCarryBit
loc_15A7E:
		movem.l d7-a1,-(sp)
		lea     (MAP_SPRITE_POSITION).l,a0
		bsr.w   sub_164EC
		lea     (word_FF5060).l,a0
		bsr.w   sub_164EC
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d7-a1
		rts

    ; End of function sub_159A8


; =============== S U B R O U T I N E =======================================

sub_15AA6:
		movem.l a0-a1,-(sp)
		andi.b  #$E7,2(a0)
		ori.b   #8,2(a0)
		movem.l a0,-(sp)
		bsr.w   sub_1106C
		movem.l (sp)+,a0
		movem.l a0,-(sp)
		move.b  3(a0),d0
		andi.w  #$F,d0
		move.w  #$1D,d1
		bsr.w   sub_11E4C
		sndCom  SFX_JOGURT
		move.w  #$5A,d0 
		jsr     (j_Sleep).l
		movem.l (sp)+,a0
		ori.b   #$18,2(a0)
		movem.l a0,-(sp)
		bsr.w   sub_1106C
		movem.l (sp)+,a0
		movem.l a0,-(sp)
		move.b  3(a0),d0
		andi.w  #$F,d0
		move.w  #$1D,d1
		bsr.w   sub_11D84       
		movem.l (sp)+,a0
		move.b  3(a0),d0
		andi.w  #$F,d0
		mulu.w  #$6C0,d0
		addi.w  #$2240,d0
		movea.w d0,a1
		movea.l (p_SpecialSprite_Jogurt2).l,a0
		move.w  #$90,d0 
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movem.l (sp)+,a0-a1
		bra.w   SetCarryBit

    ; End of function sub_15AA6


; =============== S U B R O U T I N E =======================================

sub_15B40:
		movem.l a0-a1,-(sp)
		andi.b  #$C0,9(a0)
		bsr.w   sub_1106C
		bsr.w   sub_15EB8
		movem.l (sp)+,a0-a1
		move.w  #$100,$A(a0)
		bra.w   SetCarryBit

    ; End of function sub_15B40


; =============== S U B R O U T I N E =======================================

sub_15B60:
		move.w  #$100,$A(a0)
		bra.w   SetCarryBit

    ; End of function sub_15B60


; =============== S U B R O U T I N E =======================================

sub_15B6A:
		cmpi.w  #$72B,(MAP_SPRITE_POSITION).l
		bne.w   TestD0
		move.b  (MAP_SPRITE_FACING).l,d0
		andi.b  #$18,d0
		cmpi.b  #$10,d0
		bne.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_15B6A


; =============== S U B R O U T I N E =======================================

sub_15B8C:
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		lsr.w   #4,d0
		movem.w d0,-(sp)
		bsr.w   sub_15D7E
		move.b  #9,d2
		bsr.w   sub_15CCA
		movem.w (sp)+,d0
		bsr.w   sub_15D02
		clr.b   1(a0)
		bra.w   SetCarryBit

    ; End of function sub_15B8C


; =============== S U B R O U T I N E =======================================

sub_15BB6:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15BB6


; =============== S U B R O U T I N E =======================================

sub_15BC2:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15BC2


; =============== S U B R O U T I N E =======================================

sub_15BCE:
		cmpi.b  #$27,(MAP_SPRITE_POSITION).l 
		beq.w   TestD0
		cmpi.b  #$28,(MAP_SPRITE_POSITION).l 
		beq.w   TestD0
		bra.w   SetCarryBit

    ; End of function sub_15BCE


; =============== S U B R O U T I N E =======================================

sub_15BEA:
		move.b  #1,d2
		bsr.w   sub_15CCA
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #7,d0
		bra.w   SetCarryBit
		bra.w   SetCarryBit

    ; End of function sub_15BEA


; =============== S U B R O U T I N E =======================================

sub_15C06:
		move.b  #0,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15C06


; =============== S U B R O U T I N E =======================================

sub_15C12:
		move.b  #1,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15C12


; =============== S U B R O U T I N E =======================================

sub_15C1E:
		move.b  #2,d2
		bsr.w   sub_15CCA
		move.w  #$101,$A(a0)
		bra.w   SetCarryBit

    ; End of function sub_15C1E


; =============== S U B R O U T I N E =======================================

sub_15C30:
		move.b  #3,d2
		bsr.w   sub_15CCA
		bra.w   SetCarryBit

    ; End of function sub_15C30


; =============== S U B R O U T I N E =======================================

sub_15C3C:
		movem.l (sp)+,d2/d7-a0
		movem.l (sp)+,d0
		move.w  #4,d0
		bra.w   SetCarryBit

    ; End of function sub_15C3C

byte_15C4C:     dc.b 5
		dc.b $24
		dc.b 6
		dc.b $23
		dc.b $FF
byte_15C51:     dc.b 6
		dc.b $24
		dc.b 7
		dc.b $23
		dc.b 6
		dc.b $22
		dc.b $FF
byte_15C58:     dc.b 7
		dc.b $24
		dc.b 8
		dc.b $23
		dc.b 7
		dc.b $22
		dc.b 6
		dc.b $21
		dc.b $FF
byte_15C61:     dc.b 8
		dc.b $24
		dc.b 9
		dc.b $23
		dc.b 8
		dc.b $22
		dc.b 7
		dc.b $21
		dc.b 6
		dc.b $20
		dc.b $FF
byte_15C6C:     dc.b $C
		dc.b $23
		dc.b $D
		dc.b $22
		dc.b $FF
byte_15C71:     dc.b $B
		dc.b $23
		dc.b $C
		dc.b $22
		dc.b $D
		dc.b $23
		dc.b $FF
byte_15C78:     dc.b $B
		dc.b $24
		dc.b $A
		dc.b $23
		dc.b $B
		dc.b $22
		dc.b $C
		dc.b $21
		dc.b $D
		dc.b $20
		dc.b $FF
byte_15C83:     dc.b $B
		dc.b $18
		dc.b 2
		dc.b $18
		dc.b 7
		dc.b $17
		dc.b 8
		dc.b $17
		dc.b 9
		dc.b $17
		dc.b $FF
byte_15C8E:     dc.b 7
		dc.b $13
		dc.b 8
		dc.b $13
		dc.b 9
		dc.b $13
		dc.b $FF
byte_15C95:     dc.b 7
		dc.b $12
		dc.b 8
		dc.b $12
		dc.b 9
		dc.b $12
		dc.b $FF
byte_15C9C:     dc.b 7
		dc.b $11
		dc.b 8
		dc.b $11
		dc.b 9
		dc.b $11
		dc.b $FF
byte_15CA3:     dc.b 7
		dc.b $10
		dc.b 8
		dc.b $10
		dc.b 9
		dc.b $10
		dc.b $FF
byte_15CAA:     dc.b 7
		dc.b $F
		dc.b 8
		dc.b $F
		dc.b 9
		dc.b $F
		dc.b $FF
byte_15CB1:     dc.b 6
		dc.b $F
		dc.b 6
		dc.b $E
		dc.b 7
		dc.b $E
		dc.b 8
		dc.b $E
		dc.b 9
		dc.b $E
		dc.b $A
		dc.b $E
		dc.b $A
		dc.b $F
		dc.b $FF

; =============== S U B R O U T I N E =======================================

SetCarryBit:
		ori     #1,ccr
		rts

    ; End of function SetCarryBit


; =============== S U B R O U T I N E =======================================

TestD0:
		tst.b   d0
		rts

    ; End of function TestD0


; =============== S U B R O U T I N E =======================================

sub_15CCA:
		move.b  #$FF,d1
loc_15CCE:
		movem.l a0-a1,-(sp)
		ext.w   d1
		move.b  (DIALOG_INDEX).l,d0
		ext.w   d0
		bsr.w   sub_17CCA
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_15CCA


; =============== S U B R O U T I N E =======================================

sub_15CE6:
		movem.l a0-a1,-(sp)
		jsr     (sub_304).l
		jsr     (j_WaitForPlayerInput).l
		jsr     (j_CloseMessageWindow).l
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_15CE6


; =============== S U B R O U T I N E =======================================

sub_15D02:
		movem.l a0-a1,-(sp)
		bsr.s   sub_15D0E
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_15D02


; =============== S U B R O U T I N E =======================================

sub_15D0E:
		ext.w   d0
		lsl.w   #4,d0
		move.w  #$1E,d5
		move.w  #$A,d6
loc_15D1A:
		bsr.s   sub_15D2E
		move.w  d6,d7
		bpl.s   loc_15D22
		clr.w   d7
loc_15D22:
		bsr.s   sub_15D5C
		dbf     d7,loc_15D22
		subq.w  #1,d6
		dbf     d5,loc_15D1A

    ; End of function sub_15D0E


; =============== S U B R O U T I N E =======================================

sub_15D2E:
		lea     (MAP_SPRITE_POSITION).l,a6
		move.b  1(a6,d0.w),d1
		move.w  6(a6,d0.w),d2
		movem.l d0-d2/d5-d7,-(sp)
		move.b  #$FF,1(a6,d0.w)
		move.w  #$C00,6(a6,d0.w)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d0-d2/d5-d7
		rts

    ; End of function sub_15D2E


; =============== S U B R O U T I N E =======================================

sub_15D5C:
		movem.l d0-d2/d5-d7,-(sp)
		lea     (MAP_SPRITE_POSITION).l,a6
		move.b  d1,1(a6,d0.w)
		move.w  d2,6(a6,d0.w)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d0-d2/d5-d7
		rts

    ; End of function sub_15D5C


; =============== S U B R O U T I N E =======================================

sub_15D7E:
		movem.l a0-a1,-(sp)
		bsr.s   sub_15D8A
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_15D7E


; =============== S U B R O U T I N E =======================================

sub_15D8A:
		ext.w   d0
		lsl.w   #4,d0
		move.w  #$1E,d5
		move.w  #$A,d6
		lea     (MAP_SPRITE_POSITION).l,a6
		move.b  1(a6,d0.w),d1
		move.w  6(a6,d0.w),d2
loc_15DA4:
		bsr.s   sub_15D5C
		move.w  d6,d7
		bpl.s   loc_15DAC
		clr.w   d7
loc_15DAC:
		bsr.s   sub_15DBC
		dbf     d7,loc_15DAC
		subq.w  #1,d6
		dbf     d5,loc_15DA4
		bra.w   sub_15D5C

    ; End of function sub_15D8A


; =============== S U B R O U T I N E =======================================

sub_15DBC:
		lea     (MAP_SPRITE_POSITION).l,a6
		movem.l d0-d2/d5-d7,-(sp)
		move.b  #$FF,1(a6,d0.w)
		move.w  #$C00,6(a6,d0.w)
		bsr.w   sub_1106C
		jsr     (j_WaitForVInt).l
		movem.l (sp)+,d0-d2/d5-d7
		rts

    ; End of function sub_15DBC


; =============== S U B R O U T I N E =======================================

sub_15DE2:
		movem.l d0-a6,-(sp)
		move.w  #$25,d0 
		move.w  #$1E,d1
		move.w  #$A,d2
		move.w  #$F,d3
		move.w  #1,d4
		move.w  #4,d5
		move.w  #6,d6
loc_15E02:
		movem.w d0-d6,-(sp)
		bsr.s   sub_15E38
		move.w  #$19,d0
loc_15E0C:
		movem.w d0,-(sp)
		bsr.w   sub_11C0C
		addq.b  #1,(byte_FFF820).l
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d0
		dbf     d0,loc_15E0C
		movem.w (sp)+,d0-d6
		addq.w  #1,d0
		dbf     d6,loc_15E02
		movem.l (sp)+,d0-a6
		rts

    ; End of function sub_15DE2


; =============== S U B R O U T I N E =======================================

sub_15E38:
		movem.l d4-d5/a0-a1,-(sp)
		subq.w  #1,d4
		subq.w  #1,d5
loc_15E40:
		movem.w d0/d2/d4-d5,-(sp)
loc_15E44:
		movem.w d0-d4,-(sp)
		movem.w d2-d3,-(sp)
		bsr.w   sub_10D20
		movem.w (sp)+,d0-d1
		bsr.w   sub_114EC
		movem.w (sp)+,d0-d4
		addq.w  #1,d0
		addq.w  #1,d2
		dbf     d4,loc_15E44
		movem.w (sp)+,d0/d2/d4-d5
		addq.w  #1,d1
		addq.w  #1,d3
		dbf     d5,loc_15E40
		movem.l (sp)+,d4-d5/a0-a1
		rts

    ; End of function sub_15E38


; =============== S U B R O U T I N E =======================================

sub_15E76:
		move.w  #$3C,d7 
loc_15E7A:
		movem.w d7,-(sp)
		move.w  (VERTICAL_SCROLL_DATA+2).l,d6
		movem.w d6,-(sp)
		move.w  d7,d1
		divu.w  #8,d1
		addq.w  #1,d1
		sub.w   d1,d6
		jsr     (j_UpdateBackgroundVScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.w (sp)+,d6
		jsr     (j_UpdateBackgroundVScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.w (sp)+,d7
		dbf     d7,loc_15E7A
		rts

    ; End of function sub_15E76


; =============== S U B R O U T I N E =======================================

sub_15EB8:
		 
		sndCom  SFX_HIT
		move.w  #$3C,d7 
loc_15EC0:
		movem.w d7,-(sp)
		move.w  (HORIZONTAL_SCROLL_DATA+2).l,d6
		movem.w d6,-(sp)
		move.w  d7,d1
		divu.w  #8,d1
loc_15ED4:
		addq.w  #1,d1
		sub.w   d1,d6
		jsr     (j_UpdateBackgroundHScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.w (sp)+,d6
		jsr     (j_UpdateBackgroundHScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.w (sp)+,d7
		dbf     d7,loc_15EC0
		rts

    ; End of function sub_15EB8


; =============== S U B R O U T I N E =======================================

sub_15EFE:
		tst.w   (word_FFF834).l 
		bne.w   loc_15F0E
		bsr.s   sub_15F20
		bsr.s   sub_15F58
		rts
loc_15F0E:
		cmpi.w  #6,(word_FFF834).l
		bne.s   loc_15F1C
		bsr.s   sub_15F58
		rts
loc_15F1C:
		tst.b   d0
		rts

    ; End of function sub_15EFE


; =============== S U B R O U T I N E =======================================

sub_15F20:
		lea     (byte_FF5010).l,a0
		move.w  #$1E,d7
		move.w  #$10,d2
loc_15F2E:
		tst.w   (a0)
		bmi.s   return_15F56
		movem.l d2/d7-a0,-(sp)
		tst.b   8(a0)
		bpl.s   loc_15F46
		tst.b   9(a0)
		bmi.s   loc_15F46
		bsr.w   sub_161C8
loc_15F46:
		movem.l (sp)+,d2/d7-a0
		adda.w  #$10,a0
		addi.w  #$10,d2
		dbf     d7,loc_15F2E
return_15F56:
		rts

    ; End of function sub_15F20


; =============== S U B R O U T I N E =======================================

sub_15F58:
		lea     (byte_FF5010).l,a0
		move.w  #$1E,d7
		move.w  #$10,d2
loc_15F66:
		tst.w   (a0)
		bmi.w   loc_15FBE
		movem.l d2/d7-a0,-(sp)
		cmpi.w  #6,(word_FFF834).l
		bne.s   loc_15F82
		tst.b   $A(a0)
		bne.s   loc_15FAE
		beq.s   loc_15F9E
loc_15F82:
		tst.b   $A(a0)
		bmi.s   loc_15FAE
		cmpi.b  #1,$A(a0)
		bls.s   loc_15F9E
		subq.b  #2,$B(a0)
		bpl.w   loc_15FAE
		move.b  $A(a0),$B(a0)
loc_15F9E:
		jsr     sub_8000C
		bcs.s   loc_15FAE
loc_15FA6:
		bsr.s   sub_15FC2
		lsl.w   #2,d0
		jmp     loc_15FD2(pc,d0.w)
loc_15FAE:
		movem.l (sp)+,d2/d7-a0
		adda.w  #$10,a0
		addi.w  #$10,d2
		dbf     d7,loc_15F66
loc_15FBE:
		tst.b   d0
		rts

    ; End of function sub_15F58


; =============== S U B R O U T I N E =======================================

sub_15FC2:
		clr.w   d0
		move.b  $C(a0),d0
		move.b  (a1,d0.w),d0
		addq.b  #1,$C(a0)
		rts

    ; End of function sub_15FC2


; START OF FUNCTION CHUNK FOR sub_15F58

loc_15FD2:
		bra.w   sub_160C8

; END OF FUNCTION CHUNK FOR sub_15F58

		bra.w   sub_160D4
		bra.w   sub_160F8
		bra.w   sub_16102
		bra.w   sub_16112
		bra.w   sub_16122
		bra.w   sub_1612C
		bra.w   sub_16146
		bra.w   sub_1619C
		bra.w   sub_16284
		bra.w   sub_16298
		bra.w   sub_162A2
		bra.w   sub_16150
		bra.w   sub_162AC
		bra.w   sub_1628C
		bra.w   sub_162BC
		bra.w   sub_162E0
		bra.w   sub_16324
		bra.w   sub_1638A
		bra.w   sub_1604A
		bra.w   sub_1605E
		bra.w   sub_16098
		bra.w   sub_160B0
		bra.w   sub_160EE
		bra.w   sub_163BE
		bra.w   sub_160CC
		bra.w   sub_16456
		bra.w   sub_16460
		bra.w   sub_16300
		bra.w   sub_1631A

; =============== S U B R O U T I N E =======================================

sub_1604A:
		bsr.w   sub_15FC2
		bsr.w   sub_13A30
		bcs.w   loc_15FA6
		subq.b  #2,$C(a0)
		bra.w   loc_15FAE

    ; End of function sub_1604A


; =============== S U B R O U T I N E =======================================

sub_1605E:
		bsr.w   sub_15FC2
		move.w  d0,d1
		bsr.w   sub_15FC2
		lea     (EVENT_FLAGS).l,a6
		move.b  (a6,d1.w),d2
		movem.w d2,-(sp)
		and.b   d0,(a6,d1.w)
		bne.s   loc_1608C
		movem.w (sp)+,d2
		move.b  d2,(a6,d1.w)
		subq.b  #3,$C(a0)
		bra.w   loc_15FAE
loc_1608C:
		movem.w (sp)+,d2
		move.b  d2,(a6,d1.w)
		bra.w   loc_15FA6

    ; End of function sub_1605E


; =============== S U B R O U T I N E =======================================

sub_16098:
		bsr.w   sub_15FC2
		move.w  d0,d1
		bsr.w   sub_15FC2
		lea     (EVENT_FLAGS).l,a6
		or.b    d0,(a6,d1.w)
		bra.w   loc_15FA6

    ; End of function sub_16098


; =============== S U B R O U T I N E =======================================

sub_160B0:
		bsr.w   sub_15FC2
		move.w  d0,d1
		bsr.w   sub_15FC2
		lea     (EVENT_FLAGS).l,a6
		and.b   d0,(a6,d1.w)
		bra.w   loc_15FA6

    ; End of function sub_160B0


; =============== S U B R O U T I N E =======================================

sub_160C8:
		bra.w   loc_15FAE

    ; End of function sub_160C8


; =============== S U B R O U T I N E =======================================

sub_160CC:
		subq.b  #1,$C(a0)
		bra.w   loc_15FAE

    ; End of function sub_160CC


; =============== S U B R O U T I N E =======================================

sub_160D4:
		andi.b  #$E7,2(a0)
		move.w  #4,d6
		jsr     (j_GenerateRandomNumber).l
		lsl.b   #3,d7
		or.b    d7,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_160D4


; =============== S U B R O U T I N E =======================================

sub_160EE:
		eori.b  #$10,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_160EE


; =============== S U B R O U T I N E =======================================

sub_160F8:
		andi.b  #$E7,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_160F8


; =============== S U B R O U T I N E =======================================

sub_16102:
		andi.b  #$E7,2(a0)
		ori.b   #8,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_16102


; =============== S U B R O U T I N E =======================================

sub_16112:
		andi.b  #$E7,2(a0)
		ori.b   #$10,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_16112


; =============== S U B R O U T I N E =======================================

sub_16122:
		ori.b   #$18,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_16122


; =============== S U B R O U T I N E =======================================

sub_1612C:
		move.b  2(a0),d0
		addi.b  #8,d0
loc_16134:
		andi.b  #$E7,2(a0)
		andi.b  #$18,d0
		or.b    d0,2(a0)
		bra.w   loc_15FA6

    ; End of function sub_1612C


; =============== S U B R O U T I N E =======================================

sub_16146:
		move.b  2(a0),d0
		subi.b  #8,d0
		bra.s   loc_16134

    ; End of function sub_16146


; =============== S U B R O U T I N E =======================================

sub_16150:
		move.b  $F(a0),d0
		andi.b  #$C0,$F(a0)
		andi.b  #$3F,d0 
		bne.s   loc_16174
		bsr.w   sub_15FC2
		move.w  d0,d6
		subq.b  #1,$C(a0)
		jsr     (j_GenerateRandomNumber).l
		move.w  d7,d0
		addq.b  #2,d0
loc_16174:
		subq.b  #1,d0
		or.b    d0,$F(a0)
		tst.b   d0
		beq.w   loc_1627C
		bsr.s   sub_161C8
		tst.b   9(a0)
		bpl.w   loc_1618E
		bra.w   loc_15FAE
loc_1618E:
		andi.b  #$C0,$F(a0)
		addq.b  #2,$C(a0)
		bra.w   loc_15FAE

    ; End of function sub_16150


; =============== S U B R O U T I N E =======================================

sub_1619C:
		move.b  $F(a0),d0
		andi.b  #$C0,$F(a0)
		andi.b  #$3F,d0 
		bne.s   loc_161B6
		bsr.w   sub_15FC2
		subq.b  #1,$C(a0)
		addq.b  #1,d0
loc_161B6:
		subq.b  #1,d0
		or.b    d0,$F(a0)
		tst.b   d0
		beq.w   loc_1627C
		bsr.s   sub_161C8
		bra.w   loc_15FAE

    ; End of function sub_1619C


; =============== S U B R O U T I N E =======================================

sub_161C8:
		move.b  (a0),d0
		move.b  1(a0),d1
		movem.w d2,-(sp)
		bsr.w   sub_10D20
		andi.w  #$7000,d2
		move.w  d2,d5
		movem.w (sp)+,d2
		move.b  2(a0),d6
		andi.b  #$18,d6
		beq.s   loc_1621C
		cmpi.b  #$10,d6
		bcs.s   loc_16204
		beq.s   loc_16230
		ori.b   #$18,2(a0)
		subq.b  #1,d0
		bsr.w   sub_1652A
		bcs.s   loc_16250
		subq.b  #1,(a0)
		bra.s   loc_16248
loc_16204:
		andi.b  #$E7,2(a0)
		ori.b   #8,2(a0)
		addq.b  #1,d0
		bsr.w   sub_1652A
		bcs.s   loc_16250
		addq.b  #1,(a0)
		bra.s   loc_16248
loc_1621C:
		andi.b  #$E7,2(a0)
		subq.b  #1,d1
		bsr.w   sub_1652A
		bcs.s   loc_16250
		subq.b  #1,1(a0)
		bra.s   loc_16248
loc_16230:
		andi.b  #$E7,2(a0)
		ori.b   #$10,2(a0)
		addq.b  #1,d1
		bsr.w   sub_1652A
		bcs.s   loc_16250
		addq.b  #1,1(a0)
loc_16248:
		ori.b   #$80,9(a0)
		bra.s   loc_16270
loc_16250:
		tst.b   d0
		bne.s   loc_16270
		cmpi.b  #1,$D(a0)
		beq.s   loc_16270
		move.b  $F(a0),d0
		andi.b  #$C0,$F(a0)
		andi.b  #$3F,d0 
		addq.b  #1,d0
		or.b    d0,$F(a0)
loc_16270:
		andi.b  #$E0,8(a0)
		subq.b  #1,$C(a0)
		rts

    ; End of function sub_161C8


; START OF FUNCTION CHUNK FOR sub_16150

loc_1627C:
		addq.b  #1,$C(a0)
		bra.w   loc_15FA6

; END OF FUNCTION CHUNK FOR sub_16150


; =============== S U B R O U T I N E =======================================

sub_16284:
		clr.b   $C(a0)
		bra.w   loc_15FA6

    ; End of function sub_16284


; =============== S U B R O U T I N E =======================================

sub_1628C:
		bsr.w   sub_15FC2
		move.b  d0,$C(a0)
		bra.w   loc_15FA6

    ; End of function sub_1628C


; =============== S U B R O U T I N E =======================================

sub_16298:
		bclr    #6,9(a0)
		bra.w   loc_15FA6

    ; End of function sub_16298


; =============== S U B R O U T I N E =======================================

sub_162A2:
		bset    #6,9(a0)
		bra.w   loc_15FA6

    ; End of function sub_162A2


; =============== S U B R O U T I N E =======================================

sub_162AC:
		bsr.w   sub_15FC2
		move.b  d0,$A(a0)
		move.b  d0,$B(a0)
		bra.w   loc_15FA6

    ; End of function sub_162AC


; =============== S U B R O U T I N E =======================================

sub_162BC:
		bsr.w   sub_15FC2
		move.w  d0,d1
		bsr.w   sub_15FC2
		cmp.b   (MAP_SPRITE_POSITION).l,d1
		bne.s   loc_162D8
		cmp.b   (MAP_SPRITE_POSITION+1).l,d0
		beq.w   loc_15FA6
loc_162D8:
		subq.b  #3,$C(a0)
		bra.w   loc_15FAE

    ; End of function sub_162BC


; =============== S U B R O U T I N E =======================================

sub_162E0:
		bsr.w   sub_15FC2
		lsl.w   #2,d0
		lea     off_16632(pc), a6
		movea.l (a6,d0.w),a6
		move.w  a6,(word_FF500C).l
		move.b  1(a6),(byte_FF500F).l
		bra.w   loc_15FA6

    ; End of function sub_162E0


; =============== S U B R O U T I N E =======================================

sub_16300:
		bsr.s   sub_16306
		bra.w   loc_15FA6

    ; End of function sub_16300


; =============== S U B R O U T I N E =======================================

sub_16306:
		lea     word_166E6(pc), a6
		move.w  a6,(word_FF500C).l
		move.b  #$FF,(byte_FF500F).l
		rts

    ; End of function sub_16306


; =============== S U B R O U T I N E =======================================

sub_1631A:
		clr.b   (byte_FF500F).l 
		bra.w   loc_15FA6

    ; End of function sub_1631A


; =============== S U B R O U T I N E =======================================

sub_16324:
		bsr.w   sub_15FC2
		move.b  d0,d1
		lsl.w   #8,d1
		bsr.w   sub_15FC2
		move.b  d0,d1
		move.w  d1,d0
		movem.w d0,-(sp)
		bsr.w   sub_1106C
		move.w  #$16,d0
		jsr     j_OpenPortraitWindow
		jsr     (sub_304).l
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.b  #1,(CURRENTLY_TYPEWRITING).l
		movem.w (sp)+,d0
		jsr     (j_LoadText).l
		clr.b   (CURRENTLY_TYPEWRITING).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_WaitForPlayerInput).l
		jsr     j_ClosePortraitWindow
		jsr     (j_CloseMessageWindow).l
		bra.w   loc_15FAE

    ; End of function sub_16324


; =============== S U B R O U T I N E =======================================

sub_1638A:
		bsr.s   sub_163A2
		lsl.b   #3,d0
		lea     (MAP_SPRITE_POSITION).l,a2
		andi.b  #$E7,2(a2,d1.w)
		or.b    d0,2(a2,d1.w)
		bra.w   loc_15FA6

    ; End of function sub_1638A


; =============== S U B R O U T I N E =======================================

sub_163A2:
		bsr.w   sub_15FC2
		tst.b   d0
		bpl.s   loc_163B4
		move.l  a0,d0
		subi.l  #MAP_SPRITE_POSITION,d0
		bra.s   loc_163B6
loc_163B4:
		lsl.w   #4,d0
loc_163B6:
		move.w  d0,d1
		bsr.w   sub_15FC2
		rts

    ; End of function sub_163A2


; =============== S U B R O U T I N E =======================================

sub_163BE:
		bsr.s   sub_163A2
		lea     (MAP_SPRITE_POSITION).l,a2
		move.b  d0,(a2,d1.w)
		sub.b   (MAP_SPRITE_POSITION).l,d0
		ext.w   d0
		mulu.w  #$18,d0
		addi.w  #$800,d0
		move.w  d0,4(a2,d1.w)
		bsr.w   sub_15FC2
		move.b  d0,1(a2,d1.w)
		sub.b   (MAP_SPRITE_POSITION+1).l,d0
		ext.w   d0
		mulu.w  #$18,d0
		addi.w  #$7F8,d0
		move.w  d0,6(a2,d1.w)
		tst.w   (word_FFF832).l
		bpl.w   loc_15FA6
		move.w  #$18,d0
		sub.w   (word_FFF830).l,d0
		movem.w d1,-(sp)
		move.b  (MAP_SPRITE_FACING).l,d1
		andi.b  #$18,d1
		beq.s   loc_1644A
		cmpi.b  #$10,d1
		bcs.s   loc_16432
		beq.s   loc_1643E
		movem.w (sp)+,d1
		sub.w   d0,4(a2,d1.w)
		bra.w   loc_15FA6
loc_16432:
		movem.w (sp)+,d1
		add.w   d0,4(a2,d1.w)
		bra.w   loc_15FA6
loc_1643E:
		movem.w (sp)+,d1
		add.w   d0,6(a2,d1.w)
		bra.w   loc_15FA6
loc_1644A:
		movem.w (sp)+,d1
		sub.w   d0,6(a2,d1.w)
		bra.w   loc_15FA6

    ; End of function sub_163BE


; =============== S U B R O U T I N E =======================================

sub_16456:
		ori.b   #$40,8(a0) 
		bra.w   loc_15FA6

    ; End of function sub_16456


; =============== S U B R O U T I N E =======================================

sub_16460:
		andi.b  #$BF,8(a0)
		bra.w   loc_15FA6

    ; End of function sub_16460


; =============== S U B R O U T I N E =======================================

sub_1646A:
		lea     (byte_FF5010).l,a0
		move.w  #$1E,d7
loc_16474:
		tst.w   (a0)
		bmi.s   loc_164E6
		tst.b   9(a0)
		bpl.s   loc_164E0
		move.b  #4,d0
		tst.b   $A(a0)
		beq.s   loc_1649E
		move.b  #2,d0
		tst.b   8(a0)
		bmi.s   loc_1649E
		cmpi.b  #1,$A(a0)
		beq.s   loc_1649E
		move.b  #1,d0
loc_1649E:
		add.b   d0,8(a0)
		move.b  8(a0),d1
		andi.b  #$1F,d1
		cmpi.b  #$18,d1
		bcs.s   loc_164B6
		andi.w  #$607F,8(a0)
loc_164B6:
		ext.w   d0
		move.b  2(a0),d1
		andi.b  #$18,d1
		beq.s   loc_164D0
		cmpi.b  #$10,d1
		bcs.s   loc_164D6
		beq.s   loc_164DC
		sub.w   d0,4(a0)
		bra.s   loc_164E0
loc_164D0:
		sub.w   d0,6(a0)
		bra.s   loc_164E0
loc_164D6:
		add.w   d0,4(a0)
		bra.s   loc_164E0
loc_164DC:
		add.w   d0,6(a0)
loc_164E0:
		bsr.s   sub_164EC
		adda.w  #$10,a0
loc_164E6:
		dbf     d7,loc_16474
		rts

    ; End of function sub_1646A


; =============== S U B R O U T I N E =======================================

sub_164EC:
		btst    #6,9(a0)
		bne.s   return_16528
		move.b  #2,d1
		tst.b   9(a0)
		bpl.s   loc_16514
		cmpi.b  #3,$A(a0)
		bcc.s   loc_16514
		move.b  #4,d1
		tst.b   $A(a0)
		bne.s   loc_16514
		move.b  #8,d1
loc_16514:
		move.b  9(a0),d0
		add.b   d1,d0
		andi.b  #$3F,d0 
		andi.b  #$C0,9(a0)
		or.b    d0,9(a0)
return_16528:
		rts

    ; End of function sub_164EC


; =============== S U B R O U T I N E =======================================

sub_1652A:
		tst.b   8(a0)
		bmi.w   loc_1655C
		bsr.s   sub_1656A
		bsr.w   sub_165BC
		bcs.s   loc_16554
		bsr.s   sub_16560
		movem.l a1,-(sp)
		bsr.w   sub_165FC
		movem.l (sp)+,a1
		bcc.s   return_1655A
		move.b  #1,d0
		ori     #1,ccr
		rts
loc_16554:
		clr.b   d0
		ori     #1,ccr
return_1655A:
		rts
loc_1655C:
		tst.b   d0
		rts

    ; End of function sub_1652A


; =============== S U B R O U T I N E =======================================

sub_16560:
		movem.l d0/a1,-(sp)
		lea     byte_165A4(pc), a1
		bra.s   loc_16572

    ; End of function sub_16560


; =============== S U B R O U T I N E =======================================

sub_1656A:
		movem.l d0/a1,-(sp)
		lea     byte_16594(pc), a1
loc_16572:
		move.b  (a1),d0
		cmpi.b  #$FF,d0
		beq.s   loc_16584
		cmp.b   $D(a0),d0
		beq.s   loc_1658A
		addq.l  #1,a1
		bra.s   loc_16572
loc_16584:
		movem.l (sp)+,d0/a1
		rts
loc_1658A:
		movem.l (sp)+,d0/a1
		movem.l (sp)+,d0
		bra.s   loc_1655C

    ; End of function sub_1656A

byte_16594:     dc.b $20
		dc.b $21
		dc.b $28
		dc.b $34
		dc.b $46
		dc.b $47
		dc.b $4E
		dc.b $63
		dc.b $6A
		dc.b $6D
		dc.b $70
		dc.b $79
		dc.b $7A
		dc.b $85
		dc.b $9D
		dc.b $FF
byte_165A4:     dc.b $22
		dc.b $45
		dc.b $49
		dc.b $4C
		dc.b $4F
		dc.b $50
		dc.b $53
		dc.b $54
		dc.b $5E
		dc.b $64
		dc.b $65
		dc.b $6C
		dc.b $6F
		dc.b $76
		dc.b $7E
		dc.b $81
		dc.b $82
		dc.b $84
		dc.b $9E
		dc.b $A0
		dc.b $A1
		dc.b $A8
		dc.b $A9
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_165BC:
		lea     (MAP_SPRITE_POSITION).l,a6
		clr.w   d3
		movem.w d7,-(sp)
		move.w  #$1F,d7
loc_165CC:
		tst.w   (a6,d3.w)
		bmi.s   loc_165F4
		cmp.b   (a6,d3.w),d0
		bne.s   loc_165EC
		cmp.b   1(a6,d3.w),d1
		bne.s   loc_165EC
		cmp.w   d3,d2
		beq.s   loc_165EC
		movem.w (sp)+,d7
		ori     #1,ccr
		rts
loc_165EC:
		addi.w  #$10,d3
		dbf     d7,loc_165CC
loc_165F4:
		movem.w (sp)+,d7
		tst.b   d0
		rts

    ; End of function sub_165BC


; =============== S U B R O U T I N E =======================================

sub_165FC:
		movem.l d2-d3/a0,-(sp)
		jsr     sub_10D20
		bcs.s   loc_16628
		andi.w  #$7C00,d3
		bne.s   loc_16628
		bra.s   loc_1661A
		movem.l d2-d3/a0,-(sp)
		jsr     sub_10D20
loc_1661A:
		btst    #$F,d2
		bne.s   loc_16628
		tst.b   d0
		movem.l (sp)+,d2-d3/a0
		rts
loc_16628:
		ori     #1,ccr
		movem.l (sp)+,d2-d3/a0
		rts

    ; End of function sub_165FC

off_16632:      dc.l word_166E6
		dc.l word_166EA
		dc.l word_166EE
		dc.l word_166F4
		dc.l word_166FA
		dc.l word_16700
		dc.l word_16708
		dc.l word_16716
		dc.l word_16722
		dc.l word_16728
		dc.l word_16746
		dc.l word_1674E
		dc.l word_16752
		dc.l word_16758
		dc.l word_1675E
		dc.l word_16764
		dc.l word_1676A
		dc.l word_16770
		dc.l word_16776
		dc.l word_1677A
		dc.l word_16782
		dc.l word_1678C
		dc.l word_16794
		dc.l word_1679A
		dc.l word_167A0
		dc.l word_167A6
		dc.l word_167B4
		dc.l word_167B8
		dc.l word_167BE
		dc.l word_167C2
		dc.l word_167CC
		dc.l word_167D2
		dc.l word_167DA
		dc.l word_167DE
		dc.l word_167EC
		dc.l word_167F2
		dc.l word_167FE
		dc.l word_16814
		dc.l word_1681C
		dc.l word_16822
		dc.l word_16836
		dc.l word_1683E
		dc.l word_16848
		dc.l word_1684C
		dc.l word_16852
word_166E6:     dc.w 6
		dc.b $FF
		dc.b $FF
word_166EA:     dc.w 9
		dc.b $FF
		dc.b $FF
word_166EE:     dc.w $205
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FF
word_166F4:     dc.w $104
		dc.b 0
		dc.b 6
		dc.b $FF
		dc.b $FF
word_166FA:     dc.w $402
		dc.b 0
		dc.b 6
		dc.b $FF
		dc.b $FF
word_16700:     dc.w $402
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16708:     dc.w $402
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 4
		dc.b 1
		dc.b 4
		dc.b 8
		dc.b 3
		dc.b 1
		dc.b 1
		dc.b $FF
		dc.b $FF
word_16716:     dc.w $404
		dc.b 2
		dc.b 4
		dc.b 8
		dc.b 4
		dc.b 1
		dc.b 4
		dc.b 8
		dc.b 1
		dc.b $FF
		dc.b $FF
word_16722:     dc.w $204
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16728:     dc.w 3
		dc.b 8
		dc.b 5
		dc.b 1
		dc.b 5
		dc.b 8
		dc.b 1
		dc.b 4
		dc.b 1
		dc.b 2
		dc.b 6
		dc.b 8
		dc.b 4
		dc.b 2
		dc.b 4
		dc.b 8
		dc.b 1
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 4
		dc.b 4
		dc.b 3
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 4
		dc.b $FF
		dc.b $FF
word_16746:     dc.w $202
		dc.b 4
		dc.b 1
		dc.b 0
		dc.b 2
		dc.b $FF
		dc.b $FF
word_1674E:     dc.w $203
		dc.b $FF
		dc.b $FF
word_16752:     dc.w $402
		dc.b 0
		dc.b 2
		dc.b $FF
		dc.b $FF
word_16758:     dc.w $802
		dc.b 0
		dc.b 5
		dc.b $FF
		dc.b $FF
word_1675E:     dc.w $204
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16764:     dc.w $402
		dc.b 0
		dc.b 6
		dc.b $FF
		dc.b $FF
word_1676A:     dc.w $102
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16770:     dc.w $802
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16776:     dc.w $B
		dc.b $FF
		dc.b $FF
word_1677A:     dc.w $407
		dc.b 1
		dc.b 1
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16782:     dc.w $202
		dc.b 4
		dc.b 1
		dc.b 2
		dc.b 6
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_1678C:     dc.w 2
		dc.b 2
		dc.b 2
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16794:     dc.w $402
		dc.b 0
		dc.b 4
		dc.b $FF
		dc.b $FF
word_1679A:     dc.w $206
		dc.b 0
		dc.b 1
		dc.b $FF
		dc.b $FF
word_167A0:     dc.w $803
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167A6:     dc.w $205
		dc.b 4
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 4
		dc.b 1
		dc.b 2
		dc.b 6
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167B4:     dc.w $208
		dc.b $FF
		dc.b $FF
word_167B8:     dc.w $102
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167BE:     dc.w $803
		dc.b $FF
		dc.b $FF
word_167C2:     dc.w $203
		dc.b 4
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167CC:     dc.w $802
		dc.b 0
		dc.b 2
		dc.b $FF
		dc.b $FF
word_167D2:     dc.w $203
		dc.b 8
		dc.b 1
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167DA:     dc.w $102
		dc.b $FF
		dc.b $FF
word_167DE:     dc.w $802
		dc.b 1
		dc.b 1
		dc.b 0
		dc.b 4
		dc.b 1
		dc.b 5
		dc.b 8
		dc.b 1
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167EC:     dc.w $206
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167F2:     dc.w 2
		dc.b 4
		dc.b 1
		dc.b 2
		dc.b 2
		dc.b 8
		dc.b 2
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_167FE:     dc.w $402
		dc.b 1
		dc.b 2
		dc.b 8
		dc.b 1
		dc.b 1
		dc.b 3
		dc.b 4
		dc.b 4
		dc.b 2
		dc.b 1
		dc.b 4
		dc.b 6
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 4
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16814:     dc.w 2
		dc.b 8
		dc.b 1
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_1681C:     dc.w $107
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16822:     dc.w $203
		dc.b 8
		dc.b 1
		dc.b 4
		dc.b 7
		dc.b 2
		dc.b 2
		dc.b 4
		dc.b 8
		dc.b 1
		dc.b 1
		dc.b 4
		dc.b 2
		dc.b 1
		dc.b 4
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16836:     dc.w 4
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_1683E:     dc.w $402
		dc.b 1
		dc.b 2
		dc.b 8
		dc.b 2
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b $FF
word_16848:     dc.w $104
		dc.b 0
		dc.b $FF
word_1684C:     dc.w $405
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b $FF
word_16852:     dc.w $103
		dc.b 4
		dc.b 1
		dc.b 1
		dc.b 4
		dc.b 8
		dc.b 4
		dc.b 2
		dc.b 5
		dc.b 8
		dc.b 1
		dc.b 0
		dc.b $FF

; =============== S U B R O U T I N E =======================================

DisplayMenuMessage:
		
		bsr.w   sub_168A2
		tst.w   -6(a6)
		bne.s   loc_1687A
		jsr     (sub_304).l
		subq.w  #1,-6(a6)
		jmp     (j_LoadText).l
loc_1687A:
		jsr     (j_CreateMessageWindow).l
		jmp     (j_LoadText).l
		tst.w   -6(a6)
		bne.s   loc_1689C
		jsr     (sub_304).l
		subq.w  #1,-6(a6)
		jmp     (j_LoadText).l
loc_1689C:
		jmp     (j_LoadText).l

    ; End of function DisplayMenuMessage


; =============== S U B R O U T I N E =======================================

sub_168A2:
		tst.b   -$1B(a6)
		beq.s   @Return
		tst.b   -$19(a6)
		bne.s   @Return
		movem.l d0-a6,-(sp)
		clr.w   d0
		move.b  -$1A(a6),d0
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     j_OpenPortraitWindow
		st      -$19(a6)
		jsr     (j_CreateMessageWindow).l
		movem.l (sp)+,d0-a6
@Return:
		rts

    ; End of function sub_168A2


; =============== S U B R O U T I N E =======================================

; Display portrait in menu

DisplayPortraitInMenu:
		
		tst.b   -$1B(a6)
		beq.s   @Return
		tst.b   -$19(a6)
		beq.s   @Return
		movem.l d0-a6,-(sp)
		jsr     j_ClosePortraitWindow
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sf      -$19(a6)
		movem.l (sp)+,d0-a6
@Return:
		rts

    ; End of function DisplayPortraitInMenu


; =============== S U B R O U T I N E =======================================

; In: D0 = current shop index
;     D1 = 
;     D2 = 

ExecuteShopMenu:
		
		        module
		movem.l d3-a5,-(sp)
		link    a6,#-64
		move.b  d0,((CURRENT_SHOP-$1000000)).w
		move.w  d1,-6(a6)
		move.w  d2,-$1A(a6)
		move.b  d2,-$1B(a6)
		bsr.w   LoadShopInventory
		clr.w   -2(a6)
		tst.w   -6(a6)
		bne.s   loc_1692C
		move.w  #$16B,d0        ; "Welcome! Do come in! We've[Line]got the best, you know. Take[Line]your time, take your time![Wait2]"
		bsr.w   DisplayMenuMessage
loc_1692C:
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		bsr.w   sub_16EA6
		beq.w   loc_16D8C       
		dbf     d0,@Deals
		clr.w   -$12(a6)        ; Buy
loc_16946:
		bsr.w   OpenGoldWindowInMenu
		bsr.w   LoadShopInventory
		bne.s   loc_1695C
		move.w  #$178,d0        ; "Sorry, no deals today.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16D6C
loc_1695C:
		tst.w   -$12(a6)
		beq.s   loc_1696C       
		move.w  #$179,d0        ; "I have some great stuff here.[Line]See anything you like?"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16974       
loc_1696C:
		move.w  #$16F,d0        ; "What would you like?"
		bsr.w   DisplayMenuMessage
loc_16974:
		bsr.w   sub_16E66       ; display shop inventory window
		beq.w   loc_16D6C       ; branch if no item selected (i.e., canceling out of menu)
		move.w  d0,d1           ; D1 = selected item index
		move.w  d0,-$A(a6)
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetItemPrice
		move.w  d2,-4(a6)
		ext.l   d2
		move.l  d2,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$170,d0        ; "[Item], right?[Line]That comes to [Num] coins.[Line]OK?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu; display yes/no choice box
		bne.w   loc_169C4       ; branch if yes selected
loc_169A6:
		move.w  #$171,d0        ; "Rats! We almost had a deal.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_169AE:
		bsr.w   CloseGoldWindowInMenu
		move.w  #$177,d0        ; "Want anything else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.s   loc_16946
		bra.w   loc_16D6C
loc_169C4:
		moveq   #0,d0
		move.w  -4(a6),d0       ; D0 = item price
		bsr.w   CheckGold       
		bne.s   loc_169DA       ; branch if enough gold
		move.w  #$172,d0        ; "You don't have enough money[Line]to buy that. Sorry.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_169AE
loc_169DA:
		move.w  #$173,d0        ; "Who do you wish to have it?"
		bsr.w   DisplayMenuMessage
		move.w  #VDPTILE_EQ_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
						; load "Eq" VDP tile entry
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		clr.w   d3
loc_169F4:
		move.w  -$A(a6),d2      ; D2 = selected item index
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
		move.b  (a5,d3.w),d0
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d0
		jsr     j_IsItemEquippable
		bcc.s   loc_16A10       ; branch if item can be equipped
		bra.w   loc_16A16
loc_16A10:
		bset    #6,(a5,d3.w)
loc_16A16:
		addq.w  #1,d3
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d3
		bcs.s   loc_169F4       
		bsr.w   sub_16E30
		beq.s   loc_169A6       
		move.w  d0,-8(a6)
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
		move.w  -$A(a6),d2
		jsr     j_IsItemEquippable
		bcc.w   loc_16A54
		beq.w   loc_16A54
		move.w  -8(a6),((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$174,d0        ; "[Name] can't use this. Do you[Line]still want it?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_169C4
loc_16A54:
		move.w  -8(a6),d0
		move.w  -$A(a6),d1
		jsr     j_GiveItem
		bcc.w   loc_16A80
		move.w  -8(a6),((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$175,d0        ; "[Name]'s hands are full. How[Line]about someone else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_169C4
		bra.w   loc_169AE
loc_16A80:
		jsr     j_DecrementDealsStock
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		move.w  #$176,d0        ; "Here you go! Use it in good[Line]health, my friend.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_169AE
@Deals:
		dbf     d0,@Sell
		st      -$12(a6)
		bra.w   loc_16946
@Repair:
		move.w  #$184,d0        ; "Repair whose item?"
		bsr.w   DisplayMenuMessage
		bsr.w   sub_16E48
		beq.w   loc_16D6C
		move.w  d0,-8(a6)
		move.w  d1,-$C(a6)
		jsr     j_GetEntityItemsAddress
		move.l  a0,-$10(a6)
		move.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  -$C(a6),d1
		and.b   (a0,d1.w),d0
		move.w  d0,-$A(a6)
		move.w  d0,d1
		jsr     j_GetItemPrice
		lsr.w   #2,d2
		move.w  d2,-4(a6)
		move.w  -$C(a6),d1
		btst    #6,(a0,d1.w)
		bne.s   loc_16B18
		move.w  #$186,d0        ; "Who are you trying to fool?[Line]That item's not damaged.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_16B02:
		move.w  #$18B,d0        ; "Anything else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_16D6C
		bsr.w   CloseGoldWindowInMenu
		bra.s   @Repair         
loc_16B18:
		move.w  -4(a6),d2
		ext.l   d2
		move.l  d2,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   OpenGoldWindowInMenu
		move.w  #$185,d0        ; "That'll cost [Num] coins. OK?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_16B38
		bra.s   loc_16B02       
loc_16B38:
		moveq   #0,d0
		move.w  -4(a6),d0
		bsr.w   CheckGold       
		bne.s   loc_16B4E
		move.w  #$187,d0        ; "I'd like to repair it, but[Line]you seem to be a bit low on[Line]money. Sorry.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16B02       
loc_16B4E:
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_16B78       
		movea.l -$10(a6),a0
		move.w  -$C(a6),d0
		btst    #ITEMENTRY_BIT_EQUIPPED,(a0,d0.w)
		beq.s   loc_16B78       
		move.w  #$188,d0        ; "Whoa! I don't repair cursed[Line]items! Nope, not me. I'm[Line]nobody's fool![Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16B02       
loc_16B78:
		move.w  #$189,d0        ; "OK. Just a minute.[Wait2]"
		bsr.w   DisplayMenuMessage
		sndCom  SFX_SWORDS_HIT
		moveq   #$14,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #$14,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #$A,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #$A,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #$A,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #$14,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #$14,d0
		jsr     (j_Sleep).l
		move.w  #$18A,d0        ; "I have it right here. It's as[Line]good as new! Try not to[Line]damage it again, OK?[Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		movea.l -$10(a6),a0
		move.w  -$C(a6),d0
		bclr    #6,(a0,d0.w)
		bra.w   loc_16B02       
@Sell:
		dbf     d0,@Repair      
loc_16C0E:
		move.w  #$17A,d0        ; "Let's see. Who wants to sell,[Line]and which item?"
		bsr.w   DisplayMenuMessage
		bsr.w   sub_16E48
		beq.w   loc_16D6C
                
		move.w  d0,-8(a6)
		move.w  d1,-$C(a6)
		jsr     j_GetEntityItemsAddress
		move.l  a0,-$10(a6)
		move.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  -$C(a6),d1
		and.b   (a0,d1.w),d0
		move.w  d0,-$A(a6)
		move.w  d0,d1
		cmpi.w  #ORB_OF_LIGHT,d0
		beq.w   loc_16D60       
		cmpi.w  #MOON_STONE,d0
		beq.w   loc_16D60       
		cmpi.w  #LUNAR_DEW,d0
		beq.w   loc_16D60       
		cmpi.w  #SWORD_OF_LIGHT,d0
		beq.w   loc_16D60       
		cmpi.w  #SWORD_OF_DARKNESS,d0
		beq.w   loc_16D60       
		cmpi.w  #CHAOS_BREAKER,d0
		beq.w   loc_16D60       
		jsr     j_GetItemPrice
		move.l  d2,d0
		add.l   d2,d2
		add.l   d0,d2
		lsr.l   #2,d2
		move.w  d2,-4(a6)
		move.l  d2,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   IsSellingRareItem
		bne.s   loc_16C98       
		move.w  #$17B,d0        ; "I'll give you [Num] coins[Line]for it. OK?"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16CA0
loc_16C98:
		move.w  #$17C,d0        ; "Say, that's nice! How about[Line][Num] coins for it?"
		bsr.w   DisplayMenuMessage
loc_16CA0:
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @IsCursed
		move.w  #$17D,d0        ; "Sorry we couldn't cut a deal.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_16CB4:
		bsr.w   CloseGoldWindowInMenu
		move.w  #$182,d0        ; "Anything else to sell?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_16D6C
		bra.w   loc_16C0E       
@IsCursed:
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_16CF6
		movea.l -$10(a6),a0
		move.w  -$C(a6),d0
		btst    #ITEMENTRY_BIT_EQUIPPED,(a0,d0.w)
		beq.s   loc_16CF6
		move.w  #$183,d0        ; "Hey, wait a minute. I don't[Line]deal with cursed items! It's[Line]bad luck, you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16CB4
loc_16CF6:
		move.w  -8(a6),d0
		move.w  -$C(a6),d1
		jsr     j_RemoveItem
		move.w  -$A(a6),d1
		jsr     j_IncrementDealsStock
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_IncreaseGold
		bsr.w   OpenGoldWindowInMenu
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_WEAPON,d2
		bne.s   loc_16D42
		tst.w   -$14(a6)
		bne.s   loc_16D40
		move.w  #$181,d0        ; "Thanks, I don't sell this[Line]type of item, but I know[Line]someone who does.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D40:
		bra.s   loc_16D54       
loc_16D42:
		tst.w   -$14(a6)
		beq.s   loc_16D54       
		move.w  #$180,d0        ; "Thanks, I don't sell this[Line]type of item, but I know[Line]someone who does.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D54:
		move.w  #$17F,d0        ; "It's mine, all mine![Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D60:
		move.w  #$17E,d0        ; "I'd like to help, but we[Line]don't deal with these.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D6C:
		bsr.w   CloseGoldWindowInMenu
		move.w  #$16C,d0        ; "Anything else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_16D8C       
		move.w  #$16D,d0        ; "What do you need, then?[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_1692C
loc_16D8C:
		move.w  #$16E,d0        ; "Thank you. Do come again![Wait2]"
		bsr.w   DisplayMenuMessage
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		move.w  -6(a6),d1
		move.b  -$19(a6),d2
		unlk    a6
		movem.l (sp)+,d3-a5
		rts
        modend

    ; End of function ExecuteShopMenu


; =============== S U B R O U T I N E =======================================

; Check if enough gold to pay price D0 -> D2 = 1 if true

CheckGold:
		movem.l d1-d2,-(sp)
		moveq   #0,d2
		move.w  d0,d2           ; D2 = price
		jsr     j_GetGold
		cmp.l   d2,d1
		bcc.s   loc_16DC4
		clr.w   d2
		bra.s   loc_16DC8
loc_16DC4:
		move.w  #1,d2
loc_16DC8:
		movem.l (sp)+,d1-d2
		rts

    ; End of function CheckGold


; =============== S U B R O U T I N E =======================================

OpenGoldWindowInMenu:
		
		move    sr,-(sp)
		tst.w   -2(a6)
		movem.l d0-a6,-(sp)
		beq.s   loc_16DE2
		jsr     (sub_358).l
		bra.s   loc_16DE8
loc_16DE2:
		jsr     (sub_350).l
loc_16DE8:
		movem.l (sp)+,d0-a6
		st      -2(a6)
		move    (sp)+,ccr
		rts

    ; End of function OpenGoldWindowInMenu


; =============== S U B R O U T I N E =======================================

CloseGoldWindowInMenu:
		
		move    sr,-(sp)
		tst.w   -2(a6)
		beq.s   loc_16E0E
		clr.w   -2(a6)
		movem.l d0-a6,-(sp)
		jsr     (sub_354).l
		movem.l (sp)+,d0-a6
loc_16E0E:
		move    (sp)+,ccr
		rts

    ; End of function CloseGoldWindowInMenu


; =============== S U B R O U T I N E =======================================

sub_16E12:
		bsr.w   DisplayPortraitInMenu
		movem.l d1-a6,-(sp)
		jsr     j_PopulateForceMembersList
		jsr     j_CreateMembersListScreen
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d1-a6
		rts

    ; End of function sub_16E12


; =============== S U B R O U T I N E =======================================

sub_16E30:
		bsr.w   DisplayPortraitInMenu
		movem.l d1-a6,-(sp)
		jsr     j_CreateMembersListScreen
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d1-a6
		rts

    ; End of function sub_16E30


; =============== S U B R O U T I N E =======================================

sub_16E48:
		bsr.w   DisplayPortraitInMenu
		movem.l d2-a6,-(sp)
		jsr     j_PopulateForceMembersList
		jsr     sub_8044
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d2-a6
		rts

    ; End of function sub_16E48


; =============== S U B R O U T I N E =======================================

sub_16E66:
		bsr.w   DisplayPortraitInMenu
		movem.l d1-a6,-(sp)
		jsr     sub_803C
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d1-a6
		rts

    ; End of function sub_16E66


; =============== S U B R O U T I N E =======================================

DisplayYesNoPromptInMenu:
		
		movem.l d0-a6,-(sp)
		jsr     (j_YesNoChoiceBox).l
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d0-a6
		rts

    ; End of function DisplayYesNoPromptInMenu


; =============== S U B R O U T I N E =======================================

sub_16E92:
		movem.l d0-a6,-(sp)
		jsr     (j_YesNoPrompt).l
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d0-a6
		rts

    ; End of function sub_16E92


; =============== S U B R O U T I N E =======================================

sub_16EA6:
		move.b  #SHOP_MENU,((CURRENT_MENU-$1000000)).w
		bra.s   loc_16EB4

    ; End of function sub_16EA6


; =============== S U B R O U T I N E =======================================

sub_16EAE:
		move.b  #CHURCH_MENU,((CURRENT_MENU-$1000000)).w
loc_16EB4:
		movem.l d1-a6,-(sp)
		jsr     sub_8048
		cmpi.w  #$FFFF,d0
		beq.s   loc_16ECE
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
loc_16ECE:
		movem.l (sp)+,d1-a6
		rts

    ; End of function sub_16EAE


; =============== S U B R O U T I N E =======================================

IsSellingRareItem:
		
		movem.l d0-a6,-(sp)
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_RARE,d2
		beq.s   loc_16F12
		clr.w   d0
		move.b  ((CURRENT_SHOP-$1000000)).w,d0
		add.w   d0,d0
		move.w  rpt_ShopInventories(pc,d0.w),d0
		lea     ShopInventory00(pc), a0
		adda.w  d0,a0
		moveq   #0,d0
		move.b  (a0)+,d0
		move.w  d0,-$14(a6)
		move.w  -$A(a6),d0
loc_16F06:
		move.b  (a0)+,d1
		cmpi.b  #$FF,d1
		beq.s   loc_16F18
		cmp.b   d1,d0
		bne.s   loc_16F06
loc_16F12:
		movem.l (sp)+,d0-a6
		rts
loc_16F18:
		subq.b  #1,d1
		bra.s   loc_16F12

    ; End of function IsSellingRareItem


; =============== S U B R O U T I N E =======================================

LoadShopInventory:
		
		clr.w   d0
		move.b  ((CURRENT_SHOP-$1000000)).w,d0
		add.w   d0,d0
		move.w  rpt_ShopInventories(pc,d0.w),d0
		lea     ShopInventory00(pc,d0.w),a0
		moveq   #0,d0
		move.b  (a0)+,d0
		move.w  d0,-$14(a6)
		tst.w   -$12(a6)
		bne.s   loc_16F56
		moveq   #0,d0
		moveq   #0,d1
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a1
						; shop inventory
		move.b  (a0)+,d1
loc_16F44:
		move.w  d1,(a1)+
		addq.w  #1,d0
		move.b  (a0)+,d1
		cmpi.b  #$FF,d1
		bne.s   loc_16F44
		move.w  d0,((SHOP_INVENTORY_LENGTH-$1000000)).w
		rts
loc_16F56:
		jsr     j_LoadDealsInventory
		move.w  ((SHOP_INVENTORY_LENGTH-$1000000)).w,d0
		rts

    ; End of function LoadShopInventory

rpt_ShopInventories:
		dc.w ShopInventory00-ShopInventory00
		dc.w ShopInventory01-ShopInventory00
		dc.w ShopInventory02-ShopInventory00
		dc.w ShopInventory03-ShopInventory00
		dc.w ShopInventory04-ShopInventory00
		dc.w ShopInventory05-ShopInventory00
		dc.w ShopInventory06-ShopInventory00
		dc.w ShopInventory07-ShopInventory00
		dc.w ShopInventory08-ShopInventory00
		dc.w ShopInventory09-ShopInventory00
		dc.w ShopInventory10-ShopInventory00
		dc.w ShopInventory11-ShopInventory00
		dc.w ShopInventory12-ShopInventory00
		dc.w ShopInventory13-ShopInventory00
		dc.w ShopInventory14-ShopInventory00
		dc.w ShopInventory15-ShopInventory00
		dc.w ShopInventory16-ShopInventory00
		dc.w ShopInventory17-ShopInventory00
		dc.w ShopInventory18-ShopInventory00
		dc.w ShopInventory19-ShopInventory00
		dc.w ShopInventory20-ShopInventory00
		dc.w ShopInventory21-ShopInventory00
		dc.w ShopInventory22-ShopInventory00
		dc.w ShopInventory23-ShopInventory00
                
ShopInventory00:dc.b SHOPTYPE_WEAPONS
		dc.b SHORT_SWORD
		dc.b SPEAR
		dc.b HAND_AXE
		dc.b WOODEN_STAFF
		dc.b WOODEN_ARROW
		dc.b $FF
                
ShopInventory01:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory02:dc.b SHOPTYPE_WEAPONS
		dc.b SHORT_SWORD
		dc.b SPEAR
		dc.b HAND_AXE
		dc.b WOODEN_STAFF
		dc.b WOODEN_ARROW
		dc.b $FF
                
ShopInventory03:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory04:dc.b SHOPTYPE_WEAPONS
		dc.b MIDDLE_SWORD
		dc.b SPEAR
		dc.b BRONZE_LANCE
		dc.b POWER_STAFF
		dc.b WOODEN_STAFF
		dc.b WOODEN_ARROW
		dc.b $FF
                
ShopInventory05:dc.b HEALING_SEED
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory06:dc.b SHOPTYPE_WEAPONS
		dc.b $FF
                
ShopInventory07:dc.b SHOPTYPE_ITEMS
		dc.b $FF
                
ShopInventory08:dc.b SHOPTYPE_WEAPONS
		dc.b MIDDLE_SWORD
		dc.b POWER_SPEAR
		dc.b BRONZE_LANCE
		dc.b MIDDLE_AXE
		dc.b POWER_STAFF
		dc.b STEEL_ARROW
		dc.b $FF
                
ShopInventory09:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory10:dc.b SHOPTYPE_WEAPONS
		dc.b LONG_SWORD
		dc.b POWER_SPEAR
		dc.b BRONZE_LANCE
		dc.b MIDDLE_AXE
		dc.b POWER_STAFF
		dc.b STEEL_ARROW
		dc.b $FF
                
ShopInventory11:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory12:dc.b SHOPTYPE_WEAPONS
		dc.b LONG_SWORD
		dc.b POWER_SPEAR
		dc.b BRONZE_LANCE
		dc.b BATTLE_AXE
		dc.b POWER_STAFF
		dc.b STEEL_ARROW
		dc.b $FF
                
ShopInventory13:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory14:dc.b SHOPTYPE_WEAPONS
		dc.b STEEL_SWORD
		dc.b POWER_SPEAR
		dc.b STEEL_LANCE
		dc.b BATTLE_AXE
		dc.b POWER_STAFF
		dc.b ELVEN_ARROW
		dc.b $FF
                
ShopInventory15:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory16:dc.b SHOPTYPE_WEAPONS
		dc.b STEEL_SWORD
		dc.b CHROME_LANCE
		dc.b BATTLE_AXE
		dc.b GUARDIAN_STAFF
		dc.b ELVEN_ARROW
		dc.b $FF
                
ShopInventory17:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory18:dc.b SHOPTYPE_WEAPONS
		dc.b STEEL_SWORD
		dc.b CHROME_LANCE
		dc.b BATTLE_AXE
		dc.b GUARDIAN_STAFF
		dc.b ASSAULT_SHELL
		dc.b $FF
                
ShopInventory19:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory20:dc.b SHOPTYPE_WEAPONS
		dc.b BROAD_SWORD
		dc.b CHROME_LANCE
		dc.b GREAT_AXE
		dc.b HOLY_STAFF
		dc.b ASSAULT_SHELL
		dc.b $FF
                
ShopInventory21:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF
                
ShopInventory22:dc.b SHOPTYPE_WEAPONS
		dc.b BROAD_SWORD
		dc.b CHROME_LANCE
		dc.b GREAT_AXE
		dc.b HOLY_STAFF
		dc.b BUSTER_SHOT
		dc.b $FF
                
ShopInventory23:dc.b SHOPTYPE_ITEMS
		dc.b MEDICAL_HERB
		dc.b HEALING_SEED
		dc.b ANTIDOTE
		dc.b ANGEL_WING
		dc.b $FF

; =============== S U B R O U T I N E =======================================

; In: D1 =
;     D2 = 

ExecuteChurchMenu:
		
		                module
		movem.l d3-a5,-(sp)
		link    a6,#-64
		move.w  d1,-6(a6)
		move.w  d2,-$1A(a6)
		move.b  d2,-$1B(a6)
		clr.w   -2(a6)
		tst.w   -6(a6)
		bne.s   @Start
		move.w  #$18C,d0        ; "Welcome, [Hero]![Line]I've been expecting you.[Wait2][Line]How can I help you[Line]and the Shining Force?[Wait2]"
		bsr.w   DisplayMenuMessage
@Start:
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		bsr.w   sub_16EAE
		beq.w   @Exit           
		dbf     d0,@IsCureAction
                
		                ; Save action
		jsr     j_PopulateForceMembersList
		move.w  #$190,d0        ; "Shall I make a record of your[Line]adventures thus far?"
		bsr.w   DisplayMenuMessage
		bsr.w   sub_16E92
		bne.w   loc_17086
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17086:
		movem.l d0-a6,-(sp)
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		jsr     (j_SaveGame).l
		move.w  #$27,d0 
		jsr     (j_ClearEventFlag).l
		movem.l (sp)+,d0-a6
		sndCom  MUSIC_SAVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$191,d0        ; "There, my record of your[Line]exploits is complete.[Wait2]"
		bsr.w   DisplayMenuMessage
		move.w  #$192,d0        ; "Will you continue your[Line]journey?"
		bsr.w   DisplayMenuMessage
		bsr.w   sub_16E92
		bne.w   loc_175A8
		move.w  #$193,d0        ; "Yes, you should rest before[Line]continuing. Remember, a tired[Line]warrior is soon a dead one![Wait2]"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayPortraitInMenu
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		jmp     (sub_370).l
@IsCureAction:
		
		dbf     d0,@IsReviveAction
                
		                ; Cure action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		move.w  #$194,d0        ; "Well, let's just see who[Line]needs my help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   -8(a6)
		clr.b   -$16(a6)
loc_17104:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d1
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d1
		move.b  d1,-$1C(a6)
		                
		move.b  -$1C(a6),d0
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_POISON,d1
		beq.w   loc_171B4
		st      -$16(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #$197,d0        ; "Oh, my![Line][Name] is poisoned![Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #CHURCH_CURE_POISON_COST,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$199,d0        ; "I can heal [Name],[Line]but it'll cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17162
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_171B4
loc_17162:
		moveq   #CHURCH_CURE_POISON_COST,d0
		bsr.w   CheckGold       
		bne.w   loc_17178
		move.w  #$19A,d0        ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_171B4
loc_17178:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetStatusEffects
		bclr    #STATUSEFFECT_BIT_POISON,d1
		jsr     j_SetStatusEffects
		moveq   #CHURCH_CURE_POISON_COST,d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$19B,d0        ; "Done. [Name] is cured![Wait2]"
		bsr.w   DisplayMenuMessage
loc_171B4:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_17104
		tst.b   -$16(a6)
		bne.s   loc_171D4
		move.w  #$195,d0        ; "Hmmm...no one's poisoned.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_171D4:
		clr.w   -8(a6)
		clr.b   -$15(a6)
loc_171DC:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d1
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d1
		move.b  d1,-$1C(a6)
		                
		move.b  d1,d0
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_CURSE,d1
		beq.w   loc_172DC
		st      -$15(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #$198,d0        ; "Oh, my![Line][Name] is cursed![Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #CHURCH_CURE_CURSE_COST,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$199,d0        ; "I can heal [Name],[Line]but it'll cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17238
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_172DC
loc_17238:
		moveq   #CHURCH_CURE_CURSE_COST,d0
		bsr.w   CheckGold       
		bne.w   loc_1724E
		move.w  #$19A,d0        ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_172DC
loc_1724E:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetStatusEffects
		bclr    #STATUSEFFECT_BIT_CURSE,d1
		jsr     j_SetStatusEffects
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItem
		bcs.s   loc_1728E
		move.w  d2,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_1728E
		jsr     j_GetEntityItemsAddress
		bclr    #ITEMENTRY_BIT_EQUIPPED,(a0,d3.w)
loc_1728E:
		move.w  #ITEMTYPE_MASK_RING,d1
		jsr     j_GetEquippedItem
		bcs.s   loc_172B4
		move.w  d2,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_172B4
		jsr     j_GetEntityItemsAddress
		bclr    #ITEMENTRY_BIT_EQUIPPED,(a0,d3.w)
loc_172B4:
		jsr     j_ResetCombatants
		moveq   #CHURCH_CURE_CURSE_COST,d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$19C,d0        ; "Done. [Name] is cured![Wait2]"
		bsr.w   DisplayMenuMessage
loc_172DC:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_171DC
		tst.b   -$15(a6)
		bne.s   loc_172FC
		move.w  #$196,d0        ; "No one's cursed![Wait2]"
		bsr.w   DisplayMenuMessage
loc_172FC:
		bra.w   loc_175A8
@IsReviveAction:
		
		dbf     d0,@IsPromoteAction
                
		                ; Revive action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		move.w  #$194,d0        ; "Well, let's just see who[Line]needs my help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   -8(a6)
		clr.b   -$17(a6)
loc_1731E:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d0
		move.b  d0,-$1C(a6)
		jsr     j_GetCurrentHP
		tst.w   d1
		bne.w   loc_173EC
		st      -$17(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #$19E,d0        ; "Oh, my! [Name] is in bad[Line]shape. I'll see if I can help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   d0
		move.b  -$1C(a6),d0
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		moveq   #0,d7
		tst.b   (a0,d0.w)
		beq.w   loc_17362
		moveq   #CHURCH_BASE_PROMOTION_LEVEL,d7
loc_17362:
		jsr     j_GetLevel
		add.w   d7,d1
		mulu.w  #CHURCH_RAISE_COST_PER_LEVEL,d1
		move.w  d1,-4(a6)
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$19F,d0        ; "I can revive [Name], but it[Line]will cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17396
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_173EC
loc_17396:
		moveq   #0,d0
		move.w  -4(a6),d0
		bsr.w   CheckGold       
		bne.w   loc_173B0
		move.w  #$19A,d0        ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_173EC
loc_173B0:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetMaxHP
		jsr     j_SetCurrentHP
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$1A0,d0        ; "[Name] has revived![Wait2]"
		bsr.w   DisplayMenuMessage
loc_173EC:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_1731E
		tst.b   -$17(a6)
		bne.s   loc_1740C
		move.w  #$19D,d0        ; "Hmm...everyone seems OK.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_1740C:
		bra.w   loc_175A8
@IsPromoteAction:
		
		                ; Promote action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		clr.w   -8(a6)
		clr.b   -$18(a6)
loc_17422:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d0
		sf      -$40(a6,d0.w)
		move.b  d0,-$1C(a6)
		cmpi.b  #JOGURT,d0
		beq.s   loc_17456
		jsr     j_GetLevel
		cmpi.w  #CHURCH_BASE_PROMOTION_LEVEL,d1
		blt.s   loc_17470
		clr.w   d0
		move.b  -$1C(a6),d0
		jsr     j_GetClass
		cmpi.w  #BASE_CLASSES_END,d1
		bgt.s   loc_17470
loc_17456:
		andi.w  #$FF,d0
		st      -$40(a6,d0.w)
		st      -$18(a6)
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		move.w  -8(a6),d0
		bset    #6,(a0,d0.w)
loc_17470:
		addq.w  #1,-8(a6)
		move.w  -8(a6),d0
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.s   loc_17422
		tst.b   -$18(a6)
		bne.s   loc_17490       
		move.w  #$1A1,d0        ; "I'm sorry, but no one has[Line]earned a promotion.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17490:
		move.w  #$1A2,d0        ; "Does anyone want to be[Line]promoted?"
		bsr.w   DisplayMenuMessage
		move.w  #VDPTILE_CL_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
		bsr.w   DisplayPortraitInMenu
		movem.l d1-a6,-(sp)
		jsr     j_CreateMembersListScreen
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d1-a6
		bne.s   loc_174C2
		move.w  #$1A3,d0        ; "Changed your mind?[Line]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_174C2:
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d0
		move.b  d0,-$1C(a6)
		jsr     j_GetCurrentHP
		tst.w   d1
		bne.s   loc_174E4
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$1A5,d0        ; "[Name] needs to be revived[Line]before being promoted.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_174E4:
		tst.b   -$40(a6,d0.w)
		bne.s   loc_1751C
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetClass
		cmpi.w  #BASE_CLASSES_END,d1
		ble.s   loc_17510       
		move.w  d1,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  #$1A9,d0        ; "Hmm...[Line]I think [Name] should[Line]stay as [Class].[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17510:
		move.w  #$1A4,d0        ; "Hmm...[Name] needs some more[Line]training. Come back[Line]later.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_1751C:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$1A6,d0        ; "[Name] wants[Line]a promotion?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17542
		move.w  #$1A3,d0        ; "Changed your mind?[Line]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17542:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_2-$1000000)).w
		jsr     j_GetClass
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #JOGURT,d0
		beq.s   loc_17562
		jsr     j_Promote
loc_17562:
		jsr     j_GetClass
		move.w  d1,((MESSAGE_ARG_NAME_3-$1000000)).w
		move.w  #$1A7,d0        ; "I hereby make a promotion.[Line]Now, [Class] [Name] shall[Line]be known as a [Class]![Wait2]"
		bsr.w   DisplayMenuMessage
		sndCom  MUSIC_PROMOTION
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.l d0-a6,-(sp)
		jsr     loc_11D22       ; Update Max's map sprite after promoting
		movem.l (sp)+,d0-a6
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  ((MESSAGE_ARG_NAME_3-$1000000)).w,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  #$1A8,d0        ; "Congratulations, [Name]![Wait2]"
		bsr.w   DisplayMenuMessage
loc_175A8:
		bsr.w   CloseGoldWindowInMenu
		move.w  #$18E,d0        ; "Can I help in some other way?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @Start
@Exit:
		move.w  #$18F,d0        ; "May the Powers of Light be[Line]always with you, [Hero]![Wait2]"
		bsr.w   DisplayMenuMessage
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		move.w  -6(a6),d1
		move.b  -$19(a6),d2
		unlk    a6
		movem.l (sp)+,d3-a5
		rts
                modend

    ; End of function ExecuteChurchMenu


; =============== S U B R O U T I N E =======================================

sub_175DE:
		move.l  d0,-(sp)
		move.l  #MAP_DATA,(dword_FFF006).l
		moveq   #$FFFFFFFF,d0
		bsr.s   sub_175F2
		move.l  (sp)+,d0
		rts

    ; End of function sub_175DE


; =============== S U B R O U T I N E =======================================

sub_175F2:
		movem.l d0-a6,-(sp)
		movea.l d0,a5
		clr.w   d6
		clr.w   d0
		move.b  (a0)+,d0
		move.b  d0,(MAP_WIDTH_0).l
		add.w   d0,d0
		movea.w d0,a3
		move.b  (a0)+,(MAP_HEIGHT_0).l
		movea.l (dword_FFF006).l,a1
		clr.w   d0
		move.b  (MAP_WIDTH_0).l,d0
		clr.w   d1
		move.b  (MAP_HEIGHT_0).l,d1
		mulu.w  d1,d0
		add.w   d0,d0
		lea     (a1,d0.w),a2
		move.l  a5,d1
		tst.w   d1
		beq.s   loc_17648
		lea     (byte_FF72EA).l,a4
		moveq   #0,d1
		lsr.w   #2,d0
		bcc.s   loc_17640
		move.w  d1,(a4)+
loc_17640:
		subq.w  #1,d0
loc_17642:
		move.l  d1,(a4)+
		dbf     d0,loc_17642
loc_17648:
		bsr.w   sub_17668
		move.l  a5,d0
		tst.w   d0
		beq.s   loc_17662
		bsr.w   sub_17780
		bsr.w   sub_177E6
		bsr.w   sub_178E0
		bsr.w   sub_179E6
loc_17662:
		movem.l (sp)+,d0-a6
		rts

    ; End of function sub_175F2


; =============== S U B R O U T I N E =======================================

sub_17668:
		moveq   #0,d5
		bra.w   loc_17716
loc_1766E:
		cmpa.l  a2,a1
		bcs.w   loc_17676
		rts
loc_17676:
		dbf     d6,loc_1767E
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_1767E:
		add.w   d7,d7
		bcc.s   loc_176A6
		dbf     d6,loc_1768A
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_1768A:
		add.w   d7,d7
		subx.w  d4,d4
		dbf     d6,loc_17696
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_17696:
		add.w   d7,d7
		addx.w  d4,d4
		bmi.s   loc_1769E
		addq.w  #1,d4
loc_1769E:
		add.w   d4,d5
		move.w  d5,(a1)+
		bra.w   loc_17716
loc_176A6:
		dbf     d6,loc_176AE
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_176AE:
		add.w   d7,d7
		bcc.s   loc_176F2
		dbf     d6,loc_176BA
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_176BA:
		add.w   d7,d7
		subx.w  d4,d4
		dbf     d6,loc_176C6
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_176C6:
		add.w   d7,d7
		addx.w  d4,d4
		dbf     d6,loc_176D2
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_176D2:
		add.w   d7,d7
		addx.w  d4,d4
		dbf     d6,loc_176DE
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_176DE:
		add.w   d7,d7
		addx.w  d4,d4
		clr.w   d5
		sub.w   a3,d5
		move.w  (a1,d5.w),d5
		add.w   d4,d5
		move.w  d5,(a1)+
		bra.w   loc_17716
loc_176F2:
		moveq   #$A,d4
		cmp.w   d4,d6
		bcs.s   loc_17700
		sub.w   d4,d6
		ror.w   #6,d7
		move.w  d7,d5
		bra.s   loc_17710
loc_17700:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d5
		swap    d5
		moveq   #$10,d6
		sub.w   d4,d6
loc_17710:
		andi.w  #$3FF,d5
		move.w  d5,(a1)+
loc_17716:
		cmpa.l  a2,a1
		bcs.w   loc_1771E
		rts
loc_1771E:
		moveq   #$FFFFFFFF,d4
loc_17720:
		dbf     d6,loc_17728
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_17728:
		add.w   d7,d7
		dbcs    d4,loc_17720
		negx.w  d4
		dbf     d4,loc_17738
		bra.w   loc_17676
loc_17738:
		moveq   #0,d3
		moveq   #1,d2
		moveq   #0,d1
loc_1773E:
		dbf     d6,loc_17746
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_17746:
		add.w   d7,d7
		addx.w  d1,d1
		dbf     d6,loc_17752
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_17752:
		add.w   d7,d7
		addx.w  d1,d1
		add.w   d2,d3
		add.w   d2,d2
		add.w   d2,d2
		dbf     d4,loc_1773E
		add.w   d3,d1
		lsr.w   #1,d1
		bcc.s   loc_17768
		move.w  d5,(a1)+
loc_17768:
		dbf     d1,loc_17770
		bra.w   loc_1766E
loc_17770:
		move.w  d5,d4
		swap    d5
		move.w  d4,d5
loc_17776:
		move.l  d5,(a1)+
		dbf     d1,loc_17776
		bra.w   loc_1766E

    ; End of function sub_17668


; =============== S U B R O U T I N E =======================================

sub_17780:
		movea.l (dword_FFF006).l,a1
		clr.w   d5
		dbf     d6,loc_17790
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_17790:
		add.w   d7,d7
		roxr.w  #1,d5
loc_17794:
		cmpa.l  a2,a1
		bcs.w   loc_1779C
		rts
loc_1779C:
		moveq   #$FFFFFFFF,d4
		moveq   #0,d3
		moveq   #2,d2
		moveq   #0,d1
		bra.s   loc_177AC
loc_177A6:
		add.w   d2,d3
		add.w   d2,d2
		add.w   d2,d2
loc_177AC:
		dbf     d6,loc_177B4
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_177B4:
		add.w   d7,d7
		dbcs    d4,loc_177A6
		negx.w  d4
		add.w   d4,d4
loc_177BE:
		dbf     d6,loc_177C6
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_177C6:
		add.w   d7,d7
		addx.w  d1,d1
		dbf     d4,loc_177BE
		add.w   d3,d1
		bchg    #$F,d5
		bne.s   loc_177DE
loc_177D6:
		or.w    d5,(a1)+
		dbf     d1,loc_177D6
		bra.s   loc_17794
loc_177DE:
		addq.w  #1,d1
		add.w   d1,d1
		adda.w  d1,a1
		bra.s   loc_17794

    ; End of function sub_17780


; =============== S U B R O U T I N E =======================================

sub_177E6:
		movea.l (dword_FFF006).l,a1
		lea     (byte_FF72EA).l,a4
loc_177F2:
		clr.w   d0
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_17802
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d0
		bra.s   loc_17812
loc_17802:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d0
		swap    d0
		moveq   #$10,d6
		sub.w   d4,d6
loc_17812:
		andi.w  #$FF,d0
		cmpi.b  #$FF,d0
		bne.s   loc_1781E
		rts
loc_1781E:
		move.w  a3,d1
		mulu.w  d1,d0
		clr.w   d1
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_17832
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d1
		bra.s   loc_17842
loc_17832:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d1
		swap    d1
		moveq   #$10,d6
		sub.w   d4,d6
loc_17842:
		andi.w  #$FF,d1
		add.w   d1,d1
		add.w   d1,d0
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_17858
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d1
		bra.s   loc_17868
loc_17858:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d1
		swap    d1
		moveq   #$10,d6
		sub.w   d4,d6
loc_17868:
		andi.w  #$FF,d1
		clr.w   d2
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_1787C
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d2
		bra.s   loc_1788C
loc_1787C:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d2
		swap    d2
		moveq   #$10,d6
		sub.w   d4,d6
loc_1788C:
		andi.w  #$FF,d2
		moveq   #1,d3
		clr.w   d4
loc_17894:
		dbf     d6,loc_1789C
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_1789C:
		add.w   d7,d7
		addx.w  d4,d4
		dbf     d3,loc_17894
		ror.w   #6,d4
loc_178A6:
		move.w  d2,d3
loc_178A8:
		or.w    d4,(a1,d0.w)
		swap    d4
		clr.w   d4
		moveq   #3,d5
loc_178B2:
		dbf     d6,loc_178BA
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_178BA:
		add.w   d7,d7
		addx.w  d4,d4
		dbf     d5,loc_178B2
		lsl.w   #6,d4
		or.w    d4,(a4,d0.w)
		swap    d4
		addq.w  #2,d0
		dbf     d3,loc_178A8
		add.w   a3,d0
		sub.w   d2,d0
		sub.w   d2,d0
		subq.w  #2,d0
		dbf     d1,loc_178A6
		bra.w   loc_177F2

    ; End of function sub_177E6


; =============== S U B R O U T I N E =======================================

sub_178E0:
		movea.l (dword_FFF006).l,a1
		lea     (byte_FF72EA).l,a4
loc_178EC:
		clr.w   d0
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_178FC
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d0
		bra.s   loc_1790C
loc_178FC:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d0
		swap    d0
		moveq   #$10,d6
		sub.w   d4,d6
loc_1790C:
		andi.w  #$FF,d0
		cmpi.b  #$FF,d0
		bne.s   loc_17918
		rts
loc_17918:
		move.w  a3,d1
		mulu.w  d1,d0
		clr.w   d1
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_1792C
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d1
		bra.s   loc_1793C
loc_1792C:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d1
		swap    d1
		moveq   #$10,d6
		sub.w   d4,d6
loc_1793C:
		andi.w  #$FF,d1
		add.w   d1,d1
		add.w   d1,d0
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_17952
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d1
		bra.s   loc_17962
loc_17952:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d1
		swap    d1
		moveq   #$10,d6
		sub.w   d4,d6
loc_17962:
		andi.w  #$FF,d1
		clr.w   d2
		moveq   #8,d4
		cmp.w   d4,d6
		bcs.s   loc_17976
		sub.w   d4,d6
		rol.w   #8,d7
		move.w  d7,d2
		bra.s   loc_17986
loc_17976:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d4
		rol.l   d4,d7
		move.l  d7,d2
		swap    d2
		moveq   #$10,d6
		sub.w   d4,d6
loc_17986:
		andi.w  #$FF,d2
		moveq   #2,d3
		clr.w   d4
loc_1798E:
		dbf     d6,loc_17996
		move.w  (a0)+,d7
		moveq   #$F,d6
loc_17996:
		add.w   d7,d7
		addx.w  d4,d4
		dbf     d3,loc_1798E
		ror.w   #4,d4
loc_179A0:
		movea.l d2,a6
		move.w  d2,d3
loc_179A4:
		or.w    d4,(a1,d0.w)
		moveq   #6,d2
		cmp.w   d2,d6
		bcs.s   loc_179B6
		sub.w   d2,d6
		rol.w   #6,d7
		move.w  d7,d5
		bra.s   loc_179C6
loc_179B6:
		rol.l   d6,d7
		move.w  (a0)+,d7
		sub.w   d6,d2
		rol.l   d2,d7
		move.l  d7,d5
		swap    d5
		moveq   #$10,d6
		sub.w   d2,d6
loc_179C6:
		andi.w  #$3F,d5 
		or.w    d5,(a4,d0.w)
		addq.w  #2,d0
		dbf     d3,loc_179A4
		move.l  a6,d2
		add.w   a3,d0
		sub.w   d2,d0
		sub.w   d2,d0
		subq.w  #2,d0
		dbf     d1,loc_179A0
		bra.w   loc_178EC

    ; End of function sub_178E0


; =============== S U B R O U T I N E =======================================

sub_179E6:
		lea     (byte_FF72EA).l,a1
		clr.w   d0
		move.b  (MAP_WIDTH_0).l,d0
		add.w   d0,d0
		clr.w   d1
		move.b  (MAP_HEIGHT_0).l,d1
		mulu.w  d1,d0
		lea     (a1,d0.w),a2
		subq.w  #8,d6
		bcs.s   loc_17A0A
		subq.l  #1,a0
loc_17A0A:
		clr.w   d0
		move.b  (a0)+,d0
		cmpi.b  #$FF,d0
		beq.s   loc_17A28
		add.w   d0,d0
		adda.w  d0,a1
		cmpa.l  a2,a1
		bcc.s   return_17A26
		move.b  (a0)+,d0
		or.b    d0,(a1)
		addq.w  #2,a1
loc_17A22:
		cmpa.l  a2,a1
		bcs.s   loc_17A0A
return_17A26:
		rts
loc_17A28:
		lea     $1FE(a1),a1
		bra.s   loc_17A22

    ; End of function sub_179E6


; =============== S U B R O U T I N E =======================================

MainMenuAction_Search:
		
		movem.l d0-a6,-(sp)
		clr.w   (SPEECH_SFX).l
		clr.w   d1
		move.b  (MAP_WIDTH_0).l,d1
		add.w   d1,d1
		clr.w   d0
		move.b  (MAP_SPRITE_POSITION+1).l,d0
		mulu.w  d1,d0
		clr.w   d3
		move.b  (MAP_SPRITE_POSITION).l,d3
		add.w   d3,d3
		moveq   #$18,d2
		and.b   (MAP_SPRITE_FACING).l,d2
		subq.b  #8,d2
		bcc.s   loc_17A66
		sub.w   d1,d3
		bra.s   loc_17A78
loc_17A66:
		subq.b  #8,d2
		bcc.s   loc_17A6E
		addq.w  #2,d3
		bra.s   loc_17A78
loc_17A6E:
		subq.b  #8,d2
		bcc.s   loc_17A76
		add.w   d1,d3
		bra.s   loc_17A78
loc_17A76:
		subq.w  #2,d3
loc_17A78:
		lea     (byte_FF72EA).l,a0
		movea.l a0,a1
		add.w   d3,d0
		adda.w  d0,a0
		tst.w   (a0)
		bmi.s   loc_17AC4
		move.w  d0,d7
		moveq   #$FFFFFFFC,d0
		and.b   (a0),d0
		lsr.b   #2,d0
		cmpi.b  #$1C,d0
		bne.s   loc_17A9E
		bsr.w   sub_13828
		bra.w   loc_17AE0
loc_17A9E:
		cmpi.b  #$19,d0
		beq.s   loc_17AE6
		jsr     (sub_304).l
		move.w  #$21B,d0
		jsr     (j_LoadText).l
		jsr     (j_WaitForPlayerInput).l
		jsr     (j_CloseMessageWindow).l
		bra.w   loc_17AE0
loc_17AC4:
		clr.w   d2
		lsr.w   #1,d0
		beq.s   loc_17ADA
		subq.w  #1,d0
loc_17ACC:
		tst.w   (a1)+
		dbmi    d0,loc_17ACC
		bpl.s   loc_17ADA
		addq.w  #1,d2
		dbf     d0,loc_17ACC
loc_17ADA:
		moveq   #$FFFFFFFE,d1
		bsr.w   sub_17CCA
loc_17AE0:
		movem.l (sp)+,d0-a6
		rts
loc_17AE6:
		clr.w   d2
		lsr.w   #1,d7
		beq.s   loc_17B08
		subq.w  #1,d7
		move.w  #$FC00,d0
		move.w  #$6400,d1
loc_17AF6:
		move.w  (a1)+,d3
		and.w   d0,d3
		cmp.w   d3,d1
		dbeq    d7,loc_17AF6
		bne.s   loc_17B08
		addq.w  #1,d2
		dbf     d7,loc_17AF6
loc_17B08:
		moveq   #$FFFFFFFC,d1
		bsr.w   sub_17CCA
		bra.s   loc_17AE0

    ; End of function MainMenuAction_Search


; =============== S U B R O U T I N E =======================================

sub_17B10:
		movem.l d0-d4/a0-a1,-(sp)
		moveq   #0,d4
		move.b  d0,d4
		clr.w   d1
		move.b  (MAP_WIDTH_0).l,d1
		add.w   d1,d1
		clr.w   d0
		move.b  (MAP_SPRITE_POSITION+1).l,d0
		mulu.w  d1,d0
		clr.w   d3
		move.b  (MAP_SPRITE_POSITION).l,d3
		add.w   d3,d3
		moveq   #$18,d2
		and.b   (MAP_SPRITE_FACING).l,d2
		subq.b  #8,d2
		bcc.s   loc_17B46
		sub.w   d1,d3
		bra.s   loc_17B58
loc_17B46:
		subq.b  #8,d2
		bcc.s   loc_17B4E
		addq.w  #2,d3
		bra.s   loc_17B58
loc_17B4E:
		subq.b  #8,d2
		bcc.s   loc_17B56
		add.w   d1,d3
		bra.s   loc_17B58
loc_17B56:
		subq.w  #2,d3
loc_17B58:
		lea     (byte_FF72EA).l,a0
		movea.l a0,a1
		add.w   d3,d0
		adda.w  d0,a0
		moveq   #$FFFFFFFC,d0
		and.b   (a0),d0
		lsr.b   #2,d0
		cmpi.b  #$15,d0
		bcs.s   loc_17B8A
		cmpi.b  #$19,d0
		bcc.s   loc_17B8A
		moveq   #$FFFFFFFD,d1
		move.w  d0,d2
		lsl.w   #8,d2
		move.b  d4,d2
		jsr     (j_CreateMessageWindow).l
		bsr.w   sub_17CCA
		bra.s   loc_17BB6
loc_17B8A:
		jsr     (j_CreateMessageWindow).l
		move.w  #$21C,d0
		move.w  d4,(MESSAGE_ARG_NAME_1).l
		jsr     (j_LoadText).l
		jsr     (j_CreateMessageWindow).l
		move.w  #$21D,d0
		jsr     (j_LoadText).l
		jsr     (j_CloseMessageWindow).l
loc_17BB6:
		movem.l (sp)+,d0-d4/a0-a1
		rts

    ; End of function sub_17B10

SpriteTextSounds:
		incbin "data/scripting/spritetextsounds.bin"

; =============== S U B R O U T I N E =======================================

j_j_SetEventFlag:
		
		jmp     (j_SetEventFlag).l

    ; End of function j_j_SetEventFlag


; =============== S U B R O U T I N E =======================================

j_j_ClearEventFlag:
		
		jmp     (j_ClearEventFlag).l

    ; End of function j_j_ClearEventFlag


; =============== S U B R O U T I N E =======================================

j_j_CheckEventFlag:
		
		jmp     (j_CheckEventFlag).l

    ; End of function j_j_CheckEventFlag


; =============== S U B R O U T I N E =======================================

sub_17C70:
		movem.l d0-a6,-(sp)
		moveq   #0,d0
		moveq   #4,d1
		lea     ((byte_FFF00A-$1000000)).w,a0
loc_17C7C:
		move.l  d0,(a0)+
		dbf     d1,loc_17C7C
		move.b  ((DIALOG_INDEX-$1000000)).w,d0
		cmpi.b  #$2E,d0 
		bne.s   loc_17CA6
		move.w  #$57,d0 
		bsr.s   j_j_CheckEventFlag
		bne.s   loc_17CA4
		moveq   #$A,d0
		moveq   #$FFFFFFFF,d1
		jsr     (sub_384).l
		move.w  #$57,d0 
		bsr.s   j_j_SetEventFlag
loc_17CA4:
		bra.s   loc_17CC4
loc_17CA6:
		cmpi.b  #4,d0
		bne.s   loc_17CC4
		move.w  #$57,d0 
		bsr.s   j_j_CheckEventFlag
		bne.s   loc_17CC4
		moveq   #$A,d0
		moveq   #$FFFFFFFF,d1
		jsr     (sub_384).l
		move.w  #$57,d0 
		bsr.s   j_j_SetEventFlag
loc_17CC4:
		movem.l (sp)+,d0-a6
		rts

    ; End of function sub_17C70


; =============== S U B R O U T I N E =======================================

sub_17CCA:
		movem.l d0-a5,-(sp)
		link    a6,#-6
		sf      -4(a6)
		sf      -2(a6)
		cmpi.b  #$FD,d1
		seq     -3(a6)
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #0,d0
		move.b  ((DIALOG_INDEX-$1000000)).w,d0
		lea     DialogHeader(pc), a0
		lea     sub_17EB6(pc), a3
		lea     sub_17E90(pc), a4
		lea     sub_17E6E(pc), a5
		moveq   #0,d0
		move.b  ((DIALOG_INDEX-$1000000)).w,d0
		moveq   #$22,d7 						; $22 -> d7 (34, maximum number of indexes)
		subq.l  #4,a0
FindDialogLoop:
		addq.l  #4,a0
		cmp.w   (a0)+,d0						; Compare (a0)+ to d0 to determine if it is the sprite set currently loaded
		dbeq    d7,FindDialogLoop				; Loop, up to d7 times
                
		cmpi.b  #$FD,d1
		beq.s   loc_17D2E
		cmpi.b  #$FC,d1
		beq.s   loc_17D2E
		ext.w   d2
		cmpi.b  #$FF,d1
		beq.s   loc_17D2E
		cmpi.b  #$FE,d1
		beq.s   loc_17D2E
		move.b  d3,d0
		bsr.w   sub_17F64       
loc_17D2E:
		move.w  (a0)+,d0						; Put (a0)+ [offset of dialogue tree] into d0
		move.w  (a0),d6							; Put (a0) [last two bits of assignment] into d6 (not yet sure what this is used for)
		cmpi.b  #$FC,d1
		bne.s   loc_17D3E
		bsr.w   sub_180AC
		bra.s   loc_17D44
loc_17D3E:
		jsr     DialogHeader(pc,d0.w)
		jsr     (a3)
loc_17D44:
		tst.b   -4(a6)
		bne.s   loc_17D5A
		tst.b   -3(a6)
		beq.s   loc_17D5A
		jsr     (j_CloseMessageWindow).l
		sf      -3(a6)
loc_17D5A:
		unlk    a6
		movem.l (sp)+,d0-a5
		rts

    ; End of function sub_17CCA

DialogHeader:   dc.w $2D
		dc.w sub_180F0-DialogHeader
		dc.w $23A
		dc.w 3
		dc.w sub_186E6-DialogHeader
		dc.w $23A
		dc.w 0
		dc.w sub_18238-DialogHeader
		dc.w $242
		dc.w $2E
		dc.w sub_18882-DialogHeader
		dc.w $23A
		dc.w 4
		dc.w sub_18C52-DialogHeader
		dc.w $23A
		dc.w $2F
		dc.w sub_189CE-DialogHeader
		dc.w $242
		dc.w 5
		dc.w sub_18DAA-DialogHeader
		dc.w $247
		dc.w 6
		dc.w sub_19044-DialogHeader
		dc.w $250
		dc.w $32
		dc.w sub_185D0-DialogHeader
		dc.w $250
		dc.w $31
		dc.w sub_18D94-DialogHeader
		dc.w $247
		dc.w $30
		dc.w sub_1934C-DialogHeader
		dc.w $250
		dc.w 7
		dc.w sub_194DE-DialogHeader
		dc.w $254
		dc.w $14
		dc.w sub_19C82-DialogHeader
		dc.w 0
		dc.w $F
		dc.w DialogueScript13-DialogHeader
		dc.w $267
		dc.w 9
		dc.w sub_1A4E2-DialogHeader
		dc.w $27C
		dc.w $33
		dc.w sub_1A5CA-DialogHeader
		dc.w $27C
		dc.w 8
		dc.w sub_1A6E2-DialogHeader
		dc.w $28F
		dc.w $34
		dc.w sub_1A85A-DialogHeader
		dc.w $28F
		dc.w $A
		dc.w sub_1AC9C-DialogHeader
		dc.w $297
		dc.w $2C
		dc.w sub_1AF30-DialogHeader
		dc.w $297
		dc.w $B
		dc.w DialogueScript20-DialogHeader
		dc.w $29E
		dc.w $15
		dc.w sub_1B43A-DialogHeader
		dc.w $2A8
		dc.w 2
		dc.w sub_1B236-DialogHeader
		dc.w $2A6
		dc.w $18
		dc.w sub_1BA56-DialogHeader
		dc.w $2AE
		dc.w $35
		dc.w sub_1BD74-DialogHeader
		dc.w $2AE
		dc.w $11
		dc.w sub_1BF28-DialogHeader
		dc.w $2BC
		dc.w $17
		dc.w sub_1B912-DialogHeader
		dc.w 0
		dc.w $19
		dc.w sub_1C40C-DialogHeader
		dc.w $2CC
		dc.w $10
		dc.w sub_1C2B8-DialogHeader
		dc.w $2C4
		dc.w $1A
		dc.w DialogueScript29-DialogHeader
		dc.w $2E7
		dc.w $D
		dc.w sub_19450-DialogHeader
		dc.w 0
		dc.w $12
		dc.w sub_1D152-DialogHeader
		dc.w $2DA
		dc.w $22
		dc.w sub_1CF6A-DialogHeader
		dc.w 0
		dc.w $16
		dc.w sub_1BA12-DialogHeader
		dc.w 0
		dc.w $25
		dc.w sub_1D2C0-DialogHeader
		dc.w 0

; =============== S U B R O U T I N E =======================================

; Dialog Scripts

sub_17E34:
		tst.b   -3(a6)
		beq.s   @Return
		jsr     (j_CreateMessageWindow).l
@Return:
		rts

    ; End of function sub_17E34


; =============== S U B R O U T I N E =======================================

sub_17E42:
		tst.b   -3(a6)
		beq.s   @Return
		move.l  d0,-(sp)
		jsr     (j_CloseMessageWindow).l
		sf      -3(a6)
		move.l  (sp)+,d0
@Return:
		rts

    ; End of function sub_17E42


; =============== S U B R O U T I N E =======================================

sub_17E58:
		tst.b   -3(a6)
		bne.s   @Return
		move.l  d0,-(sp)
		jsr     (sub_304).l
		st      -3(a6)
		move.l  (sp)+,d0
@Return:
		rts

    ; End of function sub_17E58


; =============== S U B R O U T I N E =======================================

sub_17E6E:
		tst.b   -3(a6)
		bne.s   loc_17E7E
		st      -3(a6)
		jsr     (sub_304).l
loc_17E7E:
		add.w   d6,d0
		tst.b   (byte_FF9C5F).l
		bne.s   return_17E8E
		jsr     (j_LoadText).l
return_17E8E:
		rts

    ; End of function sub_17E6E


; =============== S U B R O U T I N E =======================================

sub_17E90:
		jsr     (a3)
		movem.l d0-a6,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.b  d0,-1(a6)
		jsr     j_OpenPortraitWindow
		st      -2(a6)
		bsr.s   sub_17E34       
		movem.l (sp)+,d0-a6
		rts

    ; End of function sub_17E90


; =============== S U B R O U T I N E =======================================

sub_17EB6:
		tst.b   -2(a6)
		beq.s   @Return
		movem.l d0-a6,-(sp)
		jsr     j_ClosePortraitWindow
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sf      -2(a6)
		movem.l (sp)+,d0-a6
@Return:
		rts

    ; End of function sub_17EB6


; =============== S U B R O U T I N E =======================================

; Used in dialogue scripts

GiveItemToHero:
		
		movem.l d0-d1,-(sp)
		clr.w   d1
		move.b  d0,d1
		moveq   #0,d0
		jsr     j_GiveItem
		movem.l (sp)+,d0-d1
		rts

    ; End of function GiveItemToHero


; =============== S U B R O U T I N E =======================================

sub_17EEC:
		movem.l d0-d3/a0,-(sp)
		move.b  d0,d3
		move.b  d0,d1
		jsr     j_IsItemHeldByForce
		bcs.s   loc_17F5A
		move.b  d0,((byte_FFF001-$1000000)).w
		andi.w  #$FF,d0
		movem.l d0-d3,-(sp)
		cmpi.b  #$25,d3 
		bne.s   loc_17F30
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItem
		bcs.s   loc_17F30
		cmpi.b  #SWORD_OF_DARKNESS,d2
		bne.s   loc_17F30
		jsr     j_GetStatusEffects
		bclr    #STATUSEFFECT_BIT_CURSE,d1
		jsr     j_SetStatusEffects
loc_17F30:
		movem.l (sp)+,d0-d3
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d2
loc_17F3C:
		moveq   #ITEMENTRY_MASK_INDEX,d0
		and.b   (a0)+,d0
		cmp.b   d0,d3
		dbeq    d2,loc_17F3C
		bne.s   loc_17F60
		moveq   #3,d1
		sub.w   d2,d1
		clr.w   d0
		move.b  ((byte_FFF001-$1000000)).w,d0
		jsr     j_RemoveItem
		clr.w   d0
loc_17F5A:
		movem.l (sp)+,d0-d3/a0
		rts
loc_17F60:
		addq.w  #8,d2
		bra.s   loc_17F5A

    ; End of function sub_17EEC


; =============== S U B R O U T I N E =======================================

; Set speech SFX

sub_17F64:
		movem.l d1/a0,-(sp)
		clr.w   d1
		move.b  d0,d1
		lea     SpriteTextSounds(pc), a0
		move.b  (a0,d1.w),d1
		beq.s   loc_17F7C
		addi.w  #SFX_DIALOG_BLEEP_1,d1
		bra.s   loc_17F7E
loc_17F7C:
		clr.w   d1
loc_17F7E:
		move.w  d1,((SPEECH_SFX-$1000000)).w
		movem.l (sp)+,d1/a0
		rts

    ; End of function sub_17F64


; =============== S U B R O U T I N E =======================================

sub_17F88:
		movem.l d0-d1/d6,-(sp)
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_JoinForce
		jsr     j_ResetCombatants
		move.w  ((SPEECH_SFX-$1000000)).w,-6(a6)
		clr.w   ((SPEECH_SFX-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		jsr     (j_WaitForVInt).l
		sndCom  MUSIC_JOIN
		jsr     (a3)
		move.w  #$393,d6
		moveq   #4,d0
		jsr     (a5)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		moveq   #8,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.w  -6(a6),((SPEECH_SFX-$1000000)).w
		movem.l (sp)+,d0-d1/d6
		rts

    ; End of function sub_17F88


; =============== S U B R O U T I N E =======================================

; "Join Force" cutscene command

sub_17FE0:
		movem.l d0-d1,-(sp)
		jsr     j_JoinForce
		jsr     j_ResetCombatants
		movem.l (sp)+,d0-d1
		rts

    ; End of function sub_17FE0


; =============== S U B R O U T I N E =======================================

sub_17FF6:
		movem.l d0-d1,-(sp)
		move.w  ((SPEECH_SFX-$1000000)).w,-6(a6)
		clr.w   ((SPEECH_SFX-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		jsr     (j_WaitForVInt).l
		sndCom  SOUND_COMMAND_GET_D0_PARAMETER
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     (a3)
		moveq   #0,d0
		jsr     (a5)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  d6,-(sp)
		move.w  #$39B,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		jsr     (j_CreateMessageWindow).l
		move.w  -6(a6),((SPEECH_SFX-$1000000)).w
		movem.l (sp)+,d0-d1
		rts

    ; End of function sub_17FF6


; =============== S U B R O U T I N E =======================================

; Display yes/no prompt

sub_18046:
		bsr.s   sub_18056       
		beq.s   loc_1804E
		lsr.w   #8,d0
		bra.s   loc_18052
loc_1804E:
		andi.w  #$FF,d0
loc_18052:
		jsr     (a5)
		rts

    ; End of function sub_18046


; =============== S U B R O U T I N E =======================================

; Check yes/no

sub_18056:
		movem.l d0-a6,-(sp)
		jsr     (j_YesNoPrompt).l
		cmpi.w  #$FFFF,d0
		movem.l (sp)+,d0-a6
		move    sr,-(sp)
		jsr     (j_CreateMessageWindow).l
		move    (sp)+,ccr
		rts

    ; End of function sub_18056


; =============== S U B R O U T I N E =======================================

sub_18074:
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  d6,-(sp)
		move.w  #$21B,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		jmp     (j_WaitForPlayerInput).l

    ; End of function sub_18074


; =============== S U B R O U T I N E =======================================

sub_1808A:
		move.w  #$21C,d6
		clr.w   d0
		move.b  d2,d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		moveq   #0,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		moveq   #1,d0
		jsr     (a5)
		rts

    ; End of function sub_1808A


; =============== S U B R O U T I N E =======================================

sub_180A6:
		move.w  d1,d0
		subq.w  #1,d0
		jmp     (a5)

    ; End of function sub_180A6


; =============== S U B R O U T I N E =======================================

sub_180AC:
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  d2,d0
		jmp     (a5)

    ; End of function sub_180AC


; =============== S U B R O U T I N E =======================================

sub_180B4:
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  d6,-(sp)
		move.w  #$1B0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		jmp     (j_WaitForPlayerInput).l

    ; End of function sub_180B4


; =============== S U B R O U T I N E =======================================

sub_180CA:
		move.w  (word_FFF002).l,d0
		clr.w   d6
		jsr     (j_CreateMessageWindow).l
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_180E8
		addq.w  #1,(word_FFF002).l
		bra.s   loc_180EE
loc_180E8:
		subq.w  #1,(word_FFF002).l
loc_180EE:
		bra.s   sub_180CA

    ; End of function sub_180CA


; =============== S U B R O U T I N E =======================================

sub_180F0:
		move.w  #$30C,d6
		cmpi.b  #$FF,d1
		beq.w   loc_1812C
		cmpi.b  #2,d1
		bne.s   loc_1810C
		moveq   #$E,d0
		jsr     (a4)
		moveq   #8,d0
		jsr     (a5)
		rts
loc_1810C:
		cmpi.b  #3,d1
		bne.w   loc_1811E
		moveq   #$1E,d0
		jsr     (a4)
		moveq   #6,d0
		jsr     (a5)
		rts
loc_1811E:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1812C:
		cmpi.w  #0,d2
		bne.s   loc_18148
		moveq   #$1E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		rts
loc_18148:
		cmpi.w  #1,d2
		bne.s   loc_18168
		move.l  d0,-(sp)
		move.b  #$E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$E,d0
		jsr     (a4)
		moveq   #7,d0
		jsr     (a5)
		moveq   #8,d0
		jsr     (a5)
		rts
loc_18168:
		cmpi.w  #2,d2
		bne.s   loc_1818E
		moveq   #$1E,d0
		jsr     (a4)
		moveq   #0,d0
		moveq   #3,d1
		jsr     sub_11126       
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		rts
loc_1818E:
		cmpi.w  #3,d2
		bne.s   loc_181DA
		move.l  d0,-(sp)
		move.b  #$92,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$A,d0
		jsr     (a5)
		moveq   #$1E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		moveq   #3,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #$C,d0
		jsr     (a5)
		move.w  #$44,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #3,d0
		moveq   #1,d1
		jsr     sub_11126       
		rts
loc_181DA:
		cmpi.w  #4,d2
		bne.s   loc_181FA
		move.l  d0,-(sp)
		move.b  #$E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$E,d0
		jsr     (a4)
		moveq   #$D,d0
		jsr     (a5)
		moveq   #$E,d0
		jsr     (a5)
		rts
loc_181FA:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_180F0


; START OF FUNCTION CHUNK FOR sub_18238

loc_18208:
		cmpi.w  #0,d2
		bne.s   loc_18234
		move.w  #$38C,d6
		moveq   #$18,d0
		and.b   (MAP_SPRITE_FACING).l,d0
		cmpi.b  #$10,d0
		bne.s   loc_1822E
		moveq   #1,d0
		jsr     (a5)
		move.w  #$48,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_18232
loc_1822E:
		moveq   #4,d0
		jsr     (a5)
return_18232:
		rts
loc_18234:
		bra.w   sub_18074

; END OF FUNCTION CHUNK FOR sub_18238


; =============== S U B R O U T I N E =======================================

sub_18238:
		cmpi.b  #$FE,d1
		beq.s   loc_18208
		cmpi.b  #$FD,d1
		beq.w   sub_1808A
		cmpi.w  #$B,d1
		bne.s   loc_1825E
		move.w  #$35D,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1825E:
		cmpi.w  #$11,d1
		bne.s   loc_18276
		move.w  #$360,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_18276:
		cmpi.w  #$12,d1
		bne.s   loc_1828E
		move.w  #$363,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1828E:
		cmpi.w  #$17,d1
		bne.s   loc_182C6
		move.w  #$366,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_182A8
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_182C4
loc_182A8:
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_182C0
		moveq   #1,d0
		jsr     (a5)
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_182C4
loc_182C0:
		moveq   #2,d0
		jsr     (a5)
return_182C4:
		rts
loc_182C6:
		cmpi.w  #$18,d1
		bne.s   loc_182E6
		move.w  #$369,d6
		move.w  #$6B,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_182E0
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_182E4
loc_182E0:
		moveq   #2,d0
		jsr     (a5)
return_182E4:
		rts
loc_182E6:
		cmpi.w  #$19,d1
		bne.s   loc_18310
		moveq   #1,d0
		jsr     (a4)
		move.w  #$36C,d6
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1830A
		moveq   #0,d0
		jsr     (a5)
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
loc_1830A:
		moveq   #1,d0
		jsr     (a5)
		rts
loc_18310:
		move.w  #$36E,d6
		cmpi.w  #$C,d1
		bne.w   loc_18480
		cmpi.w  #9,d2
		bne.s   loc_18360
		moveq   #$31,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		moveq   #$1E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		moveq   #$D,d0
		moveq   #2,d1
		jsr     sub_11126       
		jsr     (j_CreateMessageWindow).l
		moveq   #$13,d0
		jsr     (a5)
		rts
loc_18360:
		moveq   #$31,d0 
		jsr     (a4)
		move.w  #$46,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_183D0
		move.w  #$6B,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_183CE
		moveq   #$D,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		jsr     (a3)
		move.w  ((SPEECH_SFX-$1000000)).w,-6(a6)
		clr.w   ((SPEECH_SFX-$1000000)).w
		sndCom  MUSIC_ITEM
		moveq   #$10,d0
		jsr     (a5)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		jsr     (j_CreateMessageWindow).l
		move.w  -6(a6),((SPEECH_SFX-$1000000)).w
		moveq   #$31,d0 
		jsr     (a4)
		moveq   #$11,d0
		jsr     (a5)
		move.w  #$33,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$46,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$64,d1 
		jsr     j_SetGold
		rts
loc_183CE:
		bra.s   loc_183D6
loc_183D0:
		moveq   #$12,d0
		jsr     (a5)
		rts
loc_183D6:
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_183E6
		moveq   #$C,d0
		jsr     (a5)
		rts
loc_183E6:
		move.l  ((byte_FFF00A-$1000000)).w,d0
		tst.b   d0
		bne.s   loc_1844E
		moveq   #3,d0
		jsr     (a5)
		moveq   #$1E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		moveq   #1,d1
		jsr     sub_11126       
		moveq   #5,d0
		jsr     (a5)
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		moveq   #3,d1
		jsr     sub_11126       
		moveq   #6,d0
		jsr     (a5)
		moveq   #$31,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		moveq   #0,d1
		jsr     sub_11126       
		moveq   #8,d0
		jsr     (a5)
		bra.s   loc_18452
loc_1844E:
		moveq   #$B,d0
		jsr     (a5)
loc_18452:
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		bsr.w   sub_18056       
		beq.s   loc_18476
		moveq   #9,d0
		jsr     (a5)
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$6A,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1847E
loc_18476:
		moveq   #$A,d0
		jsr     (a5)
		st      ((byte_FFF00D-$1000000)).w
return_1847E:
		rts
loc_18480:
		cmpi.w  #$D,d1
		bne.s   loc_184B4
		moveq   #$1E,d0
		jsr     (a4)
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1849A
		moveq   #$E,d0
		jsr     (a5)
		rts
loc_1849A:
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_184AA
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_184B2
loc_184AA:
		moveq   #5,d0
		jsr     (a5)
		st      ((byte_FFF00A-$1000000)).w
return_184B2:
		rts
loc_184B4:
		cmpi.w  #$E,d1
		bne.s   loc_184D8
		moveq   #$29,d0 
		jsr     (a4)
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_184CE
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_184D6
loc_184CE:
		moveq   #6,d0
		jsr     (a5)
		st      ((byte_FFF00B-$1000000)).w
return_184D6:
		rts
loc_184D8:
		cmpi.w  #$F,d1
		bne.s   loc_18508
		move.w  #$6B,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_184EE
		moveq   #$F,d0
		jsr     (a5)
		rts
loc_184EE:
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_184FE
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_18506
loc_184FE:
		moveq   #7,d0
		jsr     (a5)
		st      ((byte_FFF00C-$1000000)).w
return_18506:
		rts
loc_18508:
		move.w  #$382,d6
		cmpi.w  #$A,d1
		bne.s   loc_1854A
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18522
		moveq   #6,d0
		jsr     (a5)
		rts
loc_18522:
		tst.b   ((byte_FFF00E-$1000000)).w
		bne.s   loc_1853A
		moveq   #7,d0
		jsr     (a5)
		move.w  #$45,d0 
		bsr.w   j_j_SetEventFlag
		st      ((byte_FFF00E-$1000000)).w
		bra.s   return_18548
loc_1853A:
		moveq   #$A,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #9,d0
		jsr     (a5)
return_18548:
		rts
loc_1854A:
		cmpi.w  #4,d1
		bcs.s   loc_18574
		cmpi.w  #$A,d1
		bcc.s   loc_18574
		tst.b   ((byte_FFF00E-$1000000)).w
		beq.s   loc_1856C
		move.w  d1,d0
		moveq   #0,d1
		jsr     sub_11126       
		moveq   #8,d0
		jsr     (a5)
		bra.s   return_18572
loc_1856C:
		move.w  d1,d0
		subq.w  #4,d0
		jsr     (a5)
return_18572:
		rts
loc_18574:
		cmpi.w  #$15,d1
		bne.s   loc_185A0
		move.w  #$38C,d6
		cmpi.w  #8,d2
		bne.s   loc_1859A
		move.w  #$48,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18594
		moveq   #0,d0
		jsr     (a5)
		bra.s   loc_18598
loc_18594:
		moveq   #3,d0
		jsr     (a5)
loc_18598:
		bra.s   return_1859E
loc_1859A:
		moveq   #2,d0
		jsr     (a5)
return_1859E:
		rts
loc_185A0:
		cmpi.w  #$16,d1
		bne.s   loc_185C8
		move.l  d0,-(sp)
		move.b  #$92,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$391,d6
		cmpi.w  #8,d2
		bne.s   loc_185C2
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_185C6
loc_185C2:
		moveq   #1,d0
		jsr     (a5)
return_185C6:
		rts
loc_185C8:
		move.w  #$345,d6
		bra.w   sub_180A6

    ; End of function sub_18238


; =============== S U B R O U T I N E =======================================

sub_185D0:
		move.w  #$393,d6        ; set message bank : 915
		cmpi.w  #0,d2           ; check dialogue group : 0
		bne.w   loc_1867A
		moveq   #8,d0           ; set portrait : 8 (Luke)
		jsr     (a4)
		move.l  d0,-(sp)        ; set speech SFX : 8
		move.b  #8,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0           ; display message : 0
		jsr     (a5)
		move.l  d0,-(sp)        ; add force member (data) : 8 (Luke)
		moveq   #8,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		moveq   #3,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #3,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #3,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		moveq   #$C,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$C,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$C,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		moveq   #$13,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$13,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$13,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #1,d0
		move.w  #$2EC,d6
		moveq   #8,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #8,d0
		jsr     (a4)
		moveq   #7,d0
		jsr     (a5)
		rts
loc_1867A:
		cmpi.w  #1,d2
		bne.s   loc_186A0
		moveq   #$E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #5,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$E,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		rts
loc_186A0:
		cmpi.w  #2,d2
		bne.s   loc_186D8
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		moveq   #$E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		move.w  #$6B,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_186D8:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_185D0


; =============== S U B R O U T I N E =======================================

sub_186E6:
		cmpi.w  #1,d1
		bne.w   loc_1878C
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  #$32,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1871C
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1871C:
		move.w  #$333,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_18762
		move.w  #$7C,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18740
		moveq   #5,d0
		jsr     (a5)
		move.w  #$7C,d0 
		bsr.w   j_j_SetEventFlag
loc_18740:
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
		bra.s   return_1878A
loc_18762:
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18786
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		moveq   #3,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1878A
loc_18786:
		moveq   #4,d0
		jsr     (a5)
return_1878A:
		rts
loc_1878C:
		cmpi.w  #$C,d1
		bne.s   loc_187BC
		move.w  #$21E,d6
		moveq   #0,d0
		jsr     (a5)
		moveq   #1,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_187BC:
		cmpi.w  #$D,d1
		bne.s   loc_187CC
		move.w  #$339,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_187CC:
		cmpi.w  #$E,d1
		bne.s   loc_18800
		moveq   #7,d0
		jsr     (a4)
		move.w  #$33A,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_187FA
		moveq   #2,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_187F4
		moveq   #3,d0
		jsr     (a5)
		bra.s   loc_187F8
loc_187F4:
		moveq   #1,d0
		jsr     (a5)
loc_187F8:
		bra.s   return_187FE
loc_187FA:
		moveq   #1,d0
		jsr     (a5)
return_187FE:
		rts
loc_18800:
		cmpi.w  #$12,d1
		bne.s   loc_1881C
		move.w  #$33E,d6
		cmpi.w  #8,d2
		bne.s   loc_18816
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1881A
loc_18816:
		moveq   #0,d0
		jsr     (a5)
return_1881A:
		rts
loc_1881C:
		move.w  #$340,d6
		cmpi.w  #$16,d1
		bne.s   loc_18848
		cmpi.w  #8,d2
		bne.s   loc_18842
		move.w  #$46,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1883C
		moveq   #1,d0
		jsr     (a5)
		bra.s   loc_18840
loc_1883C:
		moveq   #3,d0
		jsr     (a5)
loc_18840:
		bra.s   return_18846
loc_18842:
		moveq   #0,d0
		jsr     (a5)
return_18846:
		rts
loc_18848:
		cmpi.w  #$17,d1
		bne.s   loc_18870
		cmpi.w  #8,d2
		bne.s   loc_1886A
		move.w  #$46,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18864
		moveq   #2,d0
		jsr     (a5)
		bra.s   loc_18868
loc_18864:
		moveq   #4,d0
		jsr     (a5)
loc_18868:
		bra.s   return_1886E
loc_1886A:
		moveq   #0,d0
		jsr     (a5)
return_1886E:
		rts
loc_18870:
		cmpi.w  #$1B,d1
		bne.s   loc_1887A
		bra.w   sub_180B4
loc_1887A:
		move.w  #$31B,d6
		bra.w   sub_180A6

    ; End of function sub_186E6


; =============== S U B R O U T I N E =======================================

sub_18882:
		cmpi.w  #7,d1
		bne.s   loc_188B6
		move.w  d6,-(sp)
		move.w  #$220,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #1,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_188B6:
		cmpi.w  #6,d1
		bne.s   loc_188FC
		move.w  #$3FA,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_188D6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
loc_188D6:
		moveq   #1,d0
		jsr     (a5)
		moveq   #0,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_188FC:
		cmpi.w  #8,d1
		bne.s   loc_18944
		moveq   #7,d0
		jsr     (a4)
		move.w  #$3AE,d6
		moveq   #0,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #7,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #7,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$47,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$78,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_18944:
		move.w  #$3B1,d6
		cmpi.w  #1,d1
		bne.s   loc_18980
		cmpi.w  #8,d2
		bne.s   loc_1895A
		moveq   #5,d0
		jsr     (a5)
		bra.s   return_1897E
loc_1895A:
		move.l  d0,-(sp)
		move.b  #$92,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		moveq   #1,d0
		jsr     (a5)
		moveq   #2,d0
		jsr     (a5)
		moveq   #4,d0
		jsr     (a5)
		move.w  #$67,d0 
		bsr.w   j_j_SetEventFlag
return_1897E:
		rts
loc_18980:
		cmpi.w  #2,d1
		bne.s   loc_1898C
		moveq   #6,d0
		jsr     (a5)
		rts
loc_1898C:
		cmpi.w  #$B,d1
		bne.s   loc_1899C
		move.w  #$3B8,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1899C:
		cmpi.w  #$10,d1
		bne.s   loc_189C6
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_189C6:
		move.w  #$39D,d6
		bra.w   sub_180A6

    ; End of function sub_18882


; =============== S U B R O U T I N E =======================================

sub_189CE:
		cmpi.b  #$FF,d1
		beq.w   loc_18BE2
		cmpi.b  #$FE,d1
		beq.w   sub_18074
		move.w  #$3D1,d6
		cmpi.w  #2,d1
		bne.s   loc_18A0A
		move.l  d0,-(sp)
		move.b  #$8F,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		cmpi.w  #8,d2
		bne.s   loc_189FE
		moveq   #$11,d0
		jsr     (a5)
loc_189FE:
		cmpi.w  #9,d2
		bne.s   return_18A08
		moveq   #0,d0
		jsr     (a5)
return_18A08:
		rts
loc_18A0A:
		cmpi.w  #1,d1
		bne.s   loc_18A88
		moveq   #$31,d0 
		jsr     (a4)
		cmpi.w  #$11,d2
		bne.s   return_18A86
		sndCom  MUSIC_SAD_THEME
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		moveq   #$A,d0
		jsr     (a5)
		moveq   #1,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #1,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		moveq   #$31,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$C,d0
		jsr     (a5)
		moveq   #1,d0
		movem.l d6/a0-a6,-(sp)
		jsr     sub_80D8
		movem.l (sp)+,d6/a0-a6
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #$14,d0
		jsr     (a5)
		jsr     (a3)
		jsr     (j_CreateMessageWindow).l
		moveq   #$D,d0
		jsr     (a5)
		move.w  #$30,d0 
		bsr.w   j_j_SetEventFlag
return_18A86:
		rts
loc_18A88:
		cmpi.w  #3,d1
		bne.w   loc_18B2A
		cmpi.w  #$A,d2
		bne.w   loc_18B1A
		moveq   #$1E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		moveq   #$24,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		moveq   #$1E,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		moveq   #$24,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		bsr.w   sub_17E42
		sndCom  SFX_HIT
		movem.l d6/a0-a6,-(sp)
		jsr     sub_124028
		movem.l (sp)+,d6/a0-a6
		move.l  d0,-(sp)
		move.b  #$79,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1E,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$3E6,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
loc_18B1A:
		cmpi.w  #$C,d2
		bne.s   return_18B28
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #5,d0
		jsr     (a5)
return_18B28:
		rts
loc_18B2A:
		cmpi.w  #4,d1
		bne.s   loc_18B5A
		move.l  d0,-(sp)
		move.b  #1,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a4)
		cmpi.w  #$D,d2
		bne.s   loc_18B4A
		moveq   #6,d0
		jsr     (a5)
loc_18B4A:
		cmpi.w  #$10,d2
		bne.s   return_18B58
		moveq   #8,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_FADE_OUT
return_18B58:
		rts
loc_18B5A:
		cmpi.w  #5,d1
		bne.s   loc_18B86
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$24,d0 
		jsr     (a4)
		cmpi.w  #$B,d2
		bne.s   loc_18B7A
		moveq   #4,d0
		jsr     (a5)
loc_18B7A:
		cmpi.w  #$E,d2
		bne.s   return_18B84
		moveq   #7,d0
		jsr     (a5)
return_18B84:
		rts
loc_18B86:
		cmpi.w  #$C,d1
		bne.s   loc_18B9E
		move.w  #$3E7,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_18B9E:
		move.w  #$3CB,d6
		cmpi.w  #6,d1
		bne.s   loc_18BBE
		move.w  #$59,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_18BB8
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_18BBC
loc_18BB8:
		moveq   #0,d0
		jsr     (a5)
return_18BBC:
		rts
loc_18BBE:
		cmpi.w  #7,d1
		bne.s   loc_18BDA
		move.w  #$59,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_18BD4
		moveq   #5,d0
		jsr     (a5)
		bra.s   return_18BD8
loc_18BD4:
		moveq   #1,d0
		jsr     (a5)
return_18BD8:
		rts
loc_18BDA:
		move.w  #$3BA,d6
		bra.w   sub_180A6

    ; End of function sub_189CE


; START OF FUNCTION CHUNK FOR sub_189CE

loc_18BE2:
		cmpi.w  #0,d2
		bne.s   sub_18C52
		move.l  d0,-(sp)
		move.b  #1,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a4)
		move.w  #$3D1,d6
		moveq   #$E,d0
		jsr     (a5)
		moveq   #4,d0
		moveq   #3,d1
		jsr     sub_11126       
		jsr     (j_CreateMessageWindow).l
		moveq   #$12,d0
		jsr     (a5)
		moveq   #0,d0
		moveq   #1,d1
		jsr     sub_11126       
		jsr     (j_CreateMessageWindow).l
		moveq   #$13,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #1,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #1,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #1,d0
		jsr     (a4)
		moveq   #$10,d0
		jsr     (a5)
		rts

; END OF FUNCTION CHUNK FOR sub_189CE


; =============== S U B R O U T I N E =======================================

sub_18C52:
		cmpi.w  #7,d1
		bne.s   loc_18C82
		move.w  #$21E,d6
		moveq   #2,d0
		jsr     (a5)
		moveq   #1,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_18C82:
		cmpi.w  #6,d1
		bne.s   loc_18CC8
		move.w  #$3FA,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18CA2
		moveq   #0,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
loc_18CA2:
		moveq   #1,d0
		jsr     (a5)
		moveq   #0,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_18CC8:
		cmpi.w  #$C,d1
		bne.s   loc_18CE8
		move.w  #$3FC,d6
		move.w  #$78,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18CE2
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_18CE6
loc_18CE2:
		moveq   #0,d0
		jsr     (a5)
return_18CE6:
		rts
loc_18CE8:
		cmpi.w  #$F,d1
		bne.s   loc_18D2C
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  #$3FE,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18D0C
		moveq   #0,d0
		jsr     (a5)
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
loc_18D0C:
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_18D2C:
		cmpi.w  #$10,d1
		bne.s   loc_18D44
		move.w  #$3FF,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_18D44:
		cmpi.w  #$11,d1
		bne.s   loc_18D8C
		moveq   #7,d0
		jsr     (a4)
		move.w  #$3AE,d6
		moveq   #0,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #7,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #7,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$47,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$78,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_18D8C:
		move.w  #$3EA,d6
		bra.w   sub_180A6

    ; End of function sub_18C52


; =============== S U B R O U T I N E =======================================

sub_18D94:
		move.l  d0,-(sp)
		move.b  #$92,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$481,d6
		moveq   #0,d0
		jsr     (a5)
		rts

    ; End of function sub_18D94


; =============== S U B R O U T I N E =======================================

sub_18DAA:
		move.w  #$66,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   loc_18F66
		cmpi.w  #5,d1
		bne.s   loc_18DD2
		move.w  #$46D,d6
		moveq   #$21,d0 
		jsr     (a4)
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_18DD2:
		move.w  #$470,d6
		cmpi.w  #7,d1
		bne.s   loc_18E26
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18E18
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_18E12
		moveq   #2,d0
		jsr     (a5)
		moveq   #3,d0
		jsr     (a5)
		move.w  #$405,d0
		bsr.w   sub_18046       
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5B,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_18E16
loc_18E12:
		moveq   #1,d0
		jsr     (a5)
loc_18E16:
		bra.s   return_18E24
loc_18E18:
		moveq   #3,d0
		jsr     (a5)
		move.w  #$405,d0
		bsr.w   sub_18046       
return_18E24:
		rts
loc_18E26:
		move.w  #$476,d6
		cmpi.w  #$F,d1
		bne.s   loc_18E9E
		move.l  d0,-(sp)
		move.b  #$9C,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		cmpi.w  #8,d2
		bne.s   loc_18E62
		tst.b   ((byte_FFF00A-$1000000)).w
		bne.s   loc_18E5C
		moveq   #0,d0
		jsr     (a5)
		move.w  #$49,d0 
		bsr.w   j_j_SetEventFlag
		st      ((byte_FFF00A-$1000000)).w
		rts
		bra.s   loc_18E62
loc_18E5C:
		moveq   #6,d0
		jsr     (a5)
		rts
loc_18E62:
		cmpi.w  #9,d2
		bne.s   loc_18E6E
		moveq   #1,d0
		jsr     (a5)
		rts
loc_18E6E:
		cmpi.w  #$A,d2
		bne.s   loc_18E7A
		moveq   #2,d0
		jsr     (a5)
		rts
loc_18E7A:
		cmpi.w  #$B,d2
		bne.s   loc_18E86
		moveq   #3,d0
		jsr     (a5)
		rts
loc_18E86:
		cmpi.w  #$C,d2
		bne.s   loc_18E92
		moveq   #4,d0
		jsr     (a5)
		rts
loc_18E92:
		cmpi.w  #$D,d2
		bne.s   loc_18E9E
		moveq   #5,d0
		jsr     (a5)
		rts
loc_18E9E:
		cmpi.w  #$18,d1
		bne.s   loc_18ED0
		cmpi.w  #8,d2
		bne.s   loc_18EAE
		bra.w   sub_180B4
loc_18EAE:
		move.w  #$47D,d6
		move.l  d0,-(sp)
		move.b  #$93,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		cmpi.w  #9,d2
		bne.s   loc_18ECA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_18ECE
loc_18ECA:
		moveq   #2,d0
		jsr     (a5)
return_18ECE:
		rts
loc_18ED0:
		cmpi.w  #$19,d1
		bne.s   loc_18EFE
		move.w  #$47D,d6
		cmpi.w  #8,d2
		bne.s   return_18EFC
		move.w  #$4B,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18EF0
		moveq   #3,d0
		jsr     (a5)
		bra.s   return_18EFC
loc_18EF0:
		moveq   #1,d0
		jsr     (a5)
		move.w  #$4A,d0 
		bsr.w   j_j_SetEventFlag
return_18EFC:
		rts
loc_18EFE:
		cmpi.w  #$B,d1
		bne.s   loc_18F2E
		move.w  #$21E,d6
		moveq   #3,d0
		jsr     (a5)
		moveq   #2,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_18F2E:
		cmpi.w  #$E,d1
		bne.s   loc_18F5E
		move.w  #$21E,d6
		moveq   #4,d0
		jsr     (a5)
		moveq   #3,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_18F5E:
		move.w  #$455,d6
		bra.w   sub_180A6
loc_18F66:
		move.w  #$481,d6
		cmpi.w  #$19,d1
		bne.s   loc_18F90
		move.w  #$49A,d6
		cmpi.w  #8,d2
		bne.s   return_18F8E
		move.w  #$4B,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_18F8A
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_18F8E
loc_18F8A:
		moveq   #1,d0
		jsr     (a5)
return_18F8E:
		rts
loc_18F90:
		cmpi.w  #$18,d1
		bne.s   loc_18FA2
		cmpi.w  #8,d2
		bne.s   return_18FA0
		bra.w   sub_180B4
return_18FA0:
		rts
loc_18FA2:
		cmpi.w  #$E,d1
		bne.s   loc_18FD2
		move.w  #$21E,d6
		moveq   #4,d0
		jsr     (a5)
		moveq   #3,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_18FD2:
		cmpi.w  #$14,d1
		bne.s   loc_19008
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$436,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_19008:
		cmpi.w  #$B,d1
		bne.s   loc_19038
		move.w  #$21E,d6
		moveq   #3,d0
		jsr     (a5)
		moveq   #2,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_19038:
		cmpi.w  #$13,d1
		bne.s   loc_19040
		addq.w  #1,d1
loc_19040:
		move.w  d1,d0
		jmp     (a5)

    ; End of function sub_18DAA


; =============== S U B R O U T I N E =======================================

sub_19044:
		cmpi.b  #$FE,d1
		beq.w   loc_1931C
		cmpi.w  #3,d1
		bne.s   loc_19064
		move.w  #$417,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_19064:
		cmpi.w  #4,d1
		bne.s   loc_19084
		move.w  #$41A,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_1907E
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_19082
loc_1907E:
		moveq   #2,d0
		jsr     (a5)
return_19082:
		rts
loc_19084:
		cmpi.w  #$11,d1
		bne.s   loc_190D0
		move.l  d0,-(sp)
		move.b  #$92,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$41D,d6
		cmpi.w  #8,d2
		beq.s   loc_190CA
		cmpi.w  #9,d2
		bne.s   loc_190AA
		moveq   #0,d0
		jsr     (a5)
loc_190AA:
		cmpi.w  #$A,d2
		bne.s   loc_190B4
		moveq   #2,d0
		jsr     (a5)
loc_190B4:
		cmpi.w  #$B,d2
		bne.s   loc_190BE
		moveq   #3,d0
		jsr     (a5)
loc_190BE:
		cmpi.w  #$C,d2
		bne.s   loc_190C8
		moveq   #4,d0
		jsr     (a5)
loc_190C8:
		bra.s   return_190CE
loc_190CA:
		moveq   #4,d0
		jsr     (a5)
return_190CE:
		rts
loc_190D0:
		cmpi.w  #$D,d1
		bne.s   loc_190E4
		move.w  d6,-(sp)
		move.w  #$424,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_190E4:
		cmpi.w  #5,d1
		bne.w   loc_191AC
		moveq   #$F,d0
		jsr     (a4)
		cmpi.w  #8,d2
		bne.w   loc_1916E
		move.w  #$68,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19124
		move.w  #$5B,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19116
		move.w  #$41A,d6
		moveq   #3,d0
		jsr     (a5)
		bra.s   loc_19122
loc_19116:
		move.w  d6,-(sp)
		move.w  #$423,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
loc_19122:
		bra.s   return_1916C
loc_19124:
		move.w  #$425,d6
		moveq   #$A,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$F,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #$F,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #$F,d0
		jsr     (a4)
		moveq   #$D,d0
		jsr     (a5)
		move.w  #$79,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$69,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$31,d0 
		bsr.w   j_j_SetEventFlag
return_1916C:
		rts
loc_1916E:
		move.w  #$425,d6
		move.l  d0,-(sp)
		move.b  #$F,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		cmpi.w  #9,d2
		bne.s   loc_19188
		moveq   #9,d0
		jsr     (a5)
loc_19188:
		cmpi.w  #$A,d2
		bne.s   loc_19192
		moveq   #$B,d0
		jsr     (a5)
loc_19192:
		cmpi.w  #$B,d2
		bne.s   return_191AA
		moveq   #$C,d0
		jsr     (a5)
		moveq   #5,d0
		moveq   #3,d1
		jsr     sub_11126       
		moveq   #$E,d0
		jsr     (a5)
return_191AA:
		rts
loc_191AC:
		move.w  #$425,d6
		cmpi.w  #$E,d1
		bne.s   loc_19228
		moveq   #$2E,d0 
		jsr     (a4)
		move.w  #$5E,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_191FA
		move.w  #$5C,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_191E8
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		move.w  #$5C,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_191F8
loc_191E8:
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
loc_191F8:
		bra.s   return_19226
loc_191FA:
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		moveq   #$24,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		move.w  #$7A,d0 
		bsr.w   j_j_SetEventFlag
return_19226:
		rts
loc_19228:
		cmpi.w  #$F,d1
		bne.s   loc_19244
		move.w  #$5C,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1923E
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_19242
loc_1923E:
		moveq   #2,d0
		jsr     (a5)
return_19242:
		rts
loc_19244:
		cmpi.w  #$12,d1
		bne.s   loc_19250
		moveq   #4,d0
		jsr     (a5)
		rts
loc_19250:
		cmpi.w  #$13,d1
		bne.s   loc_1925C
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1925C:
		cmpi.w  #$14,d1
		bne.s   loc_19274
		moveq   #$24,d0 
		jsr     (a4)
		moveq   #5,d0
		jsr     (a5)
		move.w  #$5E,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_19274:
		move.w  #$437,d6
		cmpi.w  #1,d1
		bne.s   loc_19294
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1928E
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_19292
loc_1928E:
		moveq   #3,d0
		jsr     (a5)
return_19292:
		rts
loc_19294:
		cmpi.w  #$18,d1
		bne.s   loc_192B0
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_192AA
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_192AE
loc_192AA:
		moveq   #3,d0
		jsr     (a5)
return_192AE:
		rts
loc_192B0:
		cmpi.w  #$19,d1
		bne.s   loc_192CC
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_192C6
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_192CA
loc_192C6:
		moveq   #3,d0
		jsr     (a5)
return_192CA:
		rts
loc_192CC:
		cmpi.w  #$1A,d1
		bne.s   loc_19314
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  #$434,d6
		move.w  #$56,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_192F0
		moveq   #0,d0
		jsr     (a5)
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
loc_192F0:
		moveq   #1,d0
		jsr     (a5)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_19314:
		move.w  #$402,d6
		bra.w   sub_180A6
loc_1931C:
		cmpi.w  #1,d2
		bne.s   loc_19348
		move.w  #$79,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19348
		move.w  #$7A,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_19348
		move.w  #$425,d6
		moveq   #8,d0
		jsr     (a5)
		move.w  #$68,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_19348:
		bra.w   sub_18074

    ; End of function sub_19044


; =============== S U B R O U T I N E =======================================

sub_1934C:
		cmpi.b  #$FF,d1
		beq.w   loc_193C0
		cmpi.b  #$FE,d1
		beq.w   loc_193EA
		cmpi.w  #$F,d1
		bne.s   loc_193A0
		move.w  #$44B,d6
		moveq   #$2E,d0 
		jsr     (a4)
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1939A
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_19394
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$7D,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #2,d0
		jsr     (a5)
		bra.s   loc_19398
loc_19394:
		moveq   #1,d0
		jsr     (a5)
loc_19398:
		bra.s   return_1939E
loc_1939A:
		moveq   #3,d0
		jsr     (a5)
return_1939E:
		rts
loc_193A0:
		cmpi.w  #$E,d1
		bne.s   loc_193B8
		move.w  #$44F,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_193B8:
		move.w  #$43B,d6
		bra.w   sub_180A6
loc_193C0:
		cmpi.w  #0,d2
		bne.s   loc_193DC
		move.w  d6,-(sp)
		move.w  #$164,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$25,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_193DC:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_193EA:
		cmpi.w  #0,d2
		bne.w   loc_1944C
		move.w  #$452,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.w   return_1944A
		moveq   #1,d0
		jsr     (a5)
		move.w  #$7D,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1941E
		move.w  d6,-(sp)
		move.w  #$1E,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1941E:
		move.w  #$5A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   return_1944A
		move.w  #$5A,d0 
		bsr.w   j_j_SetEventFlag
		movem.l a0-a6,-(sp)
		bsr.w   sub_17E42
		moveq   #$14,d0
		jsr     (j_Sleep).l
		bsr.w   sub_15DE2
		movem.l (sp)+,a0-a6
return_1944A:
		rts
loc_1944C:
		bra.w   sub_18074

    ; End of function sub_1934C


; =============== S U B R O U T I N E =======================================

sub_19450:
		move.w  #$89E,d6
		cmpi.w  #1,d1
		bne.s   loc_1947E
		moveq   #0,d0
		jsr     (a5)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1947E:
		cmpi.w  #2,d1
		bne.s   loc_1948A
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1948A:
		cmpi.w  #3,d1
		bne.s   loc_1949A
		moveq   #$1D,d0
		jsr     (a4)
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1949A:
		cmpi.w  #4,d1
		bne.s   loc_194D0
		moveq   #$11,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$8A1,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.l  d0,-(sp)
		moveq   #$11,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$8A2,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$7B,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_194D0:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_19450


; =============== S U B R O U T I N E =======================================

sub_194DE:
		cmpi.b  #$FD,d1
		beq.w   sub_1808A
		cmpi.b  #$FF,d1
		beq.w   loc_19A4C
		cmpi.w  #2,d1
		bne.s   loc_1951E
		move.w  #$21E,d6
		moveq   #5,d0
		jsr     (a5)
		moveq   #4,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1951E:
		cmpi.w  #$10,d1
		bne.s   loc_1954E
		move.w  #$21E,d6
		moveq   #6,d0
		jsr     (a5)
		moveq   #5,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1954E:
		cmpi.w  #$14,d1
		bne.s   loc_19578
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_19578:
		cmpi.w  #$19,d1
		bne.s   loc_195B4
		move.w  #$90,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #9,d0
		jsr     (a4)
		move.w  #$4DD,d6
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1959E
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_195B2
loc_1959E:
		move.w  #$4D,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_195AE
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_195B2
loc_195AE:
		moveq   #7,d0
		jsr     (a5)
return_195B2:
		rts
loc_195B4:
		cmpi.w  #$18,d1
		bne.w   loc_196A2
		move.w  #$90,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$4DD,d6
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1963A
		move.w  #$4D,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19634
		moveq   #1,d0
		jsr     (a5)
		moveq   #9,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		jsr     (a3)
		moveq   #$18,d0
		moveq   #3,d1
		jsr     sub_11126       
		move.l  d0,-(sp)
		move.b  #$80,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a4)
		moveq   #$A,d0
		jsr     (a5)
		move.w  #$4D,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_19638
loc_19634:
		moveq   #2,d0
		jsr     (a5)
loc_19638:
		bra.s   return_196A0
loc_1963A:
		move.w  #$4D,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1969C
		moveq   #5,d0
		jsr     (a5)
		moveq   #9,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		jsr     (a3)
		moveq   #$18,d0
		moveq   #3,d1
		jsr     sub_11126       
		move.l  d0,-(sp)
		move.b  #$80,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a4)
		moveq   #$A,d0
		jsr     (a5)
		move.w  #$4D,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_196A0
loc_1969C:
		moveq   #6,d0
		jsr     (a5)
return_196A0:
		rts
loc_196A2:
		cmpi.w  #$B,d1
		beq.w   sub_180B4
		cmpi.w  #6,d1
		bcs.s   loc_196D2
		cmpi.w  #$C,d1
		bcc.s   loc_196D2
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_196CA
		move.w  #$4E4,d6
		move.w  d1,d0
		jmp     (a5)
		bra.s   loc_196D2
loc_196CA:
		move.w  #$4F6,d6
		move.w  d1,d0
		jmp     (a5)
loc_196D2:
		cmpi.w  #$C,d1
		bne.s   loc_1972A
		move.w  #$4EA,d6
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19708
		moveq   #6,d0
		jsr     (a5)
		jsr     sub_18056       
		bne.s   loc_196FA
		moveq   #7,d0
		jsr     (a5)
		rts
		bra.s   loc_19706
loc_196FA:
		moveq   #8,d0
		jsr     (a5)
		move.w  #$4E,d0 
		bsr.w   j_j_SetEventFlag
loc_19706:
		bra.s   return_19728
loc_19708:
		moveq   #$18,d0
		jsr     (a5)
		jsr     sub_18056       
		bne.s   loc_1971C
		moveq   #$19,d0
		jsr     (a5)
		rts
		bra.s   return_19728
loc_1971C:
		moveq   #$1A,d0
		jsr     (a5)
		move.w  #$4E,d0 
		bsr.w   j_j_SetEventFlag
return_19728:
		rts
loc_1972A:
		cmpi.w  #3,d1
		bne.s   loc_19782
		move.w  #$4D7,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19744
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_19780
loc_19744:
		move.w  #$7F,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1976C
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1975E
		moveq   #1,d0
		jsr     (a5)
		bra.s   loc_1976A
loc_1975E:
		moveq   #2,d0
		jsr     (a5)
		move.w  #$7F,d0 
		bsr.w   j_j_SetEventFlag
loc_1976A:
		bra.s   return_19780
loc_1976C:
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1977C
		moveq   #3,d0
		jsr     (a5)
		bra.s   return_19780
loc_1977C:
		moveq   #4,d0
		jsr     (a5)
return_19780:
		rts
loc_19782:
		cmpi.w  #$11,d1
		bne.s   loc_197A0
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_197A0
		move.w  d6,-(sp)
		move.w  #$4DC,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_197A0:
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_197B0
		bra.w   loc_197D4
		bra.s   loc_197D4
loc_197B0:
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_197C0
		bra.w   loc_19864
		bra.s   loc_197D4
loc_197C0:
		move.w  #$7C,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_197D0
		bra.w   loc_198F2
		bra.s   loc_197D4
loc_197D0:
		bra.w   loc_1997A
loc_197D4:
		cmpi.w  #4,d1
		bne.s   loc_197E4
		move.w  #$4B8,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_197E4:
		cmpi.w  #$D,d1
		bne.s   loc_197F4
		move.w  #$4BD,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_197F4:
		cmpi.w  #$E,d1
		bne.s   loc_19804
		move.w  #$4BF,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_19804:
		cmpi.w  #$15,d1
		bne.s   loc_19834
		move.w  #$4C1,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1982E
		moveq   #0,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$30,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_19832
loc_1982E:
		moveq   #1,d0
		jsr     (a5)
return_19832:
		rts
loc_19834:
		cmpi.w  #$16,d1
		bne.s   loc_19844
		move.w  #$4CE,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_19844:
		cmpi.w  #$17,d1
		bne.s   loc_19854
		move.w  #$4D1,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_19854:
		cmpi.w  #$1B,d1
		bne.s   loc_19864
		move.w  #$4D5,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_19864:
		cmpi.w  #4,d1
		bne.s   loc_19874
		move.w  #$4B8,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19874:
		cmpi.w  #$D,d1
		bne.s   loc_19884
		move.w  #$4BD,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19884:
		cmpi.w  #$E,d1
		bne.s   loc_19894
		move.w  #$4BF,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19894:
		cmpi.w  #$15,d1
		bne.s   loc_198D2
		move.w  #$4C1,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_198CC
		moveq   #2,d0
		jsr     (a5)
		jsr     sub_18056       
		beq.s   loc_198C6
		moveq   #4,d0
		jsr     (a5)
		moveq   #5,d0
		jsr     (a5)
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_198CA
loc_198C6:
		moveq   #3,d0
		jsr     (a5)
loc_198CA:
		bra.s   return_198D0
loc_198CC:
		moveq   #5,d0
		jsr     (a5)
return_198D0:
		rts
loc_198D2:
		cmpi.w  #$16,d1
		bne.s   loc_198E2
		move.w  #$4CE,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_198E2:
		cmpi.w  #$17,d1
		bne.s   loc_198F2
		move.w  #$4D1,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_198F2:
		cmpi.w  #4,d1
		bne.s   loc_19912
		move.w  #$4B8,d6
		move.w  #$6C,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1990C
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_19910
loc_1990C:
		moveq   #2,d0
		jsr     (a5)
return_19910:
		rts
loc_19912:
		cmpi.w  #$D,d1
		bne.s   loc_19922
		move.w  #$4BD,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19922:
		cmpi.w  #$E,d1
		bne.s   loc_19932
		move.w  #$4BF,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19932:
		cmpi.w  #$15,d1
		bne.s   loc_1994A
		move.w  #$4C1,d6
		moveq   #6,d0
		jsr     (a5)
		move.w  #$6C,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1994A:
		cmpi.w  #$16,d1
		bne.s   loc_1995A
		move.w  #$4CE,d6
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1995A:
		cmpi.w  #$17,d1
		bne.s   loc_1996A
		move.w  #$4D1,d6
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1996A:
		cmpi.w  #$1B,d1
		bne.s   loc_1997A
		move.w  #$4D5,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1997A:
		cmpi.w  #4,d1
		bne.s   loc_1998A
		move.w  #$4B8,d6
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1998A:
		cmpi.w  #$D,d1
		bne.s   loc_1999A
		move.w  #$4BD,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1999A:
		cmpi.w  #$E,d1
		bne.s   loc_199AA
		move.w  #$4BF,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_199AA:
		cmpi.w  #$15,d1
		bne.s   loc_19A14
		move.w  #$4C1,d6
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19A0E
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_199CE
		moveq   #$A,d0
		jsr     (a5)
		bra.s   loc_199D2
loc_199CE:
		moveq   #7,d0
		jsr     (a5)
loc_199D2:
		moveq   #8,d0
		jsr     (a5)
		jsr     sub_18056       
		beq.s   loc_19A00
		moveq   #$B,d0
		jsr     (a5)
		moveq   #$C,d0
		jsr     (a5)
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$31,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$6C,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_19A0C
loc_19A00:
		moveq   #9,d0
		jsr     (a5)
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
loc_19A0C:
		bra.s   return_19A12
loc_19A0E:
		moveq   #$C,d0
		jsr     (a5)
return_19A12:
		rts
loc_19A14:
		cmpi.w  #$16,d1
		bne.s   loc_19A24
		move.w  #$4CE,d6
		moveq   #2,d0
		jsr     (a5)
		rts
loc_19A24:
		cmpi.w  #$17,d1
		bne.s   loc_19A34
		move.w  #$4D1,d6
		moveq   #3,d0
		jsr     (a5)
		rts
loc_19A34:
		cmpi.w  #$1B,d1
		bne.s   loc_19A44
		move.w  #$4D5,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19A44:
		move.w  #$49C,d6
		bra.w   sub_180A6
loc_19A4C:
		cmpi.w  #3,d2
		bne.s   loc_19A84
		move.w  #$4DD,d6
		moveq   #9,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		jsr     (a3)
		move.l  d0,-(sp)
		move.b  #$80,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$C,d0
		jsr     (a5)
		rts
loc_19A84:
		move.w  #$4EA,d6
		move.w  #$2A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   loc_19B86
		cmpi.w  #0,d2
		bne.s   loc_19AB6
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		moveq   #0,d0
		moveq   #0,d1
		jsr     sub_11126       
		rts
loc_19AB6:
		cmpi.w  #1,d2
		bne.w   loc_19B3E
		move.l  d0,-(sp)
		move.b  #0,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$A,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$88,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #0,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$C,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$88,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$D,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #$E,d0
		jsr     (a5)
		sndCom  SFX_HIT
		moveq   #5,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$86,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$F,d0
		jsr     (a5)
		rts
loc_19B3E:
		cmpi.w  #2,d2
		bne.s   loc_19B82
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$10,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$86,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$F,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$11,d0
		jsr     (a5)
		rts
loc_19B82:
		bra.w   loc_19C74
loc_19B86:
		cmpi.w  #0,d2
		bne.s   loc_19BA8
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1B,d0
		jsr     (a5)
		moveq   #0,d0
		moveq   #0,d1
		jsr     sub_11126       
		rts
loc_19BA8:
		cmpi.w  #1,d2
		bne.w   loc_19C30
		move.l  d0,-(sp)
		move.b  #$88,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1C,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #0,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1D,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$88,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1E,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #0,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1F,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #$20,d0 
		jsr     (a5)
		sndCom  SFX_HIT
		moveq   #5,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$86,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$21,d0 
		jsr     (a5)
		rts
loc_19C30:
		cmpi.w  #2,d2
		bne.s   loc_19C74
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$22,d0 
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$86,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$21,d0 
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$23,d0 
		jsr     (a5)
		rts
loc_19C74:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_194DE


; =============== S U B R O U T I N E =======================================

sub_19C82:
		cmpi.b  #$FE,d1
		beq.w   sub_18074
		cmpi.b  #$FD,d1
		beq.w   sub_1808A
		cmpi.b  #$FF,d1
		bne.w   sub_180B4
		move.w  #$50E,d6
		cmpi.b  #0,d2
		bne.s   loc_19CC6
		move.w  #$7C,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_FADE_OUT
		rts
loc_19CC6:
		cmpi.b  #1,d2
		bne.s   loc_19CE6
		sndCom  MUSIC_BATTLE_3
		moveq   #$21,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$72,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		rts
loc_19CE6:
		cmpi.b  #2,d2
		bne.s   loc_19D02
		move.l  d0,-(sp)
		move.b  #$72,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$21,d0 
		jsr     (a4)
		moveq   #2,d0
		jsr     (a5)
		rts
loc_19D02:
		cmpi.b  #3,d2
		bne.s   loc_19D1E
		move.l  d0,-(sp)
		move.b  #$72,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$21,d0 
		jsr     (a4)
		moveq   #3,d0
		jsr     (a5)
		rts
loc_19D1E:
		cmpi.b  #4,d2
		bne.s   loc_19D3A
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		rts
loc_19D3A:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_19C82


; =============== S U B R O U T I N E =======================================

DialogueScript13:
		
		move.b  ((byte_FFF00A-$1000000)).w,d7
		cmpi.b  #$FE,d1
		beq.w   loc_1A454
		cmpi.b  #$FD,d1
		beq.w   loc_1A42E
		cmpi.b  #$FF,d1
		beq.w   loc_1A284
		move.w  #$55D,d6
		cmpi.w  #6,d1
		bne.s   loc_19D9C
		tst.b   d7
		beq.s   loc_19D78
		moveq   #$11,d0
		jsr     (a5)
		rts
loc_19D78:
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_19D9C:
		cmpi.w  #3,d1
		bne.s   loc_19DC6
		tst.b   d7
		beq.s   loc_19DAC
		moveq   #$12,d0
		jsr     (a5)
		rts
loc_19DAC:
		move.w  #$530,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19DC0
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_19DC4
loc_19DC0:
		moveq   #1,d0
		jsr     (a5)
return_19DC4:
		rts
loc_19DC6:
		cmpi.w  #9,d1
		bne.s   loc_19DF0
		tst.b   d7
		beq.s   loc_19DD6
		moveq   #9,d0
		jsr     (a5)
		bra.s   return_19DEE
loc_19DD6:
		move.w  #$532,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19DEA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_19DEE
loc_19DEA:
		moveq   #1,d0
		jsr     (a5)
return_19DEE:
		rts
loc_19DF0:
		cmpi.w  #7,d1
		bne.s   loc_19E18
		move.w  #$1F,d0
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_19E18
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19E18
		move.w  d6,-(sp)
		move.w  #$549,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_19E18:
		cmpi.w  #8,d1
		bne.w   loc_19ECC
		moveq   #$30,d0 
		jsr     (a4)
		tst.b   d7
		beq.s   loc_19E2E
		moveq   #$11,d0
		jsr     (a5)
		rts
loc_19E2E:
		move.w  #$534,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   loc_19EC6
		move.w  #$78,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19EAC
		move.w  #$1F,d0
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19E9E
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_19E62
		moveq   #3,d0
		jsr     (a5)
		bra.s   loc_19E9C
loc_19E62:
		move.w  #$56,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19E72
		moveq   #0,d0
		jsr     (a5)
		bra.s   loc_19E76
loc_19E72:
		moveq   #7,d0
		jsr     (a5)
loc_19E76:
		jsr     sub_18056       
		beq.s   loc_19E90
		moveq   #2,d0
		jsr     (a5)
		moveq   #3,d0
		jsr     (a5)
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_19E9C
loc_19E90:
		moveq   #1,d0
		jsr     (a5)
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
loc_19E9C:
		bra.s   loc_19EAA
loc_19E9E:
		moveq   #4,d0
		jsr     (a5)
		move.w  #$76,d0 
		bsr.w   j_j_SetEventFlag
loc_19EAA:
		bra.s   loc_19EC4
loc_19EAC:
		moveq   #5,d0
		jsr     (a5)
		moveq   #6,d0
		jsr     (a5)
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$65,d0 
		bsr.w   j_j_SetEventFlag
loc_19EC4:
		bra.s   return_19ECA
loc_19EC6:
		moveq   #6,d0
		jsr     (a5)
return_19ECA:
		rts
loc_19ECC:
		cmpi.w  #$A,d1
		bne.s   loc_19EFE
		tst.b   d7
		beq.s   loc_19EDC
		moveq   #8,d0
		jsr     (a5)
		bra.s   return_19EFC
loc_19EDC:
		move.w  #$53C,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19EF8
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		bra.s   return_19EFC
loc_19EF8:
		moveq   #3,d0
		jsr     (a5)
return_19EFC:
		rts
loc_19EFE:
		cmpi.w  #$12,d1
		bne.s   loc_19F40
		tst.b   d7
		beq.s   loc_19F0E
		moveq   #9,d0
		jsr     (a5)
		rts
loc_19F0E:
		move.w  #$540,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19F3A
		move.w  #$79,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19F34
		moveq   #0,d0
		jsr     (a5)
		move.w  #$79,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_19F38
loc_19F34:
		moveq   #1,d0
		jsr     (a5)
loc_19F38:
		bra.s   return_19F3E
loc_19F3A:
		moveq   #2,d0
		jsr     (a5)
return_19F3E:
		rts
loc_19F40:
		cmpi.w  #$14,d1
		bne.s   loc_19F86
		tst.b   d7
		beq.s   loc_19F64
		move.w  #$4D,d0 
		bsr.w   j_j_SetEventFlag
		move.w  d6,-(sp)
		move.w  #$567,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		sf      ((byte_FFF00A-$1000000)).w
		bra.s   return_19F84
loc_19F64:
		move.w  #$544,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19F80
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		bra.s   return_19F84
loc_19F80:
		moveq   #3,d0
		jsr     (a5)
return_19F84:
		rts
loc_19F86:
		cmpi.w  #5,d1
		bne.w   loc_1A014
		moveq   #$A,d0
		jsr     (a4)
		move.w  #$54B,d6
		move.w  #$71,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19FD0
		tst.b   d7
		beq.s   loc_19FB2
		move.w  d6,-(sp)
		move.w  #$56C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_19FB2:
		move.w  #$7A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_19FC2
		moveq   #0,d0
		jsr     (a5)
		bra.s   loc_19FC6
loc_19FC2:
		moveq   #$C,d0
		jsr     (a5)
loc_19FC6:
		move.w  #$71,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1A012
loc_19FD0:
		tst.b   d7
		beq.s   loc_19FE2
		move.w  d6,-(sp)
		move.w  #$56D,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_19FE2:
		moveq   #9,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$A,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #$A,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #$B,d0
		jsr     (a5)
		move.w  #$72,d0 
		bsr.w   j_j_SetEventFlag
return_1A012:
		rts
loc_1A014:
		cmpi.w  #$1A,d1
		bne.s   loc_1A03E
		tst.b   d7
		beq.s   loc_1A024
		moveq   #$12,d0
		jsr     (a5)
		rts
loc_1A024:
		move.w  #$570,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		move.w  #$49,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1A03E:
		cmpi.w  #$18,d1
		bne.s   loc_1A082
		moveq   #6,d0
		jsr     (a4)
		tst.b   d7
		beq.s   loc_1A052
		moveq   #9,d0
		jsr     (a5)
		rts
loc_1A052:
		move.w  #$577,d6
		move.w  #$1F,d0
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A066
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A080
loc_1A066:
		moveq   #1,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #6,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		move.w  #$70,d0 
		bsr.w   j_j_SetEventFlag
return_1A080:
		rts
loc_1A082:
		cmpi.w  #$1B,d1
		bne.s   loc_1A0EC
		tst.b   d7
		beq.s   loc_1A092
		moveq   #8,d0
		jsr     (a5)
		rts
loc_1A092:
		move.w  #$57B,d6
		move.w  #$78,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1A0A6
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_1A0EA
loc_1A0A6:
		move.w  #$1F,d0
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A0E6
		move.w  #$7D,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1A0C0
		moveq   #2,d0
		jsr     (a5)
		bra.s   loc_1A0E4
loc_1A0C0:
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A0D0
		moveq   #1,d0
		jsr     (a5)
		bra.s   loc_1A0E4
loc_1A0D0:
		moveq   #0,d0
		jsr     (a5)
		move.w  #$7D,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$6F,d0 
		bsr.w   j_j_SetEventFlag
loc_1A0E4:
		bra.s   return_1A0EA
loc_1A0E6:
		moveq   #3,d0
		jsr     (a5)
return_1A0EA:
		rts
loc_1A0EC:
		cmpi.w  #$19,d1
		bne.s   loc_1A114
		move.w  #$55A,d6
		move.w  #$4B,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A106
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A112
loc_1A106:
		moveq   #1,d0
		jsr     (a5)
		move.w  #$4A,d0 
		bsr.w   j_j_SetEventFlag
return_1A112:
		rts
loc_1A114:
		move.w  #$512,d6
		cmpi.w  #1,d1
		bne.s   loc_1A136
		tst.b   d7
		bne.s   loc_1A128
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1A134
loc_1A128:
		move.w  d6,-(sp)
		move.w  #$565,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A134:
		rts
loc_1A136:
		cmpi.w  #2,d1
		bne.s   loc_1A154
		tst.b   d7
		bne.s   loc_1A146
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1A152
loc_1A146:
		move.w  d6,-(sp)
		move.w  #$564,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A152:
		rts
loc_1A154:
		cmpi.w  #4,d1
		bne.s   loc_1A172
		tst.b   d7
		bne.s   loc_1A164
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_1A170
loc_1A164:
		move.w  d6,-(sp)
		move.w  #$563,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A170:
		rts
loc_1A172:
		cmpi.w  #7,d1
		bne.s   loc_1A1A8
		tst.b   d7
		bne.s   loc_1A19A
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1A194
		move.w  d6,-(sp)
		move.w  #$54A,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		bra.s   loc_1A198
loc_1A194:
		moveq   #7,d0
		jsr     (a5)
loc_1A198:
		bra.s   return_1A1A6
loc_1A19A:
		move.w  d6,-(sp)
		move.w  #$563,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A1A6:
		rts
loc_1A1A8:
		cmpi.w  #$B,d1
		bne.s   loc_1A1C6
		tst.b   d7
		bne.s   loc_1A1B8
		moveq   #$B,d0
		jsr     (a5)
		bra.s   return_1A1C4
loc_1A1B8:
		move.w  d6,-(sp)
		move.w  #$563,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A1C4:
		rts
loc_1A1C6:
		cmpi.w  #$15,d1
		bne.s   loc_1A1E4
		tst.b   d7
		bne.s   loc_1A1D6
		moveq   #$15,d0
		jsr     (a5)
		bra.s   return_1A1E2
loc_1A1D6:
		move.w  d6,-(sp)
		move.w  #$565,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A1E2:
		rts
loc_1A1E4:
		cmpi.w  #$17,d1
		bne.s   loc_1A202
		tst.b   d7
		bne.s   loc_1A1F4
		moveq   #$17,d0
		jsr     (a5)
		bra.s   return_1A200
loc_1A1F4:
		move.w  d6,-(sp)
		move.w  #$565,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A200:
		rts
loc_1A202:
		cmpi.w  #$13,d1
		bne.s   loc_1A23E
		move.w  #$55D,d6
		move.w  #$69,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1A226
		tst.b   d7
		beq.s   loc_1A220
		moveq   #$E,d0
		jsr     (a5)
		rts
loc_1A220:
		moveq   #$D,d0
		jsr     (a5)
		bra.s   return_1A23C
loc_1A226:
		tst.b   d7
		bne.s   loc_1A230
		moveq   #$B,d0
		jsr     (a5)
		bra.s   return_1A23C
loc_1A230:
		moveq   #$C,d0
		jsr     (a5)
		move.w  #$69,d0 
		bsr.w   j_j_SetEventFlag
return_1A23C:
		rts
loc_1A23E:
		cmpi.w  #$16,d1
		bne.s   loc_1A27C
		move.w  #$55D,d6
		tst.b   ((byte_FFF00B-$1000000)).w
		bne.s   loc_1A276
		moveq   #0,d0
		jsr     (a5)
		jsr     sub_18056       
		bne.s   loc_1A260
		moveq   #1,d0
		jsr     (a5)
		bra.s   loc_1A274
loc_1A260:
		moveq   #2,d0
		jsr     (a5)
		move.w  #$4C,d0 
		bsr.w   j_j_SetEventFlag
		st      ((byte_FFF00A-$1000000)).w
		st      ((byte_FFF00B-$1000000)).w
loc_1A274:
		bra.s   return_1A27A
loc_1A276:
		moveq   #5,d0
		jsr     (a5)
return_1A27A:
		rts
loc_1A27C:
		move.w  #$513,d6
		bra.w   sub_180A6
loc_1A284:
		move.w  #$570,d6
		cmpi.w  #0,d2
		bne.s   loc_1A2A0
		move.l  d0,-(sp)
		move.b  #$82,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1A2A0:
		cmpi.w  #1,d2
		bne.s   loc_1A2C6
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #4,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$83,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #5,d0
		jsr     (a5)
		rts
loc_1A2C6:
		cmpi.w  #2,d2
		bne.s   loc_1A2DE
		move.l  d0,-(sp)
		move.b  #$82,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		rts
loc_1A2DE:
		move.w  #$54B,d6
		cmpi.w  #3,d2
		bne.w   loc_1A38C
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		moveq   #$A,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$A,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		moveq   #$A,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$A,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #5,d0
		jsr     (a5)
		moveq   #$A,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$A,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$D,d0
		jsr     (a5)
		moveq   #$A,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$A,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$E,d0
		jsr     (a5)
		rts
loc_1A38C:
		cmpi.w  #4,d2
		bne.s   loc_1A3A8
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		rts
loc_1A3A8:
		cmpi.w  #5,d2
		bne.s   loc_1A3C4
		move.l  d0,-(sp)
		move.b  #$97,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$55A,d6
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1A3C4:
		cmpi.w  #6,d2
		bne.s   loc_1A3E8
		sndCom  MUSIC_INTRO
		move.l  d0,-(sp)
		move.b  #$A0,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$580,d6
		moveq   #0,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
loc_1A3E8:
		cmpi.w  #7,d2
		bne.s   loc_1A404
		move.l  d0,-(sp)
		move.b  #$7D,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$55D,d6
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1A404:
		cmpi.w  #8,d2
		bne.s   loc_1A420
		move.l  d0,-(sp)
		move.b  #$7D,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$55D,d6
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1A420:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1A42E:
		tst.b   d7
		bne.w   sub_1808A
		cmpi.w  #$1512,d2
		bne.s   loc_1A450
		move.w  #$75,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$78,d0 
		bsr.w   j_j_SetEventFlag
		sndCom  SOUND_COMMAND_FADE_OUT
		rts
loc_1A450:
		bra.w   sub_1808A
loc_1A454:
		cmpi.w  #0,d2
		bne.w   loc_1A4DE
		move.w  #$540,d6
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #3,d0
		jsr     (a5)
		move.w  #$91,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A4D0
		jsr     (j_CreateMessageWindow).l
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		moveq   #$16,d0
		move.w  d0,((MESSAGE_ARG_NAME_2-$1000000)).w
		moveq   #$16,d0
		jsr     GiveItemToHero  
		bcs.s   loc_1A4B0
		move.w  #$91,d0 
		bsr.w   j_j_SetEventFlag
		sndCom  MUSIC_ITEM
		move.w  d6,-(sp)
		move.w  #$48,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		bra.s   loc_1A4CE
loc_1A4B0:
		move.w  d6,-(sp)
		move.w  #$48,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		jsr     (j_CreateMessageWindow).l
		move.w  d6,-(sp)
		move.w  #$49,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
loc_1A4CE:
		bra.s   return_1A4DC
loc_1A4D0:
		move.w  d6,-(sp)
		move.w  #$4B,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1A4DC:
		rts
loc_1A4DE:
		bra.w   sub_18074

    ; End of function DialogueScript13


; =============== S U B R O U T I N E =======================================

sub_1A4E2:
		cmpi.b  #$FF,d1
		beq.w   loc_1A5FA
		cmpi.b  #$FD,d1
		beq.w   sub_1808A
		cmpi.w  #1,d1
		bne.s   loc_1A506
		moveq   #$15,d0
		jsr     (a4)
		move.w  #$684,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1A506:
		cmpi.w  #2,d1
		bne.s   loc_1A526
		move.w  #$685,d6
		move.w  #$74,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A520
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A524
loc_1A520:
		moveq   #1,d0
		jsr     (a5)
return_1A524:
		rts
loc_1A526:
		move.w  #$685,d6
		cmpi.w  #3,d1
		bne.s   loc_1A536
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1A536:
		cmpi.w  #4,d1
		bne.s   loc_1A54A
		move.w  #$4E,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1A54A:
		cmpi.w  #5,d1
		bne.s   loc_1A556
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1A556:
		cmpi.w  #6,d1
		bne.s   loc_1A562
		moveq   #5,d0
		jsr     (a5)
		rts
loc_1A562:
		cmpi.w  #$A,d1
		bne.s   loc_1A576
		moveq   #6,d0
		jsr     (a5)
		move.w  #$4F,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1A576:
		cmpi.w  #7,d1
		bne.s   loc_1A5A2
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  #$67F,d6
		move.w  #$74,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A59C
		moveq   #0,d0
		jsr     (a5)
		move.w  #$74,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1A5A0
loc_1A59C:
		moveq   #1,d0
		jsr     (a5)
return_1A5A0:
		rts
loc_1A5A2:
		cmpi.w  #9,d1
		bne.s   loc_1A5B2
		move.w  #$681,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1A5B2:
		cmpi.w  #$B,d1
		bne.s   loc_1A5C2
		move.w  #$683,d6
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1A5C2:
		move.w  #$673,d6
		bra.w   sub_180A6

    ; End of function sub_1A4E2


; =============== S U B R O U T I N E =======================================

sub_1A5CA:
		cmpi.b  #$FF,d1
		beq.w   loc_1A630
		cmpi.b  #$FE,d1
		beq.w   sub_18074
		cmpi.b  #$FD,d1
		beq.w   sub_1808A
		cmpi.w  #9,d1
		bne.s   loc_1A5F2
		move.w  #$681,d6
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1A5F2:
		move.w  #$673,d6
		bra.w   sub_180A6

    ; End of function sub_1A5CA


; START OF FUNCTION CHUNK FOR sub_1A4E2

loc_1A5FA:
		cmpi.w  #0,d2
		bne.s   loc_1A622
		move.l  d0,-(sp)
		move.b  #$16,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$16,d0
		jsr     (a4)
		move.w  #$68C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$7E,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1A622:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

; END OF FUNCTION CHUNK FOR sub_1A4E2


; START OF FUNCTION CHUNK FOR sub_1A5CA

loc_1A630:
		cmpi.w  #0,d2
		bne.s   loc_1A680
		move.l  d0,-(sp)
		move.b  #$16,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$16,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$690,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.l  d0,-(sp)
		moveq   #$16,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #$16,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		move.w  d6,-(sp)
		move.w  #$691,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1A680:
		cmpi.w  #1,d2
		bne.s   loc_1A6D4
		move.l  d0,-(sp)
		move.b  #$15,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$15,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$692,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.l  d0,-(sp)
		moveq   #$15,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #$15,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #$15,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$693,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1A6D4:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

; END OF FUNCTION CHUNK FOR sub_1A5CA


; =============== S U B R O U T I N E =======================================

sub_1A6E2:
		cmpi.b  #$FD,d1
		beq.w   sub_1808A
		cmpi.b  #$FE,d1
		beq.w   sub_18074
		cmpi.w  #6,d1
		bne.s   loc_1A71C
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1A71C:
		cmpi.w  #$E,d1
		bne.s   loc_1A74C
		move.w  #$21E,d6
		moveq   #7,d0
		jsr     (a5)
		moveq   #8,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1A74C:
		cmpi.w  #$F,d1
		bne.s   loc_1A77C
		move.w  #$21E,d6
		moveq   #8,d0
		jsr     (a5)
		moveq   #9,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1A77C:
		cmpi.w  #3,d1
		bne.s   loc_1A798
		move.w  #$6A7,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1A798:
		cmpi.w  #8,d1
		bne.s   loc_1A7DC
		move.w  #$6AB,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A7D6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1A7BC
		moveq   #1,d0
		jsr     (a5)
		bra.s   loc_1A7D4
loc_1A7BC:
		moveq   #2,d0
		jsr     (a5)
		moveq   #3,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$40,d0 
		bsr.w   j_j_SetEventFlag
loc_1A7D4:
		bra.s   return_1A7DA
loc_1A7D6:
		moveq   #3,d0
		jsr     (a5)
return_1A7DA:
		rts
loc_1A7DC:
		cmpi.w  #9,d1
		bne.s   loc_1A7F4
		move.w  #$6AB,d6
		moveq   #4,d0
		jsr     (a5)
		move.w  #$605,d0
		bsr.w   sub_18046       
		rts
loc_1A7F4:
		cmpi.w  #2,d1
		bne.s   loc_1A814
		move.w  #$6B2,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A80E
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A812
loc_1A80E:
		moveq   #1,d0
		jsr     (a5)
return_1A812:
		rts
loc_1A814:
		cmpi.w  #7,d1
		bne.s   loc_1A852
		moveq   #$12,d0
		jsr     (a4)
		move.w  #$6B4,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A832
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A850
loc_1A832:
		moveq   #1,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$12,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #$12,d0
		jsr     (a4)
		moveq   #3,d0
		jsr     (a5)
		move.w  #$41,d0 
		bsr.w   j_j_SetEventFlag
return_1A850:
		rts
loc_1A852:
		move.w  #$695,d6
		bra.w   sub_180A6

    ; End of function sub_1A6E2


; =============== S U B R O U T I N E =======================================

sub_1A85A:
		cmpi.b  #$FD,d1
		beq.w   loc_1AC76
		cmpi.b  #$FE,d1
		beq.w   loc_1AC2C
		cmpi.b  #$FF,d1
		beq.w   loc_1AAEC
		cmpi.w  #7,d1
		bne.s   loc_1A89C
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1A89C:
		cmpi.w  #$11,d1
		bne.s   loc_1A8CC
		move.w  #$21E,d6
		moveq   #7,d0
		jsr     (a5)
		moveq   #8,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1A8CC:
		cmpi.w  #$12,d1
		bne.s   loc_1A8FC
		move.w  #$21E,d6
		moveq   #8,d0
		jsr     (a5)
		moveq   #9,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1A8FC:
		cmpi.w  #5,d1
		bne.s   loc_1A91C
		move.w  #$6D0,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A916
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A91A
loc_1A916:
		moveq   #1,d0
		jsr     (a5)
return_1A91A:
		rts
loc_1A91C:
		cmpi.w  #6,d1
		bne.s   loc_1A93C
		move.w  #$6D2,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A936
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A93A
loc_1A936:
		moveq   #1,d0
		jsr     (a5)
return_1A93A:
		rts
loc_1A93C:
		cmpi.w  #8,d1
		bne.s   loc_1A95C
		move.w  #$6D4,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A956
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A95A
loc_1A956:
		moveq   #1,d0
		jsr     (a5)
return_1A95A:
		rts
loc_1A95C:
		cmpi.w  #9,d1
		bne.s   loc_1A97C
		move.w  #$6D6,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A976
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A97A
loc_1A976:
		moveq   #1,d0
		jsr     (a5)
return_1A97A:
		rts
loc_1A97C:
		cmpi.w  #$A,d1
		bne.s   loc_1A99C
		move.w  #$6D8,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A996
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A99A
loc_1A996:
		moveq   #1,d0
		jsr     (a5)
return_1A99A:
		rts
loc_1A99C:
		cmpi.w  #$10,d1
		bne.s   loc_1A9B4
		move.w  #$6DA,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1A9B4:
		move.w  #$6DD,d6
		cmpi.w  #$C,d1
		bne.s   loc_1A9D4
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A9CE
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1A9D2
loc_1A9CE:
		moveq   #9,d0
		jsr     (a5)
return_1A9D2:
		rts
loc_1A9D4:
		cmpi.w  #$D,d1
		bne.s   loc_1A9F0
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1A9EA
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1A9EE
loc_1A9EA:
		moveq   #$A,d0
		jsr     (a5)
return_1A9EE:
		rts
loc_1A9F0:
		cmpi.w  #$E,d1
		bne.s   loc_1AA18
		moveq   #$17,d0
		jsr     (a4)
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AA0A
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1AA16
loc_1AA0A:
		moveq   #4,d0
		jsr     (a5)
		move.w  #$46,d0 
		bsr.w   j_j_SetEventFlag
return_1AA16:
		rts
loc_1AA18:
		cmpi.w  #3,d1
		bne.s   loc_1AA72
		move.w  #$6E8,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1AA32
		moveq   #5,d0
		jsr     (a5)
		bra.s   return_1AA70
loc_1AA32:
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1AA42
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_1AA70
loc_1AA42:
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1AA52
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1AA70
loc_1AA52:
		clr.w   d0
		moveq   #$13,d1
		jsr     j_IsItemHeldByForce
		bcc.s   loc_1AA64
		moveq   #6,d0
		jsr     (a5)
		bra.s   return_1AA70
loc_1AA64:
		moveq   #2,d0
		jsr     (a5)
		move.w  #$43,d0 
		bsr.w   j_j_SetEventFlag
return_1AA70:
		rts
loc_1AA72:
		cmpi.w  #$B,d1
		bne.s   loc_1AAD0
		move.w  #$6EF,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1AA8C
		moveq   #$B,d0
		jsr     (a5)
		bra.s   return_1AACE
loc_1AA8C:
		move.w  #$44,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1AA9C
		moveq   #$A,d0
		jsr     (a5)
		bra.s   return_1AACE
loc_1AA9C:
		moveq   #0,d0
		jsr     (a5)
		clr.w   d0
		moveq   #$14,d1
		jsr     j_IsItemHeldByForce
		bcc.s   loc_1AAB2
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1AACE
loc_1AAB2:
		moveq   #2,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1AAC2
		moveq   #3,d0
		jsr     (a5)
		bra.s   return_1AACE
loc_1AAC2:
		moveq   #4,d0
		jsr     (a5)
		move.w  #$44,d0 
		bsr.w   j_j_SetEventFlag
return_1AACE:
		rts
loc_1AAD0:
		cmpi.w  #$16,d1
		bne.s   loc_1AAE4
		move.w  #$6EF,d6
		moveq   #$1A,d0
		jsr     (a4)
		moveq   #5,d0
		jsr     (a5)
		rts
loc_1AAE4:
		move.w  #$6B8,d6
		bra.w   sub_180A6
loc_1AAEC:
		cmpi.w  #0,d2
		bne.s   loc_1AB58
		move.l  d0,-(sp)
		move.b  #$9B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$6E8,d6
		moveq   #3,d0
		jsr     (a5)
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #MOON_STONE,d0
		bsr.w   sub_17EEC
		moveq   #LUNAR_DEW,d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		movem.l d0-d1,-(sp)
		clr.w   d0
		move.b  (byte_FFF001).l,d0
		moveq   #LUNAR_DEW,d1
		jsr     j_GiveItem
		movem.l (sp)+,d0-d1
		clr.w   ((SPEECH_SFX-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		sndCom  MUSIC_ITEM
		move.w  d6,-(sp)
		move.w  #$4E,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		rts
loc_1AB58:
		move.w  #$6DD,d6
		cmpi.w  #1,d2
		bne.s   loc_1AB78
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$17,d0
		jsr     (a4)
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1AB78:
		cmpi.w  #2,d2
		bne.s   loc_1AB94
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$17,d0
		jsr     (a4)
		moveq   #5,d0
		jsr     (a5)
		rts
loc_1AB94:
		cmpi.w  #3,d2
		bne.s   loc_1ABC8
		moveq   #$17,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		jsr     (a3)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$84,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		rts
loc_1ABC8:
		cmpi.w  #4,d2
		bne.s   loc_1ABE8
		move.l  d0,-(sp)
		move.b  #$84,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1ABE8:
		move.w  #$6EF,d6
		cmpi.w  #5,d2
		bne.s   loc_1AC1E
		move.l  d0,-(sp)
		move.b  #$1A,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$1A,d0
		jsr     (a4)
		moveq   #7,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$1A,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1AC1E:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1AC2C:
		cmpi.w  #0,d2
		bne.s   loc_1AC72
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AC72
		move.w  #$45,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AC58
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$45,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1AC70
loc_1AC58:
		move.w  #$6DD,d6
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$17,d0
		jsr     (a4)
		moveq   #3,d0
		jsr     (a5)
return_1AC70:
		rts
loc_1AC72:
		bra.w   sub_18074
loc_1AC76:
		cmpi.w  #$1514,d2
		bne.s   loc_1AC98
		moveq   #$14,d0
		bsr.w   sub_17EEC
		move.w  #$6EF,d6
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #6,d0
		jsr     (a5)
		move.w  #$42,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1AC98:
		bra.w   sub_1808A

    ; End of function sub_1A85A


; =============== S U B R O U T I N E =======================================

sub_1AC9C:
		cmpi.b  #$FF,d1
		beq.w   loc_1AEBA
		cmpi.w  #6,d1
		bne.s   loc_1ACD4
		move.w  #$21E,d6
		moveq   #$A,d0
		jsr     (a5)
		moveq   #$B,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1ACD4:
		cmpi.w  #$B,d1
		bne.s   loc_1ACFE
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1ACFE:
		cmpi.w  #$14,d1
		bne.s   loc_1AD2E
		move.w  #$21E,d6
		moveq   #9,d0
		jsr     (a5)
		moveq   #$A,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1AD2E:
		cmpi.w  #$16,d1
		bne.s   loc_1AD42
		moveq   #5,d0
		jsr     (a4)
		move.w  #$6FA,d6
		moveq   #$16,d0
		jsr     (a5)
		rts
loc_1AD42:
		cmpi.w  #2,d1
		bne.s   loc_1AD7A
		move.w  #$716,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AD74
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AD6E
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		bra.s   loc_1AD72
loc_1AD6E:
		moveq   #3,d0
		jsr     (a5)
loc_1AD72:
		bra.s   return_1AD78
loc_1AD74:
		moveq   #4,d0
		jsr     (a5)
return_1AD78:
		rts
loc_1AD7A:
		cmpi.w  #7,d1
		bne.s   loc_1ADB2
		move.w  #$71B,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1ADAC
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1ADA6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		bra.s   loc_1ADAA
loc_1ADA6:
		moveq   #3,d0
		jsr     (a5)
loc_1ADAA:
		bra.s   return_1ADB0
loc_1ADAC:
		moveq   #4,d0
		jsr     (a5)
return_1ADB0:
		rts
loc_1ADB2:
		cmpi.w  #3,d1
		bne.s   loc_1ADD2
		move.w  #$720,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1ADCC
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1ADD0
loc_1ADCC:
		moveq   #1,d0
		jsr     (a5)
return_1ADD0:
		rts
loc_1ADD2:
		cmpi.w  #4,d1
		bne.s   loc_1ADF2
		move.w  #$722,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1ADEC
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1ADF0
loc_1ADEC:
		moveq   #1,d0
		jsr     (a5)
return_1ADF0:
		rts
loc_1ADF2:
		cmpi.w  #5,d1
		bne.s   loc_1AE12
		move.w  #$724,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AE0C
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1AE10
loc_1AE0C:
		moveq   #1,d0
		jsr     (a5)
return_1AE10:
		rts
loc_1AE12:
		cmpi.w  #$1A,d1
		bne.s   loc_1AE32
		move.w  #$726,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AE2C
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1AE30
loc_1AE2C:
		moveq   #1,d0
		jsr     (a5)
return_1AE30:
		rts
loc_1AE32:
		cmpi.w  #9,d1
		bne.s   loc_1AE62
		moveq   #$1F,d0
		jsr     (a4)
		move.w  #$728,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		moveq   #3,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$58,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1AE62:
		cmpi.w  #$18,d1
		bne.s   loc_1AEB2
		move.w  #$72D,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1AE8C
		moveq   #0,d0
		jsr     (a5)
		move.w  #$59,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1AEB0
loc_1AE8C:
		moveq   #3,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1AE9C
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_1AEB0
loc_1AE9C:
		moveq   #5,d0
		jsr     (a5)
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5A,d0 
		bsr.w   j_j_SetEventFlag
return_1AEB0:
		rts
loc_1AEB2:
		move.w  #$6FB,d6
		bra.w   sub_180A6
loc_1AEBA:
		cmpi.w  #0,d2
		bne.s   loc_1AEDA
		moveq   #$1F,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$70,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$728,d6
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1AEDA:
		move.w  #$72D,d6
		cmpi.w  #1,d2
		bne.s   loc_1AEF6
		move.l  d0,-(sp)
		move.b  #$82,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1AEF6:
		cmpi.w  #2,d2
		bne.s   loc_1AF0E
		move.l  d0,-(sp)
		move.b  #$87,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1AF0E:
		cmpi.w  #3,d2
		bne.s   loc_1AF22
		move.l  d0,-(sp)
		moveq   #$1D,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		rts
loc_1AF22:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1AC9C


; =============== S U B R O U T I N E =======================================

sub_1AF30:
		cmpi.b  #$FF,d1
		beq.w   loc_1AFAA
		cmpi.w  #$B,d1
		bne.s   loc_1AF62
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1AF62:
		cmpi.w  #$1B,d1
		bne.s   loc_1AF9C
		moveq   #4,d0
		jsr     (a4)
		move.w  #$733,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		moveq   #3,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #4,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a4)
		moveq   #5,d0
		jsr     (a5)
		move.w  #$5B,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1AF9C:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1AFAA:
		move.w  #$739,d6
		cmpi.w  #0,d2
		bne.s   loc_1AFCA
		moveq   #$17,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1AFCA:
		cmpi.w  #1,d2
		bne.s   loc_1AFE6
		moveq   #$17,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1AFE6:
		cmpi.w  #2,d2
		bne.s   loc_1B002
		moveq   #$17,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1B002:
		cmpi.w  #3,d2
		bne.s   loc_1B030
		moveq   #$17,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$17,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$17,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #$17,d0
		jsr     (a4)
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1B030:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1AF30


; =============== S U B R O U T I N E =======================================

DialogueScript20:
		
		cmpi.b  #$FF,d1
		beq.w   loc_1B1C6
		cmpi.w  #7,d1
		bne.s   loc_1B076
		move.w  #$21E,d6
		moveq   #9,d0
		jsr     (a5)
		moveq   #$A,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B076:
		cmpi.w  #8,d1
		bne.s   loc_1B0A6
		move.w  #$21E,d6
		moveq   #$A,d0
		jsr     (a5)
		moveq   #$B,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B0A6:
		cmpi.w  #$11,d1
		bne.s   loc_1B0D0
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B0D0:
		cmpi.w  #$17,d1
		bne.s   loc_1B0F8
		move.w  #$758,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B0F2
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1B0F6
loc_1B0F2:
		moveq   #1,d0
		jsr     (a5)
return_1B0F6:
		rts
loc_1B0F8:
		cmpi.w  #$19,d1
		bne.s   loc_1B120
		move.w  #$75A,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1B112
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1B11E
loc_1B112:
		moveq   #2,d0
		jsr     (a5)
		move.w  #$304,d0
		bsr.w   sub_18046       
return_1B11E:
		rts
loc_1B120:
		cmpi.w  #$A,d1
		bne.s   loc_1B190
		move.w  #$75F,d6
		moveq   #0,d0
		jsr     (a5)
		moveq   #DOMINGO_EGG,d1
		jsr     j_IsItemHeldByForce
		bcs.s   loc_1B18A
		moveq   #2,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1B148
		moveq   #3,d0
		jsr     (a5)
		bra.s   loc_1B188
loc_1B148:
		moveq   #$16,d0
		bsr.w   sub_17EEC
		moveq   #4,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #5,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$8B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		moveq   #7,d0
		jsr     (a5)
		move.w  #$5C,d0 
		bsr.w   j_j_SetEventFlag
loc_1B188:
		bra.s   return_1B18E
loc_1B18A:
		moveq   #1,d0
		jsr     (a5)
return_1B18E:
		rts
loc_1B190:
		cmpi.w  #$1A,d1
		bne.s   loc_1B1BE
		move.w  #$75F,d6
		moveq   #$D,d0
		jsr     (a4)
		moveq   #8,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$D,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #$D,d0
		jsr     (a4)
		moveq   #$A,d0
		jsr     (a5)
		move.w  #$5D,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1B1BE:
		move.w  #$73E,d6
		bra.w   sub_180A6
loc_1B1C6:
		cmpi.w  #0,d2
		bne.s   loc_1B1F6
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a4)
		move.w  #$76A,d6
		move.w  #$90,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1B1F0
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1B1F4
loc_1B1F0:
		moveq   #1,d0
		jsr     (a5)
return_1B1F4:
		rts
loc_1B1F6:
		cmpi.w  #1,d2
		bne.s   loc_1B228
		move.l  d0,-(sp)
		move.b  #9,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a4)
		move.w  #$76A,d6
		moveq   #2,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #9,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a4)
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1B228:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function DialogueScript20


; =============== S U B R O U T I N E =======================================

sub_1B236:
		cmpi.b  #$FF,d1
		beq.w   loc_1B384
		cmpi.w  #7,d1
		bne.s   loc_1B26E
		move.w  #$21E,d6
		moveq   #$B,d0
		jsr     (a5)
		moveq   #$D,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B26E:
		cmpi.w  #5,d1
		bne.s   loc_1B298
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B298:
		cmpi.w  #3,d1
		bne.s   loc_1B2D8
		move.w  #$77F,d6
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B2B2
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1B2D6
loc_1B2B2:
		move.w  #$56,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B2D2
		moveq   #1,d0
		jsr     (a5)
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5F,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1B2D6
loc_1B2D2:
		moveq   #2,d0
		jsr     (a5)
return_1B2D6:
		rts
loc_1B2D8:
		cmpi.w  #8,d1
		bne.s   loc_1B2F8
		move.w  #$77D,d6
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B2F2
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1B2F6
loc_1B2F2:
		moveq   #1,d0
		jsr     (a5)
return_1B2F6:
		rts
loc_1B2F8:
		cmpi.w  #$A,d1
		bne.s   loc_1B37C
		moveq   #5,d0
		jsr     (a4)
		move.w  #$782,d6
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$6D,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B34A
		moveq   #0,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #5,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #5,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$68,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1B37A
loc_1B34A:
		moveq   #5,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #5,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #5,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #7,d0
		jsr     (a5)
		move.w  #$68,d0 
		bsr.w   j_j_SetEventFlag
return_1B37A:
		rts
loc_1B37C:
		move.w  #$76F,d6
		bra.w   sub_180A6
loc_1B384:
		move.w  #$782,d6
		cmpi.w  #0,d2
		bne.s   loc_1B3A4
		moveq   #5,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #5,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		rts
loc_1B3A4:
		cmpi.w  #1,d2
		bne.s   loc_1B3BC
		move.l  d0,-(sp)
		move.b  #$49,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		rts
loc_1B3BC:
		cmpi.w  #2,d2
		bne.s   loc_1B3D8
		moveq   #5,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #5,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$A,d0
		jsr     (a5)
		rts
loc_1B3D8:
		cmpi.w  #3,d2
		bne.s   loc_1B3F4
		moveq   #5,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #5,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		rts
loc_1B3F4:
		cmpi.w  #4,d2
		bne.s   loc_1B410
		moveq   #5,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #5,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1B410:
		cmpi.w  #5,d2
		bne.s   loc_1B42C
		moveq   #5,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #5,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		rts
loc_1B42C:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1B236


; =============== S U B R O U T I N E =======================================

sub_1B43A:
		cmpi.w  #$1E,d1
		beq.w   sub_180B4
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   loc_1B6EA
		cmpi.b  #$FF,d1
		beq.w   loc_1B622
		cmpi.w  #$10,d1
		bne.s   loc_1B480
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B480:
		cmpi.w  #4,d1
		bne.s   loc_1B498
		move.w  #$59C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1B498:
		cmpi.w  #$A,d1
		bne.s   loc_1B4B0
		move.w  #$59F,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1B4B0:
		cmpi.w  #$C,d1
		bne.s   loc_1B4D8
		move.w  #$5A2,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B4D2
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		bra.s   return_1B4D6
loc_1B4D2:
		moveq   #3,d0
		jsr     (a5)
return_1B4D6:
		rts
loc_1B4D8:
		cmpi.w  #$13,d1
		bne.s   loc_1B4F0
		move.w  #$5A5,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1B4F0:
		cmpi.w  #$16,d1
		bne.s   loc_1B508
		move.w  #$5A8,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_1B508:
		cmpi.w  #7,d1
		bne.w   loc_1B590
		moveq   #$2E,d0 
		jsr     (a4)
		move.w  #$7F,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1B56E
		move.w  #$80,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1B54C
		moveq   #$E,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
		bra.s   loc_1B56E
loc_1B54C:
		moveq   #$F,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B56E:
		move.w  #$5AB,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B58A
		moveq   #0,d0
		jsr     (a5)
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1B58E
loc_1B58A:
		moveq   #1,d0
		jsr     (a5)
return_1B58E:
		rts
loc_1B590:
		cmpi.w  #$F,d1
		bne.s   loc_1B5C8
		move.w  #$5B1,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1B5AA
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1B5C6
loc_1B5AA:
		moveq   #2,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1B5BA
		moveq   #3,d0
		jsr     (a5)
		bra.s   return_1B5C6
loc_1B5BA:
		moveq   #4,d0
		jsr     (a5)
		move.w  #$6B,d0 
		bsr.w   j_j_SetEventFlag
return_1B5C6:
		rts
loc_1B5C8:
		cmpi.w  #$18,d1
		bne.s   loc_1B60A
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  #$56,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B5FC
		move.w  #$5B6,d6
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B5F6
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #1,d0
		jsr     (a5)
loc_1B5F6:
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1B608
loc_1B5FC:
		move.w  d6,-(sp)
		move.w  #$5BA,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1B608:
		rts
loc_1B60A:
		cmpi.w  #$1A,d1
		bne.s   loc_1B61A
		move.w  #$5AE,d6
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1B61A:
		move.w  #$582,d6
		bra.w   sub_180A6
loc_1B622:
		cmpi.w  #0,d2
		bne.s   loc_1B66A
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$5AB,d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$80,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$E,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B66A:
		cmpi.w  #1,d2
		bne.s   loc_1B6B2
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$5AB,d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$80,d0 
		bsr.w   j_j_ClearEventFlag
		moveq   #$F,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B6B2:
		cmpi.w  #2,d2
		bne.s   loc_1B6DC
		moveq   #0,d0
		moveq   #1,d1
		jsr     sub_11126       
		move.l  d0,-(sp)
		move.b  #$7F,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$5AE,d6
		moveq   #1,d0
		jsr     (a5)
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1B6DC:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1B6EA:
		cmpi.b  #$FF,d1
		beq.w   loc_1B84A
		cmpi.w  #$10,d1
		bne.s   loc_1B71C
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B71C:
		cmpi.w  #2,d1
		bne.s   loc_1B73C
		move.w  #$5DD,d6
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B736
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1B73A
loc_1B736:
		moveq   #1,d0
		jsr     (a5)
return_1B73A:
		rts
loc_1B73C:
		cmpi.w  #7,d1
		bne.w   loc_1B7DE
		moveq   #$2E,d0 
		jsr     (a4)
		move.w  #$7F,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1B7A2
		move.w  #$80,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1B780
		moveq   #$E,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
		bra.s   loc_1B7A2
loc_1B780:
		moveq   #$F,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B7A2:
		move.w  #$5DF,d6
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   return_1B7DC
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1B7C0
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1B7DC
loc_1B7C0:
		moveq   #2,d0
		jsr     (a5)
		move.w  #$403,d0
		bsr.w   sub_18046       
		moveq   #5,d0
		jsr     (a5)
		moveq   #6,d0
		jsr     (a5)
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
return_1B7DC:
		rts
loc_1B7DE:
		cmpi.w  #$11,d1
		bne.s   loc_1B7F6
		move.w  #$5E6,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_1B7F6:
		cmpi.w  #$18,d1
		bne.s   loc_1B822
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  #$5E9,d6
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1B81C
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1B820
loc_1B81C:
		moveq   #1,d0
		jsr     (a5)
return_1B820:
		rts
loc_1B822:
		cmpi.w  #$1B,d1
		bne.s   loc_1B842
		moveq   #$2A,d0 
		jsr     (a4)
		move.w  #$5EB,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1B842:
		move.w  #$5C3,d6
		bra.w   sub_180A6
loc_1B84A:
		cmpi.w  #0,d2
		bne.s   loc_1B892
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$5AB,d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$80,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$E,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B892:
		cmpi.w  #1,d2
		bne.s   loc_1B8DA
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$5AB,d6
		moveq   #2,d0
		jsr     (a5)
		move.w  #$80,d0 
		bsr.w   j_j_ClearEventFlag
		moveq   #$F,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1B8DA:
		cmpi.w  #2,d2
		bne.s   loc_1B904
		moveq   #0,d0
		moveq   #1,d1
		jsr     sub_11126       
		move.l  d0,-(sp)
		move.b  #$7F,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  #$5AE,d6
		moveq   #1,d0
		jsr     (a5)
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1B904:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1B43A


; =============== S U B R O U T I N E =======================================

sub_1B912:
		cmpi.b  #$FF,d1
		beq.w   loc_1B91E
		bra.w   sub_180B4
loc_1B91E:
		move.w  #$5BB,d6
		cmpi.w  #0,d2
		bne.s   loc_1B942
		move.l  d0,-(sp)
		move.b  #$5E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1B942:
		cmpi.w  #1,d2
		bne.s   loc_1B95E
		sndCom  MUSIC_INTRO
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1B95E:
		cmpi.w  #2,d2
		bne.s   loc_1B988
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #2,d0
		jsr     (a5)
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		jsr     (j_CreateMessageWindow).l
		moveq   #3,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
loc_1B988:
		cmpi.w  #3,d2
		bne.s   loc_1B9A0
		move.l  d0,-(sp)
		move.b  #$52,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1B9A0:
		cmpi.w  #4,d2
		bne.s   loc_1B9A8
		rts
loc_1B9A8:
		cmpi.w  #5,d2
		bne.s   loc_1B9B0
		rts
loc_1B9B0:
		cmpi.w  #6,d2
		bne.s   loc_1BA04
		sndCom  SOUND_COMMAND_FADE_OUT
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #5,d0
		jsr     (a5)
		sndCom  MUSIC_INTRO
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		jsr     (j_CreateMessageWindow).l
		moveq   #6,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		jsr     (j_CreateMessageWindow).l
		moveq   #7,d0
		jsr     (a5)
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1BA04:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1B912


; =============== S U B R O U T I N E =======================================

sub_1BA12:
		cmpi.w  #5,d1
		bne.s   loc_1BA48
		moveq   #$2F,d0 
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$581,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BA48:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1BA12


; =============== S U B R O U T I N E =======================================

sub_1BA56:
		cmpi.b  #$FF,d1
		beq.w   loc_1BD46
		cmpi.w  #1,d1
		bne.s   loc_1BA86
		moveq   #$10,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BA86:
		cmpi.w  #2,d1
		bne.s   loc_1BAAE
		moveq   #$11,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BAAE:
		cmpi.w  #3,d1
		bne.s   loc_1BAD8
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BAD8:
		cmpi.w  #$1E,d1
		beq.w   sub_180B4
		cmpi.w  #$1F,d1
		beq.w   sub_180B4
		cmpi.w  #$17,d1
		bne.s   loc_1BB10
		move.w  #$7D4,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BB02
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1BB0E
loc_1BB02:
		moveq   #1,d0
		jsr     (a5)
		move.w  #$203,d0
		bsr.w   sub_18046       
return_1BB0E:
		rts
loc_1BB10:
		cmpi.w  #$19,d1
		bne.s   loc_1BB58
		move.w  #$7D8,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BB32
		moveq   #1,d0
		jsr     (a5)
		move.w  #$41,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1BB56
loc_1BB32:
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1BB42
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_1BB56
loc_1BB42:
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BB52
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1BB56
loc_1BB52:
		moveq   #3,d0
		jsr     (a5)
return_1BB56:
		rts
loc_1BB58:
		cmpi.w  #$18,d1
		bne.s   loc_1BBA8
		move.w  #$7D8,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BB8A
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BB84
		moveq   #5,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_1BB88
loc_1BB84:
		moveq   #6,d0
		jsr     (a5)
loc_1BB88:
		bra.s   return_1BBA6
loc_1BB8A:
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BBA2
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #7,d0
		jsr     (a5)
		bra.s   return_1BBA6
loc_1BBA2:
		moveq   #8,d0
		jsr     (a5)
return_1BBA6:
		rts
loc_1BBA8:
		cmpi.w  #$1B,d1
		bne.s   loc_1BC04
		move.w  #$7E2,d6
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BBFE
		move.l  d0,-(sp)
		move.b  #$49,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1BBFC
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$87,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		move.w  #$42,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
loc_1BBFC:
		bra.s   return_1BC02
loc_1BBFE:
		moveq   #0,d0
		jsr     (a5)
return_1BC02:
		rts
loc_1BC04:
		cmpi.w  #$1C,d1
		bne.w   loc_1BC90
		move.w  #$7E2,d6
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BC8A
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BC64
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1BC3A
		moveq   #9,d0
		jsr     (a5)
loc_1BC3A:
		moveq   #1,d0
		jsr     (a5)
		moveq   #2,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1BC4E
		moveq   #3,d0
		jsr     (a5)
		bra.s   loc_1BC62
loc_1BC4E:
		moveq   #4,d0
		jsr     (a5)
		move.w  #$43,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
loc_1BC62:
		bra.s   loc_1BC88
loc_1BC64:
		moveq   #5,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1BC74
		moveq   #3,d0
		jsr     (a5)
		bra.s   loc_1BC88
loc_1BC74:
		moveq   #4,d0
		jsr     (a5)
		move.w  #$43,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
loc_1BC88:
		bra.s   return_1BC8E
loc_1BC8A:
		moveq   #6,d0
		jsr     (a5)
return_1BC8E:
		rts
loc_1BC90:
		cmpi.w  #5,d1
		bne.s   loc_1BCCA
		moveq   #$14,d0
		jsr     (a4)
		move.w  #$7EC,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1BCAE
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1BCC8
loc_1BCAE:
		moveq   #2,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$14,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		move.w  #$40,d0 
		bsr.w   j_j_SetEventFlag
return_1BCC8:
		rts
loc_1BCCA:
		cmpi.w  #$E,d1
		bne.s   loc_1BD3E
		move.w  #$7F1,d6
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1BCE4
		moveq   #6,d0
		jsr     (a5)
		bra.s   return_1BD3C
loc_1BCE4:
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BD0C
		moveq   #0,d0
		jsr     (a5)
		moveq   #$E,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #1,d0
		jsr     (a5)
		moveq   #$E,d0
		moveq   #1,d1
		jsr     sub_11126       
		bra.s   return_1BD3C
loc_1BD0C:
		moveq   #2,d0
		jsr     (a5)
		moveq   #$E,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #3,d0
		jsr     (a5)
		moveq   #$E,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #4,d0
		jsr     (a5)
		move.w  #$44,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
return_1BD3C:
		rts
loc_1BD3E:
		move.w  #$7B7,d6
		bra.w   sub_180A6
loc_1BD46:
		cmpi.w  #0,d2
		bne.s   loc_1BD66
		move.l  d0,-(sp)
		move.b  #$86,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$7F6,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1BD66:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1BA56


; =============== S U B R O U T I N E =======================================

sub_1BD74:
		cmpi.w  #1,d1
		bne.s   loc_1BD9C
		moveq   #$10,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BD9C:
		cmpi.w  #2,d1
		bne.s   loc_1BDC4
		moveq   #$11,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BDC4:
		cmpi.w  #3,d1
		bne.s   loc_1BDEE
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BDEE:
		cmpi.w  #$1E,d1
		beq.w   sub_180B4
		cmpi.w  #$1F,d1
		beq.w   sub_180B4
		cmpi.w  #5,d1
		bne.s   loc_1BE38
		moveq   #$14,d0
		jsr     (a4)
		move.w  #$7EC,d6
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1BE1C
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1BE36
loc_1BE1C:
		moveq   #2,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$14,d0
		bsr.w   sub_17F88
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		move.w  #$40,d0 
		bsr.w   j_j_SetEventFlag
return_1BE36:
		rts
loc_1BE38:
		cmpi.w  #$17,d1
		bne.s   loc_1BE50
		move.w  #$815,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_1BE50:
		cmpi.w  #$18,d1
		bne.s   loc_1BE9C
		move.w  #$818,d6
		move.w  #$80,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1BE7E
		moveq   #2,d0
		jsr     (a5)
		moveq   #3,d0
		jsr     (a5)
		move.w  #$45,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1BE9A
loc_1BE7E:
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BE96
		move.w  #$57,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1BE9A
loc_1BE96:
		moveq   #1,d0
		jsr     (a5)
return_1BE9A:
		rts
loc_1BE9C:
		cmpi.w  #$1C,d1
		bne.s   loc_1BEF0
		move.w  #$81C,d6
		move.w  #$80,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BEEA
		moveq   #0,d0
		jsr     (a5)
		bsr.w   sub_18056       
		bne.s   loc_1BEC0
		moveq   #1,d0
		jsr     (a5)
		bra.s   loc_1BEE8
loc_1BEC0:
		moveq   #2,d0
		jsr     (a5)
loc_1BEC4:
		jsr     (j_CreateMessageWindow).l
		moveq   #3,d0
		jsr     (a5)
		bsr.w   sub_18056       
		beq.s   loc_1BEDC
		moveq   #4,d0
		jsr     (a5)
		bra.s   loc_1BEC4
		bra.s   loc_1BEE8
loc_1BEDC:
		moveq   #5,d0
		jsr     (a5)
		move.w  #$80,d0 
		bsr.w   j_j_SetEventFlag
loc_1BEE8:
		bra.s   return_1BEEE
loc_1BEEA:
		moveq   #6,d0
		jsr     (a5)
return_1BEEE:
		rts
loc_1BEF0:
		cmpi.w  #$E,d1
		bne.s   loc_1BF20
		move.w  #$823,d6
		move.w  #$80,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BF0A
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1BF1E
loc_1BF0A:
		move.w  #$56,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BF1A
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1BF1E
loc_1BF1A:
		moveq   #1,d0
		jsr     (a5)
return_1BF1E:
		rts
loc_1BF20:
		move.w  #$7F8,d6
		bra.w   sub_180A6

    ; End of function sub_1BD74


; =============== S U B R O U T I N E =======================================

sub_1BF28:
		move.w  #$46,d0 
		bsr.w   j_j_SetEventFlag
		cmpi.b  #$FF,d1
		beq.w   loc_1C0B0
		cmpi.w  #1,d1
		bne.s   loc_1BF64
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
		rts
loc_1BF64:
		cmpi.w  #3,d1
		bne.s   loc_1BF98
		move.w  d6,-(sp)
		move.w  #$22E,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$13,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1BF98:
		cmpi.w  #5,d1
		bne.w   loc_1C02E
		move.w  #$64D,d6
		moveq   #$18,d0
		jsr     (a4)
		move.w  #$78,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BFC8
		moveq   #0,d0
		jsr     (a5)
		move.w  #$78,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5B,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1C02C
loc_1BFC8:
		move.w  #$79,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BFE8
		moveq   #1,d0
		jsr     (a5)
		move.w  #$79,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5C,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1C02C
loc_1BFE8:
		move.w  #$7A,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1BFF8
		moveq   #4,d0
		jsr     (a5)
		bra.s   return_1C02C
loc_1BFF8:
		moveq   #$10,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$18,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #$18,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		moveq   #$18,d0
		jsr     (a4)
		moveq   #$12,d0
		jsr     (a5)
		move.w  #$61,d0 
		bsr.w   j_j_SetEventFlag
return_1C02C:
		rts
loc_1C02E:
		cmpi.w  #6,d1
		bne.s   loc_1C052
		move.w  #$64D,d6
		moveq   #5,d0
		jsr     (a5)
		moveq   #6,d0
		jsr     (a5)
		move.w  #$7A,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5E,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1C052:
		cmpi.w  #8,d1
		bne.s   loc_1C0A8
		move.w  #$47,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C08E
		moveq   #$24,d0 
		jsr     (a4)
		move.w  #$64D,d6
		move.w  #$7B,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C088
		move.w  #$7B,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$7C,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$14,d0
		jsr     (a5)
loc_1C088:
		moveq   #$15,d0
		jsr     (a5)
		bra.s   return_1C0A6
loc_1C08E:
		moveq   #$25,d0 
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$666,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$59,d0 
		bsr.w   j_j_SetEventFlag
return_1C0A6:
		rts
loc_1C0A8:
		move.w  #$644,d6
		bra.w   sub_180A6
loc_1C0B0:
		move.w  #$663,d6
		cmpi.w  #0,d2
		bne.s   loc_1C0CC
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1C0CC:
		cmpi.w  #1,d2
		bne.s   loc_1C0E4
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1C0E4:
		cmpi.w  #2,d2
		bne.s   loc_1C0FC
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		rts
loc_1C0FC:
		cmpi.w  #3,d2
		bne.s   loc_1C140
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #5,d0
		jsr     (a5)
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		rts
loc_1C140:
		cmpi.w  #4,d2
		bne.s   loc_1C166
		moveq   #8,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		rts
loc_1C166:
		cmpi.w  #5,d2
		bne.s   loc_1C1A2
		move.l  d0,-(sp)
		move.b  #$87,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$64F,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$18,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$18,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$650,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C1A2:
		cmpi.w  #6,d2
		bne.s   loc_1C1E4
		move.l  d0,-(sp)
		move.b  #$87,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$654,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$18,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$18,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$655,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C1E4:
		cmpi.w  #7,d2
		bne.s   loc_1C22A
		move.w  #$64D,d6
		move.l  d0,-(sp)
		move.b  #$3E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		move.l  d0,-(sp)
		move.b  #$87,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$A,d0
		jsr     (a5)
		move.l  d0,-(sp)
		move.b  #$18,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$18,d0
		jsr     (a4)
		moveq   #$C,d0
		jsr     (a5)
		rts
loc_1C22A:
		cmpi.w  #8,d2
		bne.s   loc_1C260
		move.l  d0,-(sp)
		move.b  #$3E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$65A,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		clr.w   ((SPEECH_SFX-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		move.w  d6,-(sp)
		move.w  #$65B,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C260:
		cmpi.w  #9,d2
		bne.s   loc_1C280
		move.l  d0,-(sp)
		move.b  #$3E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$65C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C280:
		cmpi.w  #$A,d2
		bne.s   loc_1C2AA
		move.l  d0,-(sp)
		move.b  #$87,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		moveq   #3,d1
		jsr     sub_11126       
		move.w  d6,-(sp)
		move.w  #$660,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C2AA:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1BF28


; =============== S U B R O U T I N E =======================================

sub_1C2B8:
		cmpi.b  #$FE,d1
		beq.w   loc_1C3DE
		cmpi.w  #1,d1
		bne.s   loc_1C2F4
		move.w  d6,-(sp)
		move.w  #$22C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$14,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1C2F4:
		cmpi.w  #2,d1
		bne.s   loc_1C328
		move.w  d6,-(sp)
		move.w  #$22F,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$15,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1C328:
		cmpi.w  #$C,d1
		bne.s   loc_1C352
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1C352:
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   loc_1C37E
		cmpi.w  #$14,d1
		bne.s   loc_1C376
		move.w  #$605,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		rts
loc_1C376:
		move.w  #$5EF,d6
		bra.w   sub_180A6
loc_1C37E:
		cmpi.w  #$14,d1
		bne.s   loc_1C396
		move.w  #$61E,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_1C396:
		cmpi.w  #$16,d1
		bne.s   loc_1C3D6
		move.w  #$622,d6
		move.w  #$7C,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C3B0
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1C3B0:
		move.w  #$58,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C3D0
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C3CA
		moveq   #0,d0
		jsr     (a5)
		bra.s   loc_1C3CE
loc_1C3CA:
		moveq   #1,d0
		jsr     (a5)
loc_1C3CE:
		bra.s   return_1C3D4
loc_1C3D0:
		moveq   #2,d0
		jsr     (a5)
return_1C3D4:
		rts
loc_1C3D6:
		move.w  #$608,d6
		bra.w   sub_180A6
loc_1C3DE:
		cmpi.w  #0,d2
		bne.s   loc_1C408
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C408
		move.w  d6,-(sp)
		move.w  #$626,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.l  d0,-(sp)
		moveq   #$1B,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		rts
loc_1C408:
		bra.w   sub_18074

    ; End of function sub_1C2B8


; =============== S U B R O U T I N E =======================================

sub_1C40C:
		move.w  #$58,d0 
		bsr.w   j_j_CheckEventFlag
		bne.w   loc_1C8B0
		cmpi.b  #$FF,d1
		beq.w   loc_1C764
		cmpi.b  #$FE,d1
		beq.w   loc_1C87E
		cmpi.w  #1,d1
		bne.s   loc_1C446
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C446
		move.w  d6,-(sp)
		move.w  #$83A,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C446:
		cmpi.w  #2,d1
		bne.s   loc_1C464
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C464
		move.w  d6,-(sp)
		move.w  #$83B,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C464:
		cmpi.w  #3,d1
		bne.s   loc_1C482
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C482
		move.w  d6,-(sp)
		move.w  #$83C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C482:
		cmpi.w  #5,d1
		bne.s   loc_1C4A0
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C4A0
		move.w  d6,-(sp)
		move.w  #$83D,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C4A0:
		cmpi.w  #4,d1
		bne.s   loc_1C4C0
		move.w  #$83E,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C4BA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C4BE
loc_1C4BA:
		moveq   #1,d0
		jsr     (a5)
return_1C4BE:
		rts
loc_1C4C0:
		cmpi.w  #6,d1
		bne.s   loc_1C4E0
		move.w  #$840,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C4DA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C4DE
loc_1C4DA:
		moveq   #1,d0
		jsr     (a5)
return_1C4DE:
		rts
loc_1C4E0:
		cmpi.w  #7,d1
		bne.s   loc_1C500
		move.w  #$842,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C4FA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C4FE
loc_1C4FA:
		moveq   #1,d0
		jsr     (a5)
return_1C4FE:
		rts
loc_1C500:
		cmpi.w  #8,d1
		bne.s   loc_1C520
		move.w  #$844,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C51A
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C51E
loc_1C51A:
		moveq   #1,d0
		jsr     (a5)
return_1C51E:
		rts
loc_1C520:
		cmpi.w  #$A,d1
		bne.s   loc_1C560
		move.w  #$846,d6
		move.w  #$42,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C53A
		moveq   #3,d0
		jsr     (a5)
		bra.s   return_1C55E
loc_1C53A:
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C54A
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1C55E
loc_1C54A:
		move.w  #$40,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C55A
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1C55E
loc_1C55A:
		moveq   #0,d0
		jsr     (a5)
return_1C55E:
		rts
loc_1C560:
		cmpi.w  #$B,d1
		bne.s   loc_1C590
		move.w  #$84A,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C57A
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1C58E
loc_1C57A:
		move.w  #$40,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C58A
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C58E
loc_1C58A:
		moveq   #1,d0
		jsr     (a5)
return_1C58E:
		rts
loc_1C590:
		cmpi.w  #$C,d1
		bne.s   loc_1C5C0
		move.w  #$84A,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C5AA
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1C5BE
loc_1C5AA:
		move.w  #$40,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C5BA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C5BE
loc_1C5BA:
		moveq   #1,d0
		jsr     (a5)
return_1C5BE:
		rts
loc_1C5C0:
		cmpi.w  #$E,d1
		bne.s   loc_1C5E0
		move.w  #$84D,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C5DA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C5DE
loc_1C5DA:
		moveq   #1,d0
		jsr     (a5)
return_1C5DE:
		rts
loc_1C5E0:
		cmpi.w  #$F,d1
		bne.s   loc_1C600
		move.w  #$84F,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C5FA
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C5FE
loc_1C5FA:
		moveq   #1,d0
		jsr     (a5)
return_1C5FE:
		rts
loc_1C600:
		cmpi.w  #$11,d1
		bne.s   loc_1C620
		move.w  #$851,d6
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C61A
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C61E
loc_1C61A:
		moveq   #1,d0
		jsr     (a5)
return_1C61E:
		rts
loc_1C620:
		cmpi.w  #9,d1
		bne.w   loc_1C6BC
		moveq   #$2E,d0 
		jsr     (a4)
		move.w  #$40,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C656
		move.w  #$853,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$102,d0
		bsr.w   sub_18046       
		moveq   #3,d0
		jsr     (a5)
		move.w  #$45,d0 
		bsr.w   j_j_SetEventFlag
		rts
		bra.s   return_1C6BA
loc_1C656:
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C67E
		move.w  d6,-(sp)
		move.w  #$85C,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$41,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1C6BA
loc_1C67E:
		move.w  #$42,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C696
		move.w  d6,-(sp)
		move.w  #$869,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		bra.s   return_1C6BA
loc_1C696:
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C6AE
		move.w  d6,-(sp)
		move.w  #$85D,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		bra.s   return_1C6BA
loc_1C6AE:
		move.w  d6,-(sp)
		move.w  #$863,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1C6BA:
		rts
loc_1C6BC:
		cmpi.w  #$13,d1
		bne.s   loc_1C6FC
		clr.w   ((SPEECH_SFX-$1000000)).w
		bsr.w   sub_17E58
		moveq   #$25,d0 
		jsr     (a4)
		moveq   #1,d0
		movem.l d6/a0-a6,-(sp)
		jsr     sub_80D8
		movem.l (sp)+,d6/a0-a6
		move.w  d6,-(sp)
		move.w  #$861,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$47,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1C6FC:
		cmpi.w  #$D,d1
		bne.s   loc_1C72C
		move.w  #$85E,d6
		move.w  #$42,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   loc_1C716
		moveq   #2,d0
		jsr     (a5)
		bra.s   return_1C72A
loc_1C716:
		move.w  #$41,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C726
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C72A
loc_1C726:
		moveq   #1,d0
		jsr     (a5)
return_1C72A:
		rts
loc_1C72C:
		cmpi.w  #$14,d1
		bne.s   loc_1C75C
		move.l  d0,-(sp)
		move.b  #$7F,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$859,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$44,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$40,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1C75C:
		move.w  #$826,d6
		bra.w   sub_180A6
loc_1C764:
		cmpi.w  #0,d2
		bne.s   loc_1C78C
		move.l  d0,-(sp)
		move.b  #$7F,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$858,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$78,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1C78C:
		cmpi.w  #1,d2
		bne.s   loc_1C7AC
		move.l  d0,-(sp)
		move.b  #$8C,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$85A,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C7AC:
		cmpi.w  #2,d2
		bne.s   loc_1C7CC
		move.l  d0,-(sp)
		move.b  #$8C,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$85B,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C7CC:
		cmpi.w  #3,d2
		bne.s   loc_1C7F0
		move.w  #$85E,d6
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		moveq   #5,d0
		jsr     (a5)
		rts
loc_1C7F0:
		cmpi.w  #4,d2
		bne.s   loc_1C870
		move.w  #$85E,d6
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		moveq   #0,d0
		moveq   #0,d1
		jsr     sub_11126       
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		jsr     (a3)
		jsr     (j_CreateMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #9,d0
		jsr     (a5)
		moveq   #9,d0
		moveq   #2,d1
		jsr     sub_11126       
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		rts
loc_1C870:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C87E:
		cmpi.w  #1,d2
		bne.s   loc_1C89A
		move.w  d6,-(sp)
		move.w  #$857,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$43,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1C89A:
		cmpi.w  #0,d2
		beq.w   sub_18074
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1C8B0:
		cmpi.b  #$FF,d1
		beq.w   loc_1CAF6
		cmpi.b  #$FD,d1
		beq.w   loc_1CAE2
		cmpi.b  #$FE,d1
		beq.w   sub_18074
		cmpi.w  #5,d1
		bne.s   loc_1C8E8
		move.w  #$87C,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C8E2
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C8E6
loc_1C8E2:
		moveq   #1,d0
		jsr     (a5)
return_1C8E6:
		rts
loc_1C8E8:
		cmpi.w  #7,d1
		bne.s   loc_1C908
		move.w  #$87E,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C902
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C906
loc_1C902:
		moveq   #1,d0
		jsr     (a5)
return_1C906:
		rts
loc_1C908:
		cmpi.w  #8,d1
		bne.s   loc_1C928
		move.w  #$880,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C922
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C926
loc_1C922:
		moveq   #1,d0
		jsr     (a5)
return_1C926:
		rts
loc_1C928:
		cmpi.w  #9,d1
		bne.w   loc_1C9D4
		move.w  #$882,d6
		moveq   #$2E,d0 
		jsr     (a4)
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C9B8
		move.w  #$53,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C9B2
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C964
		moveq   #0,d0
		jsr     (a5)
		move.w  #$7B,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   loc_1C9B0
loc_1C964:
		moveq   #8,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		moveq   #$25,d0 
		bsr.w   GiveItemToHero  
		bcc.s   loc_1C97C
		moveq   #7,d0
		jsr     (a5)
		bra.s   loc_1C9B0
loc_1C97C:
		jsr     (a3)
		clr.w   ((SPEECH_SFX-$1000000)).w
		sndCom  MUSIC_ITEM
		moveq   #$A,d0
		jsr     (a5)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
loc_1C9B0:
		bra.s   loc_1C9B6
loc_1C9B2:
		moveq   #9,d0
		jsr     (a5)
loc_1C9B6:
		bra.s   return_1C9D2
loc_1C9B8:
		move.w  #$7C,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$7D,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C9CE
		moveq   #$B,d0
		jsr     (a5)
loc_1C9CE:
		moveq   #$C,d0
		jsr     (a5)
return_1C9D2:
		rts
loc_1C9D4:
		cmpi.w  #$A,d1
		bne.s   loc_1C9F4
		move.w  #$892,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1C9EE
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1C9F2
loc_1C9EE:
		moveq   #1,d0
		jsr     (a5)
return_1C9F2:
		rts
loc_1C9F4:
		cmpi.w  #$E,d1
		bne.s   loc_1CA14
		move.w  #$894,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CA0E
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1CA12
loc_1CA0E:
		moveq   #1,d0
		jsr     (a5)
return_1CA12:
		rts
loc_1CA14:
		cmpi.w  #$F,d1
		bne.s   loc_1CA34
		move.w  #$896,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CA2E
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1CA32
loc_1CA2E:
		moveq   #1,d0
		jsr     (a5)
return_1CA32:
		rts
loc_1CA34:
		cmpi.w  #$11,d1
		bne.s   loc_1CA6C
		move.w  #$898,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CA4E
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1CA6A
loc_1CA4E:
		move.w  #$54,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CA66
		move.w  #$54,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1CA6A
loc_1CA66:
		moveq   #2,d0
		jsr     (a5)
return_1CA6A:
		rts
loc_1CA6C:
		cmpi.w  #$12,d1
		bne.s   loc_1CA8C
		move.w  #$89B,d6
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CA86
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1CA8A
loc_1CA86:
		moveq   #1,d0
		jsr     (a5)
return_1CA8A:
		rts
loc_1CA8C:
		cmpi.w  #$16,d1
		bne.s   loc_1CADA
		moveq   #$30,d0 
		jsr     (a4)
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CAAE
		move.w  d6,-(sp)
		move.w  #$88F,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		bra.s   return_1CAD8
loc_1CAAE:
		move.w  #$7E,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CACC
		move.w  d6,-(sp)
		move.w  #$890,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$7E,d0 
		bsr.w   j_j_SetEventFlag
loc_1CACC:
		move.w  d6,-(sp)
		move.w  #$891,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1CAD8:
		rts
loc_1CADA:
		move.w  #$86A,d6
		bra.w   sub_180A6
loc_1CAE2:
		cmpi.w  #$1512,d2
		bne.s   loc_1CAF2
		move.w  #$59,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1CAF2:
		bra.w   sub_1808A
loc_1CAF6:
		cmpi.w  #0,d2
		bne.s   loc_1CB1A
		moveq   #$30,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$7E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$883,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CB1A:
		cmpi.w  #1,d2
		bne.w   loc_1CBE6
		move.w  #$882,d6
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		moveq   #$30,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$7E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		moveq   #$30,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$7E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #5,d0
		jsr     (a5)
		moveq   #0,d0
		moveq   #0,d1
		jsr     sub_11126       
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		moveq   #$25,d0 
		bsr.w   GiveItemToHero  
		bcc.s   loc_1CBB0
		moveq   #7,d0
		jsr     (a5)
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1CBE4
loc_1CBB0:
		jsr     (a3)
		clr.w   ((SPEECH_SFX-$1000000)).w
		sndCom  MUSIC_ITEM
		moveq   #$A,d0
		jsr     (a5)
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$53,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$2E,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$8E,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
return_1CBE4:
		rts
loc_1CBE6:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1C40C


; =============== S U B R O U T I N E =======================================

; Metapha (get Chaos Breaker)

DialogueScript29:
		
		        module
		cmpi.b  #$FF,d1
		beq.w   loc_1CC48
		cmpi.b  #$FE,d1
		beq.w   @DialogueNumber254
		cmpi.b  #$FD,d1
		beq.w   loc_1CECC
		cmpi.w  #1,d1
		bne.s   loc_1CC44
		moveq   #$19,d0
		jsr     (a4)
		move.w  #$631,d6
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CC2A
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1CC42
loc_1CC2A:
		moveq   #2,d0
		jsr     (a5)
		move.w  #$60,d0 
		bsr.w   j_j_SetEventFlag
		move.l  d0,-(sp)
		moveq   #$19,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
return_1CC42:
		rts
loc_1CC44:
		bra.w   sub_180B4
loc_1CC48:
		cmpi.w  #0,d2
		bne.s   loc_1CC78
		sndCom  MUSIC_INTRO
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$631,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$5B,d0 
		bsr.w   j_j_ClearEventFlag
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
loc_1CC78:
		cmpi.w  #1,d2
		bne.s   loc_1CCA0
		sndCom  MUSIC_INTRO
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$642,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
loc_1CCA0:
		cmpi.w  #2,d2
		bne.s   loc_1CCC4
		move.l  d0,-(sp)
		move.b  #$19,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$19,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$634,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CCC4:
		cmpi.w  #3,d2
		bne.s   loc_1CCFE
		move.l  d0,-(sp)
		move.b  #$19,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$19,d0
		jsr     (a4)
		move.w  d6,-(sp)
		move.w  #$635,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		jsr     (j_CreateMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  d6,-(sp)
		move.w  #$636,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CCFE:
		cmpi.w  #4,d2
		bne.s   loc_1CD22
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$638,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CD22:
		cmpi.w  #5,d2
		bne.s   loc_1CD46
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$63A,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CD46:
		cmpi.w  #6,d2
		bne.s   loc_1CD96
		moveq   #$19,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$19,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$63B,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.l  d0,-(sp)
		moveq   #$19,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		movem.l d0-d1/d6,-(sp)
		moveq   #$16,d0
		move.w  #$397,d6
		moveq   #$19,d1
		bsr.w   sub_17FF6
		movem.l (sp)+,d0-d1/d6
		move.w  d6,-(sp)
		move.w  #$63D,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CD96:
		cmpi.w  #7,d2
		bne.s   loc_1CDBA
		moveq   #$22,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$73,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$63E,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CDBA:
		cmpi.w  #8,d2
		bne.s   loc_1CE10
		moveq   #$19,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$19,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$63F,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$22,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$73,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$640,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		sndCom  SFX_SPELL_CAST
		movem.l d6/a0-a6,-(sp)
		jsr     sub_124028
		movem.l (sp)+,d6/a0-a6
		sndCom  SFX_SPELL_CAST
		rts
loc_1CE10:
		cmpi.w  #9,d2
		bne.s   loc_1CE40
		sndCom  MUSIC_INTRO
		move.l  d0,-(sp)
		move.b  #$59,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$643,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$7A,d0 
		bsr.w   j_j_ClearEventFlag
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
loc_1CE40:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
@DialogueNumber254:
		
		cmpi.w  #0,d2
		bne.s   loc_1CEC8
		move.w  #$56,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CE64
		bra.w   sub_18074
		bra.s   return_1CEC6
loc_1CE64:
		clr.w   ((SPEECH_SFX-$1000000)).w
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #CHAOS_BREAKER,((MESSAGE_ARG_NAME_2-$1000000)).w
		moveq   #CHAOS_BREAKER,d0
		bsr.w   GiveItemToHero  
		bcs.s   loc_1CEAE
		sndCom  MUSIC_ITEM
		move.w  d6,-(sp)
		move.w  #$48,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$56,d0 
		bsr.w   j_j_ClearEventFlag
		move.w  #$57,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5E,d0 
		bsr.w   j_j_SetEventFlag
		bra.s   return_1CEC6
loc_1CEAE:
		move.w  d6,-(sp)
		move.w  #$48,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.w  d6,-(sp)
		move.w  #$49,d6 
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
return_1CEC6:
		rts
loc_1CEC8:
		bra.w   sub_18074
loc_1CECC:
		cmpi.w  #$1512,d2
		bne.s   loc_1CEF8
		move.w  #$55,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CEF2
		move.w  #$55,d0 
		bsr.w   j_j_SetEventFlag
		move.w  #$5B,d0 
		bsr.w   j_j_SetEventFlag
		sndCom  SOUND_COMMAND_FADE_OUT
		bra.s   return_1CEF6
loc_1CEF2:
		bra.w   sub_1808A
return_1CEF6:
		rts
loc_1CEF8:
		cmpi.w  #$1626,d2
		bne.s   loc_1CF20
		move.w  #$5D,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$26,d0 
		bsr.w   sub_17EEC
		move.w  #$5C,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   return_1CF1E
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
return_1CF1E:
		rts
loc_1CF20:
		cmpi.w  #$1725,d2
		bne.s   loc_1CF48
		move.w  #$5C,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #$25,d0 
		bsr.w   sub_17EEC
		move.w  #$5D,d0 
		bsr.w   j_j_CheckEventFlag
		beq.s   return_1CF46
		move.w  #$56,d0 
		bsr.w   j_j_SetEventFlag
return_1CF46:
		rts
loc_1CF48:
		cmpi.w  #$1812,d2
		bne.s   loc_1CF66
		move.w  #$57,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1CF66
		sndCom  SOUND_COMMAND_FADE_OUT
		move.w  #$7A,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1CF66:
		bra.w   sub_1808A
        modend

    ; End of function DialogueScript29


; =============== S U B R O U T I N E =======================================

sub_1CF6A:
		cmpi.b  #$FF,d1
		beq.w   loc_1CF80
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts
loc_1CF80:
		cmpi.w  #3,d2
		bne.s   loc_1CFF4
		move.w  #$8A7,d6
		moveq   #$B,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		moveq   #$10,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$10,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		moveq   #$B,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$B,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		moveq   #$10,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$10,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		move.l  d0,-(sp)
		moveq   #$B,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		move.l  d0,-(sp)
		moveq   #$10,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		rts
loc_1CFF4:
		move.w  #$8AB,d6
		cmpi.w  #4,d2
		bne.s   loc_1D014
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1D014:
		cmpi.w  #5,d2
		bne.s   loc_1D030
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1D030:
		cmpi.w  #6,d2
		bne.s   loc_1D04C
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1D04C:
		cmpi.w  #7,d2
		bne.s   loc_1D068
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1D068:
		cmpi.w  #8,d2
		bne.s   loc_1D0C2
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #4,d0
		jsr     (a5)
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #5,d0
		jsr     (a5)
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #6,d0
		jsr     (a5)
		bsr.w   sub_17E42
		sndCom  SFX_HIT
		movem.l d6/a0-a6,-(sp)
		jsr     sub_124028
		movem.l (sp)+,d6/a0-a6
		rts
loc_1D0C2:
		cmpi.w  #9,d2
		bne.s   loc_1D0F6
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #7,d0
		jsr     (a5)
		moveq   #$28,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #8,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_FADE_OUT
		rts
loc_1D0F6:
		cmpi.w  #$A,d2
		bne.s   loc_1D116
		sndCom  MUSIC_SAD_THEME
		moveq   #$25,d0 
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #$75,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #9,d0
		jsr     (a5)
		rts
loc_1D116:
		cmpi.w  #$B,d2
		bne.s   loc_1D144
		clr.w   ((SPEECH_SFX-$1000000)).w
		moveq   #$A,d0
		jsr     (a5)
		jsr     (j_CreateMessageWindow).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     (a4)
		move.l  d0,-(sp)
		move.b  #MAPSPRITE_NOVA,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		moveq   #$B,d0
		jsr     (a5)
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts
loc_1D144:
		move.w  d6,-(sp)
		move.w  #$8A0,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		rts

    ; End of function sub_1CF6A


; =============== S U B R O U T I N E =======================================

sub_1D152:
		cmpi.b  #$FE,d1
		beq.w   loc_1D314
		cmpi.w  #1,d1
		bne.s   loc_1D18E
		move.w  d6,-(sp)
		move.w  #$230,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$16,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1D18E:
		cmpi.w  #2,d1
		bne.s   loc_1D1C2
		move.w  d6,-(sp)
		move.w  #$231,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		moveq   #$17,d0
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteShopMenu 
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1D1C2:
		cmpi.w  #4,d1
		bne.s   loc_1D1EC
		moveq   #$2F,d0 
		jsr     (a4)
		clr.w   d1
		move.b  -3(a6),d1
		move.b  -1(a6),d2
		lsl.w   #8,d2
		move.b  -2(a6),d2
		bsr.w   ExecuteChurchMenu
		tst.w   d1
		sne     -3(a6)
		move.b  d2,-2(a6)
		rts
loc_1D1EC:
		cmpi.w  #$D,d1
		bne.s   loc_1D204
		move.w  #$7A6,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		rts
loc_1D204:
		cmpi.w  #$16,d1
		bne.s   loc_1D250
		move.w  #$7AA,d6
		move.w  #$28,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D234
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D22E
		move.w  #$50,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #0,d0
		jsr     (a5)
loc_1D22E:
		moveq   #1,d0
		jsr     (a5)
		bra.s   return_1D24E
loc_1D234:
		move.w  #$51,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D24A
		move.w  #$51,d0 
		bsr.w   j_j_SetEventFlag
		moveq   #2,d0
		jsr     (a5)
loc_1D24A:
		moveq   #3,d0
		jsr     (a5)
return_1D24E:
		rts
loc_1D250:
		cmpi.w  #$17,d1
		bne.s   loc_1D278
		move.w  #$7AE,d6
		move.w  #$28,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D272
		moveq   #0,d0
		jsr     (a5)
		move.w  #$201,d0
		bsr.w   sub_18046       
		bra.s   return_1D276
loc_1D272:
		moveq   #3,d0
		jsr     (a5)
return_1D276:
		rts
loc_1D278:
		cmpi.w  #$F,d1
		bne.s   loc_1D298
		move.w  #$7B2,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D292
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1D296
loc_1D292:
		moveq   #1,d0
		jsr     (a5)
return_1D296:
		rts
loc_1D298:
		cmpi.w  #$10,d1
		bne.s   loc_1D2B8
		move.w  #$7B4,d6
		move.w  #$50,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D2B2
		moveq   #0,d0
		jsr     (a5)
		bra.s   return_1D2B6
loc_1D2B2:
		moveq   #1,d0
		jsr     (a5)
return_1D2B6:
		rts
loc_1D2B8:
		move.w  #$78E,d6
		bra.w   sub_180A6

    ; End of function sub_1D152


; =============== S U B R O U T I N E =======================================

sub_1D2C0:
		move.w  #$8A3,d6
		move.l  d0,-(sp)
		move.b  #$6E,d0 
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		cmpi.w  #0,d2
		bne.s   loc_1D2E0
		moveq   #$28,d0 
		jsr     (a4)
		moveq   #0,d0
		jsr     (a5)
		rts
loc_1D2E0:
		cmpi.w  #1,d2
		bne.s   loc_1D2F0
		moveq   #$28,d0 
		jsr     (a4)
		moveq   #1,d0
		jsr     (a5)
		rts
loc_1D2F0:
		cmpi.w  #2,d2
		bne.s   loc_1D300
		moveq   #$28,d0 
		jsr     (a4)
		moveq   #2,d0
		jsr     (a5)
		rts
loc_1D300:
		cmpi.w  #3,d2
		bne.s   loc_1D310
		moveq   #$28,d0 
		jsr     (a4)
		moveq   #3,d0
		jsr     (a5)
		rts
loc_1D310:
		bra.w   sub_180B4

    ; End of function sub_1D2C0


; START OF FUNCTION CHUNK FOR sub_1D152

loc_1D314:
		cmpi.w  #0,d2
		bne.s   loc_1D352
		move.w  #$52,d0 
		bsr.w   j_j_CheckEventFlag
		bne.s   loc_1D352
		move.l  d0,-(sp)
		move.b  #$1C,d0
		bsr.w   sub_17F64       
		move.l  (sp)+,d0
		move.w  d6,-(sp)
		move.w  #$7B6,d6
		moveq   #0,d0
		jsr     (a5)
		move.w  (sp)+,d6
		move.l  d0,-(sp)
		moveq   #$1C,d0
		bsr.w   sub_17FE0       
		movem.l (sp)+,d0
		move.w  #$52,d0 
		bsr.w   j_j_SetEventFlag
		rts
loc_1D352:
		bra.w   sub_18074

; END OF FUNCTION CHUNK FOR sub_1D152


; =============== S U B R O U T I N E =======================================

sub_1D356:
		move.w  d0,-(sp)
		move.w  d1,-(sp)
		move.l  a0,-(sp)
		lea     byte_1D37E(pc), a0
loc_1D360:
		clr.b   d1
		move.b  (a0)+,d1
		bmi.s   loc_1D36E
		cmp.b   d0,d1
		beq.s   loc_1D36E
		addq.l  #1,a0
		bra.s   loc_1D360
loc_1D36E:
		clr.b   d0
		move.b  (a0),d0
		sndCom  SOUND_COMMAND_GET_D0_PARAMETER
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		move.w  (sp)+,d0
		rts

    ; End of function sub_1D356

byte_1D37E:     dc.b 2
		dc.b 3
		dc.b 0
		dc.b $22
		dc.b 4
		dc.b 3
		dc.b 5
		dc.b $22
		dc.b 6
		dc.b 3
		dc.b $D
		dc.b 3
		dc.b 8
		dc.b $18
		dc.b 7
		dc.b 3
		dc.b 9
		dc.b 3
		dc.b $A
		dc.b 3
		dc.b $1D
		dc.b $A
		dc.b $20
		dc.b 3
		dc.b $2A
		dc.b $A
		dc.b $21
		dc.b 3
		dc.b $1F
		dc.b $10
		dc.b $1E
		dc.b 3
		dc.b $22
		dc.b $22
		dc.b $24
		dc.b $A
		dc.b $10
		dc.b 9
		dc.b $E
		dc.b 3
		dc.b $29
		dc.b $21
		dc.b $C
		dc.b 3
		dc.b 3
		dc.b $18
		dc.b $25
		dc.b $A
		dc.b $FF
		dc.b 3
		dc.b $4E
		dc.b $75
pt_BattleExits: dc.l BattleExit0
		dc.l BattleExit1
		dc.l BattleExit2
		dc.l BattleExit3
		dc.l BattleExit4
		dc.l BattleExit5
		dc.l BattleExit6
		dc.l BattleExit7
BattleExit0:    incbin "data/battles/battleexits/battleexit0.bin"
BattleExit1:    incbin "data/battles/battleexits/battleexit1.bin"
BattleExit2:    incbin "data/battles/battleexits/battleexit2.bin"
BattleExit3:    incbin "data/battles/battleexits/battleexit3.bin"
BattleExit4:    incbin "data/battles/battleexits/battleexit4.bin"
BattleExit5:    incbin "data/battles/battleexits/battleexit5.bin"
BattleExit6:    incbin "data/battles/battleexits/battleexit6.bin"
BattleExit7:    incbin "data/battles/battleexits/battleexit7.bin"
BattleChests:   incbin "data/battles/global/battlechests.bin"

; =============== S U B R O U T I N E =======================================

PlayEnding:
		 
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		jsr     (sub_374).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_WaitForVInt).l
		jsr     (j_DisableDisplayAndInterrupts).l
		moveq   #$3F,d0 
		jsr     (j_InitSprites).l
		jsr     (sub_324).l
		move.w  #$8C00,d0
		jsr     (j_SetVdpReg).w
		move.w  #$9010,d0
		jsr     (j_SetVdpReg).w
		move.w  #$8238,d0
		jsr     (j_SetVdpReg).w
		move.w  #$8407,d0
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
loc_1DB04:
		clr.l   (a0)+
		dbf     d7,loc_1DB04
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		jsr     (j_EnableDisplayAndInterrupts).l
		lea     IntroTile15(pc), a3
		jsr     sub_CC02C
		move.w  #$78,d0 
		jsr     (j_Sleep).l
		move.b  #1,((DONT_SEND_SOUND_COMMANDS-$1000000)).w
		jsr     j_LoadEndingCreditsForce
		clr.w   d0
		moveq   #$E,d7
loc_1DB4C:
		movem.w d0/d7,-(sp)
		move.b  d0,((byte_FFCBB3-$1000000)).w
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		jsr     j_WriteEndingCreditsBattlesceneScript
		move.w  d0,-(sp)
		jsr     j_ExecuteBattlesceneScript
		move.w  #$A,d0
		jsr     (j_Sleep).l
		move.w  (sp)+,d0
		lea     (PALETTE_2_CURRENT).l,a0
		lea     (PALETTE_2_BASE).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		lea     pt_IntroTiles(pc), a3
		lsl.w   #2,d0
		movea.l (a3,d0.w),a3
		jsr     sub_CC02C
		move.w  #$104,d0
		jsr     (j_Sleep).l
		movem.w (sp)+,d0/d7
		addq.w  #1,d0
		dbf     d7,loc_1DB4C
		clr.b   ((DONT_SEND_SOUND_COMMANDS-$1000000)).w
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  #3,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_FadeOutToBlack).l
		move.w  #$C8,d0 
		jsr     (j_Sleep).l
		sndCom  MUSIC_ENDING
		jsr     (j_DisableDisplayAndInterrupts).l
		moveq   #$3F,d0 
		jsr     (j_InitSprites).l
		jsr     (sub_324).l
		move.w  #$8C00,d0
		jsr     (j_SetVdpReg).w
		move.w  #$9010,d0
		jsr     (j_SetVdpReg).w
		move.w  #$8238,d0
		jsr     (j_SetVdpReg).w
		move.w  #$8407,d0
		jsr     (j_SetVdpReg).w
		move.w  #$8B03,d0
		jsr     (j_SetVdpReg).w
		move.w  #0,d6
		jsr     (j_UpdateForegroundVScrollData).w
		move.w  #$100,d6
		jsr     (j_UpdateBackgroundVScrollData).w
		jsr     (j_EnableDmaQueueProcessing).w
		movea.l (p_EndingPalette).l,a0
		lea     (PALETTE_1_BASE).l,a1
		lea     (PALETTE_1_CURRENT).l,a2
		moveq   #$3F,d0 
loc_1DC38:
		move.w  (a0)+,(a1)+
		move.w  #0,(a2)+
		dbf     d0,loc_1DC38
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		move.w  #$3FF,d7
loc_1DC4C:
		clr.l   (a0)+
		dbf     d7,loc_1DC4C
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		clr.w   d0
		moveq   #$12,d1
		jsr     j_LoadBattlesceneBackgrounds
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($2000).w,a1
		move.w  #$1800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		lea     ((byte_FFC0C0-$1000000)).w,a0
		lea     (PALETTE_1_BASE).l,a1
		lea     (PALETTE_1_CURRENT).l,a2
		moveq   #7,d7
loc_1DC9C:
		move.l  (a0)+,d0
		move.l  d0,(a1)+
		move.l  d0,(a2)+
		dbf     d7,loc_1DC9C
		movea.l (p_EndingTiles_Max1).l,a0
		lea     ($8000).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movea.l (p_EndingTiles_Adam).l,a0
		lea     ($9200).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movea.l (p_EndingTiles_Farmer).l,a0
		lea     ($9A00).l,a1
		move.w  #$600,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		movea.l (p_EndingTiles_TheEnd).l,a0
		lea     ($6000).w,a1
		move.w  #$600,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		lea     byte_1E37A(pc), a0
		lea     (byte_FFD140).l,a1
		move.w  #$300,d7
		jsr     (j_CopyBytes).l
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		movem.l d7-a1,-(sp)
		lea     word_1E67A(pc), a0
		lea     (SPRITE_32_PROPERTIES).l,a1
		move.w  #$98,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     (j_EnableDisplayAndInterrupts).l
		trap    #5
		move.b  #2,(byte_FFF804).l
		jsr     (j_FadeInFromBlack).l
		move.w  #$5E,d0 ; "Well, hello there.[Delay2][Delay2][Line]You look like you're[Line]a long way from home.[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$5F,d0 ; "We don't see many folk in[Line]full armor like that.[Delay2][Delay2][Delay2][Line]Quite a fancy getup![Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$60,d0 ; "I have come a long way.[Delay2][Delay2][Delay2][Line]Longer than you can[Line]imagine.[Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$61,d0 ; "I must say you do look pretty[Line]tired and, well,[Delay2][Delay2][Line]your things have seen[Line]better days.[Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$62,d0 ; "I'm tired of wandering.[Delay2][Delay2][Line]I'm looking for a place to[Line]settle down and rest.[Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$63,d0 ; "Well, how about right here?[Delay2][Delay2][Line]Lend your hands to the fields[Line]of our village?[Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		moveq   #$33,d7 
loc_1DD9C:
		move.w  d7,-(sp)
		move.w  (HORIZONTAL_SCROLL_DATA).l,d6
		subq.w  #1,d6
		jsr     (j_UpdateForegroundHScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		lea     (SPRITE_32_X).l,a0
		moveq   #$12,d7
loc_1DDBA:
		subq.w  #2,(a0)
		addq.l  #8,a0
		dbf     d7,loc_1DDBA
		jsr     (j_WaitForVInt).l
		move.w  (sp)+,d7
		dbf     d7,loc_1DD9C
		trap    #7
		move.w  #$64,d0 ; "That sounds like just what I[Line]need right now. [Delay2][Delay2][Delay2]I work hard[Line]and I'm a fast learner.[Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$65,d0 ; "Good! We've got a deal then.[Delay2][Delay2][Delay2][Line]Folks in the village will be[Line]excited to see a new face![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$66,d0 ; "I didn't catch your name.[Line]What do they call you?[Delay2][Delay2][Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$67,d0 ; "Me? You can call me...[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		movea.l (p_EndingTiles_Max2).l,a0
		lea     ($8000).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #3,d0
		jsr     (j_Sleep).l
		movea.l (p_EndingTiles_Max3).l,a0
		lea     ($8000).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #$12,d0
		jsr     (j_Sleep).l
		movea.l (p_EndingTiles_Max4).l,a0
		lea     ($8000).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #$5A,d0 
		jsr     (j_Sleep).l
		trap    #6
		lea     byte_1E712(pc), a0
		lea     ($EA40).l,a1
		move.w  #$C0,d0 
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
		move.w  #$21C,d0
		jsr     (j_Sleep).l
		move.b  #$B,(FADING_PALETTE_FLAGS).l
		move.b  #5,(FADING_COUNTER_MAX).l
		move.b  #OUT_TO_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #$5A,d0 
		jsr     (j_Sleep).l
		lea     (PALETTE_1_BASE).l,a0
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		lea     $20(a0),a0
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		move.b  #1,(GAME_COMPLETED).l
		move.w  #$E10,d0
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		jsr     (j_DisableDisplayAndInterrupts).l
		movea.w #$2700,sp
		movea.l (InitStack).w,sp
		movea.l (p_Start).w,a0  
		jmp     (a0)

    ; End of function PlayEnding

pt_IntroTiles:  dc.l IntroTile00
		dc.l IntroTile01
		dc.l IntroTile02
		dc.l IntroTile03
		dc.l IntroTile04
		dc.l IntroTile05
		dc.l IntroTile06
		dc.l IntroTile07
		dc.l IntroTile08
		dc.l IntroTile09
		dc.l IntroTile10
		dc.l IntroTile11
		dc.l IntroTile12
		dc.l IntroTile13
		dc.l IntroTile14
		dc.l IntroTile15
IntroTile00:    incbin "data/graphics/introtiles/introtile00.bin"
IntroTile01:    incbin "data/graphics/introtiles/introtile01.bin"
IntroTile02:    incbin "data/graphics/introtiles/introtile02.bin"
IntroTile03:    incbin "data/graphics/introtiles/introtile03.bin"
IntroTile04:    incbin "data/graphics/introtiles/introtile04.bin"
IntroTile05:    incbin "data/graphics/introtiles/introtile05.bin"
IntroTile06:    incbin "data/graphics/introtiles/introtile06.bin"
IntroTile07:    incbin "data/graphics/introtiles/introtile07.bin"
IntroTile08:    incbin "data/graphics/introtiles/introtile08.bin"
IntroTile09:    incbin "data/graphics/introtiles/introtile09.bin"
IntroTile10:    incbin "data/graphics/introtiles/introtile10.bin"
IntroTile11:    incbin "data/graphics/introtiles/introtile11.bin"
IntroTile12:    incbin "data/graphics/introtiles/introtile12.bin"
IntroTile13:    incbin "data/graphics/introtiles/introtile13.bin"
IntroTile14:    incbin "data/graphics/introtiles/introtile14.bin"
IntroTile15:    incbin "data/graphics/introtiles/introtile15.bin"
byte_1E37A:     dc.b 1
		dc.b 0
		dc.b 1
		dc.b 4
		dc.b 1
		dc.b 8
		dc.b 1
		dc.b $C
		dc.b 1
		dc.b $30
		dc.b 1
		dc.b $34
		dc.b 1
		dc.b $38
		dc.b 1
		dc.b $3C
		dc.b 1
		dc.b $60
		dc.b 1
		dc.b $64
		dc.b 1
		dc.b $68
		dc.b 1
		dc.b $6C
		dc.b 1
		dc.b $90
		dc.b 1
		dc.b $94
		dc.b 1
		dc.b $98
		dc.b 1
		dc.b $9C
		dc.b 1
		dc.b $C0
		dc.b 1
		dc.b $C4
		dc.b 1
		dc.b $C8
		dc.b 1
		dc.b $CC
		dc.b 1
		dc.b $F0
		dc.b 1
		dc.b $F4
		dc.b 1
		dc.b $F8
		dc.b 1
		dc.b $FC
		dc.b 2
		dc.b $20
		dc.b 2
		dc.b $24
		dc.b 2
		dc.b $28
		dc.b 2
		dc.b $2C
		dc.b 2
		dc.b $50
		dc.b 2
		dc.b $54
		dc.b 2
		dc.b $58
		dc.b 2
		dc.b $5C
		dc.b 1
		dc.b 1
		dc.b 1
		dc.b 5
		dc.b 1
		dc.b 9
		dc.b 1
		dc.b $D
		dc.b 1
		dc.b $31
		dc.b 1
		dc.b $35
		dc.b 1
		dc.b $39
		dc.b 1
		dc.b $3D
		dc.b 1
		dc.b $61
		dc.b 1
		dc.b $65
		dc.b 1
		dc.b $69
		dc.b 1
		dc.b $6D
		dc.b 1
		dc.b $91
		dc.b 1
		dc.b $95
		dc.b 1
		dc.b $99
		dc.b 1
		dc.b $9D
		dc.b 1
		dc.b $C1
		dc.b 1
		dc.b $C5
		dc.b 1
		dc.b $C9
		dc.b 1
		dc.b $CD
		dc.b 1
		dc.b $F1
		dc.b 1
		dc.b $F5
		dc.b 1
		dc.b $F9
		dc.b 1
		dc.b $FD
		dc.b 2
		dc.b $21
		dc.b 2
		dc.b $25
		dc.b 2
		dc.b $29
		dc.b 2
		dc.b $2D
		dc.b 2
		dc.b $51
		dc.b 2
		dc.b $55
		dc.b 2
		dc.b $59
		dc.b 2
		dc.b $5D
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 6
		dc.b 1
		dc.b $A
		dc.b 1
		dc.b $E
		dc.b 1
		dc.b $32
		dc.b 1
		dc.b $36
		dc.b 1
		dc.b $3A
		dc.b 1
		dc.b $3E
		dc.b 1
		dc.b $62
		dc.b 1
		dc.b $66
		dc.b 1
		dc.b $6A
		dc.b 1
		dc.b $6E
		dc.b 1
		dc.b $92
		dc.b 1
		dc.b $96
		dc.b 1
		dc.b $9A
		dc.b 1
		dc.b $9E
		dc.b 1
		dc.b $C2
		dc.b 1
		dc.b $C6
		dc.b 1
		dc.b $CA
		dc.b 1
		dc.b $CE
		dc.b 1
		dc.b $F2
		dc.b 1
		dc.b $F6
		dc.b 1
		dc.b $FA
		dc.b 1
		dc.b $FE
		dc.b 2
		dc.b $22
		dc.b 2
		dc.b $26
		dc.b 2
		dc.b $2A
		dc.b 2
		dc.b $2E
		dc.b 2
		dc.b $52
		dc.b 2
		dc.b $56
		dc.b 2
		dc.b $5A
		dc.b 2
		dc.b $5E
		dc.b 1
		dc.b 3
		dc.b 1
		dc.b 7
		dc.b 1
		dc.b $B
		dc.b 1
		dc.b $F
		dc.b 1
		dc.b $33
		dc.b 1
		dc.b $37
		dc.b 1
		dc.b $3B
		dc.b 1
		dc.b $3F
		dc.b 1
		dc.b $63
		dc.b 1
		dc.b $67
		dc.b 1
		dc.b $6B
		dc.b 1
		dc.b $6F
		dc.b 1
		dc.b $93
		dc.b 1
		dc.b $97
		dc.b 1
		dc.b $9B
		dc.b 1
		dc.b $9F
		dc.b 1
		dc.b $C3
		dc.b 1
		dc.b $C7
		dc.b 1
		dc.b $CB
		dc.b 1
		dc.b $CF
		dc.b 1
		dc.b $F3
		dc.b 1
		dc.b $F7
		dc.b 1
		dc.b $FB
		dc.b 1
		dc.b $FF
		dc.b 2
		dc.b $23
		dc.b 2
		dc.b $27
		dc.b 2
		dc.b $2B
		dc.b 2
		dc.b $2F
		dc.b 2
		dc.b $53
		dc.b 2
		dc.b $57
		dc.b 2
		dc.b $5B
		dc.b 2
		dc.b $5F
		dc.b 1
		dc.b $10
		dc.b 1
		dc.b $14
		dc.b 1
		dc.b $18
		dc.b 1
		dc.b $1C
		dc.b 1
		dc.b $40
		dc.b 1
		dc.b $44
		dc.b 1
		dc.b $48
		dc.b 1
		dc.b $4C
		dc.b 1
		dc.b $70
		dc.b 1
		dc.b $74
		dc.b 1
		dc.b $78
		dc.b 1
		dc.b $7C
		dc.b 1
		dc.b $A0
		dc.b 1
		dc.b $A4
		dc.b 1
		dc.b $A8
		dc.b 1
		dc.b $AC
		dc.b 1
		dc.b $D0
		dc.b 1
		dc.b $D4
		dc.b 1
		dc.b $D8
		dc.b 1
		dc.b $DC
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 4
		dc.b 2
		dc.b 8
		dc.b 2
		dc.b $C
		dc.b 2
		dc.b $30
		dc.b 2
		dc.b $34
		dc.b 2
		dc.b $38
		dc.b 2
		dc.b $3C
		dc.b 2
		dc.b $60
		dc.b 2
		dc.b $64
		dc.b 2
		dc.b $68
		dc.b 2
		dc.b $6C
		dc.b 1
		dc.b $11
		dc.b 1
		dc.b $15
		dc.b 1
		dc.b $19
		dc.b 1
		dc.b $1D
		dc.b 1
		dc.b $41
		dc.b 1
		dc.b $45
		dc.b 1
		dc.b $49
		dc.b 1
		dc.b $4D
		dc.b 1
		dc.b $71
		dc.b 1
		dc.b $75
		dc.b 1
		dc.b $79
		dc.b 1
		dc.b $7D
		dc.b 1
		dc.b $A1
		dc.b 1
		dc.b $A5
		dc.b 1
		dc.b $A9
		dc.b 1
		dc.b $AD
		dc.b 1
		dc.b $D1
		dc.b 1
		dc.b $D5
		dc.b 1
		dc.b $D9
		dc.b 1
		dc.b $DD
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 5
		dc.b 2
		dc.b 9
		dc.b 2
		dc.b $D
		dc.b 2
		dc.b $31
		dc.b 2
		dc.b $35
		dc.b 2
		dc.b $39
		dc.b 2
		dc.b $3D
		dc.b 2
		dc.b $61
		dc.b 2
		dc.b $65
		dc.b 2
		dc.b $69
		dc.b 2
		dc.b $6D
		dc.b 1
		dc.b $12
		dc.b 1
		dc.b $16
		dc.b 1
		dc.b $1A
		dc.b 1
		dc.b $1E
		dc.b 1
		dc.b $42
		dc.b 1
		dc.b $46
		dc.b 1
		dc.b $4A
		dc.b 1
		dc.b $4E
		dc.b 1
		dc.b $72
		dc.b 1
		dc.b $76
		dc.b 1
		dc.b $7A
		dc.b 1
		dc.b $7E
		dc.b 1
		dc.b $A2
		dc.b 1
		dc.b $A6
		dc.b 1
		dc.b $AA
		dc.b 1
		dc.b $AE
		dc.b 1
		dc.b $D2
		dc.b 1
		dc.b $D6
		dc.b 1
		dc.b $DA
		dc.b 1
		dc.b $DE
		dc.b 2
		dc.b 2
		dc.b 2
		dc.b 6
		dc.b 2
		dc.b $A
		dc.b 2
		dc.b $E
		dc.b 2
		dc.b $32
		dc.b 2
		dc.b $36
		dc.b 2
		dc.b $3A
		dc.b 2
		dc.b $3E
		dc.b 2
		dc.b $62
		dc.b 2
		dc.b $66
		dc.b 2
		dc.b $6A
		dc.b 2
		dc.b $6E
		dc.b 1
		dc.b $13
		dc.b 1
		dc.b $17
		dc.b 1
		dc.b $1B
		dc.b 1
		dc.b $1F
		dc.b 1
		dc.b $43
		dc.b 1
		dc.b $47
		dc.b 1
		dc.b $4B
		dc.b 1
		dc.b $4F
		dc.b 1
		dc.b $73
		dc.b 1
		dc.b $77
		dc.b 1
		dc.b $7B
		dc.b 1
		dc.b $7F
		dc.b 1
		dc.b $A3
		dc.b 1
		dc.b $A7
		dc.b 1
		dc.b $AB
		dc.b 1
		dc.b $AF
		dc.b 1
		dc.b $D3
		dc.b 1
		dc.b $D7
		dc.b 1
		dc.b $DB
		dc.b 1
		dc.b $DF
		dc.b 2
		dc.b 3
		dc.b 2
		dc.b 7
		dc.b 2
		dc.b $B
		dc.b 2
		dc.b $F
		dc.b 2
		dc.b $33
		dc.b 2
		dc.b $37
		dc.b 2
		dc.b $3B
		dc.b 2
		dc.b $3F
		dc.b 2
		dc.b $63
		dc.b 2
		dc.b $67
		dc.b 2
		dc.b $6B
		dc.b 2
		dc.b $6F
		dc.b 1
		dc.b $20
		dc.b 1
		dc.b $24
		dc.b 1
		dc.b $28
		dc.b 1
		dc.b $2C
		dc.b 1
		dc.b $50
		dc.b 1
		dc.b $54
		dc.b 1
		dc.b $58
		dc.b 1
		dc.b $5C
		dc.b 1
		dc.b $80
		dc.b 1
		dc.b $84
		dc.b 1
		dc.b $88
		dc.b 1
		dc.b $8C
		dc.b 1
		dc.b $B0
		dc.b 1
		dc.b $B4
		dc.b 1
		dc.b $B8
		dc.b 1
		dc.b $BC
		dc.b 1
		dc.b $E0
		dc.b 1
		dc.b $E4
		dc.b 1
		dc.b $E8
		dc.b 1
		dc.b $EC
		dc.b 2
		dc.b $10
		dc.b 2
		dc.b $14
		dc.b 2
		dc.b $18
		dc.b 2
		dc.b $1C
		dc.b 2
		dc.b $40
		dc.b 2
		dc.b $44
		dc.b 2
		dc.b $48
		dc.b 2
		dc.b $4C
		dc.b 2
		dc.b $70
		dc.b 2
		dc.b $74
		dc.b 2
		dc.b $78
		dc.b 2
		dc.b $7C
		dc.b 1
		dc.b $21
		dc.b 1
		dc.b $25
		dc.b 1
		dc.b $29
		dc.b 1
		dc.b $2D
		dc.b 1
		dc.b $51
		dc.b 1
		dc.b $55
		dc.b 1
		dc.b $59
		dc.b 1
		dc.b $5D
		dc.b 1
		dc.b $81
		dc.b 1
		dc.b $85
		dc.b 1
		dc.b $89
		dc.b 1
		dc.b $8D
		dc.b 1
		dc.b $B1
		dc.b 1
		dc.b $B5
		dc.b 1
		dc.b $B9
		dc.b 1
		dc.b $BD
		dc.b 1
		dc.b $E1
		dc.b 1
		dc.b $E5
		dc.b 1
		dc.b $E9
		dc.b 1
		dc.b $ED
		dc.b 2
		dc.b $11
		dc.b 2
		dc.b $15
		dc.b 2
		dc.b $19
		dc.b 2
		dc.b $1D
		dc.b 2
		dc.b $41
		dc.b 2
		dc.b $45
		dc.b 2
		dc.b $49
		dc.b 2
		dc.b $4D
		dc.b 2
		dc.b $71
		dc.b 2
		dc.b $75
		dc.b 2
		dc.b $79
		dc.b 2
		dc.b $7D
		dc.b 1
		dc.b $22
		dc.b 1
		dc.b $26
		dc.b 1
		dc.b $2A
		dc.b 1
		dc.b $2E
		dc.b 1
		dc.b $52
		dc.b 1
		dc.b $56
		dc.b 1
		dc.b $5A
		dc.b 1
		dc.b $5E
		dc.b 1
		dc.b $82
		dc.b 1
		dc.b $86
		dc.b 1
		dc.b $8A
		dc.b 1
		dc.b $8E
		dc.b 1
		dc.b $B2
		dc.b 1
		dc.b $B6
		dc.b 1
		dc.b $BA
		dc.b 1
		dc.b $BE
		dc.b 1
		dc.b $E2
		dc.b 1
		dc.b $E6
		dc.b 1
		dc.b $EA
		dc.b 1
		dc.b $EE
		dc.b 2
		dc.b $12
		dc.b 2
		dc.b $16
		dc.b 2
		dc.b $1A
		dc.b 2
		dc.b $1E
		dc.b 2
		dc.b $42
		dc.b 2
		dc.b $46
		dc.b 2
		dc.b $4A
		dc.b 2
		dc.b $4E
		dc.b 2
		dc.b $72
		dc.b 2
		dc.b $76
		dc.b 2
		dc.b $7A
		dc.b 2
		dc.b $7E
		dc.b 1
		dc.b $23
		dc.b 1
		dc.b $27
		dc.b 1
		dc.b $2B
		dc.b 1
		dc.b $2F
		dc.b 1
		dc.b $53
		dc.b 1
		dc.b $57
		dc.b 1
		dc.b $5B
		dc.b 1
		dc.b $5F
		dc.b 1
		dc.b $83
		dc.b 1
		dc.b $87
		dc.b 1
		dc.b $8B
		dc.b 1
		dc.b $8F
		dc.b 1
		dc.b $B3
		dc.b 1
		dc.b $B7
		dc.b 1
		dc.b $BB
		dc.b 1
		dc.b $BF
		dc.b 1
		dc.b $E3
		dc.b 1
		dc.b $E7
		dc.b 1
		dc.b $EB
		dc.b 1
		dc.b $EF
		dc.b 2
		dc.b $13
		dc.b 2
		dc.b $17
		dc.b 2
		dc.b $1B
		dc.b 2
		dc.b $1F
		dc.b 2
		dc.b $43
		dc.b 2
		dc.b $47
		dc.b 2
		dc.b $4B
		dc.b 2
		dc.b $4F
		dc.b 2
		dc.b $73
		dc.b 2
		dc.b $77
		dc.b 2
		dc.b $7B
		dc.b 2
		dc.b $7F
word_1E67A:     ; sprite properties data
		dc.w $A8
		dc.b $F
		dc.b $21
		dc.w $2400
		dc.w $180
		dc.w $C8
		dc.b $F
		dc.b $22
		dc.w $2410
		dc.w $180
		dc.w $E8
		dc.b $F
		dc.b $23
		dc.w $2420
		dc.w $180
		dc.w $A8
		dc.b $F
		dc.b $24
		dc.w $2430
		dc.w $1A0
		dc.w $C8
		dc.b $F
		dc.b $25
		dc.w $2440
		dc.w $1A0
		dc.w $E8
		dc.b $F
		dc.b $26
		dc.w $2450
		dc.w $1A0
		dc.w $A8
		dc.b $F
		dc.b $27
		dc.w $2460
		dc.w $1C0
		dc.w $C8
		dc.b $F
		dc.b $28
		dc.w $2470
		dc.w $1C0
		dc.w $E8
		dc.b $F
		dc.b $29
		dc.w $2480
		dc.w $1C0
		dc.w $C8
		dc.b $F
		dc.b $2A
		dc.w $6490
		dc.w $140
		dc.w $E8
		dc.b $F
		dc.b $2B
		dc.w $64A0
		dc.w $140
		dc.w $C8
		dc.b $F
		dc.b $2C
		dc.w $64B0
		dc.w $160
		dc.w $E8
		dc.b $F
		dc.b $2D
		dc.w $64C0
		dc.w $160
		dc.w $C8
		dc.b $F
		dc.b $2E
		dc.w $64D0
		dc.w $98
		dc.w $E8
		dc.b $F
		dc.b $2F
		dc.w $64E0
		dc.w $98
		dc.w $C8
		dc.b $F
		dc.b $30
		dc.w $64F0
		dc.w $B8
		dc.w $E8
		dc.b $F
		dc.b $31
		dc.w $6500
		dc.w $B8
		dc.w $C8
		dc.b $F
		dc.b $32
		dc.w $6510
		dc.w $D8
		dc.w $E8
		dc.b $F
		dc.b $33
		dc.w $6520
		dc.w $D8
byte_1E712:     dc.b 0
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
		dc.b $C3
		dc.b 0
		dc.b $C3
		dc.b 1
		dc.b $C3
		dc.b 2
		dc.b $C3
		dc.b 3
		dc.b $C3
		dc.b 4
		dc.b $C3
		dc.b 5
		dc.b $C3
		dc.b 6
		dc.b $C3
		dc.b 7
		dc.b $C3
		dc.b 8
		dc.b $C3
		dc.b 9
		dc.b $C3
		dc.b $A
		dc.b $C3
		dc.b $B
		dc.b $C3
		dc.b $C
		dc.b $C3
		dc.b $D
		dc.b $C3
		dc.b $E
		dc.b $C3
		dc.b $F
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
		dc.b $C3
		dc.b $10
		dc.b $C3
		dc.b $11
		dc.b $C3
		dc.b $12
		dc.b $C3
		dc.b $13
		dc.b $C3
		dc.b $14
		dc.b $C3
		dc.b $15
		dc.b $C3
		dc.b $16
		dc.b $C3
		dc.b $17
		dc.b $C3
		dc.b $18
		dc.b $C3
		dc.b $19
		dc.b $C3
		dc.b $1A
		dc.b $C3
		dc.b $1B
		dc.b $C3
		dc.b $1C
		dc.b $C3
		dc.b $1D
		dc.b $C3
		dc.b $1E
		dc.b $C3
		dc.b $1F
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
		dc.b $C3
		dc.b $20
		dc.b $C3
		dc.b $21
		dc.b $C3
		dc.b $22
		dc.b $C3
		dc.b $23
		dc.b $C3
		dc.b $24
		dc.b $C3
		dc.b $25
		dc.b $C3
		dc.b $26
		dc.b $C3
		dc.b $27
		dc.b $C3
		dc.b $28
		dc.b $C3
		dc.b $29
		dc.b $C3
		dc.b $2A
		dc.b $C3
		dc.b $2B
		dc.b $C3
		dc.b $2C
		dc.b $C3
		dc.b $2D
		dc.b $C3
		dc.b $2E
		dc.b $C3
		dc.b $2F
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
		dc.b $C3
		dc.b $30
		dc.b $C3
		dc.b $31
		dc.b $C3
		dc.b $32
		dc.b $C3
		dc.b $33
		dc.b $C3
		dc.b $34
		dc.b $C3
		dc.b $35
		dc.b $C3
		dc.b $36
		dc.b $C3
		dc.b $37
		dc.b $C3
		dc.b $38
		dc.b $C3
		dc.b $39
		dc.b $C3
		dc.b $3A
		dc.b $C3
		dc.b $3B
		dc.b $C3
		dc.b $3C
		dc.b $C3
		dc.b $3D
		dc.b $C3
		dc.b $3E
		dc.b $C3
		dc.b $3F
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
		dc.b $C3
		dc.b $40
		dc.b $C3
		dc.b $41
		dc.b $C3
		dc.b $42
		dc.b $C3
		dc.b $43
		dc.b $C3
		dc.b $44
		dc.b $C3
		dc.b $45
		dc.b $C3
		dc.b $46
		dc.b $C3
		dc.b $47
		dc.b $C3
		dc.b $48
		dc.b $C3
		dc.b $49
		dc.b $C3
		dc.b $4A
		dc.b $C3
		dc.b $4B
		dc.b $C3
		dc.b $4C
		dc.b $C3
		dc.b $4D
		dc.b $C3
		dc.b $4E
		dc.b $C3
		dc.b $4F
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
		dc.b $C3
		dc.b $50
		dc.b $C3
		dc.b $51
		dc.b $C3
		dc.b $52
		dc.b $C3
		dc.b $53
		dc.b $C3
		dc.b $54
		dc.b $C3
		dc.b $55
		dc.b $C3
		dc.b $56
		dc.b $C3
		dc.b $57
		dc.b $C3
		dc.b $58
		dc.b $C3
		dc.b $59
		dc.b $C3
		dc.b $5A
		dc.b $C3
		dc.b $5B
		dc.b $C3
		dc.b $5C
		dc.b $C3
		dc.b $5D
		dc.b $C3
		dc.b $5E
		dc.b $C3
		dc.b $5F
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
TextBankTreesPointers:
		incbin "data/scripting/text/huffmantreeoffsets.bin"
TextBankTreeData:
		incbin "data/scripting/text/huffmantrees.bin"

; =============== S U B R O U T I N E =======================================

; Initialize Huffman decoder
; - clear Huffman (script) data
; - set starting tree

InitDecoder:
		move.b  #$C0,(DECODED_TEXT_SYMBOL).l
		clr.w   (STRING_BIT_COUNTER).l
		clr.w   (STRING_BYTE).l
		rts

    ; End of function InitDecoder


; =============== S U B R O U T I N E =======================================

HuffmanDecode:
		
		movem.l d1-d7/a1-a3,-(sp)
		lea     (STRING_BIT_COUNTER).l,a3
		move.w  (a3),d6         ; huffman length : current progress in reading current barrel
		move.w  -2(a3),d7       ; huffman barrel : current compressed string byte to read
		clr.w   d1
		move.b  -$D3(a3),d1     ; Get last decoded text symbol -> huffman tree to use
		add.w   d1,d1
		lea     TextBankTreesPointers(pc), a1
		move.w  (a1,d1.w),d1    ; get tree offset
		lea     TextBankTreeData(pc), a1
		adda.w  d1,a1
		movea.l a1,a2           ; a1 = a2 = current tree start address
		clr.w   d3              ; clear Huffman tree bit counter
		clr.w   d5              ; clear skipped symbols counter
loc_1F022:
		dbf     d3,loc_1F02A    
		moveq   #7,d3
		move.b  (a1)+,d2        ; Load next Huffman tree byte
loc_1F02A:
		add.b   d2,d2           ; Get next Huffman tree bit into Carry
		bcs.s   loc_1F054       ; C = 1 --> Leaf node, go get symbol
														; C = 0 --> Non-leaf node, read next string bit
														; 
		dbf     d6,loc_1F036    
		moveq   #7,d6
		move.b  (a0)+,d7        ; Load next compressed string byte
loc_1F036:
		add.b   d7,d7           ; Get next compressed string bit into Carry
		bcc.s   loc_1F022       ; C = 0 --> Travel left, go get next Huffman tree bit
														; C = 1 --> Travel right, count left side symbols to skip
		clr.w   d4              ; Clear non-leaf node counter
loc_1F03C:
		dbf     d3,loc_1F044    ; count left sub-tree symbols to skip
		moveq   #7,d3
		move.b  (a1)+,d2        ; Load next huffman tree byte
loc_1F044:
		add.b   d2,d2           ; Get next Huffman tree bit into Carry
		bcs.s   loc_1F04C       ; C = 1 --> leaf-node, go add one symbol to skip
														; C = 0 --> non-leaf node, add one node to read
		addq.w  #1,d4           ; increment non-leaf node counter
		bra.s   loc_1F03C       
loc_1F04C:
		subq.w  #1,d5           ; increment skipped symbols counter
		dbf     d4,loc_1F03C    ; Continue until all nodes in left subtree exhausted
		bra.s   loc_1F022       ; Examine next tree node
loc_1F054:
		move.b  -1(a2,d5.w),d0  ; Load decoded symbol
		move.w  d6,(a3)         ; save current string bit counter
		move.w  d7,-2(a3)       ; save current string byte
		move.b  d0,-$D3(a3)     ; save decoded symbol
		movem.l (sp)+,d1-d7/a1-a3
		rts

    ; End of function HuffmanDecode

		align $8000
