
; ASM FILE code\common\stats\statsengine_2.asm :
; 0x23378..0x23A1E : Character stats engine

; =============== S U B R O U T I N E =======================================

nullsub_23378:
		
		rts

    ; End of function nullsub_23378


; =============== S U B R O U T I N E =======================================

; Stat increasing item routine
; 
;       In: D0 = character index
;           D1 = stat index

IncreaseStatOnItemUse:
		
		movem.l d1-d4/d6-a0,-(sp)
		move.w  d1,d2
		addi.w  #523,d2         ; "[Name]'s attack level[Line]increases by [Num].[Wait2]"
		move.w  d2,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		clr.w   d2
		move.b  d0,d2
		move.w  d2,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		moveq   #2,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #1,d7
		move.w  d7,d2
		move.w  d1,d3
		asl.w   #2,d3
		jsr     bt_GetBaseStatForCombatant(pc,d3.w)
		exg     d1,d2
		jsr     bt_IncreaseBaseStatForCombatant(pc,d3.w)
		sub.w   d2,d1
		ext.l   d1
		move.l  d1,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		jsr     j_LoadCombatantData
		movem.l (sp)+,d1-d4/d6-a0
		rts

    ; End of function IncreaseStatOnItemUse


; =============== S U B R O U T I N E =======================================

bt_GetBaseStatForCombatant:
		
		bra.w   GetBaseAttackForCombatant
		bra.w   GetBaseDefenseForCombatant
		bra.w   GetBaseAgilityForCombatant
		bra.w   GetBaseMoveForCombatant
		bra.w   GetMaxHpForCombatant

    ; End of function bt_GetBaseStatForCombatant


; =============== S U B R O U T I N E =======================================

bt_IncreaseBaseStatForCombatant:
		
		bra.w   IncreaseBaseAttackForCombatant
		bra.w   IncreaseBaseDefenseForCombatant
		bra.w   IncreaseBaseAgilityForCombatant
		bra.w   IncreaseBaseMoveForCombatant
		bra.w   IncreaseMaxHpForCombatant

    ; End of function bt_IncreaseBaseStatForCombatant


; =============== S U B R O U T I N E =======================================

; Cure poison of combatant D0

CurePoison:
		movem.l d1-d2,-(sp)
		jsr     j_GetStatusEffectsForCombatant
		bclr    #STATUSEFFECT_BIT_POISON,d1
		beq.s   loc_233FC       
		move.w  #456,d2         ; "All traces of poison are[Line]purged from [Name]."
		bra.s   loc_23400
loc_233FC:
		move.w  #465,d2         ; "But nothing happens."
loc_23400:
		jsr     j_SetStatusEffectsForCombatant
		move.w  d2,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		clr.w   d2
		move.b  d0,d2
		move.w  d2,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		movem.l (sp)+,d1-d2
		rts

    ; End of function CurePoison


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified attack

EquipEffect_IncreaseAttack:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedAttack
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAttack


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified defense

EquipEffect_IncreaseDefense:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedDefense
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseDefense


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified agility

EquipEffect_IncreaseAgility:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedAgility
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAgility


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified move

EquipEffect_IncreaseMove:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedMove
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseMove


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 current HP (not functional)

AfterTurn_RecoverHp:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseCurrentHp
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_RecoverHp


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 current MP (not functional)

AfterTurn_RecoverMp:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseCurrentMp
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_RecoverMp


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 max HP (not functional)

AfterTurn_GainHp:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseMaxHp
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainHp


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base attack (not functional)

AfterTurn_GainAttack:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseAttack
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainAttack


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base defense (not functional)

AfterTurn_GainDefense:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseDefense
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainDefense


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base agility (not functional)

AfterTurn_GainAgility:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseAgility
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainAgility


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base move (not functional)

AfterTurn_GainMove:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseMove
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainMove


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified attack, set modified critical to 13

EquipEffect_IncreaseAttackSetCritical:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedAttack
		move.b  #13,d1
		jsr     j_SetModifiedCritical
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAttackSetCritical


; =============== S U B R O U T I N E =======================================

; Add 4 to combatant D0 modified attack and 8 to modified defense

EquipEffect_IncreaseAttackAndDefense:
		
		movem.l d1/d5/a0,-(sp)
		lea     byte_234EE(pc), a0
		andi.w  #$FF,d5
		adda.w  d5,a0
		move.b  (a0)+,d1
		jsr     j_IncreaseModifiedAttack
		move.b  (a0),d1
		jsr     j_IncreaseModifiedDefense
		movem.l (sp)+,d1/d5/a0
		rts
byte_234EE:
		dc.b 4
		dc.b 8
EquipEffect_IncreaseAttackSetDoubleAttackMode:
		
		movem.l d1,-(sp)        ; Add D5 to combatant D0 modified attack, set modified double attack mode to "high"
		move.b  d5,d1
		jsr     j_IncreaseModifiedAttack
		moveq   #DOUBLE_ATTACK_MODE_HIGH,d1
		jsr     j_SetModifiedDoubleAttackMode
		movem.l (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAttackAndDefense


; =============== S U B R O U T I N E =======================================

; Set Jogurt status effect to combatant D0

EquipEffect_SetJogurtStatus:
		
		movem.l d1,-(sp)
		jsr     j_GetStatusEffectsForCombatant
		bset    #STATUSEFFECT_BIT_JOGURT,d1
		jsr     j_SetStatusEffectsForCombatant
		movem.l (sp)+,d1
		rts

    ; End of function EquipEffect_SetJogurtStatus


; =============== S U B R O U T I N E =======================================

sub_23524:
		jmp     sub_124018

    ; End of function sub_23524


; =============== S U B R O U T I N E =======================================

; Level Up Party (Kindan NoHako)

KindanNoHako:
		movem.l d0-d3/a0,-(sp)
		bsr.w   NullBattleaction
		moveq   #FORCE_MEMBERS_COUNTER,d2
loc_23534:
		move.b  d2,d0
		jsr     j_GetLevel
		move.w  #18,d3
		sub.w   d1,d3
		bsr.w   FindCombatantEntry
		bne.s   loc_23550
loc_23548:
		bsr.w   IncreaseStatsOnLevelUpForCombatant
		dbf     d3,loc_23548
loc_23550:
		jsr     j_RefillHpForCombatant
		jsr     j_RefillMpForCombatant
		dbf     d2,loc_23534
                
		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function KindanNoHako


; =============== S U B R O U T I N E =======================================

; Make movement area grid for combatant D0

CreateMovementGrid:
		
		movem.l d0-d4/a0,-(sp)
		jsr     j_GetModifiedMove
		cmpi.w  #9,d1
		ble.s   loc_2357C
		bsr.w   MakeMoveEverywhereGrid
		bra.s   loc_2358E
loc_2357C:
		move.w  d1,d3
		bsr.s   IsForceMemberOrEnemy
		jsr     j_GetMoveCostEntryAddress
		bsr.w   SetupEffectiveMoveCosts
		bsr.w   MakeEffectivePassabilityFlags
loc_2358E:
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function CreateMovementGrid


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 is force member or enemy, return in D4 (1 = enemy, 2 = force)

IsForceMemberOrEnemy:
		
		move.w  d1,-(sp)
		jsr     j_GetEntity
		moveq   #2,d4
		tst.b   d1
		bge.s   @ForceMember
		moveq   #1,d4
@ForceMember:
		move.w  (sp)+,d1
		rts

    ; End of function IsForceMemberOrEnemy


; =============== S U B R O U T I N E =======================================

; Find targetable spaces for "attack" battle action

FindTargetableSpacesForAttack:
		
		movem.l d4-d5,-(sp)
		bsr.s   Battleaction_Attack
		jsr     j_FindTargetableSpaces
		movem.l (sp)+,d4-d5
		rts

    ; End of function FindTargetableSpacesForAttack


; =============== S U B R O U T I N E =======================================

; Prepare to attack (get attack range and effect, check for special attack)
; 
; Out: D4 = attack range index
;      D5 = attack effect index

Battleaction_Attack:
		
		movem.l d1-d3/a0-a1,-(sp)
		tst.b   ((CURRENT_ATTACK_TYPE-$1000000)).w
		beq.s   @RegularAttack
		clr.b   ((SPECIAL_ATTACK_PERCENT-$1000000)).w
		move.b  ((CURRENT_RANGE-$1000000)).w,d4
		move.b  ((CURRENT_EFFECT-$1000000)).w,d5
		bra.s   @Skip           ; skip if not a regular attack
@RegularAttack:
		
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItemForCombatant
		bcc.s   @AttackWithEquippedWeapon
		move.b  CLASSDEF_OFFSET_UNARMED_RANGE(a0),d4
		move.b  CLASSDEF_OFFSET_UNARMED_EFFECT(a0),d5
		bra.s   @UnarmedAttack
@AttackWithEquippedWeapon:
		
		move.b  d2,d1
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_ATTACK_RANGE(a1),d4
		move.b  ITEMDEF_OFFSET_ATTACK_EFFECT(a1),d5
@UnarmedAttack:
		
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d1
		andi.w  #CLASS_PROPERTY_MASK_SPECIAL_ATTACK_CHANCE,d1
		move.b  table_SpecialAttackPercents(pc,d1.w),((SPECIAL_ATTACK_PERCENT-$1000000)).w
		move.b  CLASSDEF_OFFSET_SPECIAL_ATTACK_INDEX(a0),((SPECIAL_ATTACK_INDEX-$1000000)).w
@Skip:
		movem.l (sp)+,d1-d3/a0-a1
		rts

    ; End of function Battleaction_Attack

table_SpecialAttackPercents:
		dc.b 0
		dc.b 25
		dc.b 50
		dc.b 75

; =============== S U B R O U T I N E =======================================

; Use item D1 in battle

UseItem:
		movem.l d1-d2/d4-d5,-(sp)
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_USABLE,d2
		beq.s   @NotUsable      
		move.b  d1,d2
		move.w  #ITEMTYPE_MASK_USABLE,d1
		jsr     j_IsItemEquippableForCombatant
		bcs.s   @CheckEquipFlags
		move.b  d2,d1
		bsr.w   GetItemUseRangeAndEffect
		clr.b   d1
		bra.s   @Done
@CheckEquipFlags:
		
		bne.s   @CannotBeUsedByCurrentActor
						; branch if item has at least one equip flag set
@NotUsable:
		moveq   #1,d1           ; item is either not usable, or not a piece of equipment
		bra.s   @Continue
@CannotBeUsedByCurrentActor:
		
		moveq   #2,d1           ; item is piece of equipment, but cannot be equipped by current actor
@Continue:
		moveq   #-1,d4
@Done:
		move.b  d1,((CANNOT_USE_ITEM_FLAG-$1000000)).w
		jsr     j_FindTargetableSpaces
		movem.l (sp)+,d1-d2/d4-d5
		rts

    ; End of function UseItem


; =============== S U B R O U T I N E =======================================

; Get item D1 use range and effect indexes -> D4 = range, D5 = effect

GetItemUseRangeAndEffect:
		
		movem.l d1/a1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((BATTLESCENE_ITEM_OR_SPELL_INDEX-$1000000)).w
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_USE_RANGE(a1),d4
		cmpi.b  #255,d4         ; skip if range index = 255
		beq.s   @Skip
		move.b  ITEMDEF_OFFSET_USE_EFFECT(a1),d5
@Skip:
		movem.l (sp)+,d1/a1
		rts

    ; End of function GetItemUseRangeAndEffect


; =============== S U B R O U T I N E =======================================

; Prepare to use item slot D1 from combatant D0 (load item index and slot number)
; 
; Out: D4 = range index
;      D5 = effect index

Battleaction_UseItem:
		
		movem.l d1/a0,-(sp)
		jsr     j_GetEntityItemsAddressForCombatant
		andi.w  #$FF,d1
		move.w  d1,((SELECTED_ITEM_SLOT-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,((SELECTED_ITEM_ENTRY-$1000000)).w
		bsr.s   GetItemUseRangeAndEffect
		movem.l (sp)+,d1/a0
		rts

    ; End of function Battleaction_UseItem


; =============== S U B R O U T I N E =======================================

; Find targetable spaces for the "cast spell" battleaction.

FindTargetableSpacesForSpell:
		
		movem.l d4-d5,-(sp)
		bsr.s   Battleaction_CastSpell
		jsr     j_FindTargetableSpaces
		movem.l (sp)+,d4-d5
		rts

    ; End of function FindTargetableSpacesForSpell


; =============== S U B R O U T I N E =======================================

; Prepare to cast spell D1 (load index, level and MP cost)
; 
; Out: D4 = spell range index
;      D5 = spell effect index

Battleaction_CastSpell:
		
		movem.l d2/a1,-(sp)
		move.b  d1,d2
		andi.w  #SPELLENTRY_MASK_INDEX,d2
		move.w  d2,((BATTLESCENE_ITEM_OR_SPELL_INDEX-$1000000)).w
		move.b  d1,d2
		andi.l  #SPELLENTRY_MASK_LEVEL,d2
		asr.l   #6,d2
		addq.l  #1,d2
		move.l  d2,((BATTLESCENE_SPELL_LEVEL-$1000000)).w
		bsr.w   GetSpellEntryAddress
		clr.w   d4
		move.b  SPELL_OFFSET_MP_COST(a1),d4
		move.w  d4,((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		move.b  (a1),d4         ; D4 = range index
		move.b  SPELL_OFFSET_EFFECT(a1),d5
		movem.l (sp)+,d2/a1
		rts

    ; End of function Battleaction_CastSpell


; =============== S U B R O U T I N E =======================================

; Get effect, range and targetable spaces for current battleaction.

SetupBattleaction:
		
		movem.l d0-d5/a0,-(sp)
		lea     ((CASTER_INDEX-$1000000)).w,a0
		clr.w   d2
		move.b  BATTLEACTION_OFFSET_TYPE(a0),d2
		cmpi.b  #3,d2
		bcc.s   @Skip           ; skip if battleaction type >= 3
		move.b  d2,((BATTLE_MESSAGE_OFFSET-$1000000)).w
		clr.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		move.w  #-1,((SELECTED_ITEM_SLOT-$1000000)).w
		clr.b   ((SPECIAL_ATTACK_PERCENT-$1000000)).w
		move.b  (a0),d0         ; D0 = caster index
		move.b  BATTLEACTION_OFFSET_SPELL_INDEX(a0),d1
		asl.w   #2,d2
		jsr     bt_Battleactions(pc,d2.w)
		cmpi.b  #255,d4         ; skip if range index = 255
		beq.s   @Skip
		move.b  (a0),d0         ; D0 = caster index
		move.b  BATTLEACTION_OFFSET_TARGET_INDEX(a0),d1
		jsr     j_FindTargetsWithinArea
		jsr     j_PopulateTargetsList
		jsr     j_JumpToRangeOrEquipEffect
@Skip:
		movem.l (sp)+,d0-d5/a0
		rts

    ; End of function SetupBattleaction


; =============== S U B R O U T I N E =======================================

bt_Battleactions:
		
		bra.w   Battleaction_Attack
		bra.w   Battleaction_CastSpell
		bra.w   Battleaction_UseItem

    ; End of function bt_Battleactions


; =============== S U B R O U T I N E =======================================

; hardcoded "GIVE" item menu action range (?)

sub_23752:
		movem.l d0-d4/a0,-(sp)
		moveq   #1,d3
		clr.w   d4
		bsr.w   SetupTargetingMoveCosts
		moveq   #1,d1
		move.w  d1,d2
		move.b  #1,((TARGETING_GROUP_BITFIELD-$1000000)).w
		bsr.w   MakeTargetingGrid
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function sub_23752


; =============== S U B R O U T I N E =======================================

; Make movement area grid for combatant D0 when modified move is greater than 9 (i.e., force leader in battle test mode)

MakeMoveEverywhereGrid:
		
		movem.l d1-d2/a0-a1,-(sp)
		jsr     j_GetMoveCostEntryAddress
		bsr.w   LoadMoveCosts   
		lea     ((MOVE_COSTS-$1000000)).w,a0
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a1
		move.w  #$3FF,d1
loc_2378C:
		move.b  (a0)+,(a1)+     ; copy move costs table to table at $FFA8C0
		dbf     d1,loc_2378C    
                
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = moving combatant's position converted to offset
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
		clr.b   (a0,d1.w)       ; clear move cost at moving combatant's starting position
		bsr.w   MakeEffectivePassabilityFlags
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		move.w  #$3FF,d1
loc_237B2:
		cmpi.b  #$D,(a0)
		bne.s   loc_237BE
		bset    #2,-OFFSET_PASSABILITY_FLAGS_TO_CURRENT_TERRAIN_DATA(a0)
loc_237BE:
		addq.l  #1,a0
		dbf     d1,loc_237B2
                
		movem.l (sp)+,d1-d2/a0-a1
		rts

    ; End of function MakeMoveEverywhereGrid


; =============== S U B R O U T I N E =======================================

sub_237CA:
		movem.l d1-d4/a0,-(sp)
		jsr     j_GetMoveCostEntryAddress
		move.w  d1,-(sp)
		jsr     j_GetModifiedMove
		move.w  d1,d3
		move.w  (sp)+,d1
		addq.w  #3,d3
		bsr.w   IsForceMemberOrEnemy
		bsr.w   MakeEffectiveMoveCosts
		jsr     j_GetCombatantPosition
		bsr.w   sub_20868       
		movem.l (sp)+,d1-d4/a0
		rts

    ; End of function sub_237CA


; =============== S U B R O U T I N E =======================================

PopulateTargetsList:
		
		movem.l d0-d5/a0-a2,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		move.b  ((TARGETING_GROUP_BITFIELD-$1000000)).w,d3
		clr.w   d4
		lea     ((byte_FFA8C2-$1000000)).w,a1
						; target positions
		lea     ((TARGETS_LIST-$1000000)).w,a2
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_23812:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_2385A
		tst.b   d1
		bge.s   loc_2382A       ; branch if force member
		btst    #1,d3
		beq.s   loc_2385A       ; branch if not tasked to target enemies
		bra.s   loc_23830
loc_2382A:
		btst    #0,d3
		beq.s   loc_2385A       ; branch if not tasked to target force members
loc_23830:
		jsr     j_GetCombatantPosition
		move.w  d1,d5
		mulu.w  ((MAP_WIDTH-$1000000)).w,d5
		add.w   d2,d5           ; D5 = combatant's position converted to offset
		btst    #2,d3
		bne.s   loc_2384C       ; branch if tasked to target all
		btst    #0,(a0,d5.w)
		beq.s   loc_2385A
loc_2384C:
		bset    #1,(a0,d5.w)
		addq.w  #1,d4
		move.w  d2,(a1)+        ; load target X
		move.w  d1,(a1)+        ; load target Y
		move.w  d0,(a2)+        ; load target index
loc_2385A:
		dbf     d0,loc_23812
                
		move.w  d4,((TABLE_AT_FFA8C0-$1000000)).w
						; load target list length
		moveq   #-1,d4
		move.w  d4,(a1)+
		move.w  d4,(a2)+
		movem.l (sp)+,d0-d5/a0-a2
		bsr.s   sub_23870
		rts

    ; End of function PopulateTargetsList


; =============== S U B R O U T I N E =======================================

sub_23870:
		movem.l d0-d2/a0-a3,-(sp)
		lea     ((byte_FFA8C2-$1000000)).w,a0
		lea     ((TARGETS_LIST-$1000000)).w,a1
		move.w  ((TABLE_AT_FFA8C0-$1000000)).w,d0
		subq.w  #1,d0
loc_23882:
		ble.s   loc_238BC
		lea     4(a0),a2
		lea     2(a1),a3
		move.w  d0,d1
loc_2388E:
		subq.w  #1,d1
		blt.s   loc_238B4
		move.w  2(a2),d2
		cmp.w   2(a0),d2
		bne.s   loc_238A0
		move.w  (a2),d2
		cmp.w   (a0),d2
loc_238A0:
		bcc.s   loc_238AE
		move.l  (a0),d2
		move.l  (a2),(a0)
		move.l  d2,(a2)
		move.w  (a1),d2
		move.w  (a3),(a1)
		move.w  d2,(a3)
loc_238AE:
		addq.l  #4,a2
		addq.l  #2,a3
		bra.s   loc_2388E
loc_238B4:
		addq.l  #4,a0
		addq.l  #2,a1
		subq.w  #1,d0
		bra.s   loc_23882
loc_238BC:
		movem.l (sp)+,d0-d2/a0-a3
		rts

    ; End of function sub_23870


; =============== S U B R O U T I N E =======================================

; Get item D1 name address and length
; 
; Out: A0 = item name address
;      D1 = item name length

GetItemNameAddress:
		
		andi.b  #ITEMENTRY_MASK_INDEX,d1
		movea.l (p_ItemNames).l,a0

    ; End of function GetItemNameAddress


; =============== S U B R O U T I N E =======================================

; Get D1th entry address from table which is stored with length values
; 
; Out: A0 = entry address
;      D1 = entry length

GetVariableLengthEntryAddress:
		
		movem.w d0,-(sp)
		clr.w   d0
		tst.b   d1
		beq.s   loc_238E0
loc_238D6:
		move.b  (a0),d0
		lea     1(a0,d0.w),a0
		subq.b  #1,d1
		bne.s   loc_238D6
loc_238E0:
		move.b  (a0)+,d0
		move.w  d0,d1
		movem.w (sp)+,d0
		rts

    ; End of function GetVariableLengthEntryAddress


; =============== S U B R O U T I N E =======================================

; Get spell D1 name address and length
; 
; Out: A0 = spell name address
;      D1 = spell name length

GetSpellNameAddress:
		
		andi.b  #SPELLENTRY_MASK_INDEX,d1
		movea.l (p_SpellNames).l,a0
		bra.s   GetVariableLengthEntryAddress

    ; End of function GetSpellNameAddress


; =============== S U B R O U T I N E =======================================

; Get class D1 name address and length
; 
; Out: A0 = class name address
;      D1 = class name length

GetClassNameAddress:
		
		movea.l (p_ClassNames).l,a0
		bra.s   GetVariableLengthEntryAddress

    ; End of function GetClassNameAddress


; =============== S U B R O U T I N E =======================================

LoadVariableLengthEntry:
		
		movem.l d1/a0,-(sp)
		bsr.s   GetVariableLengthEntryAddress
		beq.s   loc_2390E
		subq.w  #1,d1
loc_23908:
		move.b  (a0)+,(a1)+
		dbf     d1,loc_23908
loc_2390E:
		movem.l (sp)+,d1/a0
		rts

    ; End of function LoadVariableLengthEntry


; =============== S U B R O U T I N E =======================================

; Get class D1 entry address -> A0

GetClassEntryAddress:
		
		move.w  d1,-(sp)
		movea.l (p_ClassData).l,a0
		andi.w  #$FF,d1
		asl.w   #3,d1
		adda.w  d1,a0
		move.w  (sp)+,d1
		rts

    ; End of function GetClassEntryAddress


; =============== S U B R O U T I N E =======================================

; Get combatant D0 move cost entry address -> A0

GetMoveCostEntryAddress:
		
		movea.l (p_MoveCostData).l,a0
		bra.s   loc_23936

    ; End of function GetMoveCostEntryAddress


; =============== S U B R O U T I N E =======================================

; Get combatant D0 land effect entry address -> A0

GetLandEffectEntryAddress:
		
		movea.l (p_LandEffectData).l,a0
loc_23936:
		movem.l d1/a1,-(sp)
		movea.l a0,a1
		jsr     j_GetClassForCombatant
		bsr.s   GetClassEntryAddress
		move.b  (a0),d1         ; D1 = move type index
		andi.w  #$FF,d1
		asl.w   #4,d1
		movea.l a1,a0
		adda.w  d1,a0
		movem.l (sp)+,d1/a1
		rts

    ; End of function GetLandEffectEntryAddress


; =============== S U B R O U T I N E =======================================

; Get combatant D0 resistance to element D1 -> D2

GetResistance:
		
		movem.l d1/a0,-(sp)
		move.b  d1,d2
		jsr     j_GetClassForCombatant
		bsr.s   GetClassEntryAddress
		move.b  d2,d1
		move.w  CLASSDEF_OFFSET_RESISTANCES(a0),d2
		andi.b  #7,d1
		ror.w   d1,d2
		ror.w   d1,d2
		andi.w  #3,d2
		movem.l (sp)+,d1/a0
		rts

    ; End of function GetResistance


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w special bit 6 from class (unused)
; 
; Out: set: d1.w = 2 / clear: d1.w = 1

sub_2397C:
		move.l  a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d1
		andi.w  #CLASS_PROPERTY_UNUSED,d1
		asr.w   #CLASS_PROPERTY_BIT_UNUSED,d1
		addq.w  #1,d1
		movea.l (sp)+,a0
		rts

    ; End of function sub_2397C


; =============== S U B R O U T I N E =======================================

; Get combatant D0 base double attack mode from class -> D1

GetBaseDoubleAttackMode:
		
		move.l  a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d1
		andi.w  #CLASS_PROPERTY_MASK_DOUBLE_ATTACK_MODE,d1
		asr.w   #2,d1
		movea.l (sp)+,a0
		rts

    ; End of function GetBaseDoubleAttackMode


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 has flying or hovering move type

IsFlyingOrHovering:
		
		movem.l d1/a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  (a0),d1
		cmpi.b  #MOVE_TYPE_FLYING,d1
		beq.s   @IsFlying
		cmpi.b  #MOVE_TYPE_HOVERING,d1
@IsFlying:
		movem.l (sp)+,d1/a0
		rts

    ; End of function IsFlyingOrHovering


; =============== S U B R O U T I N E =======================================

; Get entity's portrait index for combatant D0 -> D1

GetPortraitForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   GetPortrait     
		move.w  (sp)+,d0
		rts

    ; End of function GetPortraitForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity D0 portrait index -> D1 (check if changed into jogurt or promoted)

GetPortrait:
		movem.l a0-a1,-(sp)
		tst.b   d0
		bge.s   @ForceMember
		                
		bsr.w   GetEnemyEntryAddress
		move.b  ENEMY_OFFSET_PORTRAIT(a1),d1
		ext.w   d1
		bra.s   @Done
@ForceMember:
		cmpi.b  #ALLY_NOVA,d0
		bne.s   @CheckIfChangedIntoJogurt
		move.w  #PORTRAIT_NOVA,d1
		bra.s   @Done
@CheckIfChangedIntoJogurt:
		
		bsr.w   IsEntityChangedIntoJogurt
		beq.s   @CheckIfPromoted
		move.w  #PORTRAIT_JOGURT,d1
		bra.s   @Done
@CheckIfPromoted:
		
		clr.w   d1
		move.b  d0,d1
		bsr.w   IsPromoted      
		beq.s   @Done
		move.b  table_PromotedPortraits(pc,d1.w),d1
@Done:
		movem.l (sp)+,a0-a1
		rts

    ; End of function GetPortrait

