
; ASM FILE code\common\stats\statsengine_4.asm :
; 0x23AD6..0x24006 : Character stats engine

; =============== S U B R O U T I N E =======================================

GetBattlespritePaletteAndAnimationIndexes:
		
		bsr.w   LoadBattlespriteAndPaletteIndexes
		bsr.w   LoadWeaponspriteIndex
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_SPRITE_INDEX-$1000000)).w,d1
		move.w  ((BATTLESCENE_PALETTE_INDEX-$1000000)).w,d2
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function GetBattlespritePaletteAndAnimationIndexes


; =============== S U B R O U T I N E =======================================

LoadBattlespriteDataWithWeapon:
		
		bsr.s   LoadBattlespriteAndPaletteIndexes
		bsr.w   LoadWeaponspriteIndex
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function LoadBattlespriteDataWithWeapon


; =============== S U B R O U T I N E =======================================

LoadBattlespriteDataWithoutWeapon:
		
		bsr.s   LoadBattlespriteAndPaletteIndexes
		move.w  #129,((WEAPON_SPRITE_INDEX-$1000000)).w
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function LoadBattlespriteDataWithoutWeapon


; =============== S U B R O U T I N E =======================================

sub_23B12:
		bsr.s   LoadBattlespriteAndPaletteIndexes
		move.w  #130,((WEAPON_SPRITE_INDEX-$1000000)).w
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function sub_23B12


; =============== S U B R O U T I N E =======================================

; Load battle sprite and palette indexes in RAM

LoadBattlespriteAndPaletteIndexes:
		
		movem.l d0-d2/a0-a1,-(sp)
		moveq   #-1,d1
		move.w  d1,((BATTLESCENE_SPRITE_INDEX-$1000000)).w
		move.w  d1,((BATTLESCENE_PALETTE_INDEX-$1000000)).w
		bsr.w   alt_GetEntity   
		cmpi.b  #EMPTY_COMBATANT_SLOT,d0
		beq.s   @Skip           ; skip if combatant entry is unpopulated
		clr.w   d1
		clr.w   d2
		tst.b   d0
		bge.s   @ForceMember
		                
		bsr.w   GetEnemyEntryAddress
		lea     ENEMY_OFFSET_BATTLESPRITE(a1),a0
		move.b  (a0)+,d1        ; D1 = battle sprite index
		move.b  (a0),d2         ; D2 = battle sprite palette index
		bra.s   @Load
@ForceMember:
		bsr.w   IsEntityChangedIntoJogurt
		beq.s   @GetBattlespriteData
		move.w  #ALLYBATTLESPRITE_JOGURT,d1
		clr.w   d2
		bra.s   @Load
@GetBattlespriteData:
		
		movea.l (p_BattlespriteData).l,a0
		adda.w  d0,a0
		adda.w  d0,a0
		move.b  (a0)+,d1
		move.b  (a0),d2
		bsr.w   IsPromoted      
		beq.s   @Load
		addi.w  #PROMOTED_BATTLESPRITES_START,d1
@Load:
		move.w  d1,((BATTLESCENE_SPRITE_INDEX-$1000000)).w
		move.w  d2,((BATTLESCENE_PALETTE_INDEX-$1000000)).w
@Skip:
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function LoadBattlespriteAndPaletteIndexes


; =============== S U B R O U T I N E =======================================

LoadWeaponspriteIndex:
		
		movem.l d1-d3/a0,-(sp)
		move.w  #-1,((EQUIPPED_WEAPON_INDEX-$1000000)).w
		move.w  #128,((WEAPON_SPRITE_INDEX-$1000000)).w
		bsr.w   IsCombatantChangedIntoJogurt
		bne.s   @Skip           ; skip if changed into Jogurt
		bsr.w   GetAnimationDataAddress
		move.b  (a0),d1
		beq.s   @Continue
		cmp.b   ((BATTLE_ANIMATION_TYPE-$1000000)).w,d1
		bne.s   @Continue
		move.w  #130,((WEAPON_SPRITE_INDEX-$1000000)).w
