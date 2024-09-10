
; ASM FILE code\gameflow\battle\battlesceneengine.asm :
; 0x12407C..0x12647E : Battle scene engine

; =============== S U B R O U T I N E =======================================

sub_12407C:
		jsr     sub_8028

    ; End of function sub_12407C


; =============== S U B R O U T I N E =======================================

ExecuteBattlesceneScript:
		
		                module
		lea     ((BATTLE_SCENE_ACTORS-$1000000)).w,a6
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a5
		clr.b   ((byte_FFB5BB-$1000000)).w
		move.w  #-1,(a5)
@Loop:
		move.w  (a6)+,d0
		cmpi.w  #-1,d0
		beq.w   @End
		add.w   d0,d0
		move.w  rjt_BattlesceneScriptCommands(pc,d0.w),d0
		jsr     rjt_BattlesceneScriptCommands(pc,d0.w)
		bra.s   @Loop
rjt_BattlesceneScriptCommands:
		
		dc.w bsc00_-rjt_BattlesceneScriptCommands
		dc.w bsc01_-rjt_BattlesceneScriptCommands
		dc.w bsc02_-rjt_BattlesceneScriptCommands
		dc.w bsc03_-rjt_BattlesceneScriptCommands
		dc.w bsc04_-rjt_BattlesceneScriptCommands
		dc.w bsc01_-rjt_BattlesceneScriptCommands
		dc.w bsc02_-rjt_BattlesceneScriptCommands
		dc.w bsc07_-rjt_BattlesceneScriptCommands
		dc.w bsc08_-rjt_BattlesceneScriptCommands
		dc.w bsc09_executeAllyReaction-rjt_BattlesceneScriptCommands
		dc.w bsc10_executeEnemyReaction-rjt_BattlesceneScriptCommands
		dc.w bsc11_giveEXP-rjt_BattlesceneScriptCommands
		dc.w bsc12_-rjt_BattlesceneScriptCommands
		dc.w bsc13_-rjt_BattlesceneScriptCommands
		dc.w bsc14_-rjt_BattlesceneScriptCommands
		dc.w bsc15_displayMessage-rjt_BattlesceneScriptCommands
		dc.w bsc16_-rjt_BattlesceneScriptCommands
		dc.w bsc17_-rjt_BattlesceneScriptCommands
		dc.w bsc18_displayMessageWithNoWait-rjt_BattlesceneScriptCommands
@End:
		clr.w   d0
		rts
                modend

    ; End of function ExecuteBattlesceneScript


; =============== S U B R O U T I N E =======================================

