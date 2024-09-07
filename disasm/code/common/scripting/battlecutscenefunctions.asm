
; ASM FILE code\common\scripting\battlecutscenefunctions.asm :
; 0x12BF42..0x12C7B0 : Battle-related cutscene functions

; =============== S U B R O U T I N E =======================================

sub_12BF42:
		move.w  (SPRITE_22_X).l,d6
		lsr.w   #3,d6
		subi.w  #$1F,d6
		lsl.w   #8,d6
		move.w  (SPRITE_22_PROPERTIES).l,d7
		lsr.w   #3,d7
		subi.w  #$1C,d7
		andi.w  #$FF,d7
		or.w    d6,d7
		add.w   d7,d1
		rts

    ; End of function sub_12BF42


; =============== S U B R O U T I N E =======================================

sub_12BF66:
		movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.w   d0
		rts

    ; End of function sub_12BF66


; =============== S U B R O U T I N E =======================================

sub_12BF7C:
		movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #-2,d0
		rts

    ; End of function sub_12BF7C


; =============== S U B R O U T I N E =======================================

sub_12BF92:
		clr.w   d0
		move.b  ((CURRENT_MAP_VERSION-$1000000)).w,d0
		bpl.s   loc_12BFA0
		move.l  (sp)+,d0
		bra.w   sub_12C480
loc_12BFA0:
		clr.w   d1
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d1
		subq.w  #1,d1
		add.b   byte_12BFAE(pc,d1.w),d0
		rts

    ; End of function sub_12BF92

byte_12BFAE:    dc.b 0
		dc.b 4
		dc.b 8
		dc.b $B
		dc.b $E
		dc.b $11
		dc.b $15
		dc.b $19

; =============== S U B R O U T I N E =======================================

FindEntityForCutscene:
		
		clr.w   d0
		moveq   #COMBATANT_ENTRIES_COUNTER,d7
loc_12BFBA:
		jsr     j_GetEntity
		cmp.b   d2,d1
		beq.w   return_12BFCE
		addq.w  #1,d0
		dbf     d7,loc_12BFBA
                
		moveq   #-1,d0
return_12BFCE:
		
		rts

    ; End of function FindEntityForCutscene


; =============== S U B R O U T I N E =======================================

; CCR zero-bit set if true

WasEntityKilledByLastAttack:
		
		moveq   #COMBATANT_ENTRIES_COUNTER,d7
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a0
@Loop:
		move.w  (a0)+,d0
		bmi.w   @Return
		jsr     j_GetEntity
		cmp.b   d1,d2
		beq.w   @Return
		dbf     d7,@Loop
                
		moveq   #-1,d0
@Return:
		rts

    ; End of function WasEntityKilledByLastAttack


; =============== S U B R O U T I N E =======================================

sub_12BFF0:
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (SPRITE_22_PROPERTIES).l,a0
		adda.w  d7,a0
		moveq   #1,d1
		moveq   #1,d2
		moveq   #$1D,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #3,d2
		moveq   #9,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #5,d2
		moveq   #4,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #9,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #$13,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #30,d0
		jmp     (j_Sleep).l

    ; End of function sub_12BFF0


; =============== S U B R O U T I N E =======================================

sub_12C036:
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (SPRITE_22_PROPERTIES).l,a0
		adda.w  d7,a0
		moveq   #1,d1
		moveq   #$13,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #9,d2
		moveq   #2,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #5,d2
		moveq   #4,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #3,d2
		moveq   #9,d7
		bsr.w   sub_12C080
		moveq   #1,d1
		moveq   #1,d2
		moveq   #$1D,d7
		bsr.w   sub_12C080
		eori.w  #$100,(a0)
		moveq   #30,d0
		jmp     (j_Sleep).l

    ; End of function sub_12C036


; =============== S U B R O U T I N E =======================================

sub_12C080:
		eori.w  #$100,(a0)
		move.w  d1,d0
		jsr     (j_Sleep).l
		eori.w  #$100,(a0)
		move.w  d2,d0
		jsr     (j_Sleep).l
		dbf     d7,sub_12C080
                
		rts

    ; End of function sub_12C080


; =============== S U B R O U T I N E =======================================

sub_12C09E:
		movem.w d0-d2,-(sp)
		bsr.w   sub_12C2BE
		movem.w (sp)+,d0-d2
		moveq   #1,d6
		bra.s   loc_12C0BC
loc_12C0AE:
		movem.w d0-d2,-(sp)
		bsr.w   sub_12C2DC
		movem.w (sp)+,d0-d2
		clr.w   d6
