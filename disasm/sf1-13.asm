
; GAME SECTION 13 :
; Spell graphics and animations
; FREE SPACE : 492 bytes.



; =============== S U B R O U T I N E =======================================

sub_124000:
		jmp     sub_12407C(pc)

    ; End of function sub_124000


; =============== S U B R O U T I N E =======================================

sub_124004:
		jmp     sub_1247F6(pc)

    ; End of function sub_124004


; =============== S U B R O U T I N E =======================================

sub_124008:
		jmp     sub_128FC2(pc)

    ; End of function sub_124008


; =============== S U B R O U T I N E =======================================

sub_12400C:
		jmp     sub_12A4C4(pc)

    ; End of function sub_12400C


; =============== S U B R O U T I N E =======================================

j_ExecutePostBattleScript:
		
		jmp     ExecutePostBattleScript(pc)

    ; End of function j_ExecutePostBattleScript

		jmp     sub_125352(pc)

; =============== S U B R O U T I N E =======================================

sub_124018:
		jmp     sub_12BF7C(pc)

    ; End of function sub_124018


; =============== S U B R O U T I N E =======================================

sub_12401C:
		jmp     sub_12687A(pc)

    ; End of function sub_12401C


; =============== S U B R O U T I N E =======================================

sub_124020:
		jmp     sub_126100(pc)

    ; End of function sub_124020


; =============== S U B R O U T I N E =======================================

j_ExecuteBattlesceneScript:
		
		jmp     ExecuteBattlesceneScript(pc)

    ; End of function j_ExecuteBattlesceneScript


; =============== S U B R O U T I N E =======================================

sub_124028:
		jmp     sub_128F98(pc)

    ; End of function sub_124028


; =============== S U B R O U T I N E =======================================

j_LoadBattlesceneBackgrounds:
		
		jmp     LoadBattlesceneBackgrounds(pc)

    ; End of function j_LoadBattlesceneBackgrounds

p_SpellTiles_Freeze:
		dc.l SpellTiles_Freeze
p_SpellTiles_Bolt:
		dc.l SpellTiles_Bolt
p_SpellTiles_Blaze:
		dc.l SpellTiles_Blaze
p_SpellTiles_Status:
		dc.l SpellTiles_Debuff
p_SpellTiles_Desoul:
		dc.l SpellTiles_Desoul
p_SpellTiles_HealAuraDetox:
		dc.l SpellTiles_Healing
p_SpellTiles_MachineGun:
		dc.l SpellTiles_MachineGun
p_SpellTiles_FlyingDragon:
		dc.l SpellTiles_FlyingDragons
p_SpellTiles_EnergyBlast:
		dc.l SpellTiles_EnergyBlast
p_SpellTiles_Laser:
		dc.l SpellTiles_Laser
p_SpellTiles_LightningBreath:
		dc.l SpellTiles_LightningBreath
p_SpellTiles_BusterShot:
		dc.l SpellTiles_BusterShot
p_SpellTiles_FireBreath:
		dc.l SpellTiles_FireBreath
p_SpellTiles_DemonBlaze:
		dc.l SpellTiles_DemonBlaze
off_124068:     dc.l byte_12F2E2
off_12406C:     dc.l byte_12F502
off_124070:     dc.l byte_12F70E
p_ChapterEndTiles:
		dc.l ChapterEndTiles
p_IntroTiles_SpeckOfLight:
		dc.l IntroTiles_SpeckOfLight

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
		move.w  #$FFFF,(a5)
@Loop:
		move.w  (a6)+,d0
		cmpi.w  #$FFFF,d0
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
		jsr     j_GetBattleSpritePaletteAndAnimationIndexes
		move.w  d1,((ENEMY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ENEMY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ENEMY_BATTLE_ANIMATION-$1000000)).w
		move.w  (a6)+,d0
		move.w  d0,((BATTLESCENE_ALLY-$1000000)).w
		jsr     j_GetBattleSpritePaletteAndAnimationIndexes
		move.w  d1,((ALLY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ALLY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ALLY_BATTLE_ANIMATION-$1000000)).w
		jsr     j_GetEquippedWeaponIndex
		move.w  d2,((word_FFBC76-$1000000)).w
		move.w  d3,((word_FFBC78-$1000000)).w
		move.w  #100,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
		move.w  #101,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_WaitForVInt).l
		sndCom  MUSIC_ATTACK
		jsr     (j_DisableDisplayAndInterrupts).w
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$7FF,d0
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
		lea     BackgroundTransitionTiles1(pc), a0
		nop
		lea     (PALETTE_1_CURRENT).l,a2
		moveq   #$3F,d0 