@Continue:
		bsr.w   IsEnemy         
		blt.s   @Skip           ; skip if enemy
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItemForCombatant
		bcs.s   @Skip           ; skip if no equipped item found
		movea.l (p_WeaponSpriteData).l,a0
		andi.w  #ITEMENTRY_MASK_INDEX,d2
		move.w  d2,((EQUIPPED_WEAPON_INDEX-$1000000)).w
		sub.b   (a0)+,d2
		bcs.s   @Skip
		clr.w   d1
		move.b  (a0,d2.w),d1
		cmpi.w  #128,((WEAPON_SPRITE_INDEX-$1000000)).w
		bne.s   @Skip
		move.w  d1,((WEAPON_SPRITE_INDEX-$1000000)).w
@Skip:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function LoadWeaponspriteIndex


; =============== S U B R O U T I N E =======================================

LoadBattleAnimationIndex:
		
		movem.l d1-d2/a0,-(sp)
		move.w  #-1,d1
		move.w  d1,((BATTLESCENE_ANIMATION_INDEX-$1000000)).w
		move.w  d1,((word_FFCBAC-$1000000)).w
		bsr.s   GetAnimationDataAddress
		addq.l  #1,a0
		move.w  ((WEAPON_SPRITE_INDEX-$1000000)).w,d2
FindWeaponSprite_Loop:
		
		move.b  (a0)+,d1
		cmpi.b  #-1,d1
		beq.s   @End            ; reached end of table
		cmp.b   d2,d1
		beq.s   @Found
		adda.l  #2,a0
		bra.s   FindWeaponSprite_Loop
@Found:
		move.b  (a0)+,d1
		ext.w   d1
		move.w  d1,((BATTLESCENE_ANIMATION_INDEX-$1000000)).w
		move.b  (a0),d1
		ext.w   d1
		move.w  d1,((word_FFCBAC-$1000000)).w
@End:
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function LoadBattleAnimationIndex


; =============== S U B R O U T I N E =======================================

; Get address of animation data for battle sprite -> A0

GetAnimationDataAddress:
		
		movem.w d1-d2,-(sp)
		move.w  ((BATTLESCENE_SPRITE_INDEX-$1000000)).w,d2
		add.w   d2,d2
		jsr     j_GetEntity
		tst.b   d1
		bge.s   @ForceMember
		                
		movea.l (p_EnemyAnimationData).l,a0
		bra.s   @Continue
@ForceMember:
		movea.l (p_ForceAnimationData).l,a0
@Continue:
		move.w  (a0,d2.w),d2
		adda.w  d2,a0
		movem.w (sp)+,d1-d2
		rts

    ; End of function GetAnimationDataAddress


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 is under Jogurt status effect -> CCR zero-bit cleared if true

IsCombatantChangedIntoJogurt:
		
		movem.l d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   IsEntityChangedIntoJogurt
		movem.l (sp)+,d0
		rts

    ; End of function IsCombatantChangedIntoJogurt


; =============== S U B R O U T I N E =======================================

; Check if entity D0 is under Jogurt status effect -> CCR zero-bit cleared if true

IsEntityChangedIntoJogurt:
		
		movem.l d1,-(sp)
		tst.b   d0
		blt.s   @Enemy
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_JOGURT,d1
		bra.s   @Done
@Enemy:
		clr.w   d1
@Done:
		movem.l (sp)+,d1
		rts

    ; End of function IsEntityChangedIntoJogurt


; =============== S U B R O U T I N E =======================================

sub_23C88:
		movem.l d7-a2,-(sp)
		bsr.w   DetermineAiAction
		bcc.s   @Continue       ; continue if not regular attack
		bsr.w   LoadRegularAttackData
@Continue:
		lea     ((CASTER_INDEX-$1000000)).w,a1
		move.b  d0,(a1)+
		bsr.w   sub_2425C       
		bsr.w   sub_24292
		addq.w  #1,d7
		asl.w   #2,d7
		lea     sub_23CB6(pc), a2
		jsr     (a2,d7.w)
		movem.l (sp)+,d7-a2
		rts

    ; End of function sub_23C88


; =============== S U B R O U T I N E =======================================

sub_23CB6:
		bra.w   sub_23CC6
		bra.w   sub_23CDA
		bra.w   sub_23D1A
		bra.w   sub_23D32

    ; End of function sub_23CB6


; =============== S U B R O U T I N E =======================================