bsc00_:
		move.w  (a6)+,d0
		move.w  d0,((BATTLESCENE_ENEMY-$1000000)).w
		jsr     j_GetBattlespritePaletteAndAnimationIndexes
		move.w  d1,((ENEMY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ENEMY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ENEMY_BATTLE_ANIMATION-$1000000)).w
		move.w  (a6)+,d0
		move.w  d0,((BATTLESCENE_ALLY-$1000000)).w
		jsr     j_GetBattlespritePaletteAndAnimationIndexes
		move.w  d1,((ALLY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ALLY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ALLY_BATTLE_ANIMATION-$1000000)).w
		jsr     j_GetEquippedWeaponIndex
		move.w  d2,((WEAPONSPRITE_INDEX-$1000000)).w
		move.w  d3,((WEAPONSPRITE_PALETTE-$1000000)).w
		move.w  #100,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
		move.w  #101,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_WaitForVInt).l
		sndCom  MUSIC_ATTACK
		jsr     (j_DisableDisplayAndInterrupts).w
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #2047,d0
loc_124144:
		clr.l   (a0)+
		dbf     d0,loc_124144
                
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($5000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($7000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($9000).l,a1
		move.w  #$E00,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
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
		lea     tiles_BackgroundTransition1(pc), a0
		nop
		lea     (PALETTE_1_CURRENT).l,a2
		moveq   #63,d0
loc_1241E6:
		move.w  #0,(a2)+
		dbf     d0,loc_1241E6
                
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		move.w  #1023,d7
loc_1241F8:
		clr.l   (a0)+
		dbf     d7,loc_1241F8
                
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		bpl.s   loc_124220
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
loc_124220:
		jsr     j_GetTerrainBackgrounds
		bsr.w   LoadBattlesceneBackgrounds
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($2000).w,a1
		move.w  #$1800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		lea     ((byte_FFC0C0-$1000000)).w,a0
		lea     (PALETTE_1_BASE).l,a1
		lea     (PALETTE_1_CURRENT).l,a2
		moveq   #7,d7
loc_124252:
		move.l  (a0)+,d0
		move.l  d0,(a1)+
		move.l  d0,(a2)+
		dbf     d7,loc_124252
                
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		bpl.s   loc_124266
		clr.w   d0
		bra.s   loc_12426E
loc_124266:
		jsr     sub_2032C
		move.w  d1,d0
loc_12426E:
		jsr     LoadPlatform
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($AC00).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		lea     tiles_BattlesceneStatusEffects(pc), a0
		lea     ($F800).l,a1
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		move.b  #$30,((word_FFBC8A-$1000000)).w 
		move.b  #$20,((word_FFBC8A+1-$1000000)).w 
		move.b  #$40,((word_FFBC8C-$1000000)).w 
		move.b  #$20,((word_FFBC8C+1-$1000000)).w 
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_12430C
		clr.w   d1
		move.w  ((ENEMY_BATTLE_SPRITE-$1000000)).w,d0
		bsr.w   sub_1262A8
		lea     ($5000).w,a1
		move.w  #$C00,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		move.w  ((ENEMY_BATTLE_SPRITE-$1000000)).w,d0
		moveq   #1,d1
		bsr.w   sub_1262A8
		lea     ($6800).w,a1
		move.w  #$C00,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		move.w  ((ENEMY_BATTLE_SPRITE-$1000000)).w,d0
		move.w  ((ENEMY_BATTLE_PALETTE-$1000000)).w,d1
		bsr.w   sub_126284
		bsr.w   sub_1244CA
loc_12430C:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.w   loc_1243CE
		clr.w   d1
		move.w  ((ALLY_BATTLE_SPRITE-$1000000)).w,d0
		bsr.w   LoadAllyBattlesprite
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($8000).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		move.w  ((ALLY_BATTLE_SPRITE-$1000000)).w,d0
		moveq   #1,d1
		bsr.w   LoadAllyBattlesprite
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($9200).l,a1
		move.w  #$900,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).w
		move.w  ((ALLY_BATTLE_SPRITE-$1000000)).w,d0
		move.w  ((ALLY_BATTLE_PALETTE-$1000000)).w,d1
		bsr.w   sub_1262CE
		bsr.w   sub_124516
		move.w  ((WEAPONSPRITE_INDEX-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_1243CE
		bsr.w   LoadWeaponsprite
		move.w  ((ALLY_BATTLE_ANIMATION-$1000000)).w,d0
		movea.l (p_pt_AllyAnimations).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.l  #4,a0
		move.w  (a0)+,((word_FFB544-$1000000)).w
		move.w  ((word_FFB544-$1000000)).w,((WEAPONSPRITE_VARIATION-$1000000)).w
		move.w  (a0)+,((word_FFB546-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((WEAPONSPRITE_VARIATION-$1000000)).w,d0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		move.w  ((WEAPONSPRITE_PALETTE-$1000000)).w,d0
		bsr.w   LoadWeaponPalette
loc_1243CE:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_1243DE
		jsr     sub_8014
loc_1243DE:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_1243EE
		jsr     sub_8018
loc_1243EE:
		lea     byte_12570A(pc), a0
		lea     (byte_FFD1C0).l,a1
		move.w  #768,d7
		jsr     (j_CopyBytes).l
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		jsr     (j_EnableDisplayAndInterrupts).w
		moveq   #-32,d6
		bsr.w   sub_1251A0
		moveq   #32,d6
		jsr     (j_UpdateBackgroundHScrollData).w
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,((ENEMY_BATTLESPRITE_ANIMATION_COUNTER-$1000000)).w
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,((ALLY_BATTLESPRITE_ANIMATION_COUNTER-$1000000)).w
		move.l  #VInt_UpdateBattlesceneGraphics,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.b  #10,((byte_FFB4D2-$1000000)).w
		clr.w   d1
		bsr.w   sub_125FB4
		bsr.w   sub_126100
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #-32,d6
		moveq   #32,d7
loc_12446E:
		movem.l d6-d7,-(sp)
		clr.w   d1
		move.w  d6,d1
		neg.w   d1
		asl.w   #8,d1
		moveq   #$F,d0
		movem.w d0-d1,-(sp)
		bsr.w   sub_125352
		movem.w (sp)+,d0-d1
		bsr.w   sub_1253CC
		movem.w d0-d1/d6,-(sp)
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		jsr     j_GetPortraitForCombatant
		cmpi.w  #PORTRAIT_DARK_DRAGON,d1
		bne.s   loc_1244A2
		clr.w   d6
loc_1244A2:
		jsr     (j_UpdateBackgroundHScrollData).w
		movem.w (sp)+,d0-d1/d6
		asr.w   #1,d6
		bsr.w   sub_1251A0
		jsr     (j_WaitForDmaQueueProcessing).w
		movem.l (sp)+,d6-d7
		addq.w  #1,d6
		dbf     d7,loc_12446E
                
		move.w  #60,d0
		jsr     (j_Sleep).l
		rts

    ; End of function bsc00_


; =============== S U B R O U T I N E =======================================

sub_1244CA:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		jsr     j_GetStatusEffectsForCombatant
		movem.w d1,-(sp)
		andi.w  #STATUSEFFECT_SLOW,d1
		movem.w (sp)+,d1
		beq.s   loc_1244EC
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		add.w   d0,d0
		move.w  d0,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_1244EC:
		move.w  d1,-(sp)
		andi.w  #STATUSEFFECT_QUICK,d1
		movem.w (sp)+,d1
		beq.s   loc_124502
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		lsr.w   #1,d0
		move.w  d0,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_124502:
		move.w  d1,-(sp)
		andi.w  #STATUSEFFECT_SLEEP,d1
		movem.w (sp)+,d1
		beq.s   return_124514
		move.w  #$7530,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
return_124514:
		
		rts

    ; End of function sub_1244CA


; =============== S U B R O U T I N E =======================================

sub_124516:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		jsr     j_GetStatusEffectsForCombatant
		movem.w d1,-(sp)
		andi.w  #STATUSEFFECT_SLOW,d1
		movem.w (sp)+,d1
		beq.s   loc_124538
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		add.w   d0,d0
		move.w  d0,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_124538:
		movem.w d1,-(sp)
		andi.w  #STATUSEFFECT_QUICK,d1
		movem.w (sp)+,d1
		beq.s   loc_124550
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		lsr.w   #1,d0
		move.w  d0,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_124550:
		move.w  d1,-(sp)
		andi.w  #STATUSEFFECT_SLEEP,d1
		movem.w (sp)+,d1
		beq.s   return_124562
		move.w  #$7530,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
return_124562:
		
		rts
		addq.w  #2,a0
		moveq   #$E,d7
loc_124568:
		move.w  (a0),d2
		move.w  d0,d4
		andi.w  #$F,d4
		add.w   d4,d4
		btst    #4,d4
		beq.s   loc_12457C
		ori.w   #$FFF0,d4
loc_12457C:
		move.w  d2,d3
		andi.w  #$F,d3
		add.w   d4,d3
		bpl.s   loc_124588
		clr.w   d3
loc_124588:
		cmpi.w  #$10,d3
		blt.s   loc_124590
		moveq   #$E,d3
loc_124590:
		move.w  d3,d5
		move.w  d0,d4
		andi.w  #$F0,d4 
		add.w   d4,d4
		btst    #8,d4
		beq.s   loc_1245A4
		ori.w   #$FF00,d4
loc_1245A4:
		move.w  d2,d3
		andi.w  #$F0,d3 
		add.w   d4,d3
		bpl.s   loc_1245B0
		clr.w   d3
loc_1245B0:
		cmpi.w  #$100,d3
		blt.s   loc_1245BA
		move.w  #$E0,d3 
loc_1245BA:
		or.w    d3,d5
		move.w  d0,d4
		andi.w  #$F00,d4
		add.w   d4,d4
		btst    #$C,d4
		beq.s   loc_1245CE
		ori.w   #$F000,d4
loc_1245CE:
		move.w  d2,d3
		andi.w  #$F00,d3
		add.w   d4,d3
		bpl.s   loc_1245DA
		clr.w   d3
loc_1245DA:
		cmpi.w  #$1000,d3
		blt.s   loc_1245E4
		move.w  #$E00,d3
loc_1245E4:
		or.w    d3,d5
		move.w  d5,-$80(a0)
		move.w  d5,(a0)+
		dbf     d7,loc_124568
                
		rts

    ; End of function sub_124516


; =============== S U B R O U T I N E =======================================

bsc01_:
		move.b  #1,((byte_FFB5BB-$1000000)).w
		move.w  (a6)+,d0
		cmpi.b  #-1,d0
		beq.w   loc_1246FE
		movea.l (p_pt_AllyAnimations).l,a0
loc_124608:
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		clr.w   d7
		move.b  (a0)+,d7
		clr.w   d6
		move.b  (a0)+,d6
		move.w  (a6)+,d5
		clr.w   d0
		move.b  (a0)+,d0
		cmpi.b  #-1,d0
		beq.s   loc_124624
		move.w  d0,d5
loc_124624:
		clr.w   d4
		move.b  (a0)+,d4
		cmpi.b  #1,((byte_FFB5BB-$1000000)).w
		bne.s   loc_124636
		tst.w   (a0)+
		move.w  (a0)+,((word_FFB546-$1000000)).w
loc_124636:
		tst.w   d6
		bne.s   loc_124650
		movem.l a0,-(sp)
		movem.w d0-d7,-(sp)
		move.w  d5,d0
		bsr.w   ExecuteSpellAnimation
		movem.w (sp)+,d0-d7
		movem.l (sp)+,a0
loc_124650:
		move.w  d7,d0
		sub.w   d6,d0
		move.w  d0,d6
		subq.w  #1,d7
		bmi.w   loc_1246F6
loc_12465C:
		move.b  (a0)+,d0
		ext.w   d0
		clr.w   d3
		move.b  (a0)+,d3
		move.w  (a0)+,d1
		cmpi.b  #1,((byte_FFB5BB-$1000000)).w
		bne.s   loc_124672
		move.l  (a0)+,((WEAPONSPRITE_VARIATION-$1000000)).w
loc_124672:
		movem.l a0,-(sp)
		movem.w d3-d7,-(sp)
		btst    #0,((byte_FFB5BB-$1000000)).w
		beq.s   loc_1246BE
		bsr.w   sub_1253CC
		cmpi.w  #-1,((WEAPONSPRITE_INDEX-$1000000)).w
		beq.s   loc_1246BC
		clr.w   d0
		move.b  ((WEAPONSPRITE_VARIATION-$1000000)).w,d0
		andi.w  #7,d0
		ror.w   #5,d0
		lea     (MAP_SPRITE_POSITION).l,a0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
loc_1246BC:
		bra.s   loc_1246C2
loc_1246BE:
		bsr.w   sub_1255CC
loc_1246C2:
		movem.w (sp)+,d3-d7
		move.w  d3,d0
		movem.l (sp)+,a0
		move.w  d0,-(sp)
		cmp.w   d7,d6
		bne.s   loc_1246EC
		movem.l a0,-(sp)
		movem.w d4-d7,-(sp)
		move.w  d5,d0
		moveq   #0,d2
		moveq   #4,d3
		bsr.w   ExecuteSpellAnimation
		movem.w (sp)+,d4-d7
		movem.l (sp)+,a0
loc_1246EC:
		move.w  (sp)+,d0
		jsr     (j_Sleep).w
		dbf     d7,loc_12465C
loc_1246F6:
		tst.w   d4
		bne.w   bsc14_
		rts
loc_1246FE:
		move.w  (a6)+,d0
		bra.w   ExecuteSpellAnimation

    ; End of function bsc01_


; =============== S U B R O U T I N E =======================================

bsc02_:
		move.b  #2,((byte_FFB5BB-$1000000)).w
		move.w  (a6)+,d0
		cmpi.b  #-1,d0
		beq.s   loc_1246FE
		movea.l (p_pt_EnemyAnimations).l,a0
		bra.w   loc_124608

    ; End of function bsc02_


; =============== S U B R O U T I N E =======================================

bsc12_:
		clr.w   d0
		move.b  ((MESSAGE_SPEED-$1000000)).w,d0
		moveq   #7,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0
loc_12472A:
		tst.b   (P1_INPUT).l    
		bne.s   byte_12473C
		jsr     (j_WaitForVInt).l
		dbf     d0,loc_12472A
byte_12473C:
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).w
		movem.l a5-a6,-(sp)
		jsr     sub_8024
		movem.l (sp)+,a5-a6
		rts

    ; End of function bsc12_


; =============== S U B R O U T I N E =======================================

sub_124754:
		cmpi.b  #2,((byte_FFB5BB-$1000000)).w
		bne.s   loc_124760
		bsr.w   bsc04_
loc_124760:
		cmpi.b  #1,((byte_FFB5BB-$1000000)).w
		bne.s   loc_12476C
		bsr.w   bsc03_
loc_12476C:
		clr.b   ((byte_FFB5BB-$1000000)).w
		rts

    ; End of function sub_124754


; =============== S U B R O U T I N E =======================================

bsc04_:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1255CC
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		jsr     (j_Sleep).w
		moveq   #1,d0
		clr.w   d1
		bsr.w   sub_1255CC
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,((ENEMY_BATTLESPRITE_ANIMATION_COUNTER-$1000000)).w
		bset    #3,((byte_FFB4D2-$1000000)).w
		rts

    ; End of function bsc04_


; =============== S U B R O U T I N E =======================================

bsc03_:
		move.w  ((word_FFB544-$1000000)).w,((WEAPONSPRITE_VARIATION-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		cmpi.w  #-1,((WEAPONSPRITE_INDEX-$1000000)).w
		beq.s   loc_1247D8
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((WEAPONSPRITE_VARIATION-$1000000)).w,d0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).w
loc_1247D8:
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		jsr     (j_Sleep).w
		moveq   #1,d0
		clr.w   d1
		bsr.w   sub_1253CC
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,((ALLY_BATTLESPRITE_ANIMATION_COUNTER-$1000000)).w
		bset    #1,((byte_FFB4D2-$1000000)).w
		rts

    ; End of function bsc03_


; =============== S U B R O U T I N E =======================================

sub_1247F6:
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a5
		move.w  d0,(a5)+
		move.w  #-1,(a5)+

    ; End of function sub_1247F6


; =============== S U B R O U T I N E =======================================

bsc17_:
		jsr     sub_12400C
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a5
		cmpi.w  #-1,(a5)
		beq.w   loc_1249CE
		movem.l d0-a6,-(sp)
loc_124816:
		moveq   #1,d7
loc_124818:
		moveq   #3,d6
loc_12481A:
		movea.l a5,a4
		clr.w   d5
loc_12481E:
		move.w  (a4)+,d0
		cmpi.w  #-1,d0
		beq.w   loc_1248FA
		jsr     j_GetMapSpriteForCombatant
		lsl.w   #2,d1
		movem.l d6,-(sp)
		neg.w   d6
		addq.w  #3,d6
		dbf     d6,loc_124854
                
		movea.l (p_pt_Mapsprites_Side).l,a3
						; mapsprite_Side table
		lea     (SPRITE_22_TILE_FLAGS).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		andi.b  #$F7,(a1,d2.w)
		bra.s   loc_124892
loc_124854:
		dbf     d6,loc_124860
                
		movea.l (p_pt_Mapsprites_Back).l,a3
						; mapsprite_Back table
		bra.s   loc_124892
loc_124860:
		dbf     d6,loc_12487C
                
		movea.l (p_pt_Mapsprites_Side).l,a3
						; mapsprite_Side table
		lea     (SPRITE_22_TILE_FLAGS).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		ori.b   #8,(a1,d2.w)
		bra.s   loc_124892
loc_12487C:
		movea.l (p_pt_Mapsprites_Front).l,a3
		lea     (SPRITE_22_TILE_FLAGS).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		andi.b  #$F7,(a1,d2.w)
loc_124892:
		movem.l (sp)+,d6
		movea.l (a3,d1.w),a0
		movem.l d0-a6,-(sp)
		jsr     (sub_300).l
		movem.l (sp)+,d0-a6
		lea     (FF3000_LOADING_SPACE).l,a0
		movem.l d5/a1-a2,-(sp)
		movea.l a0,a1
		addq.w  #1,d5
		mulu.w  #$240,d5
		adda.w  d5,a0
		movea.l a0,a2
		moveq   #$23,d5 
loc_1248C0:
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		dbf     d5,loc_1248C0
                
		movea.l a2,a0
		movem.l (sp)+,d5/a1-a2
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		movem.l a0-a1,-(sp)
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		movem.l (sp)+,a0-a1
		addq.w  #1,d5
		cmpi.w  #4,d5
		bne.w   loc_12481E
loc_1248FA:
		jsr     (j_WaitForDmaQueueProcessing).l
		cmpi.w  #1,d5
		bne.s   loc_12490C
		jsr     (j_WaitForVInt).l
loc_12490C:
		dbf     d6,loc_12481A
		dbf     d7,loc_124818
                
		cmpi.w  #-1,-(a4)
		beq.s   loc_124922
		lea     2(a4),a5
		bra.w   loc_124816
loc_124922:
		movem.l (sp)+,d0-a6
		lea     byte_125C3E(pc), a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		sndCom  SFX_HIT
		moveq   #3,d7
loc_12493C:
		movem.l a0/a5,-(sp)
		move.w  d7,-(sp)
loc_124942:
		move.w  (a5)+,d0
		cmpi.w  #-1,d0
		beq.w   loc_1249AC
		movem.l a0,-(sp)
		jsr     j_GetStatusEffectsForCombatant
		andi.w  #STATUSEFFECT_CURSE,d1; retain curse through death
		jsr     j_SetStatusEffectsForCombatant
		moveq   #-1,d1
		jsr     j_SetEntityIndex
		lea     (SPRITE_22_TILE_FLAGS).l,a1
		move.w  d0,d1
		lsl.w   #3,d1
		andi.b  #$DF,(a1,d1.w)
		mulu.w  #$240,d0
		addi.w  #$2000,d0
		movea.w d0,a1
		movem.l a0-a1,-(sp)
		move.w  #$90,d0 
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		movem.l (sp)+,a0-a1
		adda.w  #$120,a1
		move.w  #$90,d0 
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		movem.l (sp)+,a0
		bra.s   loc_124942
loc_1249AC:
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #10,d0
		jsr     (j_Sleep).l
		move.w  (sp)+,d7
		movem.l (sp)+,a0/a5
		adda.w  #$120,a0
		dbf     d7,loc_12493C
                
		jsr     sub_8028
loc_1249CE:
		move.w  #-1,(a5)
		rts

    ; End of function bsc17_


; =============== S U B R O U T I N E =======================================

bsc16_:
		move.w  (a6)+,d0
		jmp     (j_Sleep).l

    ; End of function bsc16_


; =============== S U B R O U T I N E =======================================

bsc09_executeAllyReaction:
		
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		move.w  (a6)+,d1
		move.w  d1,-(sp)
		jsr     j_IncreaseCurrentHpForCombatant
		move.w  (a6)+,d1
		jsr     j_IncreaseCurrentMpForCombatant
		move.w  (a6)+,d1
		jsr     j_SetStatusEffectsForCombatant
		jsr     j_LoadCombatantData
		bsr.w   sub_1256A2
		move.w  (sp)+,d7
		move.w  (a6)+,d1
		addq.w  #1,d1
		add.w   d1,d1
		move.w  off_124A14(pc,d1.w),d1
		jmp     off_124A14(pc,d1.w)

    ; End of function bsc09_executeAllyReaction

off_124A14:     dc.w return_124B20-off_124A14; nothing
		dc.w sub_124A1A-off_124A14; attack
		dc.w sub_124B4C-off_124A14; heal

; =============== S U B R O U T I N E =======================================

sub_124A1A:
		cmpi.w  #$FC19,d7
		beq.w   loc_124B22
		sndCom  SFX_HIT
		move.b  (FADING_COUNTER_MAX).l,d0
		move.w  d0,-(sp)
		move.b  #1,(FADING_COUNTER_MAX).l
		move.b  #7,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  #4,(FADING_PALETTE_FLAGS).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.w  (HORIZONTAL_SCROLL_DATA).l,((CURRENT_OBJECT-$1000000)).w
		move.w  (VERTICAL_SCROLL_DATA).l,((word_FFB7C6-$1000000)).w
		move.w  (VERTICAL_SCROLL_DATA+2).l,((word_FFB7C8-$1000000)).w
		moveq   #$C,d0
loc_124A70:
		move.w  d0,-(sp)
		moveq   #5,d6
		jsr     (j_GenerateRandomNumber).l
		subq.w  #2,d7
		asl.w   #2,d7
		move.w  d7,d6
		move.b  d7,d1
		lsl.w   #8,d1
		bsr.w   sub_1256C8
		jsr     (j_UpdateVdpHScrollData).l
		moveq   #5,d6
		jsr     (j_GenerateRandomNumber).l
		subq.w  #2,d7
		asl.w   #2,d7
		move.w  d7,d6
		move.b  d7,d1
		bsr.w   sub_1256E6
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		moveq   #$F,d0
		movem.w d0-d1,-(sp)
		bsr.w   sub_125352
		movem.w (sp)+,d0-d1
		bsr.w   sub_1253CC
		move.w  (sp)+,d0
		dbf     d0,loc_124A70
                
		clr.w   d6
		bsr.w   sub_1256C8
		jsr     (j_UpdateVdpHScrollData).l
		bsr.w   sub_1256E6
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		moveq   #$F,d0
		clr.w   d1
		movem.w d0-d1,-(sp)
		bsr.w   sub_125352
		movem.w (sp)+,d0-d1
		bsr.w   sub_1253CC
		move.w  (sp)+,d0
		move.b  d0,(FADING_COUNTER_MAX).l
		jsr     (j_WaitForVInt).l
		bsr.w   RefreshSpellAnimationScreenTint
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		jsr     j_GetCurrentHpForCombatant
		tst.w   d1
		bne.s   return_124B20
		move.w  d0,(a5)+
		move.w  #-1,(a5)
		bsr.w   sub_124C58
return_124B20:
		
		rts
loc_124B22:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		move.w  d0,(a5)+
		move.w  #-1,(a5)
		bsr.w   sub_124D1E
		movem.w d0-d2,-(sp)
		move.w  #$7F00,d1
		bsr.w   sub_125384
		movem.w (sp)+,d0-d2
		move.w  #$B8,d3 
		move.w  #$80,d4 
		bra.w   sub_126CF0

    ; End of function sub_124A1A


; =============== S U B R O U T I N E =======================================

sub_124B4C:
		 
		sndCom  SFX_HEALING
		rts

    ; End of function sub_124B4C


; =============== S U B R O U T I N E =======================================

bsc10_executeEnemyReaction:
		
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		move.w  (a6)+,d1
		move.w  d1,-(sp)
		jsr     j_IncreaseCurrentHpForCombatant
		move.w  (a6)+,d1
		jsr     j_IncreaseCurrentMpForCombatant
		move.w  (a6)+,d1
		jsr     j_SetStatusEffectsForCombatant
		jsr     j_LoadCombatantData
		bsr.w   sub_1256A2
		move.w  (sp)+,d7
		move.w  (a6)+,d1
		addq.w  #1,d1
		add.w   d1,d1
		move.w  off_124B8A(pc,d1.w),d1
		jmp     off_124B8A(pc,d1.w)

    ; End of function bsc10_executeEnemyReaction

off_124B8A:     dc.w return_124C3A-off_124B8A; nothing
		dc.w sub_124B90-off_124B8A; attack
		dc.w sub_124C52-off_124B8A; heal

; =============== S U B R O U T I N E =======================================

sub_124B90:
		cmpi.w  #$FC19,d7
		beq.w   loc_124C3C
		sndCom  SFX_HIT
		move.b  (FADING_COUNTER_MAX).l,d0
		move.w  d0,-(sp)
		move.b  #1,(FADING_COUNTER_MAX).l
		move.b  #7,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  #8,(FADING_PALETTE_FLAGS).l
		move.b  #1,(FADING_COUNTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #$C,d0
loc_124BD6:
		move.w  d0,-(sp)
		moveq   #5,d6
		jsr     (j_GenerateRandomNumber).l
		subq.w  #2,d7
		add.w   d7,d7
		move.b  d7,d1
		lsl.w   #8,d1
		moveq   #5,d6
		jsr     (j_GenerateRandomNumber).l
		subq.w  #2,d7
		add.w   d7,d7
		move.b  d7,d1
		moveq   #-1,d0
		bsr.w   sub_1255CC
		jsr     (j_WaitForVInt).l
		move.w  (sp)+,d0
		dbf     d0,loc_124BD6
                
		moveq   #-1,d0
		clr.w   d1
		bsr.w   sub_1255CC
		move.w  (sp)+,d0
		move.b  d0,(FADING_COUNTER_MAX).l
		jsr     (j_WaitForVInt).l
		bsr.w   RefreshSpellAnimationScreenTint
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		jsr     j_GetCurrentHpForCombatant
		tst.w   d1
		bne.s   return_124C3A
		move.w  d0,(a5)+
		move.w  #-1,(a5)
		bsr.w   sub_124D46
return_124C3A:
		
		rts
loc_124C3C:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		move.w  d0,(a5)+
		move.w  #-1,(a5)
		bsr.w   sub_124DB4
		moveq   #$48,d3 
		moveq   #$70,d4 
		bra.w   sub_126CF0

    ; End of function sub_124B90


; =============== S U B R O U T I N E =======================================

sub_124C52:
		 
		sndCom  SFX_HEALING
		rts

    ; End of function sub_124C52


; =============== S U B R O U T I N E =======================================

sub_124C58:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124CA2
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124CA2
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124CA2
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124CA2
		rts

    ; End of function sub_124C58


; =============== S U B R O U T I N E =======================================

sub_124CA2:
		move.w  #$23F,d7
loc_124CA6:
		and.l   d0,(a0)
		addq.l  #8,a0
		dbf     d7,loc_124CA6
                
		adda.w  #$E00,a0        ; distance between layout adresseses?
		move.b  ((word_FFB544-$1000000)).w,d7
		andi.w  #7,d7
		ror.w   #5,d7
		adda.w  d7,a0
		move.w  #$FF,d7
loc_124CC2:
		and.l   d0,(a0)
		addq.l  #8,a0
		dbf     d7,loc_124CC2
loc_124CCA:
		lea     (FF3000_LOADING_SPACE).l,a0
		bsr.w   loc_125462
		cmpi.w  #-1,((WEAPONSPRITE_INDEX-$1000000)).w
		beq.s   loc_124D08
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((word_FFB544-$1000000)).w,d7
		andi.w  #7,d7
		ror.w   #5,d7
		adda.w  d7,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
loc_124D08:
		jsr     (j_WaitForVInt).l
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253E2
		jsr     (j_WaitForVInt).l
		rts

    ; End of function sub_124CA2


; =============== S U B R O U T I N E =======================================

sub_124D1E:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #1151,d7
loc_124D30:
		clr.l   (a0)+
		dbf     d7,loc_124D30
                
		adda.w  #$E00,a0        ; distane between layout adresseses?
		move.w  #511,d7
loc_124D3E:
		clr.l   (a0)+
		dbf     d7,loc_124D3E
                
		bra.s   loc_124CCA

    ; End of function sub_124D1E


; =============== S U B R O U T I N E =======================================

sub_124D46:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1255CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124D90
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124D90
		lea     (FF3000_LOADING_SPACE).l,a0
		move.l  #$F0F0F0F0,d0
		bsr.w   sub_124D90
		lea     (byte_FF3004).l,a0
		move.l  #$F0F0F0F,d0
		bsr.w   sub_124D90
		rts

    ; End of function sub_124D46


; =============== S U B R O U T I N E =======================================

sub_124D90:
		move.w  #$2FF,d7
loc_124D94:
		and.l   d0,(a0)
		addq.l  #8,a0
		dbf     d7,loc_124D94
loc_124D9C:
		lea     (FF3000_LOADING_SPACE).l,a0
		bsr.w   loc_12562E
		clr.w   d1
		bsr.w   sub_125FB4
		jsr     (j_WaitForVInt).l
		rts

    ; End of function sub_124D90


; =============== S U B R O U T I N E =======================================

sub_124DB4:
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1255CC
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$5FF,d7
loc_124DC6:
		clr.l   (a0)+
		dbf     d7,loc_124DC6
                
		bra.s   loc_124D9C

    ; End of function sub_124DB4


; =============== S U B R O U T I N E =======================================

bsc11_giveEXP:
		
		move.w  (a6)+,d1
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		jsr     j_IncreaseExperienceForCombatant
		jsr     j_GetExperienceForCombatant
		cmpi.w  #100,d1
		blt.s   @Return
		jsr     j_LevelUp
@Return:
		rts

    ; End of function bsc11_giveEXP


; =============== S U B R O U T I N E =======================================

bsc13_:
		bsr.w   sub_124754
		move.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		rts

    ; End of function bsc13_


; =============== S U B R O U T I N E =======================================

bsc14_:
		tst.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bne.s   bsc14_
		rts

    ; End of function bsc14_


; =============== S U B R O U T I N E =======================================

bsc18_displayMessageWithNoWait:
		
		move.w  (a6)+,d0
		move.w  (a6)+,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (a6)+,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.l  (a6)+,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  d0,-(sp)
		clr.w   ((SPEECH_SFX-$1000000)).w
		jsr     (j_OpenMessageWindow).l
		move.w  (sp)+,d0
		jsr     (j_LoadText).l
		jsr     sub_124EA0(pc)
		nop
		cmpi.w  #$12,(a6)
		beq.s   @Return
		cmpi.w  #$F,(a6)
		beq.s   @Return
		cmpi.w  #$B,(a6)
		beq.s   @Return
		jsr     (j_CloseMessageWindow).l
@Return:
		rts

    ; End of function bsc18_displayMessageWithNoWait


; =============== S U B R O U T I N E =======================================

bsc15_displayMessage:
		
		move.w  (a6)+,d0
		move.w  (a6)+,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (a6)+,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.l  (a6)+,((MESSAGE_ARG_NUMBER-$1000000)).w
		tst.b   ((DISPLAY_BATTLE_MESSAGES_TOGGLE-$1000000)).w
		bne.s   loc_124E8C
		move.w  d0,-(sp)
		clr.w   ((SPEECH_SFX-$1000000)).w
		jsr     (j_OpenMessageWindow).l
		move.w  (sp)+,d0
		jsr     (j_LoadText).l
		jsr     sub_124EA0(pc)
		nop
		cmpi.w  #$12,(a6)
		beq.s   loc_124E8A
		cmpi.w  #$F,(a6)
		beq.s   loc_124E8A
		cmpi.w  #$B,(a6)
		beq.s   loc_124E8A
		jsr     (j_CloseMessageWindow).l
loc_124E8A:
		bra.s   return_124E9E
loc_124E8C:
		clr.w   d0
		move.b  ((MESSAGE_SPEED-$1000000)).w,d0
		moveq   #8,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0
		bsr.w   SpeedUpBattleMessage
return_124E9E:
		
		rts

    ; End of function bsc15_displayMessage


; =============== S U B R O U T I N E =======================================

sub_124EA0:
		clr.w   d0
		move.b  ((MESSAGE_SPEED-$1000000)).w,d0
		bne.s   loc_124EB0
		txt     490             ; "[Dict][Line]"
		bra.s   return_124ECA
loc_124EB0:
		moveq   #8,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0

    ; End of function sub_124EA0


; =============== S U B R O U T I N E =======================================

SpeedUpBattleMessage:
		
		tst.b   (P1_INPUT).l    
		bne.s   return_124ECA
		jsr     (j_WaitForVInt).l
		dbf     d0,SpeedUpBattleMessage
return_124ECA:
		
		rts

    ; End of function SpeedUpBattleMessage


; =============== S U B R O U T I N E =======================================

RefreshSpellAnimationScreenTint:
		
		tst.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		beq.w   RefreshScreenTint_None
		clr.w   d0
		move.b  ((SPELLANIM_TYPE-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_ScreenTintRefreshes(pc,d0.w),d0
		jsr     rjt_ScreenTintRefreshes(pc,d0.w)
		bra.w   loc_124F32

    ; End of function RefreshSpellAnimationScreenTint

rjt_ScreenTintRefreshes:
		dc.w RefreshScreenTint_Red-rjt_ScreenTintRefreshes
						; 00: Blaze
		dc.w RefreshScreenTint_Grey-rjt_ScreenTintRefreshes
						; 01: Freeze
		dc.w RefreshScreenTint_Grey-rjt_ScreenTintRefreshes
						; 02: Ice Breath
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 03: Flying Dragons
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 04: Assault Shell
		dc.w RefreshScreenTint_Grey-rjt_ScreenTintRefreshes
						; 05: Desoul
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 06: Debuff
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 07: Bolt
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 08: Healing
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 09: Healing
		dc.w RefreshScreenTint_Red-rjt_ScreenTintRefreshes
						; 10: Fire Breath
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 11: Demon Blaze
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 12: Nothing
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 13: Nothing
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 14: Nothing
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 15: Machine Gun
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 16: Crossbow
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 17: Lightning Breath
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 18: Laser
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 19: Buster Shot
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 20: Sonic Wave
		dc.w RefreshScreenTint_Dark-rjt_ScreenTintRefreshes
						; 21: Sonic Blast
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 22: (unused)
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 23: (unused)
		dc.w RefreshScreenTint_None-rjt_ScreenTintRefreshes
						; 24: (unused)

; =============== S U B R O U T I N E =======================================

RefreshScreenTint_None:
		
		bsr.w   CopySpellPalette
		lea     (PALETTE_1_BASE).l,a0
		lea     (PALETTE_1_CURRENT).l,a1
		moveq   #31,d0
loc_124F2C:
		move.l  (a0)+,(a1)+
		dbf     d0,loc_124F2C
loc_124F32:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function RefreshScreenTint_None


; =============== S U B R O U T I N E =======================================

bsc08_:
		move.w  (a6)+,d0
		move.w  d0,((BATTLESCENE_ENEMY-$1000000)).w
		jsr     j_GetBattlespritePaletteAndAnimationIndexes
		move.w  d1,((ENEMY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ENEMY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ENEMY_BATTLE_ANIMATION-$1000000)).w
		clr.w   d0
		bsr.w   sub_12561E
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		bpl.s   loc_124F60
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
loc_124F60:
		jsr     j_GetTerrainBackgrounds
		bsr.w   LoadBattlesceneBackgrounds
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF6000).l,a1
		move.w  #3071,d7
		bset    #ENABLE_VINT,(VINT_PARAMS).l
						; enable VInt
loc_124F82:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_124F82
                
		lea     tiles_BackgroundTransition2(pc), a0
		nop
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF4800).l,a1
		bset    #ENABLE_VINT,(VINT_PARAMS).l
						; enable VInt
		move.w  #1535,d7
loc_124FAC:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_124FAC
                
		lea     tiles_BackgroundTransition1(pc), a0
		nop
		jsr     (j_DecompressGraphics).l
		moveq   #1,d0
		bsr.w   sub_12566E
		lea     (byte_FFD980).l,a0
		move.l  a0,-(sp)
		move.w  #1024,d7
loc_124FD0:
		clr.l   (a0)+
		dbf     d7,loc_124FD0
                
		movea.l (sp)+,a0
		lea     ($E980).l,a1
		move.w  #$180,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($2000).w,a1
		moveq   #7,d7
		move.w  #-32,d6
loc_124FFA:
		movem.l d7-a1,-(sp)
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).w
		lea     (byte_FFD1C0).l,a0
		move.l  a0,-(sp)
		moveq   #7,d0
		sub.w   d7,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		moveq   #11,d0
loc_12501C:
		ori.l   #$40004000,(a0)+
		ori.l   #$40004000,(a0)+
		adda.w  #$38,a0 
		dbf     d0,loc_12501C
                
		movea.l (sp)+,a0
		lea     ($E1C0).l,a1
		move.w  #$180,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		bsr.w   sub_12518C
		jsr     (j_UpdateVdpHScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).w
		subi.w  #32,d6
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_124FFA
                
		lea     ((byte_FFC0C0-$1000000)).w,a0
		lea     (PALETTE_1_BASE).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  ((ENEMY_BATTLE_SPRITE-$1000000)).w,d0
		move.w  ((ENEMY_BATTLE_PALETTE-$1000000)).w,d1
		bsr.w   sub_126284
		bsr.w   sub_1244CA
		bsr.w   RefreshSpellAnimationScreenTint
		moveq   #7,d7
		move.w  #-32,d6
loc_12509C:
		movem.l d7-a1,-(sp)
		bsr.w   sub_12518C
		jsr     (j_UpdateVdpHScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).w
		subi.w  #32,d6
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_12509C
                
		lea     (byte_FF6000).l,a0
		lea     ($2000).w,a1
		moveq   #7,d7
		move.w  #-32,d6
loc_1250D2:
		movem.l d7-a1,-(sp)
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		lea     (byte_FFD1C0).l,a0
		move.l  a0,-(sp)
		moveq   #7,d0
		sub.w   d7,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		moveq   #$B,d0
loc_1250F6:
		andi.l  #$BFFFBFFF,(a0)+
		andi.l  #$BFFFBFFF,(a0)+
		adda.w  #$38,a0 
		dbf     d0,loc_1250F6
                
		movea.l (sp)+,a0
		lea     ($E1C0).l,a1
		move.w  #$180,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).w
		bsr.w   sub_12518C
		jsr     (j_UpdateVdpHScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).l
		subi.w  #32,d6
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_1250D2
                
		clr.w   d1
		bsr.w   sub_125FB4
		clr.w   d6
		jsr     (j_UpdateForegroundHScrollData).l
		jsr     (j_UpdateBackgroundHScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		bsr.w   sub_1256A2
		jsr     (j_WaitForVInt).l
		moveq   #1,d0
		clr.w   d1
		bsr.w   sub_1255CC
		bset    #3,((byte_FFB4D2-$1000000)).w
		cmpi.w  #-1,((BATTLESCENE_ALLY-$1000000)).w
		beq.s   return_12518A
		move.w  ((WEAPONSPRITE_INDEX-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   return_12518A
		bsr.w   LoadWeaponsprite
return_12518A:
		
		rts

    ; End of function bsc08_


; =============== S U B R O U T I N E =======================================

sub_12518C:
		lea     (word_FF01E0).l,a1
		move.w  #$A7,d7 
loc_125196:
		move.w  d6,(a1)
		addq.l  #4,a1
		dbf     d7,loc_125196
                
		rts

    ; End of function sub_12518C


; =============== S U B R O U T I N E =======================================

sub_1251A0:
		lea     (word_FF01E0).l,a1
		move.w  #$5F,d7 
loc_1251AA:
		move.w  d6,(a1)
		addq.l  #4,a1
		dbf     d7,loc_1251AA
                
		rts

    ; End of function sub_1251A0


; =============== S U B R O U T I N E =======================================

bsc07_:
		bclr    #1,((byte_FFB4D2-$1000000)).w
		clr.w   d0
		bsr.w   sub_12566E
		jsr     (j_WaitForVInt).l
		move.w  #$1000,d1
		moveq   #6,d7
loc_1251CC:
		movem.w d1/d7,-(sp)
		moveq   #$F,d0
		bsr.w   sub_125352
		bsr.w   sub_1253CC
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d1/d7
		addi.w  #$1000,d1
		dbf     d7,loc_1251CC
                
		move.w  #$7F00,d1
		bsr.w   sub_125352
		move.w  #$7F00,d1
		bsr.w   sub_125384
		move.w  (a6)+,d0
		move.w  d0,((BATTLESCENE_ALLY-$1000000)).w
		jsr     j_GetBattlespritePaletteAndAnimationIndexes
		move.w  d1,((ALLY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ALLY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ALLY_BATTLE_ANIMATION-$1000000)).w
		move.w  #$100,d1
		jsr     j_GetEquippedItemForCombatant
		move.w  d2,d1
		cmpi.w  #-1,d1
		beq.s   loc_12522E
		jsr     j_GetEquippedWeaponIndex
		bra.s   loc_125232
loc_12522E:
		moveq   #-1,d2
		moveq   #-1,d3
loc_125232:
		move.w  d2,((WEAPONSPRITE_INDEX-$1000000)).w
		move.w  d3,((WEAPONSPRITE_PALETTE-$1000000)).w
		move.w  ((WEAPONSPRITE_INDEX-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_125264
		bsr.w   LoadWeaponsprite
		move.w  ((ALLY_BATTLE_ANIMATION-$1000000)).w,d0
		movea.l (p_pt_AllyAnimations).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.l  #4,a0
		move.w  (a0)+,((word_FFB544-$1000000)).w
		move.w  (a0)+,((word_FFB546-$1000000)).w
		bra.s   loc_125270
loc_125264:
		move.w  #$400,((word_FFB544-$1000000)).w
		move.w  #$7F7F,((word_FFB546-$1000000)).w
loc_125270:
		move.w  ((word_FFB544-$1000000)).w,((WEAPONSPRITE_VARIATION-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		move.w  ((WEAPONSPRITE_PALETTE-$1000000)).w,d0
		bsr.w   LoadWeaponPalette
		move.b  ((WEAPONSPRITE_VARIATION-$1000000)).w,d0
		lea     (MAP_SPRITE_POSITION).l,a0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
		move.w  ((ALLY_BATTLE_SPRITE-$1000000)).w,d0
		move.w  ((ALLY_BATTLE_PALETTE-$1000000)).w,d1
		bsr.w   sub_1262CE
		bsr.w   sub_124516
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		bpl.s   loc_1252CA
		clr.w   d0
		bra.s   loc_1252D2
loc_1252CA:
		jsr     sub_2032C
		move.w  d1,d0
loc_1252D2:
		jsr     LoadPlatform
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($AC00).l,a1
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   RefreshSpellAnimationScreenTint
		clr.w   d0
		move.w  #$7F00,d1
		bsr.w   sub_1253CC
		moveq   #1,d0
		move.w  #$7F00,d1
		bsr.w   sub_1253CC
		move.w  #$6000,d1
		moveq   #6,d7
loc_125316:
		movem.w d1/d7,-(sp)
		moveq   #$F,d0
		bsr.w   sub_125352
		bsr.w   sub_1253CC
		jsr     (j_WaitForVInt).l
		movem.w (sp)+,d1/d7
		subi.w  #$1000,d1
		dbf     d7,loc_125316
                
		bsr.w   sub_1256A2
		bset    #1,((byte_FFB4D2-$1000000)).w
		clr.w   d0
		move.b  ((MESSAGE_SPEED-$1000000)).w,d0
		moveq   #8,d1
		sub.w   d0,d1
		clr.w   d0
		bset    d1,d0
		bra.w   SpeedUpBattleMessage

    ; End of function bsc07_


; =============== S U B R O U T I N E =======================================

sub_125352:
		movem.w d0-d1,-(sp)
		lea     sprite_1255B4(pc), a0
		lea     (SPRITE_20_PROPERTIES).l,a1
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		moveq   #2,d7
loc_125368:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_125368
                
		move.l  #$1010101,((byte_FFB4EE-$1000000)).w
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_125352


; =============== S U B R O U T I N E =======================================

sub_125384:
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1

    ; End of function sub_125384


; =============== S U B R O U T I N E =======================================

sub_12538A:
		cmpi.b  #2,d2
		bne.s   loc_125398
		move.l  #$2020202,d2
		bra.s   loc_12539E
loc_125398:
		move.l  #$1010101,d2
loc_12539E:
		lea     sprite_125534(pc), a0
		clr.w   d7
		move.b  ((WEAPONSPRITE_VARIATION-$1000000)).w,d7
		andi.w  #WEAPON_VARIATION_MASK,d7
		add.w   d7,d7
		adda.w  d7,a0
		lea     (SPRITE_16_PROPERTIES).l,a1
		moveq   #3,d7
loc_1253B8:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1253B8
                
		move.l  d2,((dword_FFB4EA-$1000000)).w
		rts

    ; End of function sub_12538A


; =============== S U B R O U T I N E =======================================

sub_1253CC:
		movem.w d0-d1,-(sp)
		andi.w  #$F,d0
		cmpi.w  #$F,d0
		beq.s   loc_1253DE
		bsr.w   sub_125452
loc_1253DE:
		movem.w (sp)+,d0-d1

    ; End of function sub_1253CC


; =============== S U B R O U T I N E =======================================

sub_1253E2:
		lea     sprite_1254A4(pc), a0
		lsr.w   #4,d0
		mulu.w  #$48,d0 
		adda.w  d0,a0
		lea     (SPRITE_07_PROPERTIES).l,a1
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		movem.w d0-d1,-(sp)
		moveq   #8,d7
loc_125400:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.w  (a0)+,(a1)+
		move.w  (a0)+,d2
		btst    #0,((byte_FFB4D2-$1000000)).w
		bne.s   loc_125414
		addi.w  #$90,d2 
loc_125414:
		move.w  d2,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_125400
                
		lea     ((byte_FFB4E1-$1000000)).w,a0
		move.l  #$1010101,d0
		move.b  d0,(a0)+
		move.l  d0,(a0)+
		move.l  d0,(a0)+
		movem.w (sp)+,d0-d1
		move.b  ((byte_FFB542-$1000000)).w,d2
		ext.w   d2
		add.w   d2,d0
		move.b  ((byte_FFB543-$1000000)).w,d2
		ext.w   d2
		add.w   d2,d1
		move.b  ((byte_FFB541-$1000000)).w,d2
		bsr.w   sub_12538A
		jsr     (sub_320).l
		rts

    ; End of function sub_1253E2


; =============== S U B R O U T I N E =======================================

sub_125452:
		bclr    #1,((byte_FFB4D2-$1000000)).w
		move.w  d0,d1
		move.w  ((ALLY_BATTLE_SPRITE-$1000000)).w,d0
		bsr.w   LoadAllyBattlesprite
loc_125462:
		btst    #0,((byte_FFB4D2-$1000000)).w
		bne.s   loc_125472
		lea     (j_BattleLoop).l,a1
		bra.s   loc_125478
loc_125472:
		lea     ($9200).l,a1
loc_125478:
		eori.b  #1,((byte_FFB4D2-$1000000)).w
		move.w  #$900,d0
		move.w  #2,d1
		bsr.w   sub_125496
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_WaitForDmaQueueProcessing).l

    ; End of function sub_125452


; =============== S U B R O U T I N E =======================================

sub_125496:
		tst.b   ((byte_FFB4D1-$1000000)).w
		beq.s   @Return
		jsr     (j_WaitForVInt).l
@Return:
		rts

    ; End of function sub_125496

sprite_1254A4:  ; sprite properties
		vdpSprite 192, V4|H4|0, 1024|PALETTE3|PRIORITY_BIT, 264
		vdpSprite 224, V4|H4|0, 1040|PALETTE3|PRIORITY_BIT, 264
		vdpSprite 256, V4|H4|0, 1056|PALETTE3|PRIORITY_BIT, 264
		vdpSprite 192, V4|H4|0, 1072|PALETTE3|PRIORITY_BIT, 296
		vdpSprite 224, V4|H4|0, 1088|PALETTE3|PRIORITY_BIT, 296
		vdpSprite 256, V4|H4|0, 1104|PALETTE3|PRIORITY_BIT, 296
		vdpSprite 192, V4|H4|0, 1120|PALETTE3|PRIORITY_BIT, 328
		vdpSprite 224, V4|H4|0, 1136|PALETTE3|PRIORITY_BIT, 328
		vdpSprite 256, V4|H4|0, 1152|PALETTE3|PRIORITY_BIT, 328
                
		                ; ally battlesprite mirrored
		vdpSprite 192, V4|H4|0, 1024|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 328
		vdpSprite 224, V4|H4|0, 1040|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 328
		vdpSprite 256, V4|H4|0, 1056|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 328
		vdpSprite 192, V4|H4|0, 1072|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 296
		vdpSprite 224, V4|H4|0, 1088|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 296
		vdpSprite 256, V4|H4|0, 1104|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 296
		vdpSprite 192, V4|H4|0, 1120|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 264
		vdpSprite 224, V4|H4|0, 1136|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 264
		vdpSprite 256, V4|H4|0, 1152|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 264
                
sprite_125534:                  ; weapon variation 1
		vdpSprite 192, V4|H4|0, 1312|PALETTE2|PRIORITY_BIT, 264
		vdpSprite 224, V4|H4|0, 1328|PALETTE2|PRIORITY_BIT, 264
		vdpSprite 192, V4|H4|0, 1344|PALETTE2|PRIORITY_BIT, 296
		vdpSprite 224, V4|H4|0, 1360|PALETTE2|PRIORITY_BIT, 296
                
		                ; weapon variation 2
		vdpSprite 192, V4|H4|0, 1312|MIRRORED_BIT|PALETTE2|PRIORITY_BIT, 296
		vdpSprite 224, V4|H4|0, 1328|MIRRORED_BIT|PALETTE2|PRIORITY_BIT, 296
		vdpSprite 192, V4|H4|0, 1344|MIRRORED_BIT|PALETTE2|PRIORITY_BIT, 264
		vdpSprite 224, V4|H4|0, 1360|MIRRORED_BIT|PALETTE2|PRIORITY_BIT, 264
                
		                ; weapon variation 3
		vdpSprite 224, V4|H4|0, 1312|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 264
		vdpSprite 192, V4|H4|0, 1328|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 264
		vdpSprite 224, V4|H4|0, 1344|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 296
		vdpSprite 192, V4|H4|0, 1360|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 296
                
		                ; weapon variation 4
		vdpSprite 224, V4|H4|0, 1312|MIRRORED_BIT|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 296
		vdpSprite 192, V4|H4|0, 1328|MIRRORED_BIT|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 296
		vdpSprite 224, V4|H4|0, 1344|MIRRORED_BIT|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 264
		vdpSprite 192, V4|H4|0, 1360|MIRRORED_BIT|FLIPPED_BIT|PALETTE2|PRIORITY_BIT, 264
                
sprite_1255B4:                  ; ground sprite
		vdpSprite 268, V4|H4|0, 1376|PALETTE2, 256
		vdpSprite 268, V4|H4|0, 1392|PALETTE2, 288
		vdpSprite 268, V4|H4|0, 1408|PALETTE2, 320

; =============== S U B R O U T I N E =======================================

sub_1255CC:
		movem.w d0-d1,-(sp)
		andi.w  #$F,d0
		cmpi.w  #$F,d0
		beq.s   loc_1255E4
		bsr.w   sub_12561E
		clr.w   d1
		bsr.w   sub_125FB4
loc_1255E4:
		movem.w (sp)+,d0-d1
		movem.w d0-d1,-(sp)
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		jsr     j_GetPortraitForCombatant
		cmpi.w  #PORTRAIT_DARK_DRAGON,d1
		movem.w (sp)+,d0-d1
		bne.s   loc_125602
		clr.w   d1
loc_125602:
		move.w  d1,d6
		asr.w   #8,d6
		jsr     (j_UpdateBackgroundHScrollData).w
		move.b  d1,d6
		ext.w   d6
		neg.w   d6
		addi.w  #$100,d6
		jsr     (j_UpdateBackgroundVScrollData).w
		jsr     (j_EnableDmaQueueProcessing).w
		rts

    ; End of function sub_1255CC


; =============== S U B R O U T I N E =======================================

sub_12561E:
		bclr    #3,((byte_FFB4D2-$1000000)).w
		move.w  d0,d1
		move.w  ((ENEMY_BATTLE_SPRITE-$1000000)).w,d0
		bsr.w   sub_1262A8
loc_12562E:
		btst    #2,((byte_FFB4D2-$1000000)).w
		beq.s   loc_12563C
		lea     ($5000).w,a1
		bra.s   loc_125640
loc_12563C:
		lea     ($6800).w,a1
loc_125640:
		move.w  #$600,d0
		move.w  #2,d1
		bsr.w   sub_125496
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  #$600,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		rts

    ; End of function sub_12561E


; =============== S U B R O U T I N E =======================================

sub_12566E:
		lea     (byte_FFD040).l,a0
		lea     ($E040).l,a1
		tst.w   d0
		beq.s   loc_125686
		adda.w  #$4C0,a0
		adda.w  #$4C0,a1
loc_125686:
		move.l  a0,-(sp)
		move.w  #$4F,d7 
loc_12568C:
		clr.l   (a0)+
		dbf     d7,loc_12568C
                
		movea.l (sp)+,a0
		move.w  #$A0,d0 
		move.w  #2,d1
		jmp     (j_ApplyVIntVramDma).l

    ; End of function sub_12566E


; =============== S U B R O U T I N E =======================================

sub_1256A2:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_1256B2
		jsr     sub_8014
loc_1256B2:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		cmpi.w  #-1,d0
		beq.s   loc_1256C2
		jsr     sub_8018
loc_1256C2:
		bsr.w   sub_126100
		rts

    ; End of function sub_1256A2


; =============== S U B R O U T I N E =======================================

sub_1256C8:
		move.w  d7,-(sp)
		move.l  a0,-(sp)
		move.w  #$1FF,d7
		lea     (HORIZONTAL_SCROLL_DATA).l,a0
loc_1256D6:
		move.w  ((CURRENT_OBJECT-$1000000)).w,(a0)
		add.w   d6,(a0)+
		dbf     d7,loc_1256D6
                
		movea.l (sp)+,a0
		move.w  (sp)+,d7
		rts

    ; End of function sub_1256C8


; =============== S U B R O U T I N E =======================================

sub_1256E6:
		move.w  d7,-(sp)
		move.l  a0,-(sp)
		move.w  #$F,d7
		lea     (VERTICAL_SCROLL_DATA).l,a0
loc_1256F4:
		move.w  ((word_FFB7C6-$1000000)).w,(a0)
		add.w   d6,(a0)+
		move.w  ((word_FFB7C8-$1000000)).w,(a0)
		add.w   d6,(a0)+
		dbf     d7,loc_1256F4
                
		movea.l (sp)+,a0
		move.w  (sp)+,d7
		rts

    ; End of function sub_1256E6

byte_12570A:    dc.b 1
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
                
tiles_BackgroundTransition1:
		incbin "data/graphics/battles/backgroundtransitiontiles1.bin"
tiles_BackgroundTransition2:
		incbin "data/graphics/battles/backgroundtransitiontiles2.bin"
byte_125C3E:    dc.b 8
		dc.b   8
		dc.b $C0 
		dc.b $53 
		dc.b $E1 
		dc.b $DE 
		dc.b $43 
		dc.b $3F 
		dc.b $C2 
		dc.b $51 
		dc.b   2
		dc.b $D5 
		dc.b $55 
		dc.b $12
		dc.b  $D
		dc.b $A9 
		dc.b $10
		dc.b $60 
		dc.b $D5 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $54 
		dc.b   2
		dc.b $C8 
		dc.b $A8 
		dc.b $5B 
		dc.b $FC 
		dc.b   4
		dc.b $5E 
		dc.b $90 
		dc.b $4A 
		dc.b $C0 
		dc.b $2E 
		dc.b $1A
		dc.b $D6 
		dc.b $12
		dc.b $38 
		dc.b $15
		dc.b $7A 
		dc.b   2
		dc.b $EE 
		dc.b $AE 
		dc.b $31 
		dc.b $F1 
		dc.b   3
		dc.b $AF 
		dc.b $61 
		dc.b $6C 
		dc.b $D6 
		dc.b   7
		dc.b $28 
		dc.b $A8 
		dc.b $2E 
		dc.b $34 
		dc.b $12
		dc.b   1
		dc.b $BD 
		dc.b $D4 
		dc.b   8
		dc.b  $B
		dc.b $86 
		dc.b $20
		dc.b $AE 
		dc.b $38 
		dc.b $13
		dc.b $1B
		dc.b $58 
		dc.b  $C
		dc.b $6F 
		dc.b $82 
		dc.b $5E 
		dc.b $40 
		dc.b $EE 
		dc.b $B1 
		dc.b $55 
		dc.b $58 
		dc.b $61 
		dc.b   5
		dc.b $55 
		dc.b $51 
		dc.b $BD 
		dc.b $5B 
		dc.b $A0 
		dc.b   8
		dc.b $41 
		dc.b $AA 
		dc.b $91 
		dc.b $B8 
		dc.b $42 
		dc.b $A8 
		dc.b  $C
		dc.b $AE 
		dc.b $DC 
		dc.b $1D
		dc.b $C6 
		dc.b $DC 
		dc.b $95 
		dc.b $9A 
		dc.b $D6 
		dc.b $AB 
		dc.b $F0 
		dc.b $BC 
		dc.b  $B
		dc.b $E3 
		dc.b   0
		dc.b $51 
		dc.b $8A 
		dc.b $B3 
		dc.b $EA 
		dc.b $D5 
		dc.b $E0 
		dc.b $B1 
		dc.b   7
		dc.b $43 
		dc.b $56 
		dc.b $FC 
		dc.b   1
		dc.b $81 
		dc.b $DF 
		dc.b   8
		dc.b $20
		dc.b $48 
		dc.b $1F
		dc.b $10
		dc.b $F8 
		dc.b $1E
		dc.b $8C 
		dc.b $C2 
		dc.b $77 
		dc.b   0
		dc.b $83 
		dc.b $12
		dc.b $83 
		dc.b $C6 
		dc.b   0
		dc.b $EE 
		dc.b $35 
		dc.b $B0 
		dc.b $BD 
		dc.b $25 
		dc.b   9
		dc.b $74 
		dc.b $24 
		dc.b   1
		dc.b   0
		dc.b $2F 
		dc.b $FF
		dc.b $C1 
		dc.b $2C 
		dc.b  $D
		dc.b $F5 
		dc.b $EE 
		dc.b $91 
		dc.b $87 
		dc.b $BA 
		dc.b $41 
		dc.b $C2 
		dc.b $5A 
		dc.b $FD 
		dc.b $F8 
		dc.b  $C
		dc.b $9F 
		dc.b $5C 
		dc.b $81 
		dc.b $27 
		dc.b $C0 
		dc.b $10
		dc.b   7
		dc.b $8F 
		dc.b $80 
		dc.b $87 
		dc.b $7F 
		dc.b $C0 
		dc.b $59 
		dc.b $55 
		dc.b  $A
		dc.b $13
		dc.b $1D
		dc.b $53 
		dc.b $2E 
		dc.b $86 
		dc.b  $E
		dc.b $F0 
		dc.b $10
		dc.b $8E 
		dc.b $61 
		dc.b $9F 
		dc.b $E0 
		dc.b $2A 
		dc.b $7A 
		dc.b   5
		dc.b $AF 
		dc.b $80 
		dc.b $44 
		dc.b $10
		dc.b $54 
		dc.b $3B 
		dc.b $9B 
		dc.b $34 
		dc.b $A8 
		dc.b $24 
		dc.b $6B 
		dc.b $4F 
		dc.b $96 
		dc.b $26 
		dc.b $1D
		dc.b $EE 
		dc.b $8E 
		dc.b $99 
		dc.b $55 
		dc.b $1B
		dc.b $FA 
		dc.b $C2 
		dc.b $86 
		dc.b $AA 
		dc.b $A6 
		dc.b $95 
		dc.b $20
		dc.b $40 
		dc.b $E8 
		dc.b $28 
		dc.b $68 
		dc.b   3
		dc.b $97 
		dc.b $60 
		dc.b   2
		dc.b   5
		dc.b $DA 
		dc.b   0
		dc.b $21 
		dc.b $D5 
		dc.b $A1 
		dc.b $86 
		dc.b $AA 
		dc.b $A8 
		dc.b   2
		dc.b $2C 
		dc.b $96 
		dc.b $8A 
		dc.b   0
		dc.b $78 
		dc.b $9D 
		dc.b   0
		dc.b $30 
		dc.b $87 
		dc.b $40 
		dc.b  $B
		dc.b $E9 
		dc.b $62 
		dc.b $24 
		dc.b   1
		dc.b $F0 
		dc.b $C8 
		dc.b $A1 
		dc.b $84 
		dc.b $98 
		dc.b   2
		dc.b   8
		dc.b $E1 
		dc.b $86 
		dc.b $AA 
		dc.b $A0 
		dc.b   4
		dc.b  $C
		dc.b $E8 
		dc.b   1
		dc.b $85 
		dc.b $5A 
		dc.b   1
		dc.b $CD 
		dc.b $16
		dc.b $48 
		dc.b   0
		dc.b $13
		dc.b $B0 
		dc.b $FF
                
tiles_BattlesceneStatusEffects:
		incbin "data/graphics/battles/battlescenestatuseffectstiles.bin"

; =============== S U B R O U T I N E =======================================

VInt_UpdateBattlesceneGraphics:
		
		clr.b   (byte_FFB4D1).l
		bsr.w   UpdateEnemyBattlesprite
		bsr.w   UpdateAllyBattlesprite
		bsr.w   sub_126132
		bsr.w   UpdateSpellAnimation
		jsr     (sub_320).l
		rts

    ; End of function VInt_UpdateBattlesceneGraphics


; =============== S U B R O U T I N E =======================================

UpdateEnemyBattlesprite:
		
		btst    #3,(byte_FFB4D2).l
		beq.w   @Return
		subq.w  #1,(ENEMY_BATTLESPRITE_ANIMATION_COUNTER).l
		bne.w   @Return
		clr.w   d1
		bsr.w   sub_125FB4
		move.w  (ENEMY_BATTLESPRITE_ANIMATION_SPEED).l,(ENEMY_BATTLESPRITE_ANIMATION_COUNTER).l
@Return:
		rts

    ; End of function UpdateEnemyBattlesprite


; =============== S U B R O U T I N E =======================================

UpdateAllyBattlesprite:
		
		btst    #1,(byte_FFB4D2).l
		beq.w   @Return
		subq.w  #1,(ALLY_BATTLESPRITE_ANIMATION_COUNTER).l
		bne.w   @Return
		clr.w   d1
		bsr.w   sub_125FA4
		move.w  (ALLY_BATTLESPRITE_ANIMATION_SPEED).l,(ALLY_BATTLESPRITE_ANIMATION_COUNTER).l
@Return:
		rts

    ; End of function UpdateAllyBattlesprite


; =============== S U B R O U T I N E =======================================

sub_125FA4:
		clr.w   d0
		bsr.w   sub_1253E2
		eori.b  #1,(byte_FFB4D2).l
		rts

    ; End of function sub_125FA4


; =============== S U B R O U T I N E =======================================

sub_125FB4:
		lea     byte_12603E(pc), a0
		nop
		movem.w d0-d1,-(sp)
		move.w  (BATTLESCENE_ENEMY).l,d0
		jsr     j_GetPortraitForCombatant
		cmpi.w  #PORTRAIT_DARK_DRAGON,d1
		movem.w (sp)+,d0-d1
		beq.s   loc_125FDC
		lea     (word_FFD984).l,a1
		bra.s   loc_125FE2
loc_125FDC:
		lea     (byte_FFD9C0).l,a1
loc_125FE2:
		btst    #2,(byte_FFB4D2).l
		beq.s   loc_125FF2
		move.w  #$E280,d0
		bra.s   loc_125FF6
loc_125FF2:
		move.w  #$E340,d0
loc_125FF6:
		eori.b  #4,(byte_FFB4D2).l
		move.b  d1,d5
		ext.w   d5
		asl.w   #6,d5
		adda.w  d5,a1
		asr.w   #8,d1
		asl.w   #1,d1
		adda.w  d1,a1
		clr.w   d6
		move.b  (a0)+,d6
		subq.w  #1,d6
		clr.w   d7
		move.b  (a0)+,d7
		subq.w  #1,d7
loc_126018:
		movem.l d6,-(sp)
loc_12601C:
		clr.w   d5
		move.b  (a0)+,d5
		add.w   d0,d5
		move.w  d5,(a1)+
		dbf     d6,loc_12601C
                
		movem.l (sp)+,d6
		moveq   #31,d5
		sub.w   d6,d5
		add.w   d5,d5
		adda.w  d5,a1
		dbf     d7,loc_126018
                
		bsr.w   sub_126100
		rts

    ; End of function sub_125FB4

byte_12603E:    dc.b 16, 12             ; inner counter, outer counter : background width in tiles, background height in tiles
		dc.b 0
		dc.b 4
		dc.b 8
		dc.b $C
		dc.b $30
		dc.b $34
		dc.b $38
		dc.b $3C
		dc.b $60
		dc.b $64
		dc.b $68
		dc.b $6C
		dc.b $90
		dc.b $94
		dc.b $98
		dc.b $9C
                
		dc.b 1
		dc.b 5
		dc.b 9
		dc.b $D
		dc.b $31
		dc.b $35
		dc.b $39
		dc.b $3D
		dc.b $61
		dc.b $65
		dc.b $69
		dc.b $6D
		dc.b $91
		dc.b $95
		dc.b $99
		dc.b $9D
                
		dc.b 2
		dc.b 6
		dc.b $A
		dc.b $E
		dc.b $32
		dc.b $36
		dc.b $3A
		dc.b $3E
		dc.b $62
		dc.b $66
		dc.b $6A
		dc.b $6E
		dc.b $92
		dc.b $96
		dc.b $9A
		dc.b $9E
                
		dc.b 3
		dc.b 7
		dc.b $B
		dc.b $F
		dc.b $33
		dc.b $37
		dc.b $3B
		dc.b $3F
		dc.b $63
		dc.b $67
		dc.b $6B
		dc.b $6F
		dc.b $93
		dc.b $97
		dc.b $9B
		dc.b $9F
                
		dc.b $10
		dc.b $14
		dc.b $18
		dc.b $1C
		dc.b $40
		dc.b $44
		dc.b $48
		dc.b $4C
		dc.b $70
		dc.b $74
		dc.b $78
		dc.b $7C
		dc.b $A0
		dc.b $A4
		dc.b $A8
		dc.b $AC
                
		dc.b $11
		dc.b $15
		dc.b $19
		dc.b $1D
		dc.b $41
		dc.b $45
		dc.b $49
		dc.b $4D
		dc.b $71
		dc.b $75
		dc.b $79
		dc.b $7D
		dc.b $A1
		dc.b $A5
		dc.b $A9
		dc.b $AD
                
		dc.b $12
		dc.b $16
		dc.b $1A
		dc.b $1E
		dc.b $42
		dc.b $46
		dc.b $4A
		dc.b $4E
		dc.b $72
		dc.b $76
		dc.b $7A
		dc.b $7E
		dc.b $A2
		dc.b $A6
		dc.b $AA
		dc.b $AE
                
		dc.b $13
		dc.b $17
		dc.b $1B
		dc.b $1F
		dc.b $43
		dc.b $47
		dc.b $4B
		dc.b $4F
		dc.b $73
		dc.b $77
		dc.b $7B
		dc.b $7F
		dc.b $A3
		dc.b $A7
		dc.b $AB
		dc.b $AF
                
		dc.b $20
		dc.b $24
		dc.b $28
		dc.b $2C
		dc.b $50
		dc.b $54
		dc.b $58
		dc.b $5C
		dc.b $80
		dc.b $84
		dc.b $88
		dc.b $8C
		dc.b $B0
		dc.b $B4
		dc.b $B8
		dc.b $BC
                
		dc.b $21
		dc.b $25
		dc.b $29
		dc.b $2D
		dc.b $51
		dc.b $55
		dc.b $59
		dc.b $5D
		dc.b $81
		dc.b $85
		dc.b $89
		dc.b $8D
		dc.b $B1
		dc.b $B5
		dc.b $B9
		dc.b $BD
                
		dc.b $22
		dc.b $26
		dc.b $2A
		dc.b $2E
		dc.b $52
		dc.b $56
		dc.b $5A
		dc.b $5E
		dc.b $82
		dc.b $86
		dc.b $8A
		dc.b $8E
		dc.b $B2
		dc.b $B6
		dc.b $BA
		dc.b $BE
                
		dc.b $23
		dc.b $27
		dc.b $2B
		dc.b $2F
		dc.b $53
		dc.b $57
		dc.b $5B
		dc.b $5F
		dc.b $83
		dc.b $87
		dc.b $8B
		dc.b $8F
		dc.b $B3
		dc.b $B7
		dc.b $BB
		dc.b $BF

; =============== S U B R O U T I N E =======================================

sub_126100:
		tst.b   (byte_FFB4D1).l
		bne.s   @Return
		move.b  #1,(byte_FFB4D1).l
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
@Return:
		rts

    ; End of function sub_126100


; =============== S U B R O U T I N E =======================================

sub_126132:
		move.w  (word_FFC0BA).l,d7
		addq.w  #1,d7
		andi.w  #$3F,d7 
		move.w  d7,(word_FFC0BA).l
		move.w  (BATTLESCENE_ALLY).l,d0
		bmi.w   loc_126180
		btst    #1,(byte_FFB4D2).l
		beq.w   loc_126180
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d0
		move.w  (word_FFBC8A).l,d4
		move.w  d4,d1
		andi.w  #$FF,d1
		lsr.w   #8,d4
		addi.w  #$108,d4
		addi.w  #$B8,d1 
		bsr.w   sub_1261F8      
		bra.w   loc_126184
loc_126180:
		bsr.w   sub_12627A
loc_126184:
		lea     (SPRITE_23_PROPERTIES).l,a0
		move.w  d1,(a0)+
		move.w  d2,(a0)+
		move.w  d3,(a0)+
		move.w  d4,(a0)+
		move.b  #2,(byte_FFB4F1).l
		move.w  (BATTLESCENE_ENEMY).l,d0
		bmi.w   loc_1261DC
		btst    #3,(byte_FFB4D2).l
		beq.w   loc_1261DC
		move.w  (word_FFC0BA).l,d7
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d0
		move.w  (word_FFBC8C).l,d4
		move.w  d4,d1
		andi.w  #$FF,d1
		lsr.w   #8,d4
		addi.w  #$98,d4 
		addi.w  #$B0,d1 
		bsr.w   sub_1261F8      
		bra.w   loc_1261E0
loc_1261DC:
		bsr.w   sub_12627A
loc_1261E0:
		lea     (SPRITE_24_PROPERTIES).l,a0
		move.w  d1,(a0)+
		move.w  d2,(a0)+
		move.w  d3,(a0)+
		move.w  d4,(a0)+
		move.b  #1,(byte_FFB4F2).l
		rts

    ; End of function sub_126132


; =============== S U B R O U T I N E =======================================

; In: D0 = status effects

sub_1261F8:
		movem.w d0,-(sp)
		andi.w  #2,d0
		movem.w (sp)+,d0
		beq.w   loc_126226
		move.w  #$600,d2
		move.w  #$C7C0,d3
		lsr.w   #4,d7
		cmpi.w  #3,d7
		bne.s   loc_12621A
		moveq   #1,d4
loc_12621A:
		mulu.w  #6,d7
		add.w   d7,d3
		subi.w  #$20,d1 
		rts
loc_126226:
		movem.w d0,-(sp)
		andi.w  #$30,d0 
		movem.w (sp)+,d0
		beq.w   loc_126254
		subi.w  #$C,d4
		move.w  #$900,d2
		move.w  #$C7D6,d3
		lsr.w   #3,d7
		andi.w  #3,d7
		mulu.w  #6,d7
		add.w   d7,d3
		subi.w  #$20,d1 
		rts
loc_126254:
		movem.w d0,-(sp)
		andi.w  #$C0,d0 
		movem.w (sp)+,d0
		beq.w   sub_12627A
		btst    #3,d7
		beq.w   sub_12627A
		subq.w  #8,d4
		move.w  #$500,d2
		move.w  #$C7D2,d3
		subq.w  #4,d1
		rts

    ; End of function sub_1261F8


; =============== S U B R O U T I N E =======================================

sub_12627A:
		moveq   #1,d1
		move.w  d1,d2
		move.w  d1,d3
		move.w  d1,d4
		rts

    ; End of function sub_12627A


; =============== S U B R O U T I N E =======================================

sub_126284:
		movea.l (p_pt_EnemyBattlesprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.w  (a0)+,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
		move.w  (a0),d0
		adda.w  d0,a0
		lsl.w   #5,d1
		adda.w  d1,a0
		lea     (PALETTE_4_BASE).l,a1
		jmp     (j_CopyPalette).l

    ; End of function sub_126284


; =============== S U B R O U T I N E =======================================

sub_1262A8:
		movea.l (p_pt_EnemyBattlesprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.w  #2,a0
		addq.w  #1,d1
		add.w   d1,d1
		move.w  (a0,d1.w),d0
		adda.w  d0,a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		rts

    ; End of function sub_1262A8


; =============== S U B R O U T I N E =======================================

sub_1262CE:
		movea.l (p_pt_AllyBattlesprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.w  (a0)+,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
		move.w  (a0),d0
		adda.w  d0,a0
		lsl.w   #5,d1
		adda.w  d1,a0
		lea     (PALETTE_3_BASE).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		lea     $A(a0),a0
		move.l  #$A04AE,(a1)+
		move.l  #$460820,(a1)+
		clr.w   (a1)+
		move.w  (a0)+,(a1)+
		rts

    ; End of function sub_1262CE


; =============== S U B R O U T I N E =======================================

LoadWeaponPalette:
		
		movea.l (p_WeaponPalettes).l,a0
		lsl.w   #3,d0
		adda.w  d0,a0
		lea     (PALETTE_2_BASE_11).l,a1
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		clr.w   (a1)+
		move.w  (a0)+,(a1)
		rts

    ; End of function LoadWeaponPalette


; =============== S U B R O U T I N E =======================================

LoadAllyBattlesprite:
		
		movea.l (p_pt_AllyBattlesprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.w  #2,a0
		addq.w  #1,d1
		add.w   d1,d1
		move.w  (a0,d1.w),d0
		adda.w  d0,a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		rts

    ; End of function LoadAllyBattlesprite


; =============== S U B R O U T I N E =======================================

LoadWeaponsprite:
		
		movea.l (p_pt_Weaponsprites).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (MAP_SPRITE_POSITION).l,a1
		move.w  #$7FF,d7
loc_12636E:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12636E
                
		move.w  #$1FF,d7
loc_126378:
		clr.l   (a1)+
		dbf     d7,loc_126378
                
		rts

    ; End of function LoadWeaponsprite


; =============== S U B R O U T I N E =======================================

LoadPlatform:
		movea.l (p_pt_Platforms).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		move.l  a0,-(sp)
		addq.l  #8,a0
		jsr     (j_DecompressGraphics).l
		movea.l (sp)+,a0
		lea     (PALETTE_2_BASE_01).l,a1
		move.w  #$EEE,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		rts

    ; End of function LoadPlatform


; =============== S U B R O U T I N E =======================================

DecompressBackgroundGraphics:
		
		movea.l (p_pt_Backgrounds).l,a0
		move.l  a0,-(sp)
		lsl.w   #3,d0
		movea.l (a0,d0.w),a0
		move.w  d0,-(sp)
		movea.l a0,a4
		adda.w  #$20,a0 
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF4800).l,a1
		move.w  #$5FF,d7
loc_1263D4:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_1263D4
                
		move.w  (sp)+,d0
		movea.l (sp)+,a0
		movea.l 4(a0,d0.w),a0
		jmp     (j_DecompressGraphics).l

    ; End of function DecompressBackgroundGraphics


; =============== S U B R O U T I N E =======================================

LoadBattlesceneBackgrounds:
		
		tst.w   d0
		bpl.s   loc_1263F0
		move.w  d1,d0
		moveq   #-1,d1
loc_1263F0:
		move.w  d1,-(sp)
		move.w  d0,-(sp)
		move.w  d1,d0
		blt.s   loc_126414
		bsr.s   DecompressBackgroundGraphics
		move.l  a4,((CURRENT_OBJECT-$1000000)).w
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF6000).l,a1
		move.w  #$BFF,d7
loc_12640E:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12640E
loc_126414:
		move.w  (sp)+,d0
		blt.s   loc_12642A
		bsr.s   DecompressBackgroundGraphics
		addq.l  #2,a4
		lea     ((byte_FFC0C0-$1000000)).w,a1
		clr.w   (a1)+
		moveq   #$E,d7
loc_126424:
		move.w  (a4)+,(a1)+
		dbf     d7,loc_126424
loc_12642A:
		move.w  (sp)+,d0
		bmi.w   return_12647C
		lea     (FF3000_LOADING_SPACE).l,a1
		lea     (byte_FF6000).l,a0
		move.w  #$2FFF,d7
loc_126440:
		move.b  (a0)+,d0
		beq.s   loc_126462
		move.b  d0,d1
		andi.b  #$F0,d1
		beq.s   loc_12645C
		move.b  d0,d1
		andi.b  #$F,d1
		beq.s   loc_126458
		clr.b   d2
		bra.s   loc_12645A
loc_126458:
		moveq   #$F,d2
loc_12645A:
		bra.s   loc_12645E
loc_12645C:
		moveq   #-16,d2
loc_12645E:
		and.b   d2,(a1)
		or.b    d0,(a1)
loc_126462:
		addq.l  #1,a1
		dbf     d7,loc_126440
                
		lea     ((byte_FFC0D0-$1000000)).w,a1
		movea.l ((CURRENT_OBJECT-$1000000)).w,a3
		lea     $10(a3),a3
		move.l  (a3)+,(a1)+
		move.l  (a3)+,(a1)+
		move.l  (a3)+,(a1)+
		move.l  (a3)+,(a1)+
return_12647C:
		
		rts

    ; End of function LoadBattlesceneBackgrounds