loc_12C0BC:
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (SPRITE_22_PROPERTIES).l,a0
		adda.w  d7,a0
		move.w  d1,-(sp)
		jsr     j_GetCombatantX
		move.w  d1,d4
		jsr     j_GetCombatantY
		move.w  d1,d5
		move.w  (sp)+,d1
		movem.w d0/d4-d5,-(sp)
loc_12C0E0:
		move.w  ((word_FFB7C6-$1000000)).w,d7
		add.w   d7,d7
		lea     word_12C172(pc), a1
		move.w  (a1,d7.w),d7
loc_12C0EE:
		move.w  d2,d3
		andi.w  #3,d3
		lsl.w   #2,d3
		move.w  ((word_FFB7C6-$1000000)).w,d4
		lsl.w   #4,d4
		add.w   d4,d3
		move.w  word_12C17A(pc,d3.w),d4
		add.w   d4,6(a0)
		move.w  word_12C17C(pc,d3.w),d4
		add.w   d4,(a0)
		tst.b   d6
		beq.s   loc_12C118
		bclr    #5,4(a0)
		bra.s   loc_12C11E
loc_12C118:
		bset    #5,4(a0)
loc_12C11E:
		move.w  d0,d4
		mulu.w  #$12,d4
		btst    #2,d7
		beq.s   loc_12C130
		addi.w  #$100,d4
		bra.s   loc_12C134
loc_12C130:
		addi.w  #$109,d4
loc_12C134:
		andi.w  #$F800,4(a0)
		or.w    d4,4(a0)
		jsr     (j_WaitForVInt).l
		dbf     d7,loc_12C0EE
		dbf     d1,loc_12C0E0
                
		movem.w (sp)+,d0/d4-d5
		move.w  d2,d3
		andi.w  #3,d3
		lsl.w   #2,d3
		add.w   word_12C17A(pc,d3.w),d4
		add.w   word_12C17C(pc,d3.w),d5
		move.w  d4,d1
		jsr     j_SetCombatantX
		move.w  d5,d1
		jsr     j_SetCombatantY
		rts

    ; End of function sub_12C09E

word_12C172:    dc.w $17
		dc.w $B
		dc.w 5
		dc.w 0
word_12C17A:    dc.w 0
word_12C17C:    dc.w $FFFF
		dc.w 1
		dc.w 0
		dc.w 0
		dc.w 1
		dc.w $FFFF
		dc.w 0
		dc.w 0
		dc.w $FFFE
		dc.w 2
		dc.w 0
		dc.w 0
		dc.w 2
		dc.w $FFFE
		dc.w 0
		dc.w 0
		dc.w $FFFC
		dc.w 4
		dc.w 0
		dc.w 0
		dc.w 4
		dc.w $FFFC
		dc.w 0
		dc.w 0
		dc.w $FFF4
		dc.w $C
		dc.w 0
		dc.w 0
		dc.w $C
		dc.w $FFF4
		dc.w 0

; =============== S U B R O U T I N E =======================================

KillChosenEnemies:
		
		moveq   #COMBATANT_ENTRIES_COUNTER,d7
		clr.w   d0
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a0
@PopulateKillList_Loop:
		
		jsr     j_GetEntity
		cmpi.b  #-1,d1          ; test for null entity
		beq.w   @NextEntity
		tst.b   d1              ; test for ally entity
		bpl.s   @NextEntity
		cmpi.w  #-1,d2
		beq.s   @AddToKillList
		cmp.w   d1,d2
		bne.s   @NextEntity
@AddToKillList:
		
		move.w  d0,(a0)+
@NextEntity:
		addq.w  #1,d0
		dbf     d7,@PopulateKillList_Loop
                
		move.w  #-1,(a0)
return_12C1EA:
		
		rts

    ; End of function KillChosenEnemies


; =============== S U B R O U T I N E =======================================

sub_12C1EC:
		tst.b   d2
		bmi.s   return_12C1EA
		move.w  d2,d7
		andi.w  #3,d7
		add.w   d7,d7
		move.w  off_12C200(pc,d7.w),d7
		jmp     off_12C200(pc,d7.w)

    ; End of function sub_12C1EC

off_12C200:     dc.w sub_12C21C-off_12C200
		dc.w sub_12C224-off_12C200
		dc.w sub_12C208-off_12C200
		dc.w sub_12C2B4-off_12C200

; =============== S U B R O U T I N E =======================================

sub_12C208:
		movea.l (p_pt_MapSprites).l,a0
loc_12C20E:
		move.w  d1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jmp     (sub_300).l

    ; End of function sub_12C208


; =============== S U B R O U T I N E =======================================