sub_23CC6:
		move.w  d1,-(sp)
		moveq   #-1,d1
		move.b  d1,((byte_FFCB28-$1000000)).w
		bsr.w   sub_24306
		move.b  #3,(a1)
		move.w  (sp)+,d1
		rts

    ; End of function sub_23CC6


; =============== S U B R O U T I N E =======================================

sub_23CDA:
		movem.l d0-d4/d7-a0,-(sp)
		moveq   #-1,d1
		bsr.w   sub_24306
		clr.w   d2
		move.b  (a0)+,d2
		clr.w   d1
		move.b  (a0),d1
		clr.w   d3
		bsr.w   sub_23D9C
		movem.l (sp)+,d0-d4/d7-a0
loc_23CF6:
		bsr.w   sub_23EFA
		bne.s   loc_23D0C
		bsr.w   LoadRegularAttackData
		bsr.w   sub_23EFA
		bne.s   loc_23D0C
		move.b  #3,(a1)
		bra.s   return_23D18
loc_23D0C:
		move.b  ((CURRENT_BATTLEACTION_TYPE-$1000000)).w,(a1)+
		move.b  ((CURRENT_ITEM_OR_SPELL-$1000000)).w,(a1)+
		move.b  ((byte_FFA947-$1000000)).w,(a1)
return_23D18:
		rts

    ; End of function sub_23CDA


; =============== S U B R O U T I N E =======================================

sub_23D1A:
		movem.l d1/d7-a0,-(sp)
		moveq   #-1,d1
		bsr.w   sub_24306
		clr.w   d1
		move.b  (a0),d1
		bsr.w   sub_241A2
		movem.l (sp)+,d1/d7-a0
		bra.s   loc_23CF6

    ; End of function sub_23D1A


; =============== S U B R O U T I N E =======================================

sub_23D32:
		movem.l d1-d4/a0,-(sp)
		clr.w   d1
		move.b  (a0),d1
		adda.w  d1,a0
		st      ((byte_FFCB28-$1000000)).w
		jsr     j_GetCombatantPosition
		move.w  d2,((word_FFCB38-$1000000)).w
		move.w  d1,((word_FFCB3A-$1000000)).w
		bsr.w   sub_242EC
		move.w  d1,d4
		cmpi.w  #-1,d4
		beq.s   loc_23D94
loc_23D5A:
		clr.w   d2
		move.b  (a0,d4.w),d2
		clr.w   d1
		move.b  1(a0,d4.w),d1
		cmpi.b  #-1,d2
		bne.s   loc_23D82
		cmpi.b  #-1,d1
		bne.s   loc_23D7A
		jsr     j_GetCombatantPosition
		bra.s   loc_23D82
loc_23D7A:
		ext.w   d1
		add.w   d1,d4
		addq.w  #1,d4
		bra.s   loc_23D5A
loc_23D82:
		clr.w   d3
		bsr.w   sub_23D9C
		tst.w   d7
		bne.s   loc_23D8E
		addq.w  #2,d4
loc_23D8E:
		move.w  d4,d1
		bsr.w   sub_24306
loc_23D94:
		movem.l (sp)+,d1-d4/a0
		bra.w   loc_23CF6

    ; End of function sub_23D32


; =============== S U B R O U T I N E =======================================

sub_23D9C:
		movem.l d3-d6,-(sp)
		move.w  d3,d4
		bsr.w   CalculateDistanceToTarget
		cmp.w   d4,d7
		bge.s   loc_23DAE
		bsr.w   sub_23E9A
loc_23DAE:
		moveq   #-1,d6
		clr.w   d3
		bsr.s   sub_23DDE
		beq.w   loc_23DD8
		bsr.w   CalculateDistanceToTarget
		move.w  d7,d3
		asr.w   #1,d3
		bsr.s   sub_23DDE
		beq.w   loc_23DD8
		move.w  #$8001,d3
		bsr.s   sub_23DDE
		beq.w   loc_23DD8
		cmp.w   d3,d5
		beq.s   loc_23DD8
		move.w  d5,d3
		bsr.s   sub_23DEC
loc_23DD8:
		movem.l (sp)+,d3-d6
		rts

    ; End of function sub_23D9C


; =============== S U B R O U T I N E =======================================