loc_1241E6:
		move.w  #0,(a2)+
		dbf     d0,loc_1241E6
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		move.w  #$3FF,d7
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
		lea     StatusEffectsTiles(pc), a0
		lea     ($F800).l,a1
		move.w  #$300,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		move.b  #$30,((word_FFBC8A-$1000000)).w 
		move.b  #$20,((word_FFBC8A+1-$1000000)).w 
		move.b  #$40,((word_FFBC8C-$1000000)).w 
		move.b  #$20,((word_FFBC8C+1-$1000000)).w 
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
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
		cmpi.w  #$FFFF,d0
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
		move.w  ((word_FFBC76-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1243CE
		bsr.w   LoadWeaponsprite
		move.w  ((ALLY_BATTLE_ANIMATION-$1000000)).w,d0
		movea.l (p_pt_AllyAnimations).l,a0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		addq.l  #4,a0
		move.w  (a0)+,((word_FFB544-$1000000)).w
		move.w  ((word_FFB544-$1000000)).w,((byte_FFB540-$1000000)).w
		move.w  (a0)+,((word_FFB546-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((byte_FFB540-$1000000)).w,d0
		andi.w  #$F,d0
		ror.w   #5,d0
		adda.w  d0,a0
		lea     ($A400).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		move.w  ((word_FFBC78-$1000000)).w,d0
		bsr.w   LoadWeaponPalette
loc_1243CE:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1243DE
		jsr     sub_8014
loc_1243DE:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
		beq.s   loc_1243EE
		jsr     sub_8018
loc_1243EE:
		lea     byte_12570A(pc), a0
		lea     (byte_FFD1C0).l,a1
		move.w  #$300,d7
		jsr     (j_CopyBytes).l
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDma).l
		jsr     (j_EnableDisplayAndInterrupts).w
		moveq   #$FFFFFFE0,d6
		bsr.w   sub_1251A0
		moveq   #$20,d6 
		jsr     (j_UpdateBackgroundHScrollData).w
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,((ENEMY_BATTLESPRITE_ANIMATION_COUNTER-$1000000)).w
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,((ALLY_BATTLESPRITE_ANIMATION_COUNTER-$1000000)).w
		move.l  #VInt_UpdateBattlesceneGraphics,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.b  #$A,((byte_FFB4D2-$1000000)).w
		clr.w   d1
		bsr.w   sub_125FB4
		bsr.w   sub_126100
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #$FFFFFFE0,d6
		moveq   #$20,d7 
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
		cmpi.w  #$27,d1 
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
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		rts

    ; End of function bsc00_


; =============== S U B R O U T I N E =======================================

sub_1244CA:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		jsr     j_GetStatusEffectsForCombatant
		movem.w d1,-(sp)
		andi.w  #$C00,d1
		movem.w (sp)+,d1
		beq.s   loc_1244EC
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		add.w   d0,d0
		move.w  d0,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_1244EC:
		move.w  d1,-(sp)
		andi.w  #$300,d1
		movem.w (sp)+,d1
		beq.s   loc_124502
		move.w  ((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		lsr.w   #1,d0
		move.w  d0,((ENEMY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_124502:
		move.w  d1,-(sp)
		andi.w  #2,d1
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
		andi.w  #$C00,d1
		movem.w (sp)+,d1
		beq.s   loc_124538
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		add.w   d0,d0
		move.w  d0,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_124538:
		movem.w d1,-(sp)
		andi.w  #$300,d1
		movem.w (sp)+,d1
		beq.s   loc_124550
		move.w  ((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w,d0
		lsr.w   #1,d0
		move.w  d0,((ALLY_BATTLESPRITE_ANIMATION_SPEED-$1000000)).w
loc_124550:
		move.w  d1,-(sp)
		andi.w  #2,d1
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
		cmpi.b  #$FF,d0
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
		cmpi.b  #$FF,d0
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
		move.l  (a0)+,((byte_FFB540-$1000000)).w
loc_124672:
		movem.l a0,-(sp)
		movem.w d3-d7,-(sp)
		btst    #0,((byte_FFB5BB-$1000000)).w
		beq.s   loc_1246BE
		bsr.w   sub_1253CC
		cmpi.w  #$FFFF,((word_FFBC76-$1000000)).w
		beq.s   loc_1246BC
		clr.w   d0
		move.b  ((byte_FFB540-$1000000)).w,d0
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
		cmpi.b  #$FF,d0
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
		move.w  ((word_FFB544-$1000000)).w,((byte_FFB540-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		clr.w   d0
		clr.w   d1
		bsr.w   sub_1253CC
		cmpi.w  #$FFFF,((word_FFBC76-$1000000)).w
		beq.s   loc_1247D8
		lea     (MAP_SPRITE_POSITION).l,a0
		move.b  ((byte_FFB540-$1000000)).w,d0
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
		move.w  #$FFFF,(a5)+

    ; End of function sub_1247F6


; =============== S U B R O U T I N E =======================================

bsc17_:
		jsr     sub_12400C
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a5
		cmpi.w  #$FFFF,(a5)
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
		cmpi.w  #$FFFF,d0
		beq.w   loc_1248FA
		jsr     j_GetMapSpriteForCombatant
		lsl.w   #2,d1
		movem.l d6,-(sp)
		neg.w   d6
		addq.w  #3,d6
		dbf     d6,loc_124854
		movea.l (p_pt_MapSprites+4).l,a3
		lea     (SPRITE_22_TILE_FLAGS).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		andi.b  #$F7,(a1,d2.w)
		bra.s   loc_124892
loc_124854:
		dbf     d6,loc_124860
		movea.l (p_pt_MapSprites+8).l,a3
		bra.s   loc_124892
loc_124860:
		dbf     d6,loc_12487C
		movea.l (p_pt_MapSprites+4).l,a3
		lea     (SPRITE_22_TILE_FLAGS).l,a1
		move.w  d0,d2
		lsl.w   #3,d2
		ori.b   #8,(a1,d2.w)
		bra.s   loc_124892
loc_12487C:
		movea.l (p_pt_MapSprites).l,a3
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
		cmpi.w  #$FFFF,-(a4)
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
		cmpi.w  #$FFFF,d0
		beq.w   loc_1249AC
		movem.l a0,-(sp)
		jsr     j_GetStatusEffectsForCombatant
		andi.w  #4,d1
		jsr     j_SetStatusEffectsForCombatant
		moveq   #$FFFFFFFF,d1
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
		moveq   #$A,d0
		jsr     (j_Sleep).l
		move.w  (sp)+,d7
		movem.l (sp)+,a0/a5
		adda.w  #$120,a0
		dbf     d7,loc_12493C
		jsr     sub_8028
loc_1249CE:
		move.w  #$FFFF,(a5)
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
		jsr     j_IncreaseCurrentHPforCombatant
		move.w  (a6)+,d1
		jsr     j_IncreaseCurrentMPforCombatant
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

off_124A14:     dc.w return_124B20-off_124A14
		dc.w sub_124A1A-off_124A14
		dc.w sub_124B4C-off_124A14

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
		move.w  #$FFFF,(a5)
		bsr.w   sub_124C58
return_124B20:
		
		rts
loc_124B22:
		move.w  ((BATTLESCENE_ALLY-$1000000)).w,d0
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)
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
		jsr     j_IncreaseCurrentHPforCombatant
		move.w  (a6)+,d1
		jsr     j_IncreaseCurrentMPforCombatant
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

off_124B8A:     dc.w return_124C3A-off_124B8A
		dc.w sub_124B90-off_124B8A
		dc.w sub_124C52-off_124B8A

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
		moveq   #$FFFFFFFF,d0
		bsr.w   sub_1255CC
		jsr     (j_WaitForVInt).l
		move.w  (sp)+,d0
		dbf     d0,loc_124BD6
		moveq   #$FFFFFFFF,d0
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
		move.w  #$FFFF,(a5)
		bsr.w   sub_124D46
return_124C3A:
		
		rts
loc_124C3C:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		move.w  d0,(a5)+
		move.w  #$FFFF,(a5)
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
		adda.w  #$E00,a0
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
		cmpi.w  #$FFFF,((word_FFBC76-$1000000)).w
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
		move.w  #$47F,d7
loc_124D30:
		clr.l   (a0)+
		dbf     d7,loc_124D30
		adda.w  #$E00,a0
		move.w  #$1FF,d7
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
		move.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
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
		jsr     (sub_304).l
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
		jsr     (sub_304).l
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
		move.w  #$1EA,d0        ; "[Dict][Line]"
		trap    #DISPLAY_MESSAGE
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
		moveq   #$1F,d0
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
		jsr     j_GetBattleSpritePaletteAndAnimationIndexes
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
		move.w  #$BFF,d7
		bset    #ENABLE_VINT,(VINT_PARAMS).l
						; enable VInt
loc_124F82:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_124F82
		lea     BackgroundTransitionTiles2(pc), a0
		nop
		jsr     (j_DecompressGraphics).l
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (byte_FF4800).l,a1
		bset    #ENABLE_VINT,(VINT_PARAMS).l
						; enable VInt
		move.w  #$5FF,d7
loc_124FAC:
		move.l  (a0)+,(a1)+
		dbf     d7,loc_124FAC
		lea     BackgroundTransitionTiles1(pc), a0
		nop
		jsr     (j_DecompressGraphics).l
		moveq   #1,d0
		bsr.w   sub_12566E
		lea     (byte_FFD980).l,a0
		move.l  a0,-(sp)
		move.w  #$400,d7
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
		move.w  #$FFE0,d6
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
		moveq   #$B,d0
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
		subi.w  #$20,d6 
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
		move.w  #$FFE0,d6
loc_12509C:
		movem.l d7-a1,-(sp)
		bsr.w   sub_12518C
		jsr     (j_UpdateVdpHScrollData).l
		jsr     (j_WaitForDmaQueueProcessing).w
		subi.w  #$20,d6 
		movem.l (sp)+,d7-a1
		adda.w  #$600,a0
		adda.w  #$600,a1
		dbf     d7,loc_12509C
		lea     (byte_FF6000).l,a0
		lea     ($2000).w,a1
		moveq   #7,d7
		move.w  #$FFE0,d6
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
		subi.w  #$20,d6 
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
		cmpi.w  #$FFFF,((BATTLESCENE_ALLY-$1000000)).w
		beq.s   return_12518A
		move.w  ((word_FFBC76-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
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
		jsr     j_GetBattleSpritePaletteAndAnimationIndexes
		move.w  d1,((ALLY_BATTLE_SPRITE-$1000000)).w
		move.w  d2,((ALLY_BATTLE_PALETTE-$1000000)).w
		move.w  d3,((ALLY_BATTLE_ANIMATION-$1000000)).w
		move.w  #$100,d1
		jsr     j_GetEquippedItemForCombatant
		move.w  d2,d1
		cmpi.w  #$FFFF,d1
		beq.s   loc_12522E
		jsr     j_GetEquippedWeaponIndex
		bra.s   loc_125232
loc_12522E:
		moveq   #$FFFFFFFF,d2
		moveq   #$FFFFFFFF,d3
loc_125232:
		move.w  d2,((word_FFBC76-$1000000)).w
		move.w  d3,((word_FFBC78-$1000000)).w
		move.w  ((word_FFBC76-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
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
		move.w  ((word_FFB544-$1000000)).w,((byte_FFB540-$1000000)).w
		move.w  ((word_FFB546-$1000000)).w,((byte_FFB542-$1000000)).w
		move.w  ((word_FFBC78-$1000000)).w,d0
		bsr.w   LoadWeaponPalette
		move.b  ((byte_FFB540-$1000000)).w,d0
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
		lea     word_1255B4(pc), a0
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
		lea     word_125534(pc), a0
		clr.w   d7
		move.b  ((byte_FFB540-$1000000)).w,d7
		andi.w  #$30,d7 
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
		lea     word_1254A4(pc), a0
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

word_1254A4:    ; sprite properties
		dc.w $C0
		dc.w $F00
		dc.w $C400
		dc.w $108
		dc.w $E0
		dc.w $F00
		dc.w $C410
		dc.w $108
		dc.w $100
		dc.w $F00
		dc.w $C420
		dc.w $108
		dc.w $C0
		dc.w $F00
		dc.w $C430
		dc.w $128
		dc.w $E0
		dc.w $F00
		dc.w $C440
		dc.w $128
		dc.w $100
		dc.w $F00
		dc.w $C450
		dc.w $128
		dc.w $C0
		dc.w $F00
		dc.w $C460
		dc.w $148
		dc.w $E0
		dc.w $F00
		dc.w $C470
		dc.w $148
		dc.w $100
		dc.w $F00
		dc.w $C480
		dc.w $148
		dc.w $C0
		dc.w $F00
		dc.w $CC00
		dc.w $148
		dc.w $E0
		dc.w $F00
		dc.w $CC10
		dc.w $148
		dc.w $100
		dc.w $F00
		dc.w $CC20
		dc.w $148
		dc.w $C0
		dc.w $F00
		dc.w $CC30
		dc.w $128
		dc.w $E0
		dc.w $F00
		dc.w $CC40
		dc.w $128
		dc.w $100
		dc.w $F00
		dc.w $CC50
		dc.w $128
		dc.w $C0
		dc.w $F00
		dc.w $CC60
		dc.w $108
		dc.w $E0
		dc.w $F00
		dc.w $CC70
		dc.w $108
		dc.w $100
		dc.w $F00
		dc.w $CC80
		dc.w $108
word_125534:    dc.w $C0
		dc.w $F00
		dc.w $A520
		dc.w $108
		dc.w $E0
		dc.w $F00
		dc.w $A530
		dc.w $108
		dc.w $C0
		dc.w $F00
		dc.w $A540
		dc.w $128
		dc.w $E0
		dc.w $F00
		dc.w $A550
		dc.w $128
		dc.w $C0
		dc.w $F00
		dc.w $AD20
		dc.w $128
		dc.w $E0
		dc.w $F00
		dc.w $AD30
		dc.w $128
		dc.w $C0
		dc.w $F00
		dc.w $AD40
		dc.w $108
		dc.w $E0
		dc.w $F00
		dc.w $AD50
		dc.w $108
		dc.w $E0
		dc.w $F00
		dc.w $B520
		dc.w $108
		dc.w $C0
		dc.w $F00
		dc.w $B530
		dc.w $108
		dc.w $E0
		dc.w $F00
		dc.w $B540
		dc.w $128
		dc.w $C0
		dc.w $F00
		dc.w $B550
		dc.w $128
		dc.w $E0
		dc.w $F00
		dc.w $BD20
		dc.w $128
		dc.w $C0
		dc.w $F00
		dc.w $BD30
		dc.w $128
		dc.w $E0
		dc.w $F00
		dc.w $BD40
		dc.w $108
		dc.w $C0
		dc.w $F00
		dc.w $BD50
		dc.w $108
word_1255B4:    dc.w $10C
		dc.w $F00
		dc.w $2560
		dc.w $100
		dc.w $10C
		dc.w $F00
		dc.w $2570
		dc.w $120
		dc.w $10C
		dc.w $F00
		dc.w $2580
		dc.w $140

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
		cmpi.w  #$27,d1 
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
		cmpi.w  #$FFFF,d0
		beq.s   loc_1256B2
		jsr     sub_8014
loc_1256B2:
		move.w  ((BATTLESCENE_ENEMY-$1000000)).w,d0
		cmpi.w  #$FFFF,d0
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
BackgroundTransitionTiles1:
		incbin "data/graphics/battles/backgroundtransitiontiles1.bin"
BackgroundTransitionTiles2:
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
StatusEffectsTiles:
		incbin "data/graphics/battles/statuseffectstiles.bin"

; =============== S U B R O U T I N E =======================================

VInt_UpdateBattlesceneGraphics:
		
		clr.b   (byte_FFB4D1).l
		bsr.w   UpdateEnemyBattleSprite
		bsr.w   UpdateAllyBattleSprite
		bsr.w   sub_126132
		bsr.w   UpdateSpellAnimation
		jsr     (sub_320).l
		rts

    ; End of function VInt_UpdateBattlesceneGraphics


; =============== S U B R O U T I N E =======================================

UpdateEnemyBattleSprite:
		
		btst    #3,(byte_FFB4D2).l
		beq.w   @Return
		subq.w  #1,(ENEMY_BATTLESPRITE_ANIMATION_COUNTER).l
		bne.w   @Return
		clr.w   d1
		bsr.w   sub_125FB4
		move.w  (ENEMY_BATTLESPRITE_ANIMATION_SPEED).l,(ENEMY_BATTLESPRITE_ANIMATION_COUNTER).l
@Return:
		rts

    ; End of function UpdateEnemyBattleSprite


; =============== S U B R O U T I N E =======================================

UpdateAllyBattleSprite:
		
		btst    #1,(byte_FFB4D2).l
		beq.w   @Return
		subq.w  #1,(ALLY_BATTLESPRITE_ANIMATION_COUNTER).l
		bne.w   @Return
		clr.w   d1
		bsr.w   sub_125FA4
		move.w  (ALLY_BATTLESPRITE_ANIMATION_SPEED).l,(ALLY_BATTLESPRITE_ANIMATION_COUNTER).l
@Return:
		rts

    ; End of function UpdateAllyBattleSprite


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
		moveq   #$1F,d5
		sub.w   d6,d5
		add.w   d5,d5
		adda.w  d5,a1
		dbf     d7,loc_126018
		bsr.w   sub_126100
		rts

    ; End of function sub_125FB4

byte_12603E:    dc.b $10
		dc.b $C
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
		movea.l (p_pt_EnemyBattleSprites).l,a0
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
		movea.l (p_pt_EnemyBattleSprites).l,a0
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
		movea.l (p_pt_AllyBattleSprites).l,a0
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
		
		movea.l (p_pt_AllyBattleSprites).l,a0
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
		
		movea.l (p_pt_WeaponSprites).l,a0
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
		moveq   #$FFFFFFFF,d1
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
		moveq   #$FFFFFFF0,d2
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


; =============== S U B R O U T I N E =======================================

; In: D0 = spell animation index

ExecuteSpellAnimation:
		
		tst.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bne.w   return_1266BE
		tst.b   d0
		bmi.w   return_1266BE
		move.w  d0,d7
		add.w   d7,d7
		move.w  rjt_SpellAnimationSetups(pc,d7.w),d7
		jmp     rjt_SpellAnimationSetups(pc,d7.w)

    ; End of function ExecuteSpellAnimation

rjt_SpellAnimationSetups:
		dc.w sa00_HealingFairy_Mirrored-rjt_SpellAnimationSetups
		dc.w sa01_HealingFairy-rjt_SpellAnimationSetups
		dc.w sa00_HealingFairy_Mirrored-rjt_SpellAnimationSetups
		dc.w sa01_HealingFairy-rjt_SpellAnimationSetups
		dc.w sa04_Detox_Mirrored-rjt_SpellAnimationSetups
		dc.w sa05_Detox-rjt_SpellAnimationSetups
		dc.w sa06_Quick-rjt_SpellAnimationSetups
		dc.w sa06_Quick-rjt_SpellAnimationSetups
		dc.w sa08_Slow-rjt_SpellAnimationSetups
		dc.w sa09_Slow_Mirrored-rjt_SpellAnimationSetups
		dc.w sa10_Boost-rjt_SpellAnimationSetups
		dc.w sa10_Boost-rjt_SpellAnimationSetups
		dc.w sa12_Dispel-rjt_SpellAnimationSetups
		dc.w sa13_Dispel_Mirrored-rjt_SpellAnimationSetups
		dc.w sa14_Shield-rjt_SpellAnimationSetups
		dc.w sa14_Shield-rjt_SpellAnimationSetups
		dc.w sa16_Muddle-rjt_SpellAnimationSetups
		dc.w sa17_Muddle_Mirrored-rjt_SpellAnimationSetups
		dc.w sa18_Blaze1-rjt_SpellAnimationSetups
		dc.w sa19_Blaze1_Mirrored-rjt_SpellAnimationSetups
		dc.w sa20_Blaze2-rjt_SpellAnimationSetups
		dc.w sa21_Blaze2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa22_Blaze3-rjt_SpellAnimationSetups
		dc.w sa23_Blaze3_Mirrored-rjt_SpellAnimationSetups
		dc.w sa24_Blaze4-rjt_SpellAnimationSetups
		dc.w sa25_Blaze4_Mirrored-rjt_SpellAnimationSetups
		dc.w sa26_Freeze1-rjt_SpellAnimationSetups
		dc.w sa27_Freeze1_Mirrored-rjt_SpellAnimationSetups
		dc.w sa28_Freeze2-rjt_SpellAnimationSetups
		dc.w sa29_Freeze2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa30_Freeze3-rjt_SpellAnimationSetups
		dc.w sa31_Freeze3_Mirrored-rjt_SpellAnimationSetups
		dc.w sa32_Freeze4-rjt_SpellAnimationSetups
		dc.w sa33_Freeze4_Mirrored-rjt_SpellAnimationSetups
		dc.w sa34_Bolt1-rjt_SpellAnimationSetups
		dc.w sa35_Bolt1_Mirrored-rjt_SpellAnimationSetups
		dc.w sa36_Bolt2-rjt_SpellAnimationSetups
		dc.w sa37_Bolt2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa38_Bolt3-rjt_SpellAnimationSetups
		dc.w sa39_Bolt3_Mirrored-rjt_SpellAnimationSetups
		dc.w sa40_Bolt4-rjt_SpellAnimationSetups
		dc.w sa41_Bolt4_Mirrored-rjt_SpellAnimationSetups
		dc.w sa42_Desoul-rjt_SpellAnimationSetups
		dc.w sa43_Desoul_Mirrored-rjt_SpellAnimationSetups
		dc.w sa44_Sleep-rjt_SpellAnimationSetups
		dc.w sa45_Sleep_Mirrored-rjt_SpellAnimationSetups
		dc.w sa46_FireBreath-rjt_SpellAnimationSetups
		dc.w sa47_IceBreath-rjt_SpellAnimationSetups
		dc.w nullsub_126532-rjt_SpellAnimationSetups
		dc.w sa49_MachineGun-rjt_SpellAnimationSetups
		dc.w sa46_FireBreath-rjt_SpellAnimationSetups
		dc.w sa46_FireBreath-rjt_SpellAnimationSetups
		dc.w sa47_IceBreath-rjt_SpellAnimationSetups
		dc.w nullsub_126532-rjt_SpellAnimationSetups
		dc.w sa54_AssaultShell_Mirrored-rjt_SpellAnimationSetups
		dc.w sa55_GreenLaser1_Mirrored-rjt_SpellAnimationSetups
		dc.w nullsub_126532-rjt_SpellAnimationSetups
		dc.w sa57_GreenLaser2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa58_LaserEye-rjt_SpellAnimationSetups
		dc.w sa57_GreenLaser2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa60_DemonBlaze1-rjt_SpellAnimationSetups
		dc.w sa61_DemonBlaze2-rjt_SpellAnimationSetups
		dc.w sa62_CriticalHit-rjt_SpellAnimationSetups
		dc.w sa63_DemonSmile-rjt_SpellAnimationSetups
		dc.w sa64_AssaultShell-rjt_SpellAnimationSetups
		dc.w sa65_YellowLightningBreath-rjt_SpellAnimationSetups
		dc.w sa66_GreenLaser1-rjt_SpellAnimationSetups
		dc.w sa67_PowerFist-rjt_SpellAnimationSetups
		dc.w sa68_SwordBeam-rjt_SpellAnimationSetups
		dc.w sa69_Crossbow1-rjt_SpellAnimationSetups
		dc.w sa70_BusterShot-rjt_SpellAnimationSetups
		dc.w sa71_YellowFlyingDragons-rjt_SpellAnimationSetups
		dc.w sa72_BlueLightningBreath-rjt_SpellAnimationSetups
		dc.w sa73_BlueLaser-rjt_SpellAnimationSetups
		dc.w sa74_BlueFlyingDragons-rjt_SpellAnimationSetups
		dc.w sa75_Crossbow2-rjt_SpellAnimationSetups
		dc.w sa76_Crossbow3-rjt_SpellAnimationSetups

; =============== S U B R O U T I N E =======================================

nullsub_126532:
		
		rts

    ; End of function nullsub_126532


; =============== S U B R O U T I N E =======================================

sa00_HealingFairy_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa00_HealingFairy_Mirrored


; =============== S U B R O U T I N E =======================================

sa01_HealingFairy:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa01_HealingFairy


; =============== S U B R O U T I N E =======================================

sa04_Detox_Mirrored:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa04_Detox_Mirrored


; =============== S U B R O U T I N E =======================================

sa05_Detox:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa05_Detox


; =============== S U B R O U T I N E =======================================

sa06_Quick:
		moveq   #QUICK_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function sa06_Quick


; =============== S U B R O U T I N E =======================================

sa08_Slow:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Slow

    ; End of function sa08_Slow


; =============== S U B R O U T I N E =======================================

sa09_Slow_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Slow

    ; End of function sa09_Slow_Mirrored


; =============== S U B R O U T I N E =======================================

sa10_Boost:
		moveq   #BOOST_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function sa10_Boost


; =============== S U B R O U T I N E =======================================

sa12_Dispel:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Dispel

    ; End of function sa12_Dispel


; =============== S U B R O U T I N E =======================================

sa13_Dispel_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Dispel

    ; End of function sa13_Dispel_Mirrored


; =============== S U B R O U T I N E =======================================

sa14_Shield:
		moveq   #SHIELD_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function sa14_Shield


; =============== S U B R O U T I N E =======================================

sa16_Muddle:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Muddle

    ; End of function sa16_Muddle


; =============== S U B R O U T I N E =======================================

sa17_Muddle_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Muddle

    ; End of function sa17_Muddle_Mirrored


; =============== S U B R O U T I N E =======================================

sa18_Blaze1:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa18_Blaze1


; =============== S U B R O U T I N E =======================================

sa19_Blaze1_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa19_Blaze1_Mirrored


; =============== S U B R O U T I N E =======================================

sa20_Blaze2:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa20_Blaze2


; =============== S U B R O U T I N E =======================================

sa21_Blaze2_Mirrored:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa21_Blaze2_Mirrored


; =============== S U B R O U T I N E =======================================

sa22_Blaze3:
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa22_Blaze3


; =============== S U B R O U T I N E =======================================

sa23_Blaze3_Mirrored:
		
		moveq   #$FFFFFF83,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa23_Blaze3_Mirrored


; =============== S U B R O U T I N E =======================================

sa24_Blaze4:
		moveq   #4,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa24_Blaze4


; =============== S U B R O U T I N E =======================================

sa25_Blaze4_Mirrored:
		
		moveq   #$FFFFFF84,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa25_Blaze4_Mirrored


; =============== S U B R O U T I N E =======================================

sa26_Freeze1:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa26_Freeze1


; =============== S U B R O U T I N E =======================================

sa27_Freeze1_Mirrored:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa27_Freeze1_Mirrored


; =============== S U B R O U T I N E =======================================

sa28_Freeze2:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa28_Freeze2


; =============== S U B R O U T I N E =======================================

sa29_Freeze2_Mirrored:
		
		moveq   #2,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa29_Freeze2_Mirrored


; =============== S U B R O U T I N E =======================================

sa30_Freeze3:
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa30_Freeze3


; =============== S U B R O U T I N E =======================================

sa31_Freeze3_Mirrored:
		
		moveq   #3,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa31_Freeze3_Mirrored


; =============== S U B R O U T I N E =======================================

sa32_Freeze4:
		moveq   #4,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa32_Freeze4


; =============== S U B R O U T I N E =======================================

sa33_Freeze4_Mirrored:
		
		moveq   #4,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa33_Freeze4_Mirrored


; =============== S U B R O U T I N E =======================================

sa34_Bolt1:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa34_Bolt1


; =============== S U B R O U T I N E =======================================

sa35_Bolt1_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa35_Bolt1_Mirrored


; =============== S U B R O U T I N E =======================================

sa36_Bolt2:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa36_Bolt2


; =============== S U B R O U T I N E =======================================

sa37_Bolt2_Mirrored:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa37_Bolt2_Mirrored


; =============== S U B R O U T I N E =======================================

sa38_Bolt3:
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa38_Bolt3


; =============== S U B R O U T I N E =======================================

sa39_Bolt3_Mirrored:
		
		moveq   #$FFFFFF83,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa39_Bolt3_Mirrored


; =============== S U B R O U T I N E =======================================

sa40_Bolt4:
		moveq   #4,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa40_Bolt4


; =============== S U B R O U T I N E =======================================

sa41_Bolt4_Mirrored:
		
		moveq   #$FFFFFF84,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa41_Bolt4_Mirrored


; =============== S U B R O U T I N E =======================================

sa42_Desoul:
		clr.w   d3
		bra.w   SetupSpellAnimation_Desoul

    ; End of function sa42_Desoul


; =============== S U B R O U T I N E =======================================

sa43_Desoul_Mirrored:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Desoul

    ; End of function sa43_Desoul_Mirrored


; =============== S U B R O U T I N E =======================================

sa44_Sleep:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Sleep

    ; End of function sa44_Sleep


; =============== S U B R O U T I N E =======================================

sa45_Sleep_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Sleep

    ; End of function sa45_Sleep_Mirrored


; =============== S U B R O U T I N E =======================================

sa46_FireBreath:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_FireBreath

    ; End of function sa46_FireBreath


; =============== S U B R O U T I N E =======================================

sa47_IceBreath:
		
		moveq   #4,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa47_IceBreath


; =============== S U B R O U T I N E =======================================

sa49_MachineGun:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_MachineGun

    ; End of function sa49_MachineGun


; =============== S U B R O U T I N E =======================================

sa55_GreenLaser1_Mirrored:
		
		moveq   #$FFFFFF80,d3
		bra.w   SetupSpellAnimation_GreenLaser

    ; End of function sa55_GreenLaser1_Mirrored


; =============== S U B R O U T I N E =======================================

sa57_GreenLaser2_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_GreenLaser

    ; End of function sa57_GreenLaser2_Mirrored


; =============== S U B R O U T I N E =======================================

sa58_LaserEye:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_LaserEye

    ; End of function sa58_LaserEye


; =============== S U B R O U T I N E =======================================

sa69_Crossbow1:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Crossbow

    ; End of function sa69_Crossbow1


; =============== S U B R O U T I N E =======================================

sa75_Crossbow2:
		
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Crossbow

    ; End of function sa75_Crossbow2


; =============== S U B R O U T I N E =======================================

sa76_Crossbow3:
		
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Crossbow

    ; End of function sa76_Crossbow3


; =============== S U B R O U T I N E =======================================

sa62_CriticalHit:
		
		 
		sndCom  SFX_CRITICAL_HIT
		rts

    ; End of function sa62_CriticalHit


; =============== S U B R O U T I N E =======================================

sa63_DemonSmile:
		
		 
		sndCom  SFX_DEMON_SMILE
		rts

    ; End of function sa63_DemonSmile


; =============== S U B R O U T I N E =======================================

sa54_AssaultShell_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_AssaultShell

    ; End of function sa54_AssaultShell_Mirrored


; =============== S U B R O U T I N E =======================================

sa64_AssaultShell:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_AssaultShell

    ; End of function sa64_AssaultShell

		rts

; =============== S U B R O U T I N E =======================================

sa60_DemonBlaze1:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_DemonBlaze

    ; End of function sa60_DemonBlaze1


; =============== S U B R O U T I N E =======================================

sa61_DemonBlaze2:
		
		moveq   #2,d3
		bra.w   SetupSpellAnimation_DemonBlaze

    ; End of function sa61_DemonBlaze2


; =============== S U B R O U T I N E =======================================

; In: D2 = spell cast effect color index

PlaySpellCastEffect:
		
		 
		sndCom  SFX_SPELL_CAST
loc_12668A:
		add.w   d2,d2
		move.w  tbl_SpellCastEffectColors(pc,d2.w),d4
		moveq   #4,d7
@Loop:
		move.w  d4,(PALETTE_1_CURRENT).l
		jsr     (j_ApplyVIntCramDma).l
		moveq   #5,d0
		jsr     (j_Sleep).l
		clr.w   (PALETTE_1_CURRENT).l
		jsr     (j_ApplyVIntCramDma).l
		moveq   #5,d0
		jsr     (j_Sleep).l
		dbf     d7,@Loop
return_1266BE:
		
		rts

    ; End of function PlaySpellCastEffect

tbl_SpellCastEffectColors:
		dc.w $6CC
		dc.w $8E
		dc.w $E04
		dc.w $444
		dc.w $2E
		dc.w $82A
		dc.w $E42
		dc.w $2EE
		dc.w $2E4
		dc.w $24E
		dc.w $888
		dc.w $E00
		dc.w $4E0

; =============== S U B R O U T I N E =======================================

sub_1266DA:
		lea     byte_1266F0(pc), a0
		nop
		moveq   #$20,d0 
		jsr     sub_1271EC(pc)
		nop
		jsr     sub_1271EC(pc)
		nop
		rts

    ; End of function sub_1266DA

byte_1266F0:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b $90
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $90
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 0
		dc.b 2

; =============== S U B R O U T I N E =======================================

sub_126704:
		moveq   #$20,d0 
		moveq   #$13,d7
loc_126708:
		lea     byte_126720(pc), a0
		nop
		jsr     sub_1271EC(pc)
		nop
		dbf     d7,loc_126708
		jsr     (sub_320).l
		rts

    ; End of function sub_126704

byte_126720:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 0
		dc.b 0

; =============== S U B R O U T I N E =======================================

; In: D0 = 
;     D1 = sprite layer
;     D2 = number of graphics pieces to load
;     D3 = X offset
;     D4 = Y offset

LoadSpellEntityLayout:
		
		move.b  #1,((byte_FFB5B0-$1000000)).w
		movem.l d0-a1,-(sp)
loc_126734:
		move.b  (a0)+,d5
		ext.w   d5
		move.b  (a0)+,d6
		ext.w   d6
		clr.w   d7
		move.b  (a0)+,d7
		add.w   d3,d5
		addi.w  #$80,d5 
		add.w   d4,d6
		addi.w  #$80,d6 
		addi.w  #$5C0,d7
		cmpi.w  #$90,d6 
		bgt.s   loc_126758
		clr.w   d6
loc_126758:
		movem.l a0,-(sp)
		lea     ((byte_FFC0AA-$1000000)).w,a1
		movem.l a1,-(sp)
		move.w  d5,(a1)+
		move.w  d6,(a1)+
		move.w  d7,(a1)+
		move.b  (a0)+,(a1)+
		move.b  ((byte_FFB5B0-$1000000)).w,(a1)+
		move.b  (a0)+,(a1)+
		move.b  d1,(a1)
		movem.l (sp)+,a0
		jsr     sub_1271EC(pc)
		nop
		movem.l (sp)+,a0
		addq.l  #2,a0
		dbf     d2,loc_126734
		movem.l (sp)+,d0-a1
		rts

    ; End of function LoadSpellEntityLayout


; =============== S U B R O U T I N E =======================================

CopyPalettes:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		lea     (PALETTE_1_BASE).l,a1
		moveq   #$1F,d7
@Loop:
		move.l  (a0)+,(a1)+
		dbf     d7,@Loop
                
		movem.l (sp)+,a0-a1
		rts

    ; End of function CopyPalettes


; =============== S U B R O U T I N E =======================================

; Call copy palettes function, then apply dark screen tint effect

SetupScreenTint_Dark:
		
		bsr.s   CopyPalettes

    ; End of function SetupScreenTint_Dark


; =============== S U B R O U T I N E =======================================

TintScreen_Dark:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
@Loop:
		lsr     (a0)+
		dbf     d7,@Loop
                
		movem.l (sp)+,a0-a1
		rts

    ; End of function TintScreen_Dark


; =============== S U B R O U T I N E =======================================

RefreshScreenTint_Dark:
		
		bsr.w   CopySpellPalette
		bsr.s   TintScreen_Dark
RestoreSpellPalette:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_2_BASE_06).l,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		movem.l (sp)+,a0-a1
		rts

    ; End of function RefreshScreenTint_Dark


; =============== S U B R O U T I N E =======================================

CopySpellPalette:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_2_BASE_06).l,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.w  (a1)+,(a0)+
		lea     (PALETTE_1_CURRENT).l,a0
		lea     (PALETTE_1_BASE).l,a1
		moveq   #$1F,d7
@Loop:
		move.l  (a1)+,(a0)+
		dbf     d7,@Loop
                
		movem.l (sp)+,a0-a1
		rts

    ; End of function CopySpellPalette

		movem.l d0-d1/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$1F,d7
		bra.s   loc_126836

; =============== S U B R O U T I N E =======================================

; Call copy palettes function, then apply greyscale screen tint effect

SetupScreenTint_Grey:
		
		bsr.w   CopyPalettes

    ; End of function SetupScreenTint_Grey


; =============== S U B R O U T I N E =======================================

TintScreen_Grey:
		
		movem.l d0-d1/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
loc_126836:
		move.w  (a0),d0
		andi.w  #$F,d0          ; take red component of color
		lsr.w   #1,d0           ; half it
		move.w  (a0),d1
		andi.w  #$F0,d1 ; take green component of color
		lsr.w   #4,d1
		add.w   d1,d0           ; add to red
		move.w  (a0),d1
		andi.w  #$F00,d1        ; take blue component of color
		lsr.w   #8,d1
		lsr.w   #2,d1           ; divide it by 4
		add.w   d1,d0
		lsl.w   #1,d0           ; add to green/red
		ext.l   d0
		divu.w  #3,d0
		cmpi.w  #$E,d0
		ble.s   @Continue
		moveq   #$E,d0          ; cap at maximum intensity
@Continue:
		move.w  d0,d1
		lsl.w   #4,d1
		or.w    d1,d0
		lsl.w   #4,d1
		or.w    d1,d0
		move.w  d0,(a0)+
		dbf     d7,loc_126836
                
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function TintScreen_Grey


; =============== S U B R O U T I N E =======================================

sub_12687A:
		movem.l d0-d1/d6-a1,-(sp)
		move.w  #$30,d7 
		add.w   d7,(VERTICAL_SCROLL_DATA).l
		add.w   d7,(VERTICAL_SCROLL_DATA+2).l
		moveq   #$3F,d6 
		lea     (SPRITE_00_PROPERTIES).l,a1
loc_126896:
		sub.w   d7,(a1)
		addq.l  #8,a1
		dbf     d6,loc_126896
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		lea     (PALETTE_1_BASE).l,a0
		moveq   #$3F,d7 
loc_1268B2:
		move.w  (a0),d0
		andi.w  #$F,d0
		lsr.w   #1,d0
		move.w  (a0),d1
		andi.w  #$F0,d1 
		lsr.w   #4,d1
		add.w   d1,d0
		move.w  (a0),d1
		andi.w  #$F00,d1
		lsr.w   #8,d1
		lsr.w   #2,d1
		add.w   d1,d0
		lsl.w   #1,d0
		ext.l   d0
		divu.w  #3,d0
		cmpi.w  #$E,d0
		ble.s   loc_1268E0
		moveq   #$E,d0
loc_1268E0:
		move.w  d0,d1
		lsl.w   #4,d1
		or.w    d1,d0
		or.w    d1,d0
		lsl.w   #4,d1
		or.w    d1,d0
		move.w  d0,(a0)+
		dbf     d7,loc_1268B2
		jsr     (j_ApplyVIntCramDma).w
		movem.l (sp)+,d0-d1/d6-a1
		rts

    ; End of function sub_12687A


; =============== S U B R O U T I N E =======================================

RefreshScreenTint_Grey:
		
		bsr.w   CopySpellPalette
		bsr.w   TintScreen_Grey
		bra.w   RestoreSpellPalette

    ; End of function RefreshScreenTint_Grey


; =============== S U B R O U T I N E =======================================

; Call copy palettes function, then apply red screen tint effect

SetupScreenTint_Red:
		
		bsr.w   CopyPalettes

    ; End of function SetupScreenTint_Red


; =============== S U B R O U T I N E =======================================

TintScreen_Red:
		
		movem.l d0/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
@Loop:
		move.w  (a0),d0
		andi.w  #$E,d0          ; take only red component of color
		lsl.w   #1,d0           ; double it
		cmpi.w  #$E,d0
		ble.s   @Continue
		moveq   #$E,d0          ; cap at full red
@Continue:
		lsr     (a0)
		andi.w  #$EE0,(a0)      ; half other colors
		or.w    d0,(a0)+        ; mix in new red value
		dbf     d7,@Loop
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function TintScreen_Red


; =============== S U B R O U T I N E =======================================

RefreshScreenTint_Red:
		
		bsr.w   CopySpellPalette
		bsr.s   TintScreen_Red
		bra.w   RestoreSpellPalette

    ; End of function RefreshScreenTint_Red

		bsr.w   CopyPalettes

; =============== S U B R O U T I N E =======================================

TintScreen_Blue:
		
		movem.l d0/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
@Loop:
		move.w  (a0),d0
		andi.w  #$E00,d0        ; take blue component of color
		lsl.w   #1,d0           ; double it
		cmpi.w  #$E00,d0
		ble.s   @Continue
		move.w  #$E00,d0        ; cap at maximum intensity
@Continue:
		lsr     (a0)
		andi.w  #$EE,(a0) ; half other colors
		or.w    d0,(a0)+        ; mix in new blue value
		dbf     d7,@Loop
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function TintScreen_Blue

		bsr.w   CopySpellPalette
		bsr.s   TintScreen_Blue
		bra.w   RestoreSpellPalette

; =============== S U B R O U T I N E =======================================

RestorePalettes:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		lea     (PALETTE_1_BASE).l,a1
		moveq   #$1F,d7
loc_126994:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_126994
		jsr     (j_ApplyVIntCramDma).w
		movem.l (sp)+,a0-a1
		rts

    ; End of function RestorePalettes


; =============== S U B R O U T I N E =======================================

sub_1269A4:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_3_CURRENT).l,a0
		lea     (PALETTE_3_BASE).l,a1
		moveq   #7,d7
loc_1269B6:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_1269B6
		jsr     (j_ApplyVIntCramDma).w
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_1269A4

SpellPalette_Bolt:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bolt.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_Bolt:
		
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_Bolt(pc), a0
		andi.w  #7,d3
		subq.w  #1,d3
		mulu.w  #$A,d3
		adda.w  d3,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Bolt).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_Bolt


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Bolt:
		
		bsr.s   LoadSpellGraphics_Bolt
		bsr.w   sub_1266DA
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_BOLT,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		move.w  #$80,d6 
		move.w  #$60,d5 
		moveq   #1,d4
		clr.w   d3
		bsr.w   LoadSpellEntity 
		moveq   #BOLT_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Bolt

SpellPalette_Blaze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-blaze.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_Blaze:
		
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Red
		lea     SpellPalette_Blaze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Blaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_Blaze


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Blaze:
		
		bsr.s   LoadSpellGraphics_Blaze
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		clr.b   ((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   CreateMainBlazeEntity
		moveq   #BLAZE_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Blaze


; =============== S U B R O U T I N E =======================================

ClearSpellEntities:
		
		movem.l d7-a0,-(sp)
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$1F,d7
@Loop:
		clr.l   (a0)+
		clr.l   (a0)+
		dbf     d7,@Loop
                
		movem.l (sp)+,d7-a0
		rts

    ; End of function ClearSpellEntities


; =============== S U B R O U T I N E =======================================

CreateMainBlazeEntity:
		
		movem.l d0/d3-a0,-(sp)
		moveq   #$20,d6 
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		move.w  d7,d3
		tst.w   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   @Mirrored       ; branch if animation is played on enemy side
		move.w  #$B8,d6 
		move.w  #$A0,d5 
		bra.s   @Continue
@Mirrored:
		move.w  #$48,d6 
		move.w  #$90,d5 
@Continue:
		moveq   #1,d4
		bsr.w   LoadSpellEntity 
		movem.l (sp)+,d0/d3-a0
		rts

    ; End of function CreateMainBlazeEntity


; =============== S U B R O U T I N E =======================================

; In: D3 = frame number
;     D4 = is slot in use?
;     D5 = Y position
;     D6 = X position

LoadSpellEntity:
		
		movem.l d7-a0,-(sp)
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
@Loop:
		tst.w   4(a0)
		bne.w   @NextSlot       ; keep testing until free slot is found
		move.w  d6,(a0)+
		move.w  d5,(a0)+
		move.w  d4,(a0)+
		move.w  d3,(a0)+
		bra.s   @Done
@NextSlot:
		addq.l  #8,a0
		dbf     d7,@Loop
@Done:
		movem.l (sp)+,d7-a0
		rts

    ; End of function LoadSpellEntity


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_AssaultShell:
		
		move.w  d3,-(sp)
		sndCom  SFX_HIT
		lea     SpellPalette_Blaze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Blaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.w  (sp)+,d3
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_ASSAULT_SHELL,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function SetupSpellAnimation_AssaultShell

SpellPalette_Freeze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-freeze.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_Freeze:
		
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Grey
		lea     SpellPalette_Freeze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Freeze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$420,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_Freeze


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Freeze:
		
		bsr.s   LoadSpellGraphics_Freeze
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_FREEZE,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #FREEZE_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Freeze


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_IceBreath:
		
		bsr.s   LoadSpellGraphics_Freeze
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_ICE_BREATH,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #ICE_BREATH_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_IceBreath

SpellPalette_DemonBlaze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-demonblaze.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_DemonBlaze:
		
		movem.l d3,-(sp)
		sndCom  SFX_FIRE_BREATH
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_DemonBlaze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_DemonBlaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).w
		jsr     (j_WaitForDmaQueueProcessing).w
		bsr.w   ClearSpellEntities
		movem.l (sp)+,d3
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_DEMON_BLAZE,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #6,d2
		bra.w   loc_12668A

    ; End of function SetupSpellAnimation_DemonBlaze

SpellPalette_Desoul:
		incbin "data/graphics/battles/spells/palettes/spellpalette-desoul.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Desoul:
		
		bsr.w   SetupScreenTint_Grey
		lea     SpellPalette_Desoul(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Desoul).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).w
		jsr     (j_WaitForDmaQueueProcessing).w
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.w  #$28,((word_FFB658-$1000000)).w 
		move.b  #SPELLANIM_TYPE_DESOUL,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #DESOUL_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Desoul


; =============== S U B R O U T I N E =======================================

sub_126CF0:
		lea     byte_126D1E(pc), a0
		nop
		moveq   #5,d7
loc_126CF8:
		move.l  a0,-(sp)
		movem.w d3-d4/d7,-(sp)
		moveq   #$20,d0 
		moveq   #1,d1
		clr.w   d2
		bsr.w   LoadSpellEntityLayout
		moveq   #2,d0
		jsr     (j_Sleep).l
		movem.w (sp)+,d3-d4/d7
		movea.l (sp)+,a0
		addq.l  #5,a0
		dbf     d7,loc_126CF8
		rts

    ; End of function sub_126CF0

byte_126D1E:    dc.b $F0
		dc.b $F0
		dc.b $20
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $30
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $40
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $50
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $60
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $70
		dc.b $F
		dc.b 0

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Dispel:
		
		bsr.w   CopyPalettes
		move.w  #$8E4,(PALETTE_2_CURRENT_07).l
		move.w  #$260,(PALETTE_2_CURRENT_08).l
		moveq   #DISPEL_SPELLCAST_COLOR,d2
		bra.s   loc_126D9A

    ; End of function SetupSpellAnimation_Dispel


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Muddle:
		
		bsr.w   CopyPalettes
		move.w  #$4EE,(PALETTE_2_CURRENT_07).l
		move.w  #$6AA,(PALETTE_2_CURRENT_08).l
		moveq   #MUDDLE_SPELLCAST_COLOR,d2
		bra.s   loc_126D9A

    ; End of function SetupSpellAnimation_Muddle


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Slow:
		
		bsr.w   CopyPalettes
		move.w  #$444,(PALETTE_2_CURRENT_07).l
		move.w  #$222,(PALETTE_2_CURRENT_08).l
		moveq   #SLOW_SPELLCAST_COLOR,d2
		bra.s   loc_126D9A

    ; End of function SetupSpellAnimation_Slow


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Sleep:
		
		bsr.w   CopyPalettes
		move.w  #$88E,(PALETTE_2_CURRENT_07).l
		move.w  #$44A,(PALETTE_2_CURRENT_08).l
		moveq   #SLEEP_SPELLCAST_COLOR,d2
loc_126D9A:
		move.w  #$EEE,(PALETTE_2_CURRENT_06).l
		movem.w d2-d3,-(sp)
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Status).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		movem.w (sp)+,d2-d3
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_DEBUFF,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Sleep

SpellPalette_Healing:
		incbin "data/graphics/battles/spells/palettes/spellpalette-healing.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Healing:
		
		move.w  d3,-(sp)
		lea     SpellPalette_Healing(pc), a0
		andi.w  #7,d3
		subq.w  #1,d3
		mulu.w  #$A,d3
		adda.w  d3,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_HealAuraDetox).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_HEALING,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		move.w  d3,-(sp)
		clr.w   d6
		clr.w   d5
		moveq   #1,d4
		move.w  #$B0,d3 
		bsr.w   LoadSpellEntity 
		move.w  (sp)+,d3
		andi.w  #7,d3
		subq.w  #1,d3
		move.w  d3,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Healing

SpellPalette_MachineGun:
		incbin "data/graphics/battles/spells/palettes/spellpalette-machinegun.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_MachineGun:
		
		 
		sndCom  SFX_MACHINE_GUN
		lea     SpellPalette_MachineGun(pc), a0
		moveq   #SPELLANIM_TYPE_MACHINE_GUN,d4
		bra.w   loc_126EA0

    ; End of function SetupSpellAnimation_MachineGun

SpellPalette_Crossbow:
		incbin "data/graphics/battles/spells/palettes/spellpalette-crossbow.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Crossbow:
		
		lea     SpellPalette_Crossbow(pc), a0
		moveq   #SPELLANIM_TYPE_CROSSBOW,d4
loc_126EA0:
		movem.l d3-d4,-(sp)
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_MachineGun).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.l (sp)+,d3-d4
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  d4,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function SetupSpellAnimation_Crossbow

SpellPalette_BlueFlyingDragons:
		incbin "data/graphics/battles/spells/palettes/spellpalette-blueflyingdragons.bin"

; =============== S U B R O U T I N E =======================================

sa74_BlueFlyingDragons:
		
		lea     SpellPalette_BlueFlyingDragons(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
loc_126F10:
		movea.l (p_SpellTiles_FlyingDragon).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #$81,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_FLYING_DRAGONS,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa74_BlueFlyingDragons

SpellPalette_YellowFlyingDragons:
		incbin "data/graphics/battles/spells/palettes/spellpalette-yellowflyingdragons.bin"

; =============== S U B R O U T I N E =======================================

sa71_YellowFlyingDragons:
		
		lea     SpellPalette_YellowFlyingDragons(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		bra.w   loc_126F10

    ; End of function sa71_YellowFlyingDragons

SpellPalette_YellowLightningBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-yellowlightningbreath.bin"

; =============== S U B R O U T I N E =======================================

sa65_YellowLightningBreath:
		
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_YellowLightningBreath(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #0,((SPELLANIM_VERSION-$1000000)).w
byte_126F98:
		sndCom  SFX_LIGHTNING_BREATH
		movea.l (p_SpellTiles_LightningBreath).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #SPELLANIM_TYPE_LIGHTNING_BREATH,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa65_YellowLightningBreath

SpellPalette_BlueLightningBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bluelightningbreath.bin"

; =============== S U B R O U T I N E =======================================

sa72_BlueLightningBreath:
		
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_BlueLightningBreath(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #1,((SPELLANIM_VERSION-$1000000)).w
		bra.w   byte_126F98

    ; End of function sa72_BlueLightningBreath

SpellPalette_GreenLaser:
		incbin "data/graphics/battles/spells/palettes/spellpalette-greenlaser.bin"

; =============== S U B R O U T I N E =======================================

sa66_GreenLaser1:
		
		moveq   #0,d3

    ; End of function sa66_GreenLaser1


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_GreenLaser:
		
		 
		sndCom  SFX_LASER
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_GreenLaser(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
loc_12702C:
		movea.l (p_SpellTiles_Laser).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #SPELLANIM_TYPE_LASER,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function SetupSpellAnimation_GreenLaser

SpellPalette_BlueLaser:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bluelaser.bin"

; =============== S U B R O U T I N E =======================================

sa73_BlueLaser:
		
		moveq   #1,d3

    ; End of function sa73_BlueLaser


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_LaserEye:
		
		 
		sndCom  SFX_LASER
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_BlueLaser(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		bra.w   loc_12702C

    ; End of function SetupSpellAnimation_LaserEye

SpellPalette_BusterShot:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bustershot.bin"

; =============== S U B R O U T I N E =======================================

sa70_BusterShot:
		
		 
		sndCom  SFX_HIT
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_BusterShot(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_BusterShot).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #1,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_BUSTER_SHOT,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa70_BusterShot

SpellPalette_EnergyBlast:
		incbin "data/graphics/battles/spells/palettes/spellpalette-energyblast.bin"

; =============== S U B R O U T I N E =======================================

sa68_SwordBeam:
		
		lea     SpellPalette_EnergyBlast(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #SPELLANIM_TYPE_ENERGY_WAVE,((SPELLANIM_TYPE-$1000000)).w
byte_12711A:
		sndCom  SFX_SWORD_BEAM
		movea.l (p_SpellTiles_EnergyBlast).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$5A0,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #1,((SPELLANIM_VERSION-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa68_SwordBeam

		dc.w $CEE               ; unused green sword beam palette
		dc.w $AEE
		dc.w $C0
		dc.w $80
		dc.w $40

; =============== S U B R O U T I N E =======================================

sa67_PowerFist:
		
		 
		sndCom  SFX_SWORD_BEAM
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_EnergyBlast(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #SPELLANIM_TYPE_ENERGY_BLAST,((SPELLANIM_TYPE-$1000000)).w
		bra.s   byte_12711A

    ; End of function sa67_PowerFist

SpellPalette_FireBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-firebreath.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_FireBreath:
		
		 
		sndCom  SFX_FIRE_BREATH
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Red
		lea     SpellPalette_FireBreath(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_FireBreath).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$420,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_FireBreath


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_FireBreath:
		
		bsr.s   LoadSpellGraphics_FireBreath
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_FIRE_BREATH,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #4,d2
		rts

    ; End of function SetupSpellAnimation_FireBreath


; =============== S U B R O U T I N E =======================================

sub_1271EC:
		movem.l d0-d3/a1-a2,-(sp)
		lea     ((byte_FFB4DA-$1000000)).w,a2
		lea     (SPRITE_00_PROPERTIES).l,a1
		move.w  d0,d2
		move.w  d0,d3
		addq.w  #1,d2
		rol.w   #3,d0
		ext.l   d0
		adda.l  d0,a1
		move.w  (a0)+,6(a1)
		move.w  (a0)+,(a1)
		move.w  (a0)+,d0
		move.b  (a0)+,d1
		ext.w   d1
		rol.w   #8,d1
		or.w    d2,d1
		move.w  d1,2(a1)
		move.b  (a0)+,d1
		ext.w   d1
		ror.w   #3,d1
		move.b  (a0)+,d2
		ext.w   d2
		ror.w   #5,d2
		or.w    d1,d0
		or.w    d2,d0
		ori.w   #$8000,d0
		move.w  d0,4(a1)
		move.b  (a0)+,(a2,d3.w)
		movem.l (sp)+,d0-d3/a1-a2
		addq.w  #1,d0
		rts

    ; End of function sub_1271EC


; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation:
		
		tst.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bne.w   loc_127248
		rts
loc_127248:
		clr.w   d7
		move.b  ((SPELLANIM_TYPE-$1000000)).w,d7
		add.w   d7,d7
		move.w  rjt_SpellAnimationUpdates(pc,d7.w),d7
		jmp     rjt_SpellAnimationUpdates(pc,d7.w)

    ; End of function UpdateSpellAnimation

rjt_SpellAnimationUpdates:
		dc.w spellanimationUpdate_Blaze-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Freeze-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_IceBreath-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_FlyingDragons-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_AssaultShell-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Desoul-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Debuff-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Bolt-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_Healing-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_Healing-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_FireBreath-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_DemonBlaze-rjt_SpellAnimationUpdates
		dc.w nullsub_127284-rjt_SpellAnimationUpdates
		dc.w nullsub_127284-rjt_SpellAnimationUpdates
		dc.w nullsub_127284-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_MachineGun-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Crossbow-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_LightningBreath-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Laser-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_BusterShot-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_SwordBeam-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_PowerFist-rjt_SpellAnimationUpdates

; =============== S U B R O U T I N E =======================================

nullsub_127284:
		
		rts

    ; End of function nullsub_127284


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Bolt:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$22,d0 
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127378
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		addq.w  #1,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #7,SPELLENTITY_OFFSET_FRAME(a0)
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		moveq   #3,d2
		moveq   #1,d1
		move.w  d7,-(sp)
		moveq   #7,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d3
		subq.l  #3,d3
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d4
		subq.l  #3,d4
		move.w  (sp)+,d7
		lea     SpellEntityLayout_Bolt2(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #2,d6
		bgt.s   loc_1272E0
		addq.w  #4,d7
loc_1272E0:
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bpl.s   loc_1272EA
		move.w  #$120,d3
loc_1272EA:
		mulu.w  #$14,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
		lea     ((word_FFB5E0-$1000000)).w,a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		cmpi.w  #3,d7
		blt.s   loc_12730A
		subq.w  #1,d7
loc_12730A:
		moveq   #$26,d0 
loc_12730C:
		movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127378
		clr.w   d2
		move.w  (a0),d3
		move.w  2(a0),d4
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		subq.w  #1,d6
		lsl.w   #2,d6
		move.l  a0,-(sp)
		lea     word_12743A(pc), a0
		move.w  2(a0,d6.w),d5
		move.w  (a0,d6.w),d6
		movea.l (sp)+,a0
		jsr     (j_GenerateRandomNumber).l
		add.w   d5,d7
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12734E
		moveq   #2,d1
		bra.s   loc_127350
loc_12734E:
		moveq   #1,d1
loc_127350:
		subq.w  #1,4(a0)
		bne.s   loc_127362
		clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127362:
		move.w  6(a0),d6
		add.w   d6,(a0)
		lea     SpellEntityLayout_Bolt1(pc), a0
		mulu.w  #$19,d7
		adda.w  d7,a0
		moveq   #4,d2
		bsr.w   LoadSpellEntityLayout
loc_127378:
		movem.l (sp)+,d0/d7-a0
		addq.w  #5,d0
		addq.w  #8,a0
		dbf     d7,loc_12730C
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_12739C
		moveq   #$10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_12739C
		move.w  #$2EC,(PALETTE_1_CURRENT).l
loc_12739C:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1273AC
		bsr.w   loc_1273E0
		bra.w   loc_1273D8
loc_1273AC:
		lea     ((word_FFB5E4-$1000000)).w,a0
		clr.w   d0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		cmpi.w  #3,d7
		blt.s   loc_1273C4
		subq.w  #1,d7
loc_1273C4:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1273C4
		tst.w   d0
		bne.s   loc_1273D8
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_1273D8:
		jsr     (j_ApplyVIntCramDma).l
		rts
loc_1273E0:
		moveq   #$A,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   return_127438
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_1273F8
		move.w  #$B0,d5 
		bra.s   loc_1273FC
loc_1273F8:
		move.w  #$A0,d5 
loc_1273FC:
		moveq   #$10,d6
		jsr     (j_GenerateRandomNumber).l
		sub.w   d6,d5
		moveq   #2,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		move.w  d7,d3
		move.w  #$40,d6 
		jsr     (j_GenerateRandomNumber).w
		move.w  d7,d6
		addi.w  #$20,d6 
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12742E
		addi.w  #$80,d6 
loc_12742E:
		moveq   #$A,d4
		bsr.w   LoadSpellEntity 
		sndCom  SFX_BOLT_SPELL
return_127438:
		
		rts

    ; End of function spellanimationUpdate_Bolt

word_12743A:    dc.w 4
		dc.w 0
		dc.w 4
		dc.w 4
		dc.w 8
		dc.w 0
		dc.w $C
		dc.w 0
SpellEntityLayout_Bolt1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-bolt1.bin"
SpellEntityLayout_Bolt2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-bolt2.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Blaze:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$20,d0         ; loop through animation entities
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1277BC
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		addq.w  #1,SPELLENTITY_OFFSET_FRAME(a0)
						; increment main blaze frame
		andi.w  #$F,SPELLENTITY_OFFSET_FRAME(a0)
		lsr.w   #2,d7
		move.w  (a0),d3         ; D3 = X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
						; D4 = Y position
		moveq   #1,d2           ; set number of graphics pieces : 2 pieces
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12769C      ; branch if animation is cast on enemy side
		moveq   #2,d1           ; change layer of pieces (reversed)
		bra.s   loc_12769E
loc_12769C:
		moveq   #1,d1           ; change layer of pieces
loc_12769E:
		lea     SpellEntityLayout_BlazeMain(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #2,d6
		bgt.s   loc_1276B2      ; branch if spell level is greater than 2
		addq.w  #2,d7           ; change size of main fire?
loc_1276B2:
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1276BC
		move.w  #$120,d3
loc_1276BC:
		mulu.w  #$A,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
		lea     ((word_FFB5D0-$1000000)).w,a0
						; start at falling fireballs
		moveq   #$11,d7
		moveq   #$22,d0 
loc_1276CE:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1277BC      ; branch if fireball does not exist
		clr.w   d2
		move.w  (a0),d3         ; D3 = X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
						; D4 = Y position
		add.w   SPELLENTITY_OFFSET_FRAME(a0),d4
		addq.w  #8,SPELLENTITY_OFFSET_Y(a0)
						; fall 8 pixels per frame
		moveq   #$14,d7         ; default to small fireballs
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #4,d6
		bne.s   loc_1276FC
		clr.w   d7              ; switch to big fireballs if level 4
loc_1276FC:
		cmpi.b  #3,d6
		bne.s   loc_127704
		moveq   #$A,d7          ; switch to medium fireballs if level 3
loc_127704:
		movem.w d7,-(sp)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).l
		lsr.w   #1,d7
		movem.w (sp)+,d7
		beq.s   loc_12771A
		addq.w  #5,d7           ; random gfx variant : 50% chance of each?
loc_12771A:
		cmpi.w  #$10,SPELLENTITY_OFFSET_FRAME(a0)
		bgt.s   loc_127726
		clr.w   d1              ; at beginning, put at layer 0 so it goes behind UI
		bra.s   loc_127734
loc_127726:
		cmpi.w  #$20,SPELLENTITY_OFFSET_FRAME(a0) 
		bgt.s   loc_127732      
		moveq   #1,d1           ; then shift up
		bra.s   loc_127734
loc_127732:
		moveq   #2,d1           ; shift up more?
loc_127734:
		cmpi.w  #$100,SPELLENTITY_OFFSET_Y(a0)
		blt.s   loc_127748      
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7              ; remove if goes too far down screen
		move.w  #$FFD8,d4
loc_127748:
		cmpi.w  #$80,SPELLENTITY_OFFSET_Y(a0) 
						; check for hitting ground?
		bne.s   loc_127768
		move.w  #$6E,(PALETTE_1_CURRENT).l 
						; flicker bg orange
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		move.w  d7,((word_FFB6B8-$1000000)).w
						; shake screen
loc_127768:
		cmpi.w  #$80,SPELLENTITY_OFFSET_Y(a0) 
		blt.s   loc_12778A      ; branch if haven't hit yet
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
						; after hitting, do explosion animation
		subi.w  #$80,d7 
		lsr.w   #5,d7
		addq.w  #6,d7
		mulu.w  #5,d7
		move.w  #$80,d4 
		add.w   SPELLENTITY_OFFSET_FRAME(a0),d4
		bra.s   loc_1277A6
loc_12778A:
		move.w  d7,-(sp)
		moveq   #$FFFFFFFC,d6
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_127796      
		neg.w   d6              ; move to the right if cast by enemy
loc_127796:
		add.w   d6,(a0)         ; start by moving left 5 pixels
		moveq   #9,d6
		jsr     (j_GenerateRandomNumber).l
		subq.l  #4,d7           ; then add a random number -4 to 4
		add.w   d7,(a0)         ; total offset should be left 1 to 9 pixels
		move.w  (sp)+,d7
loc_1277A6:
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_1277B0
		addi.w  #$32,d7 ; adjust graphics if cast by enemy
loc_1277B0:
		lea     SpellEntityLayout_BlazeFireball(pc), a0
		adda.w  d7,a0
		clr.w   d2
		bsr.w   LoadSpellEntityLayout
loc_1277BC:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0           ; loop to next fireball
		addq.w  #8,a0
		dbf     d7,loc_1276CE
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_1277E0      ; branch if animation ending
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_1277E0
		move.w  #$C,(PALETTE_1_CURRENT).l
						; red screen flash?
loc_1277E0:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1277F0      
		bsr.w   CreateFireballObject; if not, spawn new fireballs
		bra.w   loc_12780C
loc_1277F0:
		lea     ((word_FFB5D4-$1000000)).w,a0
						; animation cleanup
		clr.w   d0
		moveq   #$11,d7
loc_1277F8:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1277F8
		tst.w   d0              ; see if any fireballs are still falling
		bne.s   loc_12780C
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
						; if not, we can set the animation as finished
		bsr.w   RestorePalettes
loc_12780C:
		jsr     (j_ApplyVIntCramDma).l
		bsr.w   sub_1283E2      ; end of frame cleanup
		rts

    ; End of function spellanimationUpdate_Blaze


; =============== S U B R O U T I N E =======================================

CreateFireballObject:
		
		moveq   #$14,d7
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #1,d6
		beq.w   @Return         ; don't spawn anything at level 1
		moveq   #$A,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   @Return         ; only spawn new one some % of the time
		move.w  #$80,d6 
		jsr     (j_GenerateRandomNumber).w
		move.w  d7,d6           ; random starting X position
		addi.w  #$20,d6 
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		blt.s   @Mirrored       
		addi.w  #$40,d6 ; offset starting X position when cast by ally
@Mirrored:
		moveq   #$FFFFFFE0,d5   ; fixed starting Y position
		move.w  d6,-(sp)
		moveq   #$20,d6 
		jsr     (j_GenerateRandomNumber).w
		move.w  d7,d3           ; random starting frame
		move.w  (sp)+,d6
		moveq   #1,d4           ; set exists flag
		bsr.w   LoadSpellEntity 
@Return:
		rts

    ; End of function CreateFireballObject

SpellEntityLayout_BlazeFireball:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-blazefireball.bin"
SpellEntityLayout_BlazeMain:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-blazemain.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_AssaultShell:
		
		clr.w   (PALETTE_1_CURRENT).l
		clr.w   (VERTICAL_SCROLL_DATA).l
		move.w  #$100,(VERTICAL_SCROLL_DATA+2).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127920:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_12796C
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		clr.w   d2
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d1
		subq.w  #1,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		addq.w  #1,d7
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		cmpi.w  #$28,d7 
		movem.l (sp)+,d7
		bne.s   loc_12795C
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		bra.w   loc_12796C
loc_12795C:
		lsr.w   #2,d7
		lea     SpellEntityLayout_AssaultShell(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_12796C:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127920
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1279A4
		bsr.w   SpawnNewEntity_AssaultShell
		moveq   #$20,d6 
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_1279A0
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		add.w   d7,(VERTICAL_SCROLL_DATA).l
		add.w   d7,(VERTICAL_SCROLL_DATA+2).l
loc_1279A0:
		bra.w   loc_1279C0
loc_1279A4:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_1279AC:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1279AC
		tst.w   d0
		bne.s   loc_1279C0
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_1279C0:
		jsr     (j_ApplyVIntCramDma).l
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		rts

    ; End of function spellanimationUpdate_AssaultShell


; =============== S U B R O U T I N E =======================================

SpawnNewEntity_AssaultShell:
		
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   return_127A3A
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		move.w  #$60,d6 
		jsr     (j_GenerateRandomNumber).w
		andi.w  #$20,d7 
		move.w  d7,d3
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		blt.s   loc_127A0C
		moveq   #2,d4
		move.w  #40,d0
		move.w  #144,d1
		bra.s   loc_127A16
loc_127A0C:
		moveq   #3,d4
		move.w  #160,d0
		move.w  #160,d1
loc_127A16:
		moveq   #$40,d6 
		jsr     (j_GenerateRandomNumber).w
		add.w   d7,d0
		moveq   #$20,d6 
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d1
		move.w  d0,d6
		move.w  d1,d5
		bsr.w   LoadSpellEntity 
		sndCom  SFX_TREASURE_CHEST
		move.w  #$EE,(PALETTE_1_CURRENT).l 
return_127A3A:
		
		rts

    ; End of function SpawnNewEntity_AssaultShell

SpellEntityLayout_AssaultShell:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-assaultshell.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_DemonBlaze:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$B,d7
		moveq   #$20,d0 
loc_127A7C:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127B02
		move.w  (a0),d3
		addi.w  #$64,d3 
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		add.w   d7,(a0)
		movem.l d7,-(sp)
		lsr.w   #3,d7
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		sub.w   d7,SPELLENTITY_OFFSET_Y(a0)
		movem.l (sp)+,d7
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_127AB2
		move.w  d7,SPELLENTITY_OFFSET_EXISTS(a0)
loc_127AB2:
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d2
		andi.b  #7,d2
		cmpi.b  #1,d2
		bne.s   loc_127AC4
		moveq   #1,d2
		bra.s   loc_127AC6
loc_127AC4:
		clr.l   d2
loc_127AC6:
		moveq   #2,d1
		cmpi.w  #$FFE0,d3
		blt.w   loc_127AD8
		cmpi.w  #$120,d3
		ble.w   loc_127AE8
loc_127AD8:
		move.l  #0,(a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127AE8:
		lea     SpellEntityLayout_DemonBlaze1(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d5
		andi.b  #7,d5
		cmpi.b  #1,d5
		beq.s   loc_127AFE
		lea     SpellEntityLayout_DemonBlaze2(pc), a0
loc_127AFE:
		bsr.w   LoadSpellEntityLayout
loc_127B02:
		movem.l (sp)+,d0/d7-a0
		addq.w  #2,d0
		addq.w  #8,a0
		dbf     d7,loc_127A7C
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127B1C
		bsr.w   SpawnNewEntity_Barrage
		bra.s   loc_127B38
loc_127B1C:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$B,d7
loc_127B24:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127B24
		tst.w   d0
		bne.s   loc_127B38
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127B38:
		jsr     (j_ApplyVIntCramDma).w
		bne.s   return_127B4A
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_127B4A:
		
		rts

    ; End of function spellanimationUpdate_DemonBlaze

SpellEntityLayout_DemonBlaze1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-demonblaze1.bin"
SpellEntityLayout_DemonBlaze2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-demonblaze2.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_FlyingDragons:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127B6A:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127BDE
		move.w  (a0),d3         ; D3 = X position
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		btst    #7,((SPELLANIM_VERSION-$1000000)).w
		beq.s   loc_127B88
		sub.w   d7,(a0)
		bra.s   loc_127B8A
loc_127B88:
		add.w   d7,(a0)
loc_127B8A:
		movem.l d7,-(sp)
		lsr.w   #3,d7
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
						; D4 = Y position
		btst    #7,((SPELLANIM_VERSION-$1000000)).w
		beq.s   loc_127BA2
		sub.w   d7,SPELLENTITY_OFFSET_Y(a0)
		bra.s   loc_127BA6
loc_127BA2:
		add.w   d7,SPELLENTITY_OFFSET_Y(a0)
loc_127BA6:
		movem.l (sp)+,d7
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_127BB6      
		move.w  d7,SPELLENTITY_OFFSET_EXISTS(a0)
loc_127BB6:
		clr.w   d2              ; set number of graphics pieces : 1 piece
		moveq   #1,d1           ; set layer of pieces
		cmpi.w  #$120,d3
		bgt.w   loc_127BCA
		cmpi.w  #$FFE0,d3
		bge.w   loc_127BD6
loc_127BCA:
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127BD6:
		lea     SpellEntityLayout_FlyingDragons(pc), a0
		bsr.w   LoadSpellEntityLayout
loc_127BDE:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127B6A
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127BFA
		bsr.w   SpawnNewEntity_Barrage
		bra.w   loc_127C16
loc_127BFA:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127C02:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127C02
		tst.w   d0
		bne.s   loc_127C16
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127C16:
		jsr     (j_ApplyVIntCramDma).w
		bne.s   return_127C28
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_127C28:
		
		rts

    ; End of function spellanimationUpdate_FlyingDragons


; =============== S U B R O U T I N E =======================================

SpawnNewEntity_Barrage:
		
		movem.l d7,-(sp)
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_127C72
		btst    #7,((SPELLANIM_VERSION-$1000000)).w
		bne.w   loc_127C78
		moveq   #4,d4
		clr.w   d3
		moveq   #$18,d6
		jsr     (j_GenerateRandomNumber).w
		movem.l d7,-(sp)
		moveq   #$30,d6 
		jsr     (j_GenerateRandomNumber).w
		move.w  #$90,d5 
		sub.w   d7,d5
		movem.l (sp)+,d6
loc_127C62:
		bsr.w   LoadSpellEntity 
		sndCom  SFX_BOW_MASTER
		move.w  #$CCC,(PALETTE_1_CURRENT).l
loc_127C72:
		movem.l (sp)+,d7
		rts
loc_127C78:
		clr.w   d3
		moveq   #$18,d6
		jsr     (j_GenerateRandomNumber).w
		addi.w  #$E8,d7 
		movem.l d7,-(sp)
		moveq   #$60,d6 
		jsr     (j_GenerateRandomNumber).w
		move.w  #$90,d5 
		sub.w   d7,d5
		movem.l (sp)+,d6
		moveq   #1,d4
		bra.s   loc_127C62

    ; End of function SpawnNewEntity_Barrage

SpellEntityLayout_FlyingDragons:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-flyingdragons.bin"
byte_127CA6:    dc.b 0
		dc.b 1
		dc.b 1
		dc.b 0

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Freeze:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127CB8:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127D98
		clr.w   d2
		move.w  (a0),d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		jsr     (sub_314).l
		addi.w  #$48,d7 
		move.w  d7,d3
		move.w  (a0),d7
		lsr.w   #1,d7
		add.w   d7,d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		lsr.w   #2,d6
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$80,d7 
		move.w  d7,d4
		move.w  (a0),d7
		lsr.w   #1,d7
		sub.w   d7,d4
		subq.w  #8,SPELLENTITY_OFFSET_Y(a0)
		andi.w  #$FF,SPELLENTITY_OFFSET_Y(a0)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_127D14
		subq.w  #1,(a0)
		beq.w   loc_127D7C
loc_127D14:
		cmpi.w  #$10,(a0)
		bgt.s   loc_127D20
		moveq   #1,d1
		bra.w   loc_127D32
loc_127D20:
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		lsr.w   #6,d7
		move.l  a0,-(sp)
		lea     byte_127CA6(pc), a0
		move.b  (a0,d7.w),d1
		movea.l (sp)+,a0
loc_127D32:
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		subq.w  #1,d7
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127D6A
		cmpi.b  #2,((SPELLANIM_VERSION-$1000000)).w
		bgt.s   loc_127D56
		cmpi.w  #7,d7
		bne.s   loc_127D54
		moveq   #$17,d7
loc_127D54:
		bra.s   loc_127D6A
loc_127D56:
		move.w  d7,d6
		andi.w  #$3F,d6 
		cmpi.w  #$F,d6
		bne.s   loc_127D6A
		andi.w  #$40,d7 
		ori.w   #$2F,d7 
loc_127D6A:
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$3F,d7 
		movem.l (sp)+,d7
		bne.s   loc_127D88
loc_127D7C:
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127D88:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Freeze(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_127D98:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127CB8
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_127DBC
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_127DBC
		move.w  #$EA0,(PALETTE_1_CURRENT).l
loc_127DBC:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127DCC
		bsr.w   sub_127DEE
		bra.w   loc_127DE8
loc_127DCC:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127DD4:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127DD4
		tst.w   d0
		bne.s   loc_127DE8
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127DE8:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_Freeze


; =============== S U B R O U T I N E =======================================

sub_127DEE:
		movem.l d7,-(sp)
		clr.w   d7
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		subq.l  #1,d7
		add.w   d7,d7
		move.w  off_127E04(pc,d7.w),d7
		jmp     off_127E04(pc,d7.w)

    ; End of function sub_127DEE

off_127E04:     dc.w sub_127E12-off_127E04
		dc.w sub_127E12-off_127E04
		dc.w sub_127E0C-off_127E04
		dc.w sub_127E18-off_127E04

; =============== S U B R O U T I N E =======================================

sub_127E0C:
		moveq   #$37,d3 
		bra.w   loc_127E2A

    ; End of function sub_127E0C


; =============== S U B R O U T I N E =======================================

sub_127E12:
		moveq   #$27,d3 
		bra.w   loc_127E2A

    ; End of function sub_127E12


; =============== S U B R O U T I N E =======================================

sub_127E18:
		move.w  #$C0,d6 
		jsr     (j_GenerateRandomNumber).w
		andi.w  #$40,d7 
		addi.w  #$37,d7 
		move.w  d7,d3
loc_127E2A:
		moveq   #$20,d6 
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_127E6E
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #$20,d6 
		jsr     (j_GenerateRandomNumber).w
		addi.w  #$60,d7 
		movem.l d7,-(sp)
		move.w  #$100,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   LoadSpellEntity 
		sndCom  SFX_TINKLING
		move.w  #$A20,(PALETTE_1_CURRENT).l
loc_127E6E:
		movem.l (sp)+,d7
		rts

    ; End of function sub_127E18


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_FireBreath:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127E82:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127F30
		clr.w   d2
		move.w  (a0),d6         ; D6 = X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		moveq   #$38,d3 
		sub.w   d6,d3
		move.w  d3,d4
		add.w   d3,d3
		add.w   d4,d3
		lsr.w   #2,d3
		move.w  d7,-(sp)
		lsr.w   #1,d6
		jsr     (sub_314).l
		addi.w  #$80,d7 
		sub.w   d3,d7
		move.w  d7,d3
		move.w  (sp)+,d7
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$70,d7 
		move.w  d7,d4
		subi.w  #$C,SPELLENTITY_OFFSET_Y(a0)
		andi.w  #$FF,SPELLENTITY_OFFSET_Y(a0)
		addq.w  #1,(a0)
		moveq   #2,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		movem.l d7,-(sp)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		movem.l (sp)+,d7
		bne.s   loc_127EF2
		addq.w  #1,d7
loc_127EF2:
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$38,d7 
		movem.l (sp)+,d7
		bne.s   loc_127F20
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		movem.l d0,-(sp)
		move.w  #$6E,(PALETTE_1_CURRENT).l 
		movem.l (sp)+,d0
loc_127F20:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Freeze(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_127F30:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127E82
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_127F54
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_127F54
		move.w  #$C,(PALETTE_1_CURRENT).l
loc_127F54:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127F64
		bsr.w   SpawnNewEntity_FireBreath
		bra.w   loc_127F80
loc_127F64:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127F6C:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127F6C
		tst.w   d0
		bne.s   loc_127F80
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127F80:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_FireBreath


; =============== S U B R O U T I N E =======================================

SpawnNewEntity_FireBreath:
		
		movem.l d7,-(sp)
		clr.w   d3
		moveq   #$A,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_127FC0
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #$10,d6
		jsr     (j_GenerateRandomNumber).w
		movem.l d7,-(sp)
		move.w  #$100,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   LoadSpellEntity 
loc_127FC0:
		movem.l (sp)+,d7
		rts

    ; End of function SpawnNewEntity_FireBreath


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_IceBreath:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127FD4:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_12809A
		clr.w   d2
		move.w  (a0),d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		moveq   #$38,d3 
		sub.w   d6,d3
		move.w  d3,d4
		add.w   d3,d3
		add.w   d4,d3
		lsr.w   #2,d3
		move.w  d7,-(sp)
		jsr     (sub_314).l
		addi.w  #$80,d7 
		sub.w   d3,d7
		move.w  d7,d3
		move.w  (sp)+,d7
		lsr.w   #1,d6
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$70,d7 
		move.w  d7,d4
		subq.w  #8,SPELLENTITY_OFFSET_Y(a0)
		andi.w  #$FF,SPELLENTITY_OFFSET_Y(a0)
		addq.w  #1,(a0)
		moveq   #2,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		movem.l d7,-(sp)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		movem.l (sp)+,d7
		bne.s   loc_128042
		addq.w  #1,d7
loc_128042:
		cmpi.b  #2,((SPELLANIM_VERSION-$1000000)).w
		bgt.s   loc_128058
		cmpi.w  #$28,d7 
		bne.s   loc_128058
		movem.l (sp)+,d7
		bra.w   loc_12806A
loc_128058:
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$38,d7 
		movem.l (sp)+,d7
		bne.s   loc_12808A
loc_12806A:
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		movem.l d0,-(sp)
		sndCom  SFX_TINKLING
		move.w  #$EA0,(PALETTE_1_CURRENT).l
		movem.l (sp)+,d0
loc_12808A:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Freeze(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_12809A:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127FD4
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_1280BE
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_1280BE
		move.w  #$EA0,(PALETTE_1_CURRENT).l
loc_1280BE:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1280CE
		bsr.w   sub_1280F0
		bra.w   loc_1280EA
loc_1280CE:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_1280D6:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1280D6
		tst.w   d0
		bne.s   loc_1280EA
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_1280EA:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_IceBreath


; =============== S U B R O U T I N E =======================================

sub_1280F0:
		movem.l d7,-(sp)
		clr.w   d7
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		subq.l  #1,d7
		add.w   d7,d7
		move.w  off_128106(pc,d7.w),d7
		jmp     off_128106(pc,d7.w)

    ; End of function sub_1280F0

off_128106:     dc.w sub_12810E-off_128106
		dc.w sub_12810E-off_128106
		dc.w sub_12810E-off_128106
		dc.w sub_128114-off_128106

; =============== S U B R O U T I N E =======================================

sub_12810E:
		clr.w   d3
		bra.w   loc_128122

    ; End of function sub_12810E


; =============== S U B R O U T I N E =======================================

sub_128114:
		move.w  #$C0,d6 
		jsr     (j_GenerateRandomNumber).w
		andi.w  #$40,d7 
		move.w  d7,d3
loc_128122:
		moveq   #$10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_128156
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #$10,d6
		jsr     (j_GenerateRandomNumber).w
		movem.l d7,-(sp)
		move.w  #$100,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   LoadSpellEntity 
loc_128156:
		movem.l (sp)+,d7
		rts

    ; End of function sub_128114

SpellEntityLayout_Freeze:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-freeze.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Desoul:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((word_FFB658-$1000000)).w,a0
		tst.w   (a0)
		beq.w   loc_12825C
		movem.l a0,-(sp)
		move.w  #$80,d3 
		move.w  (a0),d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		jsr     (sub_314).l
		add.w   d7,d3
		move.w  #$60,d4 
		lsr.w   #2,d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		subi.w  #$40,d7 
		jsr     (sub_314).l
		add.w   d7,d4
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		lsr.w   #6,d7
		andi.w  #3,d7
		moveq   #$20,d0 
		bsr.w   sub_12829E
		movem.l (sp)+,a0
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_128258
		addq.w  #1,(a0)
loc_128258:
		addq.w  #2,SPELLENTITY_OFFSET_Y(a0)
loc_12825C:
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_12826E
		move.w  #$888,(PALETTE_1_CURRENT).l
loc_12826E:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_128298
		lea     ((word_FFB658-$1000000)).w,a0
		tst.w   (a0)
		beq.w   loc_12828C
		addq.w  #2,(a0)
		cmpi.w  #$12C,(a0)
		ble.w   loc_128298
		clr.w   (a0)
loc_12828C:
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   sub_126704
		bsr.w   RestorePalettes
loc_128298:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_Desoul


; =============== S U B R O U T I N E =======================================

sub_12829E:
		add.w   d7,d7
		move.w  off_1282A8(pc,d7.w),d7
		jmp     off_1282A8(pc,d7.w)

    ; End of function sub_12829E

off_1282A8:     dc.w sub_1282B8-off_1282A8
		dc.w sub_1282B0-off_1282A8
		dc.w sub_1282B0-off_1282A8
		dc.w sub_1282B8-off_1282A8

; =============== S U B R O U T I N E =======================================

sub_1282B0:
		lea     SpellEntityLayout_Desoul1(pc), a0
		moveq   #1,d1
		bra.s   loc_1282BE

    ; End of function sub_1282B0


; =============== S U B R O U T I N E =======================================

sub_1282B8:
		lea     SpellEntityLayout_Desoul2(pc), a0
		clr.w   d1
loc_1282BE:
		moveq   #1,d2
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bne.s   loc_1282C8
		addq.w  #1,d1
loc_1282C8:
		bra.w   LoadSpellEntityLayout

    ; End of function sub_1282B8

SpellEntityLayout_Desoul1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-desoul1.bin"
SpellEntityLayout_Desoul2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-desoul2.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Debuff:
		
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_1282E8:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_12833A
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		clr.w   d2
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d1
		subq.w  #1,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		addq.w  #1,d7
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$1F,d7
		cmpi.w  #$18,d7
		movem.l (sp)+,d7
		bne.s   loc_12832A
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		move.w  #$FFE0,d4
		clr.w   d7
loc_12832A:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Debuff(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_12833A:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_1282E8
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_128356
		bsr.w   sub_12837A
		bra.w   return_128378
loc_128356:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_12835E:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_12835E
		tst.w   d0
		bne.s   return_128378
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
		jsr     (j_ApplyVIntCramDma).l
return_128378:
		
		rts

    ; End of function spellanimationUpdate_Debuff


; =============== S U B R O U T I N E =======================================

sub_12837A:
		movem.l d7,-(sp)
		clr.w   d3
		moveq   #$10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_1283BE
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12839C
		move.w  #$D0,d0 
		moveq   #$70,d1 
		moveq   #3,d4
		bra.s   loc_1283A2
loc_12839C:
		moveq   #$60,d0 
		moveq   #$60,d1 
		moveq   #2,d4
loc_1283A2:
		moveq   #$30,d6 
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d0
		moveq   #$30,d6 
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d1
		move.w  d0,d6
		move.w  d1,d5
		bsr.w   LoadSpellEntity 
loc_1283BE:
		movem.l (sp)+,d7
		rts

    ; End of function sub_12837A

SpellEntityLayout_Debuff:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-debuff.bin"

; =============== S U B R O U T I N E =======================================

sub_1283E2:
		move.w  ((word_FFB6B8-$1000000)).w,d6
		bne.s   loc_1283F0
		clr.w   d0
		bra.w   loc_12840C
		bra.s   loc_12840C
loc_1283F0:
		subq.w  #1,d6
		move.w  d6,((word_FFB6B8-$1000000)).w
		jsr     (j_GenerateRandomNumber).l
		move.w  d7,d0
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).l
		lsr.w   #1,d7
		bne.s   loc_12840C
		neg.w   d0
loc_12840C:
		move.w  d0,d6
		addi.w  #$100,d6
		lea     (VERTICAL_SCROLL_DATA).l,a0
		move.w  d0,(a0)+
		move.w  d6,(a0)+
		jsr     (j_UpdateVdpVScrollData).l
		rts

    ; End of function sub_1283E2


; =============== S U B R O U T I N E =======================================

sub_128424:
		move.w  #120,d6
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		jsr     (sub_314).l
		addi.w  #96,d7
		move.w  d7,d3
		move.w  d3,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d6
		subi.w  #72,d7
		jsr     (sub_314).l
		addi.w  #64,d7
		move.w  d7,d4
		move.w  d4,SPELLENTITY_OFFSET_Y(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #6,d7
		add.w   d7,d7
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d1
		lsr.w   #2,d1
		andi.w  #1,d1
		or.w    d1,d7
		subq.w  #2,SPELLENTITY_OFFSET_FRAME(a0)
		cmpi.w  #64,SPELLENTITY_OFFSET_FRAME(a0)
		bne.s   return_12847A
		move.w  #2,SPELLENTITY_OFFSET_EXISTS(a0)
return_12847A:
		
		rts

    ; End of function sub_128424


; =============== S U B R O U T I N E =======================================

sub_12847C:
		move.w  #60,d6
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		jsr     (sub_314).l
		addi.w  #156,d7
		move.w  d7,d3
		move.w  d3,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d6
		subi.w  #72,d7
		jsr     (sub_314).l
		addi.w  #64,d7
		move.w  d7,d4
		move.w  d4,SPELLENTITY_OFFSET_Y(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #6,d7
		add.w   d7,d7
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d1
		lsr.w   #2,d1
		andi.w  #1,d1
		or.w    d1,d7
		subq.w  #2,SPELLENTITY_OFFSET_FRAME(a0)
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bpl.s   loc_1284D8
		cmpi.w  #192,SPELLENTITY_OFFSET_FRAME(a0)
		bne.s   loc_1284D8
		move.w  #3,SPELLENTITY_OFFSET_EXISTS(a0)
loc_1284D8:
		andi.w  #$FF,SPELLENTITY_OFFSET_FRAME(a0)
		rts

    ; End of function sub_12847C


; =============== S U B R O U T I N E =======================================

sub_1284E0:
		move.w  #120,d6
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		jsr     (sub_314).l
		addi.w  #216,d7
		move.w  d7,d3
		move.w  d3,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d6
		subi.w  #72,d7
		jsr     (sub_314).l
		addi.w  #64,d7
		move.w  d7,d4
		move.w  d4,SPELLENTITY_OFFSET_Y(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #6,d7
		add.w   d7,d7
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d1
		lsr.w   #2,d1
		andi.w  #1,d1
		or.w    d1,d7
		subq.w  #2,SPELLENTITY_OFFSET_FRAME(a0)
		cmpi.w  #64,SPELLENTITY_OFFSET_FRAME(a0)
		bne.s   return_128534
		clr.w   SPELLENTITY_OFFSET_EXISTS(a0)
return_128534:
		
		rts

    ; End of function sub_1284E0


; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation_Healing:
		
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #32,d0
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		beq.w   loc_128592
		subq.w  #1,d7
		add.w   d7,d7
		move.w  off_128554(pc,d7.w),d7
		jsr     off_128554(pc,d7.w)
		bra.w   loc_12855A
off_128554:
		dc.w sub_128424+$10000-off_128554
		dc.w sub_12847C+$10000-off_128554
		dc.w sub_1284E0+$10000-off_128554
loc_12855A:
		blt.s   loc_128560
		moveq   #2,d1
		bra.s   loc_12856E
loc_128560:
		moveq   #1,d1
		move.w  d3,d2
		move.w  #128,d3
		sub.w   d2,d3
		eori.w  #1,d7
loc_12856E:
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d2
		andi.w  #7,d2
		cmpi.w  #2,d2
		bne.s   loc_12857E
		addq.w  #8,d7
loc_12857E:
		moveq   #1,d2
		lea     SpellEntityLayout_Healing1(pc), a0
		mulu.w  #$A,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
		bsr.w   sub_128618
loc_128592:
		lea     ((word_FFB5C8-$1000000)).w,a0
		moveq   #19,d7
		moveq   #34,d0
loc_12859A:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1285EC
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d7
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_1285BC
		moveq   #1,d1
		bra.s   loc_1285BE
loc_1285BC:
		moveq   #2,d1
loc_1285BE:
		cmpi.w  #32,SPELLENTITY_OFFSET_FRAME(a0)
		blt.s   loc_1285D4
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		bra.s   loc_1285DC
loc_1285D4:
		addq.w  #1,SPELLENTITY_OFFSET_Y(a0)
		addq.w  #1,SPELLENTITY_OFFSET_FRAME(a0)
loc_1285DC:
		lea     SpellEntityLayout_Healing2(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		clr.w   d2
		bsr.w   LoadSpellEntityLayout
loc_1285EC:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_12859A
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bpl.s   return_128616
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #20,d7
loc_128606:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128606
                
		tst.w   d0
		bne.s   return_128616
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
return_128616:
		
		rts

    ; End of function UpdateSpellAnimation_Healing


; =============== S U B R O U T I N E =======================================

sub_128618:
		move.w  d7,-(sp)
		tst.w   ((word_FFB5C4-$1000000)).w
		beq.s   loc_12865A
		moveq   #$A,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_12865A
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d0
		move.w  ((word_FFB5C2-$1000000)).w,d1
		moveq   #48,d6
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d0
		addi.w  #24,d0
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d1
		addi.w  #24,d1
		move.w  d0,d6
		move.w  d1,d5
		moveq   #1,d4
		clr.w   d3
		bsr.w   LoadSpellEntity 
loc_12865A:
		move.w  (sp)+,d7
		rts

    ; End of function sub_128618

SpellEntityLayout_Healing1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-healing1.bin"
SpellEntityLayout_Healing2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-healing2.bin"

; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation_MachineGun:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_12873E:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_128788
		moveq   #1,d1           ; set sprite layer
		clr.w   d2              ; set number of graphics pieces : 1 piece
		move.w  (a0),d3         ; set entity's X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		addi.w  #$10,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		add.w   d7,SPELLENTITY_OFFSET_Y(a0)
		clr.w   d7
		cmpi.w  #$150,(a0)
		blt.s   loc_128774
		addi.w  #$50,d4 
		move.w  d4,(a0)
		clr.l   SPELLENTITY_OFFSET_Y(a0)
		moveq   #2,d7
loc_128774:
		lea     SpellEntityLayout_MachineGun(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		subi.w  #$34,d3 
		addq.w  #2,d4
		bsr.w   LoadSpellEntityLayout
loc_128788:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_12873E
		bra.w   loc_128808

    ; End of function UpdateSpellAnimation_MachineGun


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Crossbow:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_1287A6:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1287FC
		moveq   #1,d1           ; set sprite layer
		clr.w   d2              ; set number of graphics pieces : 1 piece
		move.w  (a0),d3         ; set entity's X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		cmpi.b  #2,((SPELLANIM_VERSION-$1000000)).w
		bne.s   loc_1287CA
		subi.w  #$C,d4
		bra.s   loc_1287CE
loc_1287CA:
		bcs.s   loc_1287CE
		subq.w  #8,d4
loc_1287CE:
		subi.w  #$10,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		add.w   d7,SPELLENTITY_OFFSET_Y(a0)
		clr.w   d7
		cmpi.w  #$40,(a0) 
		bgt.s   loc_1287EE
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_Y(a0)
		moveq   #2,d7
		addi.w  #$40,d4 
loc_1287EE:
		lea     SpellEntityLayout_MachineGun(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_1287FC:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_1287A6
loc_128808:
		cmpi.w  #$1E,((word_FFB610-$1000000)).w
		bge.s   loc_128818
		bsr.w   sub_12883E
		bra.w   loc_128838
loc_128818:
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_128838
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_128828:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128828
		tst.w   d0
		bne.s   loc_128838
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
loc_128838:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_Crossbow


; =============== S U B R O U T I N E =======================================

sub_12883E:
		moveq   #3,d6
		jsr     (j_GenerateRandomNumber).l
		subq.w  #1,d7
		move.w  d7,d3
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_1283BE
		addq.w  #1,((word_FFB610-$1000000)).w
		lea     word_128894(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		adda.w  d7,a0
		moveq   #1,d4
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   (a0)+,d7
		move.w  d7,d6
		move.w  d6,-(sp)
		moveq   #3,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   (a0),d7
		move.w  d7,d5
		move.w  (sp)+,d6
		bsr.w   LoadSpellEntity 
		sndCom  SFX_BOW_MASTER
		rts

    ; End of function sub_12883E

word_128894:    dc.w $90
		dc.w $60
		dc.w $90
		dc.w $60
		dc.w $90
		dc.w $60
SpellEntityLayout_MachineGun:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-machinegun.bin"

; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation_LightningBreath:
		
		        module
		cmpi.w  #$3C,((SPELLENTITY_PROPERTIES-$1000000)).w 
		beq.w   return_12890E
		moveq   #$20,d0 
		moveq   #1,d1           ; set sprite layer
		moveq   #5,d2           ; set number of graphics pieces : 6 pieces
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bne.s   loc_1288D4
		move.w  #$98,d3 
		move.w  #$72,d4 
		bra.s   loc_1288DC
loc_1288D4:
		move.w  #$98,d3 
		move.w  #$5E,d4 
loc_1288DC:
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$3C,d7 
		bne.s   loc_1288FA
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
		clr.w   d7
		bra.s   loc_128902
loc_1288FA:
		andi.w  #3,d7
		mulu.w  #$1E,d7
loc_128902:
		lea     SpellEntityLayout_LightningBreath(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
return_12890E:
		
		rts

    ; End of function UpdateSpellAnimation_LightningBreath

SpellEntityLayout_LightningBreath:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-lightningbreath.bin"

; START OF FUNCTION CHUNK FOR spellanimationUpdate_Laser

@LaserEye:
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$B,d7
		moveq   #$20,d0 
@Loop:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   @Next
		move.w  (a0),d3         ; D3 = X position
		subi.w  #$FA,d3 
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		addi.w  #$10,(a0)
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_1289C0      
		move.w  d7,SPELLENTITY_OFFSET_EXISTS(a0)
loc_1289C0:
		moveq   #2,d2           ; set number of graphics pieces : 2 pieces
		moveq   #2,d1           ; change layer of pieces
		cmpi.w  #$FFE0,d3
		blt.w   loc_1289D4
		cmpi.w  #$120,d3
		ble.w   loc_1289E4
loc_1289D4:
		move.l  #0,(a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_1289E4:
		lea     SpellEntityLayout_LaserEye(pc), a0
		bsr.w   LoadSpellEntityLayout
@Next:
		movem.l (sp)+,d0/d7-a0
		addq.w  #2,d0
		addq.w  #8,a0
		dbf     d7,@Loop
                
		cmpi.b  #$FF,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_128A08
		bsr.w   SpawnNewEntity_Barrage
		bra.w   loc_128A24
loc_128A08:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$B,d7
loc_128A10:
		or.w    (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128A10
                
		tst.w   d0
		bne.s   loc_128A24
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_128A24:
		jsr     (j_ApplyVIntCramDma).w
		bne.s   return_128A36
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_128A36:
		
		rts

; END OF FUNCTION CHUNK FOR spellanimationUpdate_Laser


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Laser:
		
		cmpi.b  #$82,((SPELLANIM_VERSION-$1000000)).w
		beq.w   @LaserEye
		cmpi.w  #$23,((SPELLENTITY_PROPERTIES-$1000000)).w 
		beq.w   @Return
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d3
		move.b  d3,d4
		andi.b  #7,d3
		tst.b   d4
		bmi.s   loc_128A84      ; branch if animation is mirrored
		tst.b   d3
		bne.s   @GreenLaser
		                
		lea     byte_128AF4(pc), a0
		nop
		move.w  #$8E,d3 
		move.w  #$67,d4 
		bra.s   loc_128A82
@GreenLaser:
		lea     byte_128B1C(pc), a0
		nop
		move.w  #$74,d3 
		move.w  #$5B,d4 
loc_128A82:
		bra.s   loc_128AB6
loc_128A84:
		lea     byte_128AF4(pc), a0
		nop
		tst.b   d3
		bne.s   loc_128A98
		move.w  #$50,d3 
		move.w  #$60,d4 
		bra.s   loc_128AB6
loc_128A98:
		cmpi.b  #1,d3
		bne.s   loc_128AA8
		move.w  #$40,d3 
		move.w  #$58,d4 
		bra.s   loc_128AB6
loc_128AA8:
		lea     byte_128B1C(pc), a0
		nop
		move.w  #$64,d3 
		move.w  #$5B,d4 
loc_128AB6:
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$23,d7 
		bne.s   @GetLayout
		                
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
@GetLayout:
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bmi.s   @Mirrored
		lea     SpellEntityLayout_Laser(pc), a0
		nop
		bra.s   @LoadLayout
@Mirrored:
		lea     SpellEntityLayout_Laser_Mirrored(pc), a0
		nop
@LoadLayout:
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
@Return:
		rts
        modend

    ; End of function spellanimationUpdate_Laser

byte_128AF4:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 6
		dc.b 7
		dc.b 8
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
byte_128B1C:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b $A
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $C
		dc.b $C
		dc.b $C
		dc.b $D
		dc.b $D
		dc.b $E
		dc.b $E
		dc.b $E
		dc.b $E
		dc.b $E
SpellEntityLayout_Laser:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-laser.bin"
SpellEntityLayout_LaserEye:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-lasereye.bin"
SpellEntityLayout_Laser_Mirrored:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-laser-mirrored.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_BusterShot:
		
		cmpi.w  #$1E,((SPELLENTITY_PROPERTIES-$1000000)).w
		bge.w   loc_128D78
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #7,d2
		move.w  #72,d3
		move.w  #104,d4
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$1E,d7
		bne.s   loc_128D42
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
		clr.w   (PALETTE_1_CURRENT).l
		moveq   #$1E,d7
		bra.w   loc_128D5E
loc_128D42:
		cmpi.w  #$A,d7
		blt.s   loc_128D5E
		btst    #1,d7
		beq.s   loc_128D58
		move.w  #$EEC,(PALETTE_1_CURRENT).l
		bra.s   loc_128D5E
loc_128D58:
		clr.w   (PALETTE_1_CURRENT).l
loc_128D5E:
		lea     byte_128D7E(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$28,d7 
		lea     SpellEntityLayout_BusterShot(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_128D78:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function spellanimationUpdate_BusterShot

byte_128D7E:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   2
SpellEntityLayout_BusterShot:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-bustershot.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_SwordBeam:
		
		cmpi.w  #$1E,((SPELLENTITY_PROPERTIES-$1000000)).w
		beq.w   loc_128E84
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.w  #72,d3
		move.w  #144,d4
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$1E,d7
		bne.s   loc_128E4E
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		clr.w   (PALETTE_1_CURRENT).l
		bra.w   loc_128E6A
loc_128E4E:
		cmpi.w  #$A,d7
		blt.s   loc_128E6A
		btst    #1,d7
		beq.s   loc_128E64
		move.w  #$EC8,(PALETTE_1_CURRENT).l
		bra.s   loc_128E6A
loc_128E64:
		clr.w   (PALETTE_1_CURRENT).l
loc_128E6A:
		lea     byte_128E8A(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		lea     SpellEntityLayout_EnergyBlast(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_128E84:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function spellanimationUpdate_SwordBeam

byte_128E8A:    dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 4
SpellEntityLayout_EnergyBlast:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-energyblast.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_PowerFist:
		
		cmpi.w  #$1E,((SPELLENTITY_PROPERTIES-$1000000)).w
		beq.w   loc_128F72
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.w  #152,d3
		move.w  #144,d4
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		sub.w   d7,d3
		sub.w   d7,d3
		sub.w   d7,d3
		sub.w   d7,d3
		cmpi.w  #$1E,d7
		bne.s   loc_128F3E
		move.w  #384,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_128F3E:
		cmpi.w  #$A,d7
		blt.s   loc_128F5A
		btst    #1,d7
		beq.s   loc_128F54
		move.w  #$4E0,(PALETTE_1_CURRENT).l
		bra.s   loc_128F5A
loc_128F54:
		clr.w   (PALETTE_1_CURRENT).l
loc_128F5A:
		lea     byte_128F78(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		lea     SpellEntityLayout_EnergyBlast(pc), a0
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_128F72:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function spellanimationUpdate_PowerFist

byte_128F78:    dc.b 0
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 3
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5

; =============== S U B R O U T I N E =======================================

sub_128F98:
		move.l  #$EEE0EEE,d4
		moveq   #$F,d7
loc_128FA0:
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$1F,d6
loc_128FA8:
		eor.l   d4,(a0)+
		dbf     d6,loc_128FA8
		jsr     (j_ApplyVIntCramDma).l
		moveq   #4,d0
		jsr     (j_Sleep).l
		dbf     d7,loc_128FA0
		rts

    ; End of function sub_128F98


; =============== S U B R O U T I N E =======================================

sub_128FC2:
		move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  off_128FD6(pc,d0.w),d0
		jmp     off_128FD6(pc,d0.w)

    ; End of function sub_128FC2

off_128FD6:     dc.w sub_129012-off_128FD6
		dc.w sub_129292-off_128FD6
		dc.w sub_129396-off_128FD6
		dc.w sub_1293B6-off_128FD6
		dc.w sub_129526-off_128FD6
		dc.w sub_129546-off_128FD6
		dc.w sub_129566-off_128FD6
		dc.w sub_12963E-off_128FD6
		dc.w sub_12978E-off_128FD6
		dc.w sub_1299C4-off_128FD6
		dc.w sub_1299E4-off_128FD6
		dc.w sub_129CE6-off_128FD6
		dc.w sub_129D74-off_128FD6
		dc.w sub_129D94-off_128FD6
		dc.w sub_129E28-off_128FD6
		dc.w sub_129E50-off_128FD6
		dc.w sub_129ED6-off_128FD6
		dc.w sub_129EFE-off_128FD6
		dc.w sub_129F6A-off_128FD6
		dc.w sub_129FE4-off_128FD6
		dc.w sub_12A004-off_128FD6
		dc.w sub_12A0D2-off_128FD6
		dc.w sub_12A0F2-off_128FD6
		dc.w sub_12A15E-off_128FD6
		dc.w sub_12A17E-off_128FD6
		dc.w sub_12A19E-off_128FD6
		dc.w return_12A22E-off_128FD6
		dc.w sub_12A230-off_128FD6
		dc.w sub_12A3B4-off_128FD6
		dc.w sub_12A4BA-off_128FD6

; =============== S U B R O U T I N E =======================================

sub_129012:
		moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$E,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129068
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
loc_129068:
		moveq   #$E,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$69,d0 ; "[Hero]![Line]Goblins! Runefaust[Line]must be up to something![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #$C,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1290C2
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
loc_1290C2:
		moveq   #$C,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$6A,d0 ; "We can take them,[Line][Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12911C
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
loc_12911C:
		trap    #5
		move.w  #$6B,d0 ; "Move it, vermin! Find the key[Line]to this blasted door![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12913C
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_12913C:
		trap    #7
		move.w  #$6C,d0 ; "C'mon, we're almost in![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12915C
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12915C:
		trap    #7
		move.w  #$6D,d0 ; "Where is that blasted key?[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12917C
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12917C:
		trap    #7
		move.w  #$6E,d0 ; "What? Blast it! Those fools[Line]from Guardiana are here![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1291C8
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
byte_1291C8:
		sndCom  MUSIC_EARTHQUAKE
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #$11,d1
		moveq   #$F,d2
		moveq   #2,d3
		moveq   #$D,d4
		moveq   #5,d5
		moveq   #6,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #2,d1
		moveq   #7,d2
		moveq   #2,d3
		moveq   #7,d4
		moveq   #5,d5
		moveq   #$C,d6
		jsr     sub_80AC
		trap    #5
		move.w  #$6F,d0 ; "Earthquake![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		sndCom  SOUND_COMMAND_FADE_OUT
loc_12922E:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12922E
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129286
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
loc_129286:
		trap    #5
		move.w  #$70,d0 ; "Attack, goblins and dwarves![Line]Strike a blow for the honor[Line]of Runefaust![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		rts

    ; End of function sub_129012


; =============== S U B R O U T I N E =======================================

sub_129292:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$73,d0 ; "The earthquake blocked the[Line]road. Head north, but be[Line]ready for battle.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1292F2
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
loc_1292F2:
		trap    #5
		move.w  #$74,d0 ; "No one enters Guardiana while[Line]we live! For Darksol![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12933E
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
loc_12933E:
		trap    #5
		move.w  #$75,d0 ; "Death to Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #$83,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12938A
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
loc_12938A:
		trap    #5
		move.w  #$75,d0 ; "Death to Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		rts

    ; End of function sub_129292


; =============== S U B R O U T I N E =======================================

sub_129396:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$77,d0 ; "[Hero]! Enemies await[Line]you on the road to Alterone.[Line]Take all precautions![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129396


; =============== S U B R O U T I N E =======================================

sub_1293B6:
		move.w  #$1DF,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #$1DF,d0
		jsr     (j_ClearEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129410
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
loc_129410:
		moveq   #$24,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$79,d0 ; "Lowly worms, I shall crush[Line]you beneath my heel. Attack,[Line]soldiers of Runefaust![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129440
		bsr.w   sub_12C342      
		moveq   #2,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129440:
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129458
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_129458:
		trap    #5
		move.w  #$7A,d0 ; "Lord Kane, Lord Darksol[Line]commands you to return to[Line]Runefaust immediately.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12947A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12947A:
		moveq   #$24,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$7B,d0 ; "Tell him I'm on my way.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		trap    #5
		move.w  #$7C,d0 ; "Yes, sir.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1294B4
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_1294B4:
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1294C8
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
loc_1294C8:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1294E0
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_1294E0:
		moveq   #$24,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$7D,d0 ; "A shame I can't stay to watch[Line]you meet your doom! My troops[Line]can handle the likes of you.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129510
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129510:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_129524
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
return_129524:
		
		rts

    ; End of function sub_1293B6


; =============== S U B R O U T I N E =======================================

sub_129526:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$7F,d0 ; "Our enemies seek to stop you[Line]from reaching Anri in[Line]Manarina. You must succeed![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129526


; =============== S U B R O U T I N E =======================================

sub_129546:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$81,d0 ; "Behold the dreaded Cavern of[Line]Darkness! You must defeat the[Line]monsters to gain the orb![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129546


; =============== S U B R O U T I N E =======================================

sub_129566:
		move.w  #$1DF,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #$1DF,d0
		jsr     (j_ClearEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1295C0
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
loc_1295C0:
		moveq   #$21,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$84,d0 ; "Well, [Hero], remember[Line]me? You'll soon wish you'd[Line]taken my advice in Alterone![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1295E8
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_1295E8:
		trap    #7
		move.w  #$85,d0 ; "Come, my pets! Look who's[Line]come to play with you. Why,[Line]it's the Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129608
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129608:
		trap    #7
		move.w  #$86,d0 ; "I leave you in good hands,[Line][Hero].[Wait2][Line]I have more vital matters[Line]to attend to right now![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129628
		bsr.w   sub_12C036
loc_129628:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_12963C
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
return_12963C:
		
		rts

    ; End of function sub_129566


; =============== S U B R O U T I N E =======================================

sub_12963E:
		move.w  #$1DE,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #$1DE,d0
		jsr     (j_ClearEventFlag).l
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12966E
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12966E:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12969A
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #3,d1
		move.w  #$8D,d3 
		bsr.w   sub_12C09E
loc_12969A:
		moveq   #$2F,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$89,d0 ; "Been praying, and well you[Line]might![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1296CA
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_1296CA:
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SFX_HIT
		bsr.w   sub_128F98
		moveq   #$28,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$8A,d0 ; "You and your pitiful Shining[Line]Force cannot be saved by[Line]prayers! You won't escape![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129700
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129700:
		trap    #7
		move.w  #$8B,d0 ; "How fitting that you perish[Line]in a former chapel of Light![Line][Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129720
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129720:
		trap    #7
		move.w  #$8C,d0 ; "I leave you now in the care[Line]of my minions, who know well[Line]what to do with you....[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129740
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129740:
		trap    #7
		move.w  #$8D,d0 ; "Undead! Dispose of these[Line]pests once and for all![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129760
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129760:
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129778
		bsr.w   sub_12C036
loc_129778:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_12978C
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
return_12978C:
		
		rts

    ; End of function sub_12963E


; =============== S U B R O U T I N E =======================================

sub_12978E:
		moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$83,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1297E4
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
loc_1297E4:
		move.w  #$83,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1297FC
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_1297FC:
		trap    #5
		move.w  #$8E,d0 ; "Master, we have found it![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129848
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
loc_129848:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129860
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129860:
		trap    #5
		move.w  #$8F,d0 ; "The Laser Eye! At last![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129880
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129880:
		trap    #7
		move.w  #$90,d0 ; "This is the end of that[Line]cursed Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1298A0
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_1298A0:
		trap    #7
		move.w  #$91,d0 ; "Get rid of those men from[Line]Bustoke. They are of no[Line]further use to us.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1298C2
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_1298C2:
		jsr     j_LoadCursorTiles
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129904
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
loc_129904:
		trap    #5
		move.w  #$92,d0 ; "Alert! Intruders![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129926
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129926:
		jsr     j_LoadCursorTiles
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129968
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
loc_129968:
		trap    #5
		move.w  #$93,d0 ; "What? The Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129988
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129988:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1299A0
		bsr.w   sub_12C342      
		moveq   #$FFFFFF82,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_1299A0:
		trap    #7
		move.w  #$94,d0 ; "Stop them! We must have time[Line]to remove the Laser Eye![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1299C0
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_1299C0:
		trap    #6
		rts

    ; End of function sub_12978E


; =============== S U B R O U T I N E =======================================

sub_1299C4:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$97,d0 ; "Look, they are trying to[Line]block our way to the bridge.[Line]Attack them, Shining Force![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_1299C4


; =============== S U B R O U T I N E =======================================

sub_1299E4:
		move.w  #$1DF,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #$1DF,d0
		jsr     (j_ClearEventFlag).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129A28
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_129A28:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129A40
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129A40:
		jsr     j_LoadCursorTiles
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129A82
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
loc_129A82:
		trap    #5
		move.w  #$99,d0 ; "Traitor! You've betrayed Lord[Line]Kane![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129ACE
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
loc_129ACE:
		moveq   #2,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$9A,d0 ; "I owe no allegiance to you or[Line]him, foul fiend that he is![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129B28
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
loc_129B28:
		trap    #5
		move.w  #$9B,d0 ; "You are only a mercenary. You[Line]do what we pay you to do![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129B74
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
loc_129B74:
		moveq   #2,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$9C,d0 ; "Here, I return your gold. I[Line]shall no longer follow your[Line]orders, toad![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129BCE
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
loc_129BCE:
		trap    #5
		move.w  #$9D,d0 ; "If you are not with us, then[Line]you are against us![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129BF0
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129BF0:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129C08
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129C08:
		trap    #5
		move.w  #$9E,d0 ; "I will have the pleasure of[Line]killing you myself![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129C30
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
byte_129C30:
		sndCom  SFX_HIT
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129C50
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_129C50:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129C6C
		bsr.w   sub_12C342      
		moveq   #$FFFFFF83,d2
		moveq   #1,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_129C6C:
		moveq   #2,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$9F,d0 ; "Vile fiend! Aiiiieeeee....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		sndCom  SFX_FALLING
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129CA4
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_129CA4:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129CC0
		bsr.w   sub_12C342      
		moveq   #$FFFFFF82,d2
		moveq   #5,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_129CC0:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129CD4
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
loc_129CD4:
		trap    #5
		move.w  #$A0,d0 ; "Ha, ha! Thus fall all who[Line]dare to oppose the will of[Line]Darksol![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function sub_1299E4


; =============== S U B R O U T I N E =======================================

sub_129CE6:
		moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129D3C
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
loc_129D3C:
		moveq   #$1F,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$A6,d0 ; "The time for battle has come.[Line]For King Ramladu![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$A7,d0 ; "General Elliott is said to be[Line]the finest swordsman in all[Line]of Rune.[Wait2][Line]Take care, [Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129CE6


; =============== S U B R O U T I N E =======================================

sub_129D74:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$AA,d0 ; "[Hero], you must break[Line]through to reach the harbor.[Line]Be careful, but be quick![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129D74


; =============== S U B R O U T I N E =======================================

sub_129D94:
		moveq   #$33,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$33,d0 
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129DEA
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
loc_129DEA:
		moveq   #$20,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$71,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$AB,d0 ; "At last we meet, [Hero].[Line]Soon you and your misfits[Line]will trouble us no longer![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$AC,d0 ; "Yes, that is Balbazak, a[Line]commander of the Runefaust[Line]army. You must destroy him![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129D94


; =============== S U B R O U T I N E =======================================

sub_129E28:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B7,d0 ; "The ship is surrounded by[Line]monsters, [Hero]![Line]Prepare to defend it![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$23,d0 
		jsr     (j_SetEventFlag).l
		rts

    ; End of function sub_129E28


; =============== S U B R O U T I N E =======================================

sub_129E50:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129E68
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129E68:
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129EAA
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
loc_129EAA:
		trap    #5
		move.w  #$BB,d0 ; "I invoke a path before[Line]me....What?[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129ECA
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_129ECA:
		trap    #7
		move.w  #$BC,d0 ; "Shining Force! I was so[Line]close...so close! I shall[Line]destroy you all![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		rts

    ; End of function sub_129E50


; =============== S U B R O U T I N E =======================================

sub_129ED6:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$BE,d0 ; "Here we go again. We were[Line]just about to land, too! Go[Line]get them![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$23,d0 
		jsr     (j_SetEventFlag).l
		rts

    ; End of function sub_129ED6


; =============== S U B R O U T I N E =======================================

sub_129EFE:
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129F40
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
loc_129F40:
		trap    #5
		move.w  #$C0,d0 ; "These Guardiana fools must be[Line]stopped. Kane's mission is[Line]vital. Attack![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$C1,d0 ; "[Hero], you must quickly[Line]break through to Dragonia![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129EFE


; =============== S U B R O U T I N E =======================================

sub_129F6A:
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129FAC
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
loc_129FAC:
		moveq   #$24,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$C4,d0 ; "Ha! I knew you couldn't hide[Line]in there forever! Come on[Line]out, little hero![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$C5,d0 ; "[Hero], be careful.[Line]Remember that Kane killed[Line]Varios![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129F6A


; =============== S U B R O U T I N E =======================================

sub_129FE4:
		moveq   #$21,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$72,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$C9,d0 ; "Well, [Hero], we meet[Line]once more.  For the last time,[Line]I fear, as you will die here.[Wait2][Line]My minions shall take care of[Line]you, but if they fail, I await[Line]you in Demon Castle![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_129FE4


; =============== S U B R O U T I N E =======================================

sub_12A004:
		moveq   #$31,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$31,d0 
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A05A
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
loc_12A05A:
		moveq   #$21,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$CB,d0 ; "Well, here's the little hero[Line]coming for my Sword of Light![Line]Take it, if you dare![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A082
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12A082:
		trap    #7
		move.w  #$CC,d0 ; "You'll never leave my castle,[Line]you pitiful fools![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A0A2
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A0A2:
		trap    #7
		move.w  #$CD,d0 ; "This is as close as you'll[Line]ever come to the Sword of[Line]Light![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$CE,d0 ; "[Hero], take great care.[Line]Mishaela is a powerful[Line]wizardess, a dangerous foe![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A004


; =============== S U B R O U T I N E =======================================

sub_12A0D2:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D1,d0 ; "The Tower of the Ancients is[Line]to the east. Hurry, while[Line]there's still time![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A0D2


; =============== S U B R O U T I N E =======================================

sub_12A0F2:
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A134
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
loc_12A134:
		trap    #5
		move.w  #$D3,d0 ; "Stop them! Lord Darksol must[Line]not be disturbed![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D4,d0 ; "We must get inside the tower![Line]Smash through these monsters[Line]quickly, [Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A0F2


; =============== S U B R O U T I N E =======================================

sub_12A15E:
		moveq   #$22,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$73,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D7,d0 ; "Screech! Kill...kill....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A15E


; =============== S U B R O U T I N E =======================================

sub_12A17E:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D9,d0 ; "To the south is Runefaust.[Line]Their army approaches. You[Line]must fight your way in.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A17E


; =============== S U B R O U T I N E =======================================

sub_12A19E:
		clr.w   ((word_FFB7C6-$1000000)).w
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A1E4
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
loc_12A1E4:
		moveq   #$23,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$74,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$DB,d0 ; "Long have I waited for[Line]this moment, [Hero]![Line]Prepare to meet your death.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A21A
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_12A21A:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_12A22E
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
return_12A22E:
		
		rts

    ; End of function sub_12A19E


; =============== S U B R O U T I N E =======================================

sub_12A230:
		moveq   #$30,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$30,d0 
		jsr     (j_SetEventFlag).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$DF,d0 ; "At last, [Hero]!  The[Line]Castle of the Ancients. The[Line]end is near, for good or ill![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A280
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A280:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A298
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A298:
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A2DA
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
loc_12A2DA:
		moveq   #$26,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$76,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$E0,d0 ; "None shall pass Colossus,[Line]the eternal sentinel![Line]Leave now![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		clr.w   ((word_FFB7C6-$1000000)).w
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A314
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A314:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A32C
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A32C:
		move.w  #$81,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A344
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A344:
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A35C
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A35C:
		sndCom  SFX_SPELL_CAST
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$E1,d0 ; "Colossus! I've heard of it[Line]in legends! [Hero]![Line]They are attacking![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A230

byte_12A388:    dc.b 0
		dc.b $1E
		dc.b 1
		dc.b $14
		dc.b 0
		dc.b $A
		dc.b 1
		dc.b 5
		dc.b 0
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 5
		dc.b 1
		dc.b $A
		dc.b 0
		dc.b $14
		dc.b 1
		dc.b $28
		dc.b 0
		dc.b $3C
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12A3B4:
		moveq   #$32,d0 
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #$32,d0 
		jsr     (j_SetEventFlag).l
		move.w  #$80,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A3E0
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12A3E0:
		jsr     j_LoadCursorTiles
		move.w  #$80,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A422
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
loc_12A422:
		moveq   #40,d0
		jsr     j_OpenPortraitWindow
		moveq   #$6E,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #229,d0         ; "Dark Dragon! Awake from your[Line]long sleep! The time has come[Line]for you to reclaim this land![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		lea     byte_12A388(pc), a0
loc_12A444:
		clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12A462
		move.l  a0,-(sp)
		bsr.w   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12A444
loc_12A462:
		moveq   #40,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #230,d0         ; "Awaken, Dark Dragon![Line]Something is wrong....[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A48A
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A48A:
		trap    #7
		move.w  #231,d0         ; "[Hero]! Blast![Line]You have meddled for the last[Line]time! Kill them, my servants![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #232,d0         ; "[Hero]! You must stop[Line]Darksol before he completes[Line]his foul ceremony! Attack![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12A3B4


; =============== S U B R O U T I N E =======================================

sub_12A4BA:
		moveq   #$2B,d0 
		jsr     (j_ClearEventFlag).l
		rts

    ; End of function sub_12A4BA


; =============== S U B R O U T I N E =======================================

sub_12A4C4:
		tst.b   ((DEBUG_MODE_ACTIVATED-$1000000)).w
		beq.s   loc_12A4DA
		cmpi.b  #INPUT_B|INPUT_C|INPUT_A,(P1_INPUT).l
		bne.s   loc_12A4DA
		moveq   #-1,d2
		bsr.w   sub_12C1BA
loc_12A4DA:
		move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  rjt_BattleEndScripts(pc,d0.w),d0
		jmp     rjt_BattleEndScripts(pc,d0.w)

    ; End of function sub_12A4C4

rjt_BattleEndScripts:
		dc.w bes00-rjt_BattleEndScripts
		dc.w nullsub_12A560-rjt_BattleEndScripts
		dc.w nullsub_12A560-rjt_BattleEndScripts
		dc.w nullsub_12A560-rjt_BattleEndScripts
		dc.w nullsub_12A560-rjt_BattleEndScripts
		dc.w bes05-rjt_BattleEndScripts
		dc.w bes06-rjt_BattleEndScripts
		dc.w return_12A5B4-rjt_BattleEndScripts
		dc.w bes08-rjt_BattleEndScripts
		dc.w return_12A5EA-rjt_BattleEndScripts
		dc.w bes10-rjt_BattleEndScripts
		dc.w bes11-rjt_BattleEndScripts
		dc.w bes12-rjt_BattleEndScripts
		dc.w bes13-rjt_BattleEndScripts
		dc.w nullsub_12A7F6-rjt_BattleEndScripts
		dc.w bes15-rjt_BattleEndScripts
		dc.w nullsub_12A82E-rjt_BattleEndScripts
		dc.w bes17-rjt_BattleEndScripts
		dc.w bes18-rjt_BattleEndScripts
		dc.w nullsub_12A8EC-rjt_BattleEndScripts
		dc.w bes20-rjt_BattleEndScripts
		dc.w nullsub_12A932-rjt_BattleEndScripts
		dc.w bes22-rjt_BattleEndScripts
		dc.w bes23-rjt_BattleEndScripts
		dc.w bes24-rjt_BattleEndScripts
		dc.w nullsub_12A9DA-rjt_BattleEndScripts
		dc.w bes26-rjt_BattleEndScripts
		dc.w bes27-rjt_BattleEndScripts
		dc.w bes28-rjt_BattleEndScripts
		dc.w bes29-rjt_BattleEndScripts

; =============== S U B R O U T I N E =======================================

bes00:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A54E
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A54E:
		trap    #5
		move.w  #$71,d0 ; "Fools...you have won here,[Line]but Lord Kane of Runefaust is[Line]even now attacking Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes00


; =============== S U B R O U T I N E =======================================

nullsub_12A560:
		
		rts

    ; End of function nullsub_12A560


; =============== S U B R O U T I N E =======================================

bes05:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A586
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A586:
		trap    #5
		move.w  #$82,d0 ; "No! It cannot be! After all[Line]these centuries....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes05


; =============== S U B R O U T I N E =======================================

bes06:
		move.w  #$81,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		trap    #5
		move.w  #$87,d0 ; "Fools! Light will never defeat[Line]the Darkness....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
return_12A5B4:
		
		rts

    ; End of function bes06


; =============== S U B R O U T I N E =======================================

bes08:
		move.w  #$82,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A5DA
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A5DA:
		trap    #5
		move.w  #$95,d0 ; "You think you've won, but[Line]you've failed. The Laser Eye[Line]is ours now![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
return_12A5EA:
		
		rts

    ; End of function bes08


; =============== S U B R O U T I N E =======================================

bes10:
		move.w  #$82,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #$82,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A610
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A610:
		trap    #5
		move.w  #$A1,d0 ; "You may have beaten us here,[Line]but General Elliott will stop[Line]you in Pao![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes10


; =============== S U B R O U T I N E =======================================

bes11:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$1F,d0
		jsr     j_OpenPortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A64E
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A64E:
		trap    #5
		move.w  #$A8,d0 ; "Perhaps you have the strength[Line]to rescue King Ramladu and[Line]Runefaust! Stop Darksol![Wait2][Line]Promise that you will free[Line]Runefaust, known as Protectora[Line]before Darksol came....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes11


; =============== S U B R O U T I N E =======================================

bes12:
		move.w  #$85,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   loc_12A68C
		moveq   #$FFFFFF80,d0
		jsr     j_GetCurrentHP
		tst.w   d1
		bne.w   return_12BFCE
		moveq   #$30,d0 
		jsr     (j_SetEventFlag).l
		bra.w   loc_12A6A6
loc_12A68C:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$FFFFFF85,d0
		jsr     j_GetCurrentHP
		tst.w   d1
		bne.w   return_12BFCE
loc_12A6A6:
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes12


; =============== S U B R O U T I N E =======================================

bes13:
		move.w  #128,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #32,d0
		jsr     j_OpenPortraitWindow
		moveq   #113,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$AD,d0 ; "[Hero]! Take the ship,[Line]but please spare my life![Line]Please![Wait2]"
		trap    #DISPLAY_MESSAGE
loc_12A6D0:
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.s   loc_12A6E6      
		move.w  #$AE,d0 ; "You don't want to[Line]kill me, do you?[Line]Please let me go.[Wait2]"
		trap    #DISPLAY_MESSAGE
		bra.s   loc_12A6D0
loc_12A6E6:
		move.w  #$AF,d0 ; "Thank you! Take the ship, go[Line]after Darksol![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #20,d0
		jsr     (j_Sleep).l
		move.b  #9,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$D,(FADING_PALETTE_FLAGS).l
		moveq   #$14,d0
		jsr     (j_Sleep).l
		moveq   #$6E,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B0,d0 ; "Balbazak, you betrayed me![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$20,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$71,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B1,d0 ; "No, no, please Darksol![Line]Leave me in peace![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		sndCom  SFX_HIT
		moveq   #$28,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$6E,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B2,d0 ; "You disgust me, Balbazak![Line]Leave you in peace? I will[Line]leave you in pieces![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$20,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$71,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B3,d0 ; "Forgive me![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$28,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$6E,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B4,d0 ; "Too late, worm! Receive your[Line]punishment for failure![Wait2]"
		trap    #DISPLAY_MESSAGE
		sndCom  SFX_HIT
		bsr.w   sub_128F98
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A7D0
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A7D0:
		moveq   #$20,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$71,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B5,d0 ; "I am dying, [Hero]....[Line]You must kill Darksol...[Line]free Runefaust....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes13


; =============== S U B R O U T I N E =======================================

nullsub_12A7F6:
		
		rts

    ; End of function nullsub_12A7F6


; =============== S U B R O U T I N E =======================================

bes15:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A81C
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A81C:
		trap    #5
		move.w  #$BD,d0 ; "Arrghh...I was so close...the[Line]way to Metapha...almost[Line]ours....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes15


; =============== S U B R O U T I N E =======================================

nullsub_12A82E:
		
		rts

    ; End of function nullsub_12A82E


; =============== S U B R O U T I N E =======================================

bes17:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A854
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A854:
		trap    #5
		move.w  #$C2,d0 ; "You'll never beat Kane,[Line]Shining Fools![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes17


; =============== S U B R O U T I N E =======================================

bes18:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$24,d0 
		jsr     j_OpenPortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A892
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A892:
		trap    #5
		move.w  #$C6,d0 ; "Arrgh! My mask[Line]is...breaking![Wait2]"
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_128F98
		jsr     j_ClosePortraitWindow
		sndCom  SFX_METALLIC
		moveq   #$25,d0 
		jsr     j_OpenPortraitWindow
		trap    #7
		move.w  #$C7,d0 ; "Wh...where am I? I[Line]remember now. Darksol masked[Line]my face to control me....[Wait2][Line]What have I done?[Line]He even made me fight you![Line]Forgive me, [Hero]![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A8D0
		bsr.w   sub_12C036
loc_12A8D0:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A8E4
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
loc_12A8E4:
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes18


; =============== S U B R O U T I N E =======================================

nullsub_12A8EC:
		
		rts

    ; End of function nullsub_12A8EC


; =============== S U B R O U T I N E =======================================

bes20:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$21,d0 
		jsr     j_OpenPortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A91A
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A91A:
		trap    #5
		move.w  #$CF,d0 ; "Though you can take...my[Line]sword...you will never...stop[Line]Darksol.[Wait2][Line]Dark Dragon will be set[Line]free....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes20


; =============== S U B R O U T I N E =======================================

nullsub_12A932:
		
		rts

    ; End of function nullsub_12A932


; =============== S U B R O U T I N E =======================================

bes22:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		jsr     j_LoadCursorTiles
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A982
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
loc_12A982:
		trap    #5
		move.w  #$D5,d0 ; "Lord Darksol...I have failed[Line]...they're coming...into the[Line]tower....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes22


; =============== S U B R O U T I N E =======================================

bes23:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$22,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$73,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D8,d0 ; "This unit...now ceases to[Line]function...mission incomplete[Line]...system failure....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes23


; =============== S U B R O U T I N E =======================================

bes24:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes24


; =============== S U B R O U T I N E =======================================

nullsub_12A9DA:
		
		rts

    ; End of function nullsub_12A9DA


; =============== S U B R O U T I N E =======================================

bes26:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$23,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$74,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$DD,d0 ; "I am dying...but my mind is[Line]once more my own. Darksol[Line]was controlling me.[Wait2][Line]You must stop Darksol![Line]If he frees Dark Dragon,[Line]all of Rune is doomed.[Wait2][Line]He has gone to the gate,[Line]to summon the castle from the[Line]depths of the sea. Go![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes26


; =============== S U B R O U T I N E =======================================

bes27:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$26,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$76,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$E2,d0 ; "Fools...Dark Dragon...will[Line]come...to destroy you....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes27


; =============== S U B R O U T I N E =======================================

bes28:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$28,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$6E,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$E9,d0 ; "Dark Dragon! With my dying[Line]breath...I summon you....[Line]Arise, Dark Dragon![Wait2]"
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_128F98
		moveq   #$A,d0
		jsr     (j_Sleep).l
		bsr.w   sub_128F98
		moveq   #$A,d0
		jsr     (j_Sleep).l
		move.w  #$1EA,d0        ; "[Dict][Line]"
		trap    #DISPLAY_MESSAGE
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AA98
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12AA98:
		trap    #7
		move.w  #$EA,d0 ; "Yes! At last, you are[Line]awakening![Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #$EB,d0 ; "I offer myself to you, Dark[Line]Dragon! Use my power to help[Line]you cast off your bonds.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AABE
		bsr.w   sub_12C036
loc_12AABE:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AAD6
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12AAD6:
		moveq   #$FFFFFF80,d2
		bsr.w   FindEntityForCutscene
		moveq   #$F,d1
		jsr     j_SetCombatantX
		moveq   #$1E,d1
		jsr     j_SetCombatantY
		jsr     j_LoadCursorTiles
		move.w  #$F,d1
		move.w  #7,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		moveq   #$FFFFFF80,d2
		bsr.w   FindEntityForCutscene
		moveq   #7,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AB3A
		bsr.w   sub_12BFF0
loc_12AB3A:
		moveq   #$28,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$EC,d0 ; "You are free once more! Let[Line]all of Rune tremble! I die[Line]fulfilled! Cringe fools![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AB62
		bsr.w   sub_12C036
loc_12AB62:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AB76
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
loc_12AB76:
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes28


; =============== S U B R O U T I N E =======================================

bes29:
		move.w  #$80,d2 
		bsr.w   WasEntityKilledByLastAttack
		beq.s   loc_12AB9E
		move.w  #$81,d2 
		bsr.w   WasEntityKilledByLastAttack
		beq.s   loc_12AB9E
		move.w  #$82,d2 
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
loc_12AB9E:
		clr.w   d2
		moveq   #$FFFFFF80,d0
		jsr     j_GetCurrentHP
		add.w   d1,d2
		moveq   #$FFFFFF81,d0
		jsr     j_GetCurrentHP
		add.w   d1,d2
		moveq   #$FFFFFF82,d0
		jsr     j_GetCurrentHP
		add.w   d1,d2
		bne.w   return_12BFCE
		moveq   #$FFFFFFFF,d2
		bsr.w   sub_12C1BA
		rts

    ; End of function bes29

		rts

; =============== S U B R O U T I N E =======================================

ExecutePostBattleScript:
		
		move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  rjt_PostBattleScripts(pc,d0.w),d0
		jmp     rjt_PostBattleScripts(pc,d0.w)

    ; End of function ExecutePostBattleScript

rjt_PostBattleScripts:
		dc.w sub_12AC1C-rjt_PostBattleScripts
		dc.w sub_12AC8C-rjt_PostBattleScripts
		dc.w sub_12ACAC-rjt_PostBattleScripts
		dc.w sub_12ACCC-rjt_PostBattleScripts
		dc.w sub_12AD04-rjt_PostBattleScripts
		dc.w sub_12AD24-rjt_PostBattleScripts
		dc.w sub_12AD44-rjt_PostBattleScripts
		dc.w sub_12AE56-rjt_PostBattleScripts
		dc.w sub_12AE6A-rjt_PostBattleScripts
		dc.w sub_12AEA8-rjt_PostBattleScripts
		dc.w sub_12AEC8-rjt_PostBattleScripts
		dc.w sub_12AFD8-rjt_PostBattleScripts
		dc.w sub_12B038-rjt_PostBattleScripts
		dc.w sub_12B092-rjt_PostBattleScripts
		dc.w sub_12B0F2-rjt_PostBattleScripts
		dc.w loc_12B212-rjt_PostBattleScripts
		dc.w sub_12B216-rjt_PostBattleScripts
		dc.w sub_12B256-rjt_PostBattleScripts
		dc.w sub_12B276-rjt_PostBattleScripts
		dc.w sub_12B2B0-rjt_PostBattleScripts
		dc.w sub_12B2D0-rjt_PostBattleScripts
		dc.w sub_12B31C-rjt_PostBattleScripts
		dc.w sub_12B33C-rjt_PostBattleScripts
		dc.w sub_12B36C-rjt_PostBattleScripts
		dc.w sub_12B378-rjt_PostBattleScripts
		dc.w sub_12B398-rjt_PostBattleScripts
		dc.w sub_12B470-rjt_PostBattleScripts
		dc.w sub_12B490-rjt_PostBattleScripts
		dc.w sub_12B5E8-rjt_PostBattleScripts
		dc.w sub_12B638-rjt_PostBattleScripts

; =============== S U B R O U T I N E =======================================

sub_12AC1C:
		 
		sndCom  MUSIC_EARTHQUAKE; Ancient gate post-battle cutscene.
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12AC50:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12AC50
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$72,d0 ; "If that creature spoke truly,[Line]we must return to help defend[Line]Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.b  #4,((EGRESS_LOCATION-$1000000)).w
		rts

    ; End of function sub_12AC1C


; =============== S U B R O U T I N E =======================================

sub_12AC8C:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$76,d0 ; "Well done, Shining Force![Line]Now, enter Guardiana and find[Line]out what's happened there![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12AC8C


; =============== S U B R O U T I N E =======================================

sub_12ACAC:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$78,d0 ; "Excellent! Kane will have to[Line]do better than that to stop[Line]you. On to Alterone![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12ACAC


; =============== S U B R O U T I N E =======================================

sub_12ACCC:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$7E,d0 ; "[Hero], there's no time[Line]to lose. Kane must be found[Line]and stopped at all costs.[Wait2][Line]Find out all you can and[Line]be sure to talk to the king[Line]of Alterone![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$31,d0 
		jsr     (j_ClearEventFlag).l
		moveq   #$66,d0 
		jsr     (j_SetEventFlag).l
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12ACCC


; =============== S U B R O U T I N E =======================================

sub_12AD04:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$80,d0 ; "[Hero], now enter[Line]Manarina! We must inform[Line]Anri about Guardiana![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12AD04


; =============== S U B R O U T I N E =======================================

sub_12AD24:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$83,d0 ; "[Hero], the Orb of Light[Line]must be within that chest.[Line]Take it quickly![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12AD24


; =============== S U B R O U T I N E =======================================

sub_12AD44:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #$C,d0
		moveq   #$FFFFFF80,d1
		jsr     j_SetEntityIndex
		moveq   #$1B,d1
		jsr     j_SetCombatantX
		moveq   #5,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AD90
		bsr.w   sub_12C342      
		move.w  #0,d2
		move.w  #$86,d3 
		bsr.w   sub_12C2BE
loc_12AD90:
		jsr     j_LoadCursorTiles
		move.w  #$1B,d1
		move.w  #5,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12ADD6
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #1,d1
		move.w  #$86,d3 
		bsr.w   sub_12C09E
loc_12ADD6:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12ADF2
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #$86,d3 
		bsr.w   sub_12C2BE
loc_12ADF2:
		trap    #5
		move.w  #136,d0         ; "She...that evil woman...was[Line]going to take me to Runefaust,[Line]to feed me to a dragon![Wait2][Line]Thank you! I'm going home and[Line]I'm never leaving![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AE18
		bsr.w   sub_12C342      
		moveq   #2,d2
		moveq   #5,d1
		move.w  #$86,d3 
		bsr.w   sub_12C09E
loc_12AE18:
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AE3A
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #7,d1
		move.w  #$86,d3 
		bsr.w   sub_12C09E
loc_12AE3A:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AE4E
		moveq   #$FFFFFFFF,d1
		jsr     j_SetEntityIndex
loc_12AE4E:
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function sub_12AD44


; =============== S U B R O U T I N E =======================================

sub_12AE56:
		moveq   #$64,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$7E,d0 
		jsr     (j_ClearEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12AE56


; =============== S U B R O U T I N E =======================================

sub_12AE6A:
		moveq   #$63,d0 
		jsr     (j_SetEventFlag).l
		move.w  #$2A,((MAP_HEIGHT-$1000000)).w 
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$96,d0 ; "[Hero], the Moon Stone[Line]lies inside the cavern.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #0,d1
		moveq   #$1E,d2
		moveq   #0,d3
		moveq   #$1E,d4
		moveq   #$17,d5
		moveq   #$B,d6
		jmp     sub_80AC

    ; End of function sub_12AE6A


; =============== S U B R O U T I N E =======================================

sub_12AEA8:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$98,d0 ; "Head for the bridge. We need[Line]to get across quickly![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12AEA8


; =============== S U B R O U T I N E =======================================

; Pao bridge post-battle cutscene (i.e., the "Pelle" scene.)

sub_12AEC8:
		clr.w   ((word_FFB7C6-$1000000)).w
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #12,d0          ; 12 = first enemy combatant
		moveq   #-128,d1
		jsr     j_SetEntityIndex
		moveq   #29,d1
		jsr     j_SetCombatantX
		moveq   #20,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		jsr     j_LoadCursorTiles
		move.w  #29,d1
		move.w  #18,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #128,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AF42
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #4,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_12AF42:
		moveq   #PORTRAIT_PELLE,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #162,d0         ; "Whew! I thought I was a[Line]goner, but I caught a branch[Line]and just hung on.[Wait2]"
		trap    #DISPLAY_MESSAGE
		move.w  #128,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AF6E
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #0,d1
		move.w  #2,d3
		bsr.w   sub_12C09E
loc_12AF6E:
		move.w  #128,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AF8A
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #2,d3
		bsr.w   sub_12C2BE
loc_12AF8A:
		trap    #7
		move.w  #163,d0         ; "A great battle! I don't know[Line]who you are, but I want to[Line]tag along![Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     j_ClosePortraitWindow
		moveq   #2,d0
		bsr.w   sub_12C446      
		trap    #6
		moveq   #PORTRAIT_NOVA,d0; branch to this location to skip Pelle's appearance and dialogue
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #164,d0         ; "A good job getting to that[Line]Laser Eye. Hurry on to Pao.[Line]Evil is afoot![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		trap    #5
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  #358,d0         ; "With the Laser Eye gone,[Line]the Shining Force heads toward[Line]the moving town of Pao.[Wait2][Line]Knowing that Runefaust is[Line]gathering its forces, our[Line]heroes hurried onward.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #37,d0
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12AEC8


; =============== S U B R O U T I N E =======================================

sub_12AFD8:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$A9,d0 ; "Elliott was a great warrior...[Line]too bad he was our enemy.[Wait2][Line]But look, the traveling town[Line]of Pao is coming up again![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     (j_FadeOutToBlack).l
		sndCom  SFX_TRAIN_WHISTLE
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #2,d1
		moveq   #4,d2
		moveq   #$2A,d3 
		moveq   #$B,d4
		moveq   #1,d5
		moveq   #0,d6
		jsr     sub_80AC
		jsr     (j_FadeInFromBlack).l
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitializeBattleData
		jmp     j_InitializeBattleMap

    ; End of function sub_12AFD8


; =============== S U B R O U T I N E =======================================

sub_12B038:
		moveq   #$30,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   loc_12B05C
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #$26,d1 
		moveq   #$10,d2
		moveq   #$10,d3
		moveq   #$B,d4
		moveq   #0,d5
		moveq   #0,d6
		jsr     sub_80AC
		bra.s   loc_12B074
loc_12B05C:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		moveq   #$26,d1 
		moveq   #$10,d2
		moveq   #9,d3
		moveq   #7,d4
		moveq   #0,d5
		moveq   #0,d6
		jsr     sub_80AC
loc_12B074:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		sndCom  SFX_HIT
		moveq   #$14,d0
		jmp     (j_Sleep).l

    ; End of function sub_12B038


; =============== S U B R O U T I N E =======================================

sub_12B092:
		moveq   #$28,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$6E,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B6,d0 ; "Take the ship, as that fool[Line]said. You will not survive[Line]the voyage! Ha, ha, ha![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.b  #$A,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$D,(FADING_PALETTE_FLAGS).l
		moveq   #$14,d0
		jsr     (j_Sleep).l
		trap    #5
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  #$167,d0        ; "Thus did the Shining Force[Line]free Uranbatol and set sail[Line]for a land of legend....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12B092


; =============== S U B R O U T I N E =======================================

sub_12B0F2:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$B8,d0 ; "The ship was damaged in the[Line]battle. We must repair it.[Line]That island over there....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #$C,d0
		moveq   #$FFFFFF80,d1
		jsr     j_SetEntityIndex
		moveq   #3,d1
		jsr     j_SetCombatantX
		moveq   #$1F,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B156
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #$7C,d3 
		bsr.w   sub_12C2BE
loc_12B156:
		jsr     j_LoadCursorTiles
		move.w  #8,d1
		move.w  #$1F,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B19C
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #4,d1
		move.w  #$7C,d3 
		bsr.w   sub_12C09E
loc_12B19C:
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B1B8
		bsr.w   sub_12C342      
		move.w  #0,d2
		move.w  #$7C,d3 
		bsr.w   sub_12C2BE
loc_12B1B8:
		moveq   #$2A,d0 
		jsr     j_OpenPortraitWindow
		trap    #5
		move.w  #$B9,d0 ; "Thank you for destroying[Line]those monsters! My name is[Line]Shell of Waral.[Wait2][Line]You can repair your ship in[Line]Waral. Please follow me![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$80,d2 
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B1EC
		bsr.w   sub_12C342      
		moveq   #2,d2
		moveq   #4,d1
		move.w  #$7C,d3 
		bsr.w   sub_12C09E
loc_12B1EC:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$BA,d0 ; "I've heard of Waral. We[Line]should be able to get the[Line]ship fixed there.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$23,d0 
		jsr     (j_ClearEventFlag).l

    ; End of function sub_12B0F2

loc_12B212:     bra.w   sub_12BF66

; =============== S U B R O U T I N E =======================================

sub_12B216:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$BF,d0 ; "The ship's helm was destroyed[Line]in the battle. We're now[Line]adrift at sea![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		trap    #5
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  #$168,d0        ; "The ship drifted off course,[Line]lost at sea. What will become[Line]of the Shining Force?[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$23,d0 
		jsr     (j_ClearEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12B216


; =============== S U B R O U T I N E =======================================

sub_12B256:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$C3,d0 ; "[Hero], you must[Line]stop Kane before he finds the[Line]Manual of the Seal. Onward![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B256


; =============== S U B R O U T I N E =======================================

sub_12B276:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$C8,d0 ; "It seems that Darksol is[Line]behind all the evil afoot.[Line]Stop him and it all ends.[Wait2][Line]In any case, let's take[Line]another look at this village.[Wait2][Line]Check the shrine again....[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$47,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$30,d0 
		jsr     (j_ClearEventFlag).l
		moveq   #$7C,d0 
		jsr     (j_ClearEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12B276


; =============== S U B R O U T I N E =======================================

sub_12B2B0:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$CA,d0 ; "Mishaela is said to possess[Line]the Sword of Light. You must[Line]enter her castle and get it![Wait2][Line]With that legendary weapon,[Line]you stand a much better[Line]chance against Darksol.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B2B0


; =============== S U B R O U T I N E =======================================

sub_12B2D0:
		moveq   #$37,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   loc_12B2FC
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		jsr     (sub_304).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  #$169,d0        ; "Will Darksol release Dark[Line]Dragon from the bonds of the[Line]Ancients?[Wait2][Line]Or will [Hero] stop[Line]Darksol and save all of[Line]Rune from the ultimate evil?[Wait2][Line]The Shining Force hurries[Line]on to Prompt....[Wait2]"
		trap    #DISPLAY_MESSAGE
		jsr     (j_CloseMessageWindow).l
		bra.w   sub_12BF66
loc_12B2FC:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D0,d0 ; "With the Sword of Light you[Line]might be able to defeat[Line]Darksol. We shall see![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B2D0


; =============== S U B R O U T I N E =======================================

sub_12B31C:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D2,d0 ; "Now, on to the Tower of the[Line]Ancients![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B31C


; =============== S U B R O U T I N E =======================================

sub_12B33C:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$D6,d0 ; "Get in there, quickly![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$58,d0 
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12B33C


; =============== S U B R O U T I N E =======================================

sub_12B36C:
		moveq   #$5A,d0 
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function sub_12B36C


; =============== S U B R O U T I N E =======================================

sub_12B378:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$DA,d0 ; "Now, [Hero], into[Line]Runefaust![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B378


; =============== S U B R O U T I N E =======================================

sub_12B398:
		moveq   #$23,d0 
		jsr     j_OpenPortraitWindow
		moveq   #$74,d1 
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$DC,d0 ; "Is that the best you can do?[Line]Well, meet my robots,[Line]weaklings![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		movea.l (off_124068).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #30,d0
		jsr     (j_Sleep).l
		movea.l (off_12406C).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #30,d0
		jsr     (j_Sleep).l
		movea.l (off_124070).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12B44A:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12B44A
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		move.b  ((byte_FF9C51-$1000000)).w,d0
		lsl.w   #2,d0
		andi.w  #$C0,d0 
		or.b    d0,((byte_FF9C51-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12B398


; =============== S U B R O U T I N E =======================================

sub_12B470:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$DE,d0 ; "[Hero]! Darksol has[Line]already entered the Castle of[Line]the Ancients.  You must hurry![Wait2][Line]I found a secret passage[Line]to the gate. It is in the[Line]entry hall of this castle.[Wait2][Line]Return to town and make[Line]your final preparations. Then[Line]take the passage.[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B470


; =============== S U B R O U T I N E =======================================

sub_12B490:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$E3,d0 ; "You've destroyed Colossus![Line]But where is Darksol?[Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		sndCom  MUSIC_EARTHQUAKE
		jsr     j_LoadCursorTiles
		move.w  #$10,d1
		move.w  #3,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #0,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
loc_12B54A:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12B54A
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		move.b  #5,((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$E4,d0 ; "Use the staircase,[Line][Hero].[Line]Darksol must be up there![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		rts

    ; End of function sub_12B490


; =============== S U B R O U T I N E =======================================

sub_12B598:
		jsr     sub_80CC
		jmp     (j_ApplyVIntCramDma).l

    ; End of function sub_12B598

byte_12B5A4:    dc.b 0
		dc.b $28
		dc.b 1
		dc.b $1E
		dc.b 0
		dc.b $14
		dc.b 1
		dc.b $13
		dc.b 2
		dc.b $12
		dc.b 1
		dc.b $11
		dc.b 2
		dc.b $10
		dc.b 3
		dc.b $F
		dc.b 2
		dc.b $E
		dc.b 3
		dc.b $D
		dc.b 2
		dc.b $C
		dc.b 3
		dc.b $B
		dc.b 4
		dc.b $A
		dc.b 3
		dc.b 9
		dc.b 2
		dc.b 8
		dc.b 1
		dc.b 7
		dc.b 2
		dc.b 6
		dc.b 3
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 2
		dc.b 5
		dc.b 1
		dc.b 5
		dc.b 2
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 2
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 2
		dc.b $A
		dc.b 3
		dc.b $F
		dc.b 4
		dc.b 0
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12B5E8:
		lea     byte_12B5A4(pc), a0
loc_12B5EC:
		clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12B608
		move.l  a0,-(sp)
		bsr.s   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12B5EC
loc_12B608:
		moveq   #0,d1
		moveq   #$20,d2 
		moveq   #$C,d3
		moveq   #2,d4
		moveq   #6,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12B5E8

byte_12B62C:    dc.b 4
		dc.b $14
		dc.b 3
		dc.b $1E
		dc.b 2
		dc.b $28
		dc.b 1
		dc.b $32
		dc.b 0
		dc.b $3C
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12B638:
		moveq   #PORTRAIT_DARK_DRAGON,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARK_DRAGON,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$ED,d0 ; "Nooooo! These puny creatures[Line]cannot defeat the Lord of[Line]Darkness![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$EE,d0 ; "Never! I will not be banished[Line]again! The Powers of Darkness[Line]will sustain me![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.b  #1,(FADING_COUNTER_MAX).l
		jsr     (j_FadeOutToWhite).l
		jsr     (j_FadeInFromWhite).l
		jsr     (j_FadeOutToWhite).l
		jsr     (j_FadeInFromWhite).l
		move.b  #3,(FADING_COUNTER_MAX).l
		jsr     (j_FadeOutToWhite).l
		clr.w   d0
		moveq   #$F,d1
		jsr     j_SetCombatantX
		moveq   #$B,d1
		jsr     j_SetCombatantY
		moveq   #$1E,d7
		lea     ((COMBATANT_1_Y-$1000000)).w,a1
loc_12B6A4:
		move.b  (a1),d0
		cmpi.b  #$B,d0
		blt.s   loc_12B6AE
		addq.b  #1,(a1)
loc_12B6AE:
		lea     $10(a1),a1
		dbf     d7,loc_12B6A4
		jsr     sub_8028
		jsr     j_LoadCursorTiles
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B6FE
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
loc_12B6FE:
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B716
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12B716:
		jsr     (j_FadeInFromWhite).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		trap    #7
		move.w  #$EF,d0 ; "Dark Dragon still lives![Line]Perhaps we cannot kill him![Line]There must be a way....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$F0,d0 ; "[Hero]! Dark Dragon[Line]must be sealed away once[Line]again. And only you can do it![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #7
		move.w  #$F1,d0 ; "Use the Chaos Breaker! Drive[Line]it through Dark Dragon![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_DARK_DRAGON,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARK_DRAGON,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$F2,d0 ; "Fools! Nothing you do can[Line]stop me! I am Dark Dragon,[Line]Darkness incarnate![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$F3,d0 ; "[Hero]! Stab him with[Line]the Chaos Breaker![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #30,d0
		jsr     (j_Sleep).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B7B8
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #0,d1
		move.w  #MAPSPRITE_MAX_HERO,d3
		bsr.w   sub_12C09E
loc_12B7B8:
		moveq   #$14,d0
		jsr     (j_Sleep).l
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B7DC
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #MAPSPRITE_MAX_HERO,d3
		bsr.w   sub_12C2BE
loc_12B7DC:
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		move.w  #$4100,(SPRITE_22_TILE_FLAGS).l
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12B808
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #MAPSPRITE_MAX_STABBING_DARK_DRAGON,d3
		bsr.w   sub_12C2BE
byte_12B808:
		sndCom  SFX_BOW_MASTER
		moveq   #$14,d0
		jsr     (j_Sleep).l
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12B830
		bsr.w   sub_12C342      
		move.w  #0,d2
		move.w  #MAPSPRITE_MAX_STABBING_DARK_DRAGON,d3
		bsr.w   sub_12C2BE
byte_12B830:
		sndCom  SFX_HEALING
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		move.w  #0,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12B858
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #MAPSPRITE_MAX_STABBING_DARK_DRAGON,d3
		bsr.w   sub_12C2BE
byte_12B858:
		sndCom  SFX_DOOR_OPEN
		moveq   #$14,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOLT_SPELL
		bsr.w   SetupScreenTint_Dark
		movea.l (p_pal_BED2A).l,a0
		lea     (PALETTE_2_CURRENT).l,a1
		moveq   #7,d7
loc_12B87A:
		move.l  (a0),$80(a1)
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12B87A
		jsr     (j_ApplyVIntCramDma).l
		movea.l (off_BC008).l,a0
		lea     ($D000).l,a1
		move.w  #$300,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movea.l (off_BC00C).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		movea.l (off_BC010).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		movea.l (off_BC014).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #$A,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		movea.l (off_BC010).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		movea.l (off_BC00C).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		bsr.w   RestorePalettes
		sndCom  MUSIC_EARTHQUAKE
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_MONSTER_3
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		lea     byte_12B62C(pc), a0
loc_12B9AA:
		clr.w   d0
		move.b  (a0)+,d0
		bmi.s   byte_12B9C8
		move.l  a0,-(sp)
		bsr.w   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12B9AA
byte_12B9C8:
		sndCom  SOUND_COMMAND_FADE_OUT
loc_12B9CC:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12B9CC
		move.w  #$B4,d0 
		jsr     (j_Sleep).l
		move.w  #$1E,((CURRENT_OBJECT-$1000000)).w
		sndCom  MUSIC_ATTACK
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$F5,d0 ; "[Hero]! The Castle of the[Line]Ancients is sinking! Let's[Line]get out of here![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$F0,d7 
loc_12BA0E:
		jsr     (j_WaitForVInt).l
		tst.b   (P1_INPUT).l    
		dbne    d7,loc_12BA0E
		trap    #5
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.w  #$F6,d0 ; "But [Hero] cannot move![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$F7,d0 ; "[Hero] is somehow bound[Line]to the Chaos Breaker![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$F8,d0 ; "[Hero]! Break free! We[Line]won't leave without you![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_MAX_HERO,d0
		jsr     j_OpenPortraitWindow
		clr.w   d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$F9,d0 ; "I can't get free, but you[Line]won't die with me![Delay2]"
		trap    #DISPLAY_MESSAGE
		sndCom  SFX_SPELL_CAST
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
		jsr     (j_FadeOutToWhite).l
		sndCom  SOUND_COMMAND_FADE_OUT
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		lea     (PALETTE_1_BASE).l,a0
		moveq   #$1F,d7
loc_12BAD0:
		move.l  #$EEE0EEE,(a0)+
		dbf     d7,loc_12BAD0
		clr.w   (PALETTE_1_BASE).l
		moveq   #$78,d0 
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		clr.w   ((CURRENT_OBJECT-$1000000)).w
		jsr     (j_WaitForVInt).l
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (sub_378).l
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_MAE_KNT,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$FA,d0 ; "[Hero] used his Egress[Line]magic to save us. But[Line]where is [Hero]?[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_LOWE_HEAL,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$FB,d0 ; "That spell's supposed to[Line]get us all out. Why isn't[Line][Hero] here? Why, Nova?[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$FC,d0 ; "I have no answers for you.[Line]Perhaps a great hero is[Line]needed to guard the seal.[Delay2][Line]Perhaps he must[Line]stand as an eternal vigil to[Line]prevent Dark Dragon's return.[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_LOWE_HEAL,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$FD,d0 ; "But why did it have[Line]to be [Hero]? Any of us[Line]would have taken his place....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #1,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BB94
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_12BB94:
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_MAE_KNT,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$FE,d0 ; "I won't believe it![Line][Hero] will come back,[Line]I know it![Delay2]"
		trap    #DISPLAY_MESSAGE
		move.w  #1,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BBC2
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12BBC2:
		trap    #7
		move.w  #$FF,d0         ; "Perhaps [Hero] will still[Line]come out. Wait, look at[Line]the castle![Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #0,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		sndCom  MUSIC_EARTHQUAKE
		jsr     j_LoadCursorTiles
		move.w  #5,d1
		move.w  #$A,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC2A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC2A:
		move.w  #LOWE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC42
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC42:
		move.w  #NOVA,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC5A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC5A:
		move.w  #ANRI,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC72
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC72:
		move.w  #TAO,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC8A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC8A:
		move.w  #KHRIS,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCA2
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCA2:
		move.w  #HANS,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCBA
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCBA:
		move.w  #LUKE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCD2
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCD2:
		move.w  #KEN,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCEA
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCEA:
		move.w  #TAO,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BD02
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BD02:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #$F,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #4,d1
		moveq   #7,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		sndCom  SOUND_COMMAND_FADE_OUT
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12BD96:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12BD96
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		moveq   #LOWE,d1
		bsr.w   SetSpeechSfxForCutscene
		trap    #5
		move.w  #$100,d0        ; "No! It's gone...the castle...[Line]and [Hero] with it....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #LOWE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12BE08
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
byte_12BE08:
		sndCom  MUSIC_SAD_THEME
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		trap    #5
		trap    #7
		move.w  #$101,d0        ; "That's it. He didn't escape.[Line]He's gone....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		move.w  #MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BE46
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12BE46:
		trap    #5
		move.w  #$103,d0        ; "I won't believe it....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		move.w  #NOVA,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BE76
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12BE76:
		trap    #5
		move.w  #$102,d0        ; "[Hero] has saved all of[Line]Rune. His sacrifice will be[Line]remembered forever.[Delay2][Line]And now, friends, it is[Line]time for us to begin the long[Line]journey home....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_ClosePortraitWindow
		moveq   #$3C,d0 
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		move.w  #1,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BEAE
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BEAE:
		trap    #5
		move.w  #$103,d0        ; "I won't believe it....[Delay2][Delay2]"
		trap    #DISPLAY_MESSAGE
		trap    #6
		jsr     j_LoadCursorTiles
		move.w  #MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BF04
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		lea     unk_12BF3E(pc), a0
		move.b  #1,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12BF04:
		moveq   #$5A,d0 
		jsr     (j_Sleep).l
		trap    #5
		move.w  #$104,d0        ; "[Hero]!"
		trap    #DISPLAY_MESSAGE
		moveq   #2,d0
		jsr     sub_80D8
		move.w  #$78,d0 
		jsr     (j_Sleep).l
		trap    #6
		jsr     j_ClosePortraitWindow
		move.w  #$F0,d0 
		jsr     (j_Sleep).l
		jmp     j_PlayEnding

    ; End of function sub_12B638

unk_12BF3E:     dc.b   3
		dc.b   3
		dc.b   3
		dc.b $FF

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
		moveq   #$FFFFFFFE,d0
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
		moveq   #$1F,d7
loc_12BFBA:
		jsr     j_GetEntity
		cmp.b   d2,d1
		beq.w   return_12BFCE
		addq.w  #1,d0
		dbf     d7,loc_12BFBA
		moveq   #$FFFFFFFF,d0
return_12BFCE:
		
		rts

    ; End of function FindEntityForCutscene


; =============== S U B R O U T I N E =======================================

; CCR zero-bit set if true

WasEntityKilledByLastAttack:
		
		moveq   #$1F,d7
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a0
@Loop:
		move.w  (a0)+,d0
		bmi.w   @Return
		jsr     j_GetEntity
		cmp.b   d1,d2
		beq.w   @Return
		dbf     d7,@Loop
                
		moveq   #$FFFFFFFF,d0
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

sub_12C1BA:
		moveq   #$1F,d7
		clr.w   d0
		lea     ((ENTITIES_KILLED_BY_LAST_ATTACK_LIST-$1000000)).w,a0
loc_12C1C2:
		jsr     j_GetEntity
		cmpi.b  #$FF,d1
		beq.w   loc_12C1E0
		tst.b   d1
		bpl.s   loc_12C1E0
		cmpi.w  #$FFFF,d2
		beq.s   loc_12C1DE
		cmp.w   d1,d2
		bne.s   loc_12C1E0
loc_12C1DE:
		move.w  d0,(a0)+
loc_12C1E0:
		addq.w  #1,d0
		dbf     d7,loc_12C1C2
		move.w  #$FFFF,(a0)
return_12C1EA:
		
		rts

    ; End of function sub_12C1BA


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
		movea.l (p_pt_MapSprites+8).l,a0
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
		movea.l (p_pt_MapSprites+4).l,a0
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
		movea.l (p_SpriteTextSounds).l,a0
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
		trap    #7
		jsr     (j_WaitForVInt).l
		sndCom  MUSIC_JOIN
		move.w  #$397,d0        ; "([Name] joins the[Line]Shining Force!)"
		trap    #DISPLAY_MESSAGE
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.l (sp)+,d0-d1/d6
		rts

    ; End of function sub_12C446


; =============== S U B R O U T I N E =======================================

sub_12C480:
		move.w  #1,((word_FFB7C6-$1000000)).w
		moveq   #$38,d0 
		moveq   #$FFFFFFFF,d1
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
		move.w  #0,d2
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
		move.w  #0,d2
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
		move.w  #0,d2
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
		lea     unk_12C5FA(pc), a0
		move.b  #0,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12C5E8:
		moveq   #$38,d0 
		jsr     (sub_384).l
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function sub_12C59C

unk_12C5FA:     dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_12C608:
		jsr     j_LoadCursorTiles
		move.w  #0,d2
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
		moveq   #$14,d0
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
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #$F,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$50,d0 
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #8,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #$50,d0 
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
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		jsr     j_LoadCursorTiles
		move.w  #0,d2
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

SpellTiles_Freeze:
		incbin "data/graphics/battles/spells/spelltiles-freeze.bin"
SpellTiles_Bolt:incbin "data/graphics/battles/spells/spelltiles-bolt.bin"
SpellTiles_Blaze:
		incbin "data/graphics/battles/spells/spelltiles-blaze.bin"
SpellTiles_Debuff:
		incbin "data/graphics/battles/spells/spelltiles-debuff.bin"
SpellTiles_Desoul:
		incbin "data/graphics/battles/spells/spelltiles-desoul.bin"
SpellTiles_Healing:
		incbin "data/graphics/battles/spells/spelltiles-healing.bin"
SpellTiles_MachineGun:
		incbin "data/graphics/battles/spells/spelltiles-machinegun.bin"
SpellTiles_FlyingDragons:
		incbin "data/graphics/battles/spells/spelltiles-flyingdragons.bin"
SpellTiles_EnergyBlast:
		incbin "data/graphics/battles/spells/spelltiles-energyblast.bin"
SpellTiles_Laser:
		incbin "data/graphics/battles/spells/spelltiles-laser.bin"
SpellTiles_LightningBreath:
		incbin "data/graphics/battles/spells/spelltiles-lightningbreath.bin"
SpellTiles_BusterShot:
		incbin "data/graphics/battles/spells/spelltiles-bustershot.bin"
SpellTiles_FireBreath:
		incbin "data/graphics/battles/spells/spelltiles-firebreath.bin"
SpellTiles_DemonBlaze:
		incbin "data/graphics/battles/spells/spelltiles-demonblaze.bin"
byte_12F2E2:    dc.b 4
		dc.b   8
		dc.b $CF 
		dc.b $59 
		dc.b $93 
		dc.b   5
		dc.b $EA 
		dc.b $A8 
		dc.b $43 
		dc.b $E4 
		dc.b $85 
		dc.b $EC 
		dc.b $54 
		dc.b $92 
		dc.b $54 
		dc.b $B5 
		dc.b $14
		dc.b $46 
		dc.b $91 
		dc.b $2D 
		dc.b $2B 
		dc.b $D0 
		dc.b $2B 
		dc.b $1F
		dc.b $62 
		dc.b $2C 
		dc.b $B8 
		dc.b $78 
		dc.b $FB 
		dc.b $95 
		dc.b $32 
		dc.b $12
		dc.b $DE 
		dc.b $55 
		dc.b $25 
		dc.b $54 
		dc.b $87 
		dc.b $D5 
		dc.b $76 
		dc.b $95 
		dc.b $61 
		dc.b $9D 
		dc.b $54 
		dc.b $A5 
		dc.b $AC 
		dc.b $C9 
		dc.b $82 
		dc.b $F5 
		dc.b $81 
		dc.b $45 
		dc.b $98 
		dc.b $82 
		dc.b $71 
		dc.b $A3 
		dc.b $63 
		dc.b $7C 
		dc.b $3E 
		dc.b $E3 
		dc.b $82 
		dc.b $73 
		dc.b $86 
		dc.b $25 
		dc.b $11
		dc.b $58 
		dc.b $6B 
		dc.b $29 
		dc.b $9C 
		dc.b $F0 
		dc.b $FB 
		dc.b   7
		dc.b $7E 
		dc.b $1B
		dc.b $30 
		dc.b $4B 
		dc.b $1D
		dc.b   1
		dc.b $28 
		dc.b $96 
		dc.b $31 
		dc.b $11
		dc.b $D3 
		dc.b $B9 
		dc.b $2C 
		dc.b $95 
		dc.b $32 
		dc.b $55 
		dc.b $22 
		dc.b $8A 
		dc.b $D5 
		dc.b $72 
		dc.b $2A 
		dc.b $E9 
		dc.b $6A 
		dc.b $9D 
		dc.b  $D
		dc.b   1
		dc.b $78 
		dc.b $76 
		dc.b $20
		dc.b $ED 
		dc.b $78 
		dc.b $CA 
		dc.b $84 
		dc.b $7D 
		dc.b $84 
		dc.b $1A
		dc.b $15
		dc.b $F8 
		dc.b $28 
		dc.b $68 
		dc.b $4C 
		dc.b $B2 
		dc.b $93 
		dc.b $39 
		dc.b $64 
		dc.b $8F 
		dc.b $A9 
		dc.b $69 
		dc.b $4A 
		dc.b $C3 
		dc.b $CA 
		dc.b $1F
		dc.b $85 
		dc.b $18
		dc.b $47 
		dc.b $A4 
		dc.b $A1 
		dc.b $86 
		dc.b $84 
		dc.b $C1 
		dc.b $25 
		dc.b $83 
		dc.b $D9 
		dc.b $C5 
		dc.b $F1 
		dc.b $EE 
		dc.b $41 
		dc.b $2C 
		dc.b $BC 
		dc.b $4B 
		dc.b $C1 
		dc.b   6
		dc.b $61 
		dc.b $44 
		dc.b $5E 
		dc.b   8
		dc.b $89 
		dc.b $78 
		dc.b $61 
		dc.b $1F
		dc.b $63 
		dc.b $20
		dc.b $9D 
		dc.b $29 
		dc.b $54 
		dc.b $27 
		dc.b $5C 
		dc.b $70 
		dc.b $5C 
		dc.b $26 
		dc.b $3E 
		dc.b $36 
		dc.b $4B 
		dc.b   9
		dc.b $D3 
		dc.b $E2 
		dc.b  $B
		dc.b $C2 
		dc.b  $B
		dc.b $31 
		dc.b   7
		dc.b $C9 
		dc.b $A1 
		dc.b $73 
		dc.b $E0 
		dc.b $91 
		dc.b $E4 
		dc.b $44 
		dc.b $64 
		dc.b $14
		dc.b $7E 
		dc.b $13
		dc.b $A6 
		dc.b $12
		dc.b $E6 
		dc.b $44 
		dc.b $1C
		dc.b $64 
		dc.b $43 
		dc.b $BB 
		dc.b $21 
		dc.b $4F 
		dc.b $84 
		dc.b $33 
		dc.b  $C
		dc.b $D8 
		dc.b $28 
		dc.b $8C 
		dc.b $B0 
		dc.b $A1 
		dc.b $8A 
		dc.b $C7 
		dc.b $D8 
		dc.b $36 
		dc.b $7E 
		dc.b $C7 
		dc.b $C2 
		dc.b $30 
		dc.b $C2 
		dc.b $20
		dc.b $69 
		dc.b $A8 
		dc.b $F2 
		dc.b $A9 
		dc.b   7
		dc.b $BA 
		dc.b $8C 
		dc.b $45 
		dc.b $58 
		dc.b $57 
		dc.b   5
		dc.b   9
		dc.b $BA 
		dc.b $6F 
		dc.b $13
		dc.b $D5 
		dc.b $24 
		dc.b $9B 
		dc.b $50 
		dc.b $C6 
		dc.b $56 
		dc.b $3E 
		dc.b $20
		dc.b $BC 
		dc.b  $A
		dc.b $E4 
		dc.b $81 
		dc.b $58 
		dc.b $C4 
		dc.b $B7 
		dc.b $24 
		dc.b $CB 
		dc.b $1F
		dc.b $4B 
		dc.b $89 
		dc.b $FC 
		dc.b $17
		dc.b $6C 
		dc.b $64 
		dc.b $1A
		dc.b $E9 
		dc.b $10
		dc.b $2B 
		dc.b $86 
		dc.b $1E
		dc.b $8F 
		dc.b $33 
		dc.b  $B
		dc.b $D5 
		dc.b $24 
		dc.b $C2 
		dc.b $1F
		dc.b $70 
		dc.b $5E 
		dc.b $49 
		dc.b $48 
		dc.b $7D 
		dc.b $49 
		dc.b $5A 
		dc.b $72 
		dc.b $28 
		dc.b $A2 
		dc.b $22 
		dc.b $8C 
		dc.b $2D 
		dc.b $88 
		dc.b $3C 
		dc.b $6B 
		dc.b $50 
		dc.b $FA 
		dc.b $50 
		dc.b $F2 
		dc.b $61 
		dc.b $84 
		dc.b $E5 
		dc.b $F8 
		dc.b $C2 
		dc.b $77 
		dc.b  $B
		dc.b $62 
		dc.b $70 
		dc.b $EF 
		dc.b $58 
		dc.b $7C 
		dc.b $7E 
		dc.b $14
		dc.b $67 
		dc.b $32 
		dc.b $F1 
		dc.b $86 
		dc.b $59 
		dc.b  $E
		dc.b $EC 
		dc.b $A3 
		dc.b $1C
		dc.b $3B 
		dc.b $78 
		dc.b $61 
		dc.b $C8 
		dc.b $28 
		dc.b $66 
		dc.b $83 
		dc.b $44 
		dc.b $DD 
		dc.b $64 
		dc.b $26 
		dc.b $65 
		dc.b $22 
		dc.b $F3 
		dc.b $BC 
		dc.b $C2 
		dc.b $74 
		dc.b $D4 
		dc.b $BF 
		dc.b $8B 
		dc.b $88 
		dc.b $36 
		dc.b $55 
		dc.b   9
		dc.b $98 
		dc.b $65 
		dc.b $C2 
		dc.b $9D 
		dc.b  $D
		dc.b $97 
		dc.b $3E 
		dc.b $B2 
		dc.b $20
		dc.b $97 
		dc.b $33 
		dc.b $67 
		dc.b $87 
		dc.b $C2 
		dc.b $F0 
		dc.b $F6 
		dc.b $22 
		dc.b $E4 
		dc.b   8
		dc.b $3F 
		dc.b $3F 
		dc.b $82 
		dc.b   4
		dc.b $40 
		dc.b $E3 
		dc.b $82 
		dc.b $58 
		dc.b $8C 
		dc.b $13
		dc.b   7
		dc.b $2C 
		dc.b  $C
		dc.b $EA 
		dc.b $5E 
		dc.b $61 
		dc.b $9C 
		dc.b $45 
		dc.b $85 
		dc.b $46 
		dc.b $71 
		dc.b   7
		dc.b $C1 
		dc.b $19
		dc.b $28 
		dc.b $29 
		dc.b $E1 
		dc.b $F7 
		dc.b $3C 
		dc.b  $B
		dc.b $73 
		dc.b $1C
		dc.b   9
		dc.b $1E
		dc.b $58 
		dc.b $F0 
		dc.b $41 
		dc.b $F7 
		dc.b   2
		dc.b $77 
		dc.b $A0 
		dc.b $87 
		dc.b $8D 
		dc.b $68 
		dc.b $2B 
		dc.b $96 
		dc.b $F0 
		dc.b $4B 
		dc.b $E1 
		dc.b $4B 
		dc.b $E0 
		dc.b $BD 
		dc.b $C6 
		dc.b $3E 
		dc.b $93 
		dc.b $85 
		dc.b $71 
		dc.b $9C 
		dc.b $7C 
		dc.b $D0 
		dc.b $DF 
		dc.b $85 
		dc.b $33 
		dc.b $19
		dc.b $4C 
		dc.b $BD 
		dc.b $80 
		dc.b $8C 
		dc.b $1A
		dc.b $3F 
		dc.b   2
		dc.b $FF
		dc.b $85 
		dc.b $FE 
		dc.b   8
		dc.b $E9 
		dc.b  $F
		dc.b $25 
		dc.b $91 
		dc.b $11
		dc.b $8C 
		dc.b $64 
		dc.b $E1 
		dc.b $71 
		dc.b $97 
		dc.b  $A
		dc.b $74 
		dc.b $7D 
		dc.b $F0 
		dc.b $8F 
		dc.b $F0 
		dc.b $D6 
		dc.b $C7 
		dc.b $8F 
		dc.b $B9 
		dc.b $21 
		dc.b $B0 
		dc.b $76 
		dc.b $3E 
		dc.b $F8 
		dc.b $C6 
		dc.b $A3 
		dc.b $B3 
		dc.b $9F 
		dc.b $81 
		dc.b $39 
		dc.b $D0 
		dc.b $A7 
		dc.b $E1 
		dc.b $91 
		dc.b $E3 
		dc.b   3
		dc.b $70 
		dc.b $E5 
		dc.b $81 
		dc.b $7D 
		dc.b $41 
		dc.b  $E
		dc.b $2B 
		dc.b $89 
		dc.b $61 
		dc.b $2B 
		dc.b $62 
		dc.b $71 
		dc.b $C4 
		dc.b $84 
		dc.b $B2 
		dc.b $86 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $37 
		dc.b $94 
		dc.b   4
		dc.b $97 
		dc.b $C9 
		dc.b $43 
		dc.b $70 
		dc.b $78 
		dc.b $79 
		dc.b $28 
		dc.b $51 
		dc.b  $E
		dc.b $3B 
		dc.b $8A 
		dc.b $1E
		dc.b $DC 
		dc.b $6A 
		dc.b   3
		dc.b $E2 
		dc.b $47 
		dc.b $A0 
		dc.b $22 
		dc.b $EA 
		dc.b $65 
		dc.b $2A 
		dc.b $70 
		dc.b $1D
		dc.b $72 
		dc.b $65 
		dc.b  $B
		dc.b $98 
		dc.b  $E
		dc.b $61 
		dc.b $6F 
		dc.b $48 
		dc.b $C6 
		dc.b $50 
		dc.b $EC 
		dc.b $3A 
		dc.b $22 
		dc.b $4E 
		dc.b $AA 
		dc.b $A0 
		dc.b $6F 
		dc.b $31 
		dc.b $86 
		dc.b $CA 
		dc.b   2
		dc.b $4E 
		dc.b $A8 
		dc.b $1C
		dc.b $8E 
		dc.b   8
		dc.b $3B 
		dc.b $43 
		dc.b $2A 
		dc.b   2
		dc.b $23 
		dc.b  $D
		dc.b $E1 
		dc.b $4B 
		dc.b   0
		dc.b   9
		dc.b   0
byte_12F502:    dc.b 4
		dc.b   8
		dc.b $CC 
		dc.b $BD 
		dc.b $52 
		dc.b $C2 
		dc.b $1F
		dc.b $26 
		dc.b $26 
		dc.b $AA 
		dc.b $82 
		dc.b $8E 
		dc.b $83 
		dc.b $3E 
		dc.b $47 
		dc.b $19
		dc.b $79 
		dc.b $1F
		dc.b $66 
		dc.b $A4 
		dc.b $8A 
		dc.b $BF 
		dc.b $B5 
		dc.b $24 
		dc.b $8A 
		dc.b $A9 
		dc.b $49 
		dc.b  $D
		dc.b $94 
		dc.b $2F 
		dc.b $62 
		dc.b $2A 
		dc.b $89 
		dc.b $2A 
		dc.b $82 
		dc.b $1D
		dc.b $95 
		dc.b $56 
		dc.b $B3 
		dc.b $26 
		dc.b $F0 
		dc.b $71 
		dc.b $66 
		dc.b $20
		dc.b $9D 
		dc.b $E2 
		dc.b $78 
		dc.b $A6 
		dc.b $8E 
		dc.b $8D 
		dc.b $2D 
		dc.b   2
		dc.b   3
		dc.b $22 
		dc.b $1D
		dc.b $88 
		dc.b $EA 
		dc.b $1C
		dc.b $E6 
		dc.b $14
		dc.b $CE 
		dc.b $78 
		dc.b $81 
		dc.b $4E 
		dc.b $F8 
		dc.b $8E 
		dc.b $4C 
		dc.b $7D 
		dc.b $2B 
		dc.b $A5 
		dc.b $52 
		dc.b  $F
		dc.b   1
		dc.b   7
		dc.b $11
		dc.b $1C
		dc.b $26 
		dc.b $4C 
		dc.b $25 
		dc.b $9B 
		dc.b $A8 
		dc.b $51 
		dc.b $C3 
		dc.b $76 
		dc.b $24 
		dc.b $71 
		dc.b $7D 
		dc.b $42 
		dc.b $41 
		dc.b $5C 
		dc.b $EE 
		dc.b $20
		dc.b $ED 
		dc.b $78 
		dc.b $CA 
		dc.b $8F 
		dc.b $BE 
		dc.b  $E
		dc.b $B2 
		dc.b $3D 
		dc.b $AB 
		dc.b $C1 
		dc.b $96 
		dc.b $24 
		dc.b $DC 
		dc.b $6F 
		dc.b $20
		dc.b $C2 
		dc.b $5E 
		dc.b $99 
		dc.b   6
		dc.b $72 
		dc.b $8E 
		dc.b $AC 
		dc.b $2B 
		dc.b $88 
		dc.b $87 
		dc.b $85 
		dc.b $2C 
		dc.b   4
		dc.b $4D 
		dc.b $D9 
		dc.b $E0 
		dc.b $43 
		dc.b $8C 
		dc.b $7F 
		dc.b $87 
		dc.b $E7 
		dc.b   5
		dc.b $79 
		dc.b   5
		dc.b $8D 
		dc.b $78 
		dc.b $23 
		dc.b $28 
		dc.b $4E 
		dc.b $79 
		dc.b $C2 
		dc.b $60 
		dc.b $BE 
		dc.b $97 
		dc.b $91 
		dc.b $2E 
		dc.b $49 
		dc.b $CD 
		dc.b $96 
		dc.b $79 
		dc.b $74 
		dc.b  $B
		dc.b $B1 
		dc.b $63 
		dc.b $42 
		dc.b $8F 
		dc.b   8
		dc.b $26 
		dc.b $2C 
		dc.b $C4 
		dc.b   8
		dc.b $E1 
		dc.b $1C
		dc.b $5C 
		dc.b $C3 
		dc.b $EC 
		dc.b   9
		dc.b $BC 
		dc.b $58 
		dc.b $57 
		dc.b $25 
		dc.b $DC 
		dc.b $82 
		dc.b $9F 
		dc.b   8
		dc.b $61 
		dc.b $6C 
		dc.b $E0 
		dc.b $25 
		dc.b $B2 
		dc.b $39 
		dc.b $78 
		dc.b $5C 
		dc.b $58 
		dc.b $7C 
		dc.b $2B 
		dc.b $28 
		dc.b $4C 
		dc.b $27 
		dc.b $6E 
		dc.b $18
		dc.b $B7 
		dc.b $23 
		dc.b $93 
		dc.b $30 
		dc.b $24 
		dc.b $8B 
		dc.b $77 
		dc.b $1F
		dc.b $52 
		dc.b $C9 
		dc.b   8
		dc.b $F8 
		dc.b $70 
		dc.b $67 
		dc.b $C3 
		dc.b $87 
		dc.b $D8 
		dc.b $24 
		dc.b $6B 
		dc.b   8
		dc.b $3F 
		dc.b $90 
		dc.b $B0 
		dc.b $F2 
		dc.b $40 
		dc.b $E7 
		dc.b $12
		dc.b $22 
		dc.b $2C 
		dc.b $B7 
		dc.b $81 
		dc.b $27 
		dc.b $FB 
		dc.b   5
		dc.b $61 
		dc.b $32 
		dc.b $7C 
		dc.b $13
		dc.b $B9 
		dc.b $4A 
		dc.b $9A 
		dc.b $40 
		dc.b $CC 
		dc.b $F9 
		dc.b $E1 
		dc.b $30 
		dc.b $E7 
		dc.b $B0 
		dc.b $54 
		dc.b $99 
		dc.b $FA 
		dc.b $82 
		dc.b $72 
		dc.b $98 
		dc.b $E1 
		dc.b $F5 
		dc.b $E8 
		dc.b $89 
		dc.b $1C
		dc.b $3E 
		dc.b $C3 
		dc.b $3C 
		dc.b $6B 
		dc.b $50 
		dc.b $F8 
		dc.b $46 
		dc.b $60 
		dc.b $DB 
		dc.b $87 
		dc.b $D2 
		dc.b $49 
		dc.b $B3 
		dc.b $95 
		dc.b $78 
		dc.b $94 
		dc.b $BD 
		dc.b $6F 
		dc.b $8A 
		dc.b $D0 
		dc.b $7F 
		dc.b $68 
		dc.b $90 
		dc.b $83 
		dc.b $48 
		dc.b $24 
		dc.b $B7 
		dc.b $11
		dc.b $C4 
		dc.b $BC 
		dc.b   8
		dc.b $EC 
		dc.b $4D 
		dc.b $F2 
		dc.b $AF 
		dc.b $87 
		dc.b $73 
		dc.b $45 
		dc.b $42 
		dc.b  $D
		dc.b $54 
		dc.b $33 
		dc.b $E0 
		dc.b $7E 
		dc.b $97 
		dc.b $E4 
		dc.b $1C
		dc.b $5D 
		dc.b $E0 
		dc.b $43 
		dc.b $D4 
		dc.b $28 
		dc.b $92 
		dc.b $E8 
		dc.b $62 
		dc.b $E1 
		dc.b $4E 
		dc.b $83 
		dc.b $35 
		dc.b $F4 
		dc.b $A0 
		dc.b $98 
		dc.b $29 
		dc.b $E6 
		dc.b $3E 
		dc.b $C1 
		dc.b $F2 
		dc.b $C0 
		dc.b $83 
		dc.b $F3 
		dc.b $28 
		dc.b $57 
		dc.b $67 
		dc.b $A2 
		dc.b $9D 
		dc.b $FA 
		dc.b  $B
		dc.b $18
		dc.b $31 
		dc.b $31 
		dc.b $20
		dc.b $9E 
		dc.b $1D
		dc.b $88 
		dc.b $16
		dc.b $E7 
		dc.b $2D 
		dc.b $D8 
		dc.b $5C 
		dc.b $2B 
		dc.b $98 
		dc.b $E5 
		dc.b $1D
		dc.b $9B 
		dc.b $41 
		dc.b $2F 
		dc.b $98 
		dc.b $4B 
		dc.b $26 
		dc.b $52 
		dc.b $3F 
		dc.b $BC 
		dc.b $36 
		dc.b $55 
		dc.b   9
		dc.b $84 
		dc.b $E9 
		dc.b $6A 
		dc.b $E9 
		dc.b $60 
		dc.b $5B 
		dc.b   5
		dc.b $9D 
		dc.b $AF 
		dc.b $F0 
		dc.b $A7 
		dc.b $F7 
		dc.b $1F
		dc.b  $F
		dc.b $7C 
		dc.b  $C
		dc.b $C7 
		dc.b $D3 
		dc.b $62 
		dc.b $C2 
		dc.b  $D
		dc.b $40 
		dc.b $B8 
		dc.b $F1 
		dc.b $F0 
		dc.b $91 
		dc.b $12
		dc.b $5F 
		dc.b   9
		dc.b $DC 
		dc.b $13
		dc.b $DC 
		dc.b $29 
		dc.b $92 
		dc.b   9
		dc.b $9F 
		dc.b $8B 
		dc.b   7
		dc.b   9
		dc.b $4C 
		dc.b $E6 
		dc.b $2D 
		dc.b $E7 
		dc.b $84 
		dc.b $17
		dc.b $DB 
		dc.b $20
		dc.b $96 
		dc.b $FB 
		dc.b $D1 
		dc.b   4
		dc.b $E2 
		dc.b $1F
		dc.b $43 
		dc.b $BF 
		dc.b   2
		dc.b $46 
		dc.b $48 
		dc.b $38 
		dc.b $90 
		dc.b $B8 
		dc.b $22 
		dc.b $C6 
		dc.b  $E
		dc.b $82 
		dc.b $BF 
		dc.b $87 
		dc.b $1E
		dc.b   6
		dc.b $58 
		dc.b $83 
		dc.b $F0 
		dc.b $34 
		dc.b $86 
		dc.b $41 
		dc.b $78 
		dc.b $99 
		dc.b $81 
		dc.b   5
		dc.b $83 
		dc.b $77 
		dc.b   8
		dc.b $F2 
		dc.b $1F
		dc.b $70 
		dc.b $9D 
		dc.b $C6 
		dc.b $7C 
		dc.b $18
		dc.b $E2 
		dc.b $78 
		dc.b $6E 
		dc.b $3B 
		dc.b $20
		dc.b $97 
		dc.b $BA 
		dc.b $38 
		dc.b $A3 
		dc.b $E7 
		dc.b $9F 
		dc.b $D9 
		dc.b $30 
		dc.b $98 
		dc.b $FA 
		dc.b $AF 
		dc.b $37 
		dc.b $46 
		dc.b $B4 
		dc.b $10
		dc.b $35 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b   1
		dc.b $C1 
		dc.b $BE 
		dc.b $18
		dc.b $5F 
		dc.b $62 
		dc.b $F2 
		dc.b $B8 
		dc.b  $F
		dc.b $3C 
		dc.b $BC 
		dc.b $2D 
		dc.b $82 
		dc.b   8
		dc.b $2F 
		dc.b   6
		dc.b $E3 
		dc.b $40 
		dc.b $28 
		dc.b $BC 
		dc.b   7
		dc.b $B2 
		dc.b $87 
		dc.b $E0 
		dc.b $E8 
		dc.b $D0 
		dc.b $82 
		dc.b $58 
		dc.b  $F
		dc.b $39 
		dc.b $2C 
		dc.b $3B 
		dc.b $98 
		dc.b $25 
		dc.b $97 
		dc.b $24 
		dc.b $10
		dc.b $E9 
		dc.b $4A 
		dc.b $81 
		dc.b $C7 
		dc.b   4
		dc.b $22 
		dc.b $EF 
		dc.b   0
		dc.b $8F 
		dc.b $2A 
		dc.b $3E 
		dc.b $A1 
		dc.b $4E 
		dc.b $D0 
		dc.b $CA 
		dc.b $80 
		dc.b $88 
		dc.b $C3 
		dc.b $C5 
		dc.b $80 
		dc.b   4
		dc.b $80 
byte_12F70E:    dc.b 4
		dc.b   8
		dc.b $CE 
		dc.b $58 
		dc.b $4E 
		dc.b $29 
		dc.b $F1 
		dc.b $97 
		dc.b $19
		dc.b $B1 
		dc.b $D0 
		dc.b $47 
		dc.b $D1 
		dc.b $E1 
		dc.b $23 
		dc.b  $F
		dc.b $B7 
		dc.b $52 
		dc.b $51 
		dc.b $F2 
		dc.b $B6 
		dc.b $91 
		dc.b $29 
		dc.b $3A 
		dc.b $45 
		dc.b $A9 
		dc.b   5
		dc.b $3B 
		dc.b   5
		dc.b $EA 
		dc.b $E4 
		dc.b $12
		dc.b $1F
		dc.b $49 
		dc.b $E5 
		dc.b $D1 
		dc.b $9E 
		dc.b $C3 
		dc.b $75 
		dc.b $42 
		dc.b $14
		dc.b $81 
		dc.b   5
		dc.b $42 
		dc.b $76 
		dc.b $4A 
		dc.b $90 
		dc.b $40 
		dc.b $E8 
		dc.b $14
		dc.b $E5 
		dc.b $2E 
		dc.b   9
		dc.b $E6 
		dc.b $5C 
		dc.b $C2 
		dc.b $77 
		dc.b $20
		dc.b $A7 
		dc.b $4A 
		dc.b $A0 
		dc.b $5B 
		dc.b $88 
		dc.b $6A 
		dc.b $10
		dc.b $5F 
		dc.b $7D 
		dc.b $40 
		dc.b $90 
		dc.b $D8 
		dc.b $3C 
		dc.b $6C 
		dc.b $17
		dc.b $38 
		dc.b $23 
		dc.b $1E
		dc.b   7
		dc.b $45 
		dc.b $72 
		dc.b $50 
		dc.b $83 
		dc.b $81 
		dc.b $25 
		dc.b $C9 
		dc.b $F0 
		dc.b $4C 
		dc.b $94 
		dc.b $70 
		dc.b $DD 
		dc.b $89 
		dc.b $1C
		dc.b $63 
		dc.b $8A 
		dc.b $3C 
		dc.b $BE 
		dc.b $10
		dc.b $E6 
		dc.b $14
		dc.b $CA 
		dc.b $6F 
		dc.b $BE 
		dc.b   2
		dc.b   2
		dc.b $BE 
		dc.b $12
		dc.b $37 
		dc.b $86 
		dc.b $12
		dc.b $F1 
		dc.b $46 
		dc.b $8D 
		dc.b $EA 
		dc.b $43 
		dc.b $ED 
		dc.b $4A 
		dc.b $41 
		dc.b $5F 
		dc.b $31 
		dc.b $43 
		dc.b $12
		dc.b $45 
		dc.b   7
		dc.b $1D
		dc.b $F3 
		dc.b $92 
		dc.b $23 
		dc.b $C0 
		dc.b $8C 
		dc.b $6A 
		dc.b $9C 
		dc.b $18
		dc.b $7C 
		dc.b $14
		dc.b $6D 
		dc.b $FE 
		dc.b $1F
		dc.b $9C 
		dc.b $3E 
		dc.b $E8 
		dc.b $2F 
		dc.b $B7 
		dc.b $C1 
		dc.b $4A 
		dc.b $96 
		dc.b  $A
		dc.b $2A 
		dc.b $44 
		dc.b $D4 
		dc.b $13
		dc.b $BC 
		dc.b $AD 
		dc.b $29 
		dc.b $29 
		dc.b   5
		dc.b $EF 
		dc.b $93 
		dc.b $51 
		dc.b $7C 
		dc.b $A5 
		dc.b $A4 
		dc.b $71 
		dc.b $11
		dc.b   1
		dc.b $53 
		dc.b $A5 
		dc.b $54 
		dc.b $49 
		dc.b $13
		dc.b $51 
		dc.b $11
		dc.b $31 
		dc.b $A6 
		dc.b $1F
		dc.b $BF 
		dc.b   5
		dc.b $3A 
		dc.b $44 
		dc.b $53 
		dc.b $92 
		dc.b $72 
		dc.b $7F 
		dc.b $9C 
		dc.b $D0 
		dc.b $11
		dc.b $73 
		dc.b $3E 
		dc.b $C0 
		dc.b $E8 
		dc.b $8C 
		dc.b $3C 
		dc.b   8
		dc.b $22 
		dc.b $1E
		dc.b $CC 
		dc.b $29 
		dc.b $5A 
		dc.b $8A 
		dc.b $62 
		dc.b $27 
		dc.b $C3 
		dc.b $13
		dc.b $32 
		dc.b $F3 
		dc.b $22 
		dc.b $3B 
		dc.b $E9 
		dc.b $BA 
		dc.b $40 
		dc.b $58 
		dc.b $CB 
		dc.b $C3 
		dc.b  $C
		dc.b $49 
		dc.b $18
		dc.b $F5 
		dc.b $24 
		dc.b $18
		dc.b $84 
		dc.b $C3 
		dc.b $76 
		dc.b $24 
		dc.b $72 
		dc.b $43 
		dc.b $3D 
		dc.b $59 
		dc.b $DC 
		dc.b $79 
		dc.b $66 
		dc.b $F2 
		dc.b $E0 
		dc.b $97 
		dc.b $C0 
		dc.b $74 
		dc.b $99 
		dc.b $F2 
		dc.b   8
		dc.b $4F 
		dc.b $AE 
		dc.b $18
		dc.b $82 
		dc.b $11
		dc.b $31 
		dc.b $F5 
		dc.b $BB 
		dc.b $4A 
		dc.b $A2 
		dc.b $A0 
		dc.b $90 
		dc.b $DE 
		dc.b $84 
		dc.b $E9 
		dc.b   2
		dc.b $F9 
		dc.b $9D 
		dc.b $43 
		dc.b $F7 
		dc.b   5
		dc.b $97 
		dc.b   4
		dc.b $D3 
		dc.b $77 
		dc.b $C6 
		dc.b $2B 
		dc.b $40 
		dc.b $A2 
		dc.b $B0 
		dc.b $63 
		dc.b $A1 
		dc.b $4E 
		dc.b $99 
		dc.b $13
		dc.b $E6 
		dc.b $10
		dc.b $E8 
		dc.b $13
		dc.b $29 
		dc.b $B3 
		dc.b $10
		dc.b $28 
		dc.b $A6 
		dc.b $83 
		dc.b $63 
		dc.b   4
		dc.b $3F 
		dc.b   6
		dc.b $EA 
		dc.b $8E 
		dc.b $1F
		dc.b $54 
		dc.b $15
		dc.b $DB 
		dc.b $4C 
		dc.b $89 
		dc.b $E6 
		dc.b   5
		dc.b $70 
		dc.b $40 
		dc.b $A8 
		dc.b $5E 
		dc.b $10
		dc.b $79 
		dc.b   8
		dc.b $2F 
		dc.b $8E 
		dc.b $66 
		dc.b $26 
		dc.b $74 
		dc.b $29 
		dc.b $B7 
		dc.b   9
		dc.b $39 
		dc.b $8C 
		dc.b $47 
		dc.b $1C
		dc.b $9C 
		dc.b   2
		dc.b   7
		dc.b $CF 
		dc.b $81 
		dc.b $47 
		dc.b $63 
		dc.b $CC 
		dc.b $16
		dc.b $4C 
		dc.b $C8 
		dc.b $25 
		dc.b $3D 
		dc.b   4
		dc.b $26 
		dc.b $6F 
		dc.b $A9 
		dc.b $23 
		dc.b $21 
		dc.b $5C 
		dc.b $CB 
		dc.b $F8 
		dc.b $7E 
		dc.b $9D 
		dc.b $93 
		dc.b   3
		dc.b $60 
		dc.b $4F 
		dc.b $33 
		dc.b $A5 
		dc.b   3
		dc.b $3A 
		dc.b $85 
		dc.b $7F 
		dc.b $82 
		dc.b $8A 
		dc.b $C3 
		dc.b $E1 
		dc.b $25 
		dc.b $68 
		dc.b $31 
		dc.b $D1 
		dc.b $BE 
		dc.b $A8 
		dc.b $63 
		dc.b $AA 
		dc.b $1B
		dc.b $FA 
		dc.b $42 
		dc.b  $F
		dc.b  $F
		dc.b $DE 
		dc.b   9
		dc.b   2
		dc.b $E3 
		dc.b $20
		dc.b $B2 
		dc.b $9B 
		dc.b $20
		dc.b $50 
		dc.b $9F 
		dc.b $52 
		dc.b $30 
		dc.b $3A 
		dc.b $7E 
		dc.b  $A
		dc.b $22 
		dc.b $89 
		dc.b $F7 
		dc.b $1B
		dc.b $D1 
		dc.b $F0 
		dc.b $83 
		dc.b $C8 
		dc.b $78 
		dc.b $C0 
		dc.b $82 
		dc.b $33 
		dc.b $9B 
		dc.b $B0 
		dc.b $30 
		dc.b $C6 
		dc.b $C0 
		dc.b $98 
		dc.b  $A
		dc.b $43 
		dc.b $EB 
		dc.b $7C 
		dc.b $56 
		dc.b $EF 
		dc.b $30 
		dc.b $63 
		dc.b $65 
		dc.b $C2 
		dc.b   6
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $36 
		dc.b $73 
		dc.b $4A 
		dc.b $EC 
		dc.b $21 
		dc.b $52 
		dc.b $C2 
		dc.b $77 
		dc.b $95 
		dc.b $A4 
		dc.b   3
		dc.b   1
		dc.b $EC 
		dc.b $EC 
		dc.b $29 
		dc.b $58 
		dc.b   4
		dc.b $47 
		dc.b $80 
		dc.b $F1 
		dc.b   1
		dc.b   1
		dc.b $F8 
		dc.b $61 
		dc.b $C3 
		dc.b $ED 
		dc.b $14
		dc.b $68 
		dc.b   8
		dc.b $23 
		dc.b   5
		dc.b $2E 
		dc.b   7
		dc.b  $F
		dc.b $86 
		dc.b $70 
		dc.b $40 
		dc.b $58 
		dc.b $29 
		dc.b $FC 
		dc.b $27 
		dc.b $48 
		dc.b  $D
		dc.b $C6 
		dc.b  $C
		dc.b $25 
		dc.b $E0 
		dc.b $FB 
		dc.b $D0 
		dc.b $11
		dc.b $BB 
		dc.b $87 
		dc.b $C0 
		dc.b   8
		dc.b $F0 
ChapterEndTiles:incbin "data/graphics/specialscreens/chapterscreens/chapterendtiles.bin"
IntroTiles_SpeckOfLight:
		incbin "data/graphics/specialscreens/intro/introtiles-speckoflight.bin"
		align $8000