sub_12C21C:
		movea.l (p_pt_MapSprites+8).l,a0; mapsprite_Back table
		bra.s   loc_12C20E

    ; End of function sub_12C21C


; =============== S U B R O U T I N E =======================================

sub_12C224:
		bsr.w   sub_12C2B4
		lea     (FF3000_LOADING_SPACE).l,a0
		moveq   #1,d6
loc_12C230:
		movea.l a0,a1
		adda.l  #$300,a1
		moveq   #$17,d7
loc_12C23A:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_12C23A
                
		movea.l a0,a1
		adda.l  #$240,a1
		moveq   #$17,d7
loc_12C25A:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_12C25A
                
		movea.l a0,a1
		adda.l  #$180,a1
		moveq   #$17,d7
loc_12C27A:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_12C27A
		dbf     d6,loc_12C230
                
		movem.l d7-a1,-(sp)
		lea     (byte_FF3240).l,a0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$240,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		rts

    ; End of function sub_12C224


; =============== S U B R O U T I N E =======================================

sub_12C2B4:
		movea.l (p_pt_MapSprites+4).l,a0; mapsprite_Side table
		bra.w   loc_12C20E

    ; End of function sub_12C2B4


; =============== S U B R O U T I N E =======================================

sub_12C2BE:
		move.w  d0,-(sp)
		move.w  d3,d1
		jsr     sub_12C1EC(pc)
		move.w  (sp)+,d0
		move.w  d0,d7
		lsl.w   #3,d7
		lea     (SPRITE_22_PROPERTIES).l,a0
		adda.w  d7,a0
		bclr    #5,4(a0)
		bra.s   loc_12C2EA

    ; End of function sub_12C2BE


; =============== S U B R O U T I N E =======================================

sub_12C2DC:
		move.w  d0,-(sp)
		jsr     j_GetMapSpriteForCombatant
		jsr     sub_12C1EC(pc)
		move.w  (sp)+,d0
loc_12C2EA:
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  d0,d7
		lsl.w   #3,d0
		add.w   d7,d0
		add.w   d0,d0
		addi.w  #$100,d0
		lsl.w   #5,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_WaitForDmaQueueProcessing).l

    ; End of function sub_12C2DC


; =============== S U B R O U T I N E =======================================

sub_12C312:
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		move.w  (HORIZONTAL_SCROLL_DATA).l,(a0)+
		move.w  (HORIZONTAL_SCROLL_DATA+2).l,(a0)+
		move.w  (VERTICAL_SCROLL_DATA).l,(a0)+
		move.w  (VERTICAL_SCROLL_DATA+2).l,(a0)+
		moveq   #$3F,d7 
		lea     (SPRITE_00_PROPERTIES).l,a1
loc_12C336:
		move.w  (a1)+,(a0)+
		addq.l  #4,a1
		move.w  (a1)+,(a0)+
		dbf     d7,loc_12C336
                
		rts

    ; End of function sub_12C312


; =============== S U B R O U T I N E =======================================

; Get mapsprite (used in cutscenes.)

sub_12C342:
		move.w  d0,-(sp)
		move.w  d2,d0
		jsr     j_GetMapSprite
		move.w  (sp)+,d0

    ; End of function sub_12C342


; =============== S U B R O U T I N E =======================================

SetSpeechSfxForCutscene:
		
		move.w  d1,-(sp)
		move.l  a0,-(sp)
		movea.l (p_table_MapspriteSpeechSfx).l,a0
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d1
		addi.w  #SFX_DIALOG_BLEEP_1,d1
		move.w  d1,((SPEECH_SFX-$1000000)).w
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		rts

    ; End of function SetSpeechSfxForCutscene


; =============== S U B R O U T I N E =======================================

sub_12C36E:
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		move.w  (a0)+,d2
		move.w  (a0)+,d3
		move.w  ((CURRENT_OBJECT-$1000000)).w,d6
		lsr.w   #3,d6
		move.w  d6,d5
		lsr.w   #1,d5
		jsr     (j_GenerateRandomNumber).l
		sub.w   d5,d7
		move.w  d0,d4
		add.w   d7,d4
		move.w  d4,(HORIZONTAL_SCROLL_DATA).l
		move.w  d1,d4
		add.w   d7,d4
		move.w  d4,(HORIZONTAL_SCROLL_DATA+2).l
		moveq   #$3F,d0 
		lea     ((word_FFB5CA-$1000000)).w,a0
		lea     (SPRITE_00_X).l,a1