sub_23DDE:
		bsr.s   sub_23DEC
		cmp.w   d6,d7
		bcc.s   loc_23DE8
		move.w  d3,d5
		move.w  d7,d6
loc_23DE8:
		cmp.w   d6,d4
		rts

    ; End of function sub_23DDE


; =============== S U B R O U T I N E =======================================

sub_23DEC:
		movem.l d0-d6/a0-a2,-(sp)
		move.w  d4,((word_FFCB3C-$1000000)).w
		bsr.w   CreateTotalMoveCosts
		bsr.w   sub_20868       
		move.w  d2,d6
		move.w  d1,d5
		jsr     j_GetModifiedMove
		move.w  d1,d3
		moveq   #1,d4
		bsr.w   SetupEffectiveMoveCosts
		bsr.w   MakeEffectivePassabilityFlags
		lea     ((byte_FFCB28-$1000000)).w,a0
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		jsr     j_GetCombatantPosition
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		mulu.w  d3,d1
		add.w   d2,d1
loc_23E28:
		btst    #1,(a1,d1.w)
		beq.s   loc_23E34
		movea.l a0,a2
		move.w  d1,d2
loc_23E34:
		movem.w d1-d2,-(sp)
		bsr.w   sub_23E8E
		movem.w (sp)+,d1-d2
		cmp.w   ((word_FFCB3C-$1000000)).w,d7
		ble.w   loc_23E7A
		tst.b   (a0)
		bne.s   loc_23E50
		sub.w   d3,d1
		bra.s   loc_23E70
loc_23E50:
		cmpi.b  #1,(a0)
		bne.s   loc_23E5A
		add.w   d3,d1
		bra.s   loc_23E70
loc_23E5A:
		cmpi.b  #2,(a0)
		bne.s   loc_23E64
		addq.w  #1,d1
		bra.s   loc_23E70
loc_23E64:
		cmpi.b  #3,(a0)
		bne.s   loc_23E6E
		subq.w  #1,d1
		bra.s   loc_23E70
loc_23E6E:
		bra.s   loc_23E7A
loc_23E70:
		addq.w  #1,a0
		btst    #0,(a1,d1.w)
		bne.s   loc_23E28
loc_23E7A:
		move.b  #-1,(a2)
		bsr.s   sub_23E8E
		move.w  d2,((word_FFCB38-$1000000)).w
		move.w  d1,((word_FFCB3A-$1000000)).w
		movem.l (sp)+,d0-d6/a0-a2
		rts

    ; End of function sub_23DEC


; =============== S U B R O U T I N E =======================================

sub_23E8E:
		divu.w  d3,d2
		move.w  d2,d1
		swap    d2
		bsr.w   CalculateDistance
		rts

    ; End of function sub_23E8E


; =============== S U B R O U T I N E =======================================

sub_23E9A:
		movem.l d3/d5-d6/a0-a1,-(sp)
		move.w  d1,d5
		move.w  d2,d6
		jsr     j_GetCombatantPosition
		jsr     j_GetMoveCostEntryAddress
		bsr.w   LoadMoveCosts   
		lea     ((MOVE_COSTS-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d4
		addq.w  #1,d2
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		subq.w  #2,d2
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		addq.w  #1,d2
		addq.w  #1,d1
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		subq.w  #2,d1
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		move.w  d5,d1
		move.w  d6,d2
		bra.s   loc_23EDC
loc_23EDA:
		clr.w   d4
loc_23EDC:
		movem.l (sp)+,d3/d5-d6/a0-a1
		rts

    ; End of function sub_23E9A


; =============== S U B R O U T I N E =======================================

sub_23EE2:
		bsr.w   IsSpaceOccupied 
		bcs.s   @Return
		move.w  d1,d3
		mulu.w  d4,d3
		add.w   d2,d3
		tst.b   (a1,d3.w)
		bge.s   @Return
		ori     #1,ccr
@Return:
		rts

    ; End of function sub_23EE2


; =============== S U B R O U T I N E =======================================

sub_23EFA:
		movem.l d1-d2/a3,-(sp)
		jsr     j_GetCombatantPosition
		movem.w d1-d2,-(sp)
		move.w  ((word_FFCB38-$1000000)).w,d2
		move.w  ((word_FFCB3A-$1000000)).w,d1
		jsr     j_SetCombatantPosition
		move.b  ((CURRENT_BATTLEACTION_TYPE-$1000000)).w,d1
		cmpi.b  #BATTLEACTION_TYPE_CAST_SPELL,d1
		bne.s   loc_23F30
		move.b  ((CURRENT_ITEM_OR_SPELL-$1000000)).w,d1
		jsr     j_FindTargetableSpacesForSpell
		movea.l ((PRIORITY_ROUTINE_ADDRESS-$1000000)).w,a3
		bra.s   loc_23F50
loc_23F30:
		cmpi.b  #BATTLEACTION_TYPE_USE_ITEM,d1
		bne.s   loc_23F46
		move.b  ((CURRENT_ITEM_OR_SPELL-$1000000)).w,d1
		jsr     j_UseItem
		movea.l ((PRIORITY_ROUTINE_ADDRESS-$1000000)).w,a3
		bra.s   loc_23F50
loc_23F46:
		jsr     j_FindTargetableSpacesForAttack
		lea     priority_ClassDistanceHealth(pc), a3
loc_23F50:
		bsr.w   sub_24324       
		bcc.s   loc_23F5A
		clr.w   ((TABLE_AT_FFA8C0-$1000000)).w
loc_23F5A:
		movem.w (sp)+,d1-d2
		jsr     j_SetCombatantPosition
		tst.w   ((TABLE_AT_FFA8C0-$1000000)).w
		movem.l (sp)+,d1-d2/a3
		rts

    ; End of function sub_23EFA


; =============== S U B R O U T I N E =======================================

; Determine AI action -> CCR carry-bit set if regular attack

DetermineAiAction:
		
		movem.l d1-d2/d7-a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d2
		andi.w  #CLASS_PROPERTY_MASK_AI_ACTION_CHANCE,d2
		asr.w   #4,d2
		move.b  table_AiActionPercents(pc,d2.w),d2
		bsr.w   GenerateRandomNumber0To99
		cmp.b   d2,d7
		bcc.s   @RegularAttack
		move.b  CLASSDEF_OFFSET_AI_ACTION(a0),d2
		cmpi.b  #AI_ACTION_REGULAR_ATTACK,d2
		beq.s   @RegularAttack
		                
		cmpi.b  #AI_ACTION_CAST_SPELL,d2
		bne.s   @CheckUseItemSlot0
		bsr.w   AiAction_CastSpell
		bra.s   @Done
@CheckUseItemSlot0:
		
		cmpi.b  #AI_ACTION_USE_ITEM_SLOT_0,d2
		bne.s   @CheckUseItemSlot1
		clr.w   d2              ; use item in slot 0
		bsr.w   AiAction_UseItem
		bra.s   @Done
@CheckUseItemSlot1:
		
		cmpi.b  #AI_ACTION_USE_ITEM_SLOT_1,d2
		bne.s   @CheckDarkDragon
		moveq   #1,d2           ; use item in slot 1
		bsr.w   AiAction_UseItem
		bra.s   @Done
@CheckDarkDragon:
		
		cmpi.b  #AI_ACTION_DARK_DRAGON,d2
		bne.s   @SpecialAttack
		bsr.w   AiAction_DarkDragon
		bra.s   @Done
@SpecialAttack:
		
		move.b  #1,((CURRENT_ATTACK_TYPE-$1000000)).w
		move.b  #2,((BATTLE_ANIMATION_TYPE-$1000000)).w
		ext.w   d2
		add.w   d2,d2
		lea     table_SpecialAiActionDefs(pc,d2.w),a0
		move.b  (a0)+,d4        ; D4 = range index
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		bsr.w   LoadRangeData   
		move.b  (a0),((CURRENT_EFFECT-$1000000)).w
		clr.b   ((CURRENT_BATTLEACTION_TYPE-$1000000)).w
@Done:
		movem.l (sp)+,d1-d2/d7-a0
		rts
@RegularAttack:
		
		ori     #1,ccr
		bra.s   @Done

    ; End of function DetermineAiAction

table_AiActionPercents:
		dc.b 100
		dc.b 25
		dc.b 50
		dc.b 75
                