loc_12C3AC:
		move.w  (a0)+,d4
		add.w   d7,d4
		move.w  d4,(a1)+
		addq.l  #2,a0
		addq.l  #6,a1
		dbf     d0,loc_12C3AC
                
		jsr     (j_GenerateRandomNumber).l
		sub.w   d5,d7
		move.w  d2,d4
		add.w   d7,d4
		move.w  d4,(VERTICAL_SCROLL_DATA).l
		move.w  d3,d4
		add.w   d7,d4
		move.w  d4,(VERTICAL_SCROLL_DATA+2).l
		moveq   #$3F,d0 
		lea     ((word_FFB5C8-$1000000)).w,a0
		lea     (SPRITE_00_PROPERTIES).l,a1
loc_12C3E2:
		move.w  (a0)+,d4
		add.w   d7,d4
		move.w  d4,(a1)+
		addq.l  #2,a0
		addq.l  #6,a1
		dbf     d0,loc_12C3E2
                
		jsr     (j_UpdateVdpHScrollData).l
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		rts

    ; End of function sub_12C36E


; =============== S U B R O U T I N E =======================================

sub_12C404:
		move.l  a0,-(sp)
		clr.w   d0
		move.b  ((byte_FFB4C5-$1000000)).w,d0
		jsr     sub_80B4
		move.b  ((byte_FFB4C5-$1000000)).w,d0
		move.b  d0,((byte_FFB4D3-$1000000)).w
		jsr     (j_WaitForVInt).l
		jsr     j_UpdateBattlefieldSprites
		movea.l (sp)+,a0
loc_12C428:
		move.b  #1,((byte_FFB4D4-$1000000)).w
		jsr     sub_80B0
		move.w  d0,-(sp)
		jsr     (j_WaitForVInt).l
		move.w  (sp)+,d0
		cmpi.b  #3,d0
		bls.s   loc_12C428
		rts

    ; End of function sub_12C404


; =============== S U B R O U T I N E =======================================

; Pelle joins the Force.

sub_12C446:
		movem.l d0-d1/d6,-(sp)
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_JoinForce
		jsr     j_ResetCombatants
		clr.w   ((SPEECH_SFX-$1000000)).w
		clearTxt
		jsr     (j_WaitForVInt).l
		sndCom  MUSIC_JOIN
		txt     919             ; "([Name] joins the[Line]Shining Force!)"
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.l (sp)+,d0-d1/d6
		rts

    ; End of function sub_12C446


; =============== S U B R O U T I N E =======================================

sub_12C480:
		move.w  #1,((word_FFB7C6-$1000000)).w
		moveq   #$38,d0 
		moveq   #-1,d1
		jsr     (sub_37C).l
		ext.w   d2
		add.w   d2,d2
		move.w  off_12C49C(pc,d2.w),d2
		jmp     off_12C49C(pc,d2.w)

    ; End of function sub_12C480

off_12C49C:     dc.w nullsub_2-off_12C49C
		dc.w sub_12C4AA-off_12C49C
		dc.w sub_12C524-off_12C49C
		dc.w sub_12C59C-off_12C49C
		dc.w sub_12C608-off_12C49C
		dc.w sub_12C678-off_12C49C

; =============== S U B R O U T I N E =======================================

nullsub_2:
		rts

    ; End of function nullsub_2


; =============== S U B R O U T I N E =======================================

sub_12C4AA:
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12C4F6
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		lea     unk_12C508(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C4F6:
		moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12C4AA

unk_12C508:     dc.b   2
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12C524:
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12C570
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		lea     unk_12C582(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C570:
		moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #0,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12C524

unk_12C582:     dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12C59C:
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12C5E8
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		lea     byte_12C5FA(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C5E8:
		moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12C59C

byte_12C5FA:    dc.b 2
		dc.b 2
		dc.b 2
		dc.b 2
		dc.b 2
		dc.b 2
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 1
		dc.b 1
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12C608:
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12C654
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		lea     unk_12C666(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C654:
		moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12C608

unk_12C666:     dc.b   1
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12C678:
		moveq   #$38,d0 
		jsr     (sub_384).l
		sndCom  MUSIC_RISE_OF_THE_CASTLE
		moveq   #20,d0
		jsr     (j_Sleep).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     j_LoadCursorTiles
		move.w  #5,d1
		move.w  #$A,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #80,d0
		jsr     (j_Sleep).l
		moveq   #$F,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #80,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #80,d0
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #80,d0
		jsr     (j_Sleep).l
		moveq   #0,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12C74C:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12C74C
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #60,d0
		jsr     (j_Sleep).l
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12C7AA
		bsr.w   sub_12C342      
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
byte_12C7AA:
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		rts

    ; End of function sub_12C678

