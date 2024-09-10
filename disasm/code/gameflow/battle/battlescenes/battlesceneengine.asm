
; ASM FILE code\gameflow\battle\battlescenes\battlesceneengine.asm :
; 0x21520..0x21AEE : Battlescene engine

; =============== S U B R O U T I N E =======================================

; In: D0 = caster index
;     D1 = target index

LoadBattlesceneActors:
		
		movem.l d0-d2,-(sp)
		lea     (BATTLE_SCENE_ACTORS).l,a2
		move.w  d1,d2
		jsr     j_GetEntity
		tst.b   d1              ; is caster a force member?
		bge.s   @ForceMember
		exg     d0,d2           ; exchange caster and target indexes if caster is an enemy
@ForceMember:
		clr.w   (a2)+
		move.w  d2,(a2)+
		move.w  d0,(a2)+
		move.b  d0,((BATTLE_SCENE_ALLY-$1000000)).w
		move.b  d2,((BATTLE_SCENE_ENEMY-$1000000)).w
		movem.l (sp)+,d0-d2
		rts

    ; End of function LoadBattlesceneActors


; =============== S U B R O U T I N E =======================================

; Add battlescene member

sub_2154C:
		movem.w d0-d1,-(sp)
		clr.w   d0
		move.b  d1,d0
		jsr     j_GetEntity
		tst.b   d1              ; is force member?
		bge.s   @ForceMember
		move.w  #8,(a2)+
		move.w  d0,(a2)+
		move.b  d0,((BATTLE_SCENE_ENEMY-$1000000)).w
		bra.s   @Done
@ForceMember:
		move.w  #7,(a2)+
		move.w  d0,(a2)+
		move.b  d0,((BATTLE_SCENE_ALLY-$1000000)).w
@Done:
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_2154C


; =============== S U B R O U T I N E =======================================

; Add battlescene target

sub_2157A:
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_21592
		move.w  #2,(a2)+
		move.w  d3,(a2)+
		move.w  d4,(a2)+
		bra.s   loc_2159A
loc_21592:
		move.w  #1,(a2)+
		move.w  d3,(a2)+
		move.w  d4,(a2)+
loc_2159A:
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_2157A


; =============== S U B R O U T I N E =======================================

; Setup battlescene data

sub_215A0:
		move.w  d0,-(sp)
		move.w  d1,d0
		bsr.s   sub_2157A       
		move.w  (sp)+,d0
		rts

    ; End of function sub_215A0


; =============== S U B R O U T I N E =======================================

sub_215AA:
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_215BE
		move.w  #4,(a2)+
		bra.s   loc_215C2
loc_215BE:
		move.w  #3,(a2)+
loc_215C2:
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_215AA


; =============== S U B R O U T I N E =======================================

; Setup battlescene data

WriteBattlesceneCommand:
		
		movem.w d0-d1,-(sp)
		andi.w  #$FF,d0
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_215E0
		move.w  #$A,(a2)+
		bra.s   loc_215E4       
loc_215E0:
		move.w  #9,(a2)+
loc_215E4:
		move.w  d3,(a2)+        ; HP change
		move.w  d4,(a2)+        ; MP change
		move.w  d5,(a2)+        ; status effects change
		move.w  d6,(a2)+        ; command flags
		movem.w (sp)+,d0-d1
		rts

    ; End of function WriteBattlesceneCommand


; =============== S U B R O U T I N E =======================================

; Wrapper for 215C8

sub_215F2:
		move.w  d0,-(sp)
		move.w  d1,d0
		bsr.s   WriteBattlesceneCommand
		move.w  (sp)+,d0
		rts

    ; End of function sub_215F2


; =============== S U B R O U T I N E =======================================

; Copy battlescene data
; 
; In: A0 = source
;     A2 = destination

CopyBattlesceneData:
		
		move.l  a0,-(sp)
		move.w  #$F,(a2)+
		move.w  (a0)+,(a2)+     ; message index
		move.w  (a0)+,(a2)+     ; actor index
		move.w  (a0)+,(a2)+     ; item or spell index
		move.l  (a0)+,(a2)+     ; spell level
		movea.l (sp)+,a0
		rts

    ; End of function CopyBattlesceneData


; =============== S U B R O U T I N E =======================================

; Copy battlescene data 2

sub_2160E:
		move.l  a0,-(sp)
		move.w  #$12,(a2)+
		move.w  (a0)+,(a2)+
		move.w  (a0)+,(a2)+
		move.w  (a0)+,(a2)+
		move.l  (a0)+,(a2)+
		movea.l (sp)+,a0
		rts

    ; End of function sub_2160E


; =============== S U B R O U T I N E =======================================

; Setup Battle Messages

sub_21620:
		move.w  #$D,(a2)+
		move.w  #$E,(a2)+
		bsr.s   EndBattleaction 
		move.w  #$B,(a2)+
		move.w  ((EXPERIENCE_TO_GAIN-$1000000)).w,(a2)+
		move.w  #$C,(a2)+
		move.w  #$11,(a2)+
		move.w  #-1,(a2)+
		rts

    ; End of function sub_21620


; =============== S U B R O U T I N E =======================================

; End of battle action (award money, break items, give exp, drop item)

EndBattleaction:
		
		movem.l d0-d3/d7-a0,-(sp)
		andi.w  #$FF,d0
		move.w  ((SELECTED_ITEM_SLOT-$1000000)).w,d3
		blt.s   loc_216C4
		movea.l (p_ItemTypes).l,a0
		move.w  ((SELECTED_ITEM_ENTRY-$1000000)).w,d1
		btst    #ITEMENTRY_BIT_BROKEN,d1
		beq.s   loc_21678
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		clr.w   d2
		move.b  (a0,d1.w),d2
		addi.w  #$1FA,d2
		move.w  #$12,(a2)+
		move.w  d2,(a2)+
		move.w  d1,(a2)+
		addq.l  #6,a2
		bra.s   loc_21684
loc_21678:
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CONSUMABLE,d2
		beq.s   loc_2168E
loc_21684:
		move.w  d3,d1
		jsr     j_RemoveItemForCombatant
		bra.s   loc_216C4
loc_2168E:
		btst    #ITEMTYPE_BIT_CHANCE_TO_CRACK,d2
		beq.s   loc_216C4
		tst.b   ((DEBUG_CRACK_ITEM-$1000000)).w
		bne.s   loc_216A4
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7
		bge.s   loc_216C4
loc_216A4:
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		clr.w   d2
		move.b  (a0,d1.w),d2
		addi.w  #$1F4,d2
		move.w  #$12,(a2)+
		move.w  d2,(a2)+
		move.w  d1,(a2)+
		addq.l  #6,a2
		move.w  d3,d1
		jsr     j_BreakItemForCombatant
loc_216C4:
		moveq   #0,d1
		move.w  ((EXPERIENCE_TO_GAIN-$1000000)).w,d1
		beq.s   loc_216DA
		move.w  #$F,(a2)+
		move.w  #$200,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		move.l  d1,(a2)+
loc_216DA:
		move.w  ((COINS_TO_GAIN-$1000000)).w,d1
		beq.s   loc_216F4
		move.w  #$F,(a2)+
		move.w  #$201,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		move.l  d1,(a2)+
		jsr     j_IncreaseGold
loc_216F4:
		move.w  ((ITEM_DROPPED_FLAG-$1000000)).w,d2
		blt.s   loc_2173E
		move.w  ((ITEM_TO_DROP-$1000000)).w,d1
		jsr     j_GiveItemForCombatant
		bcc.s   loc_2170E
		jsr     j_IncrementDealsStock
		bra.s   loc_2173E
loc_2170E:
		cmpi.b  #$3A,d1 
		bne.s   loc_21722
		move.w  #$12,(a2)+
		move.w  #$204,(a2)+
		move.w  d0,(a2)+
		move.w  d1,(a2)+
		addq.l  #4,a2
loc_21722:
		move.w  #$12,(a2)+
		move.w  #$202,(a2)+
		move.w  d0,(a2)+
		move.w  d1,(a2)+
		addq.l  #4,a2
		move.w  #$12,(a2)+
		move.w  #$203,(a2)+
		move.w  d0,(a2)+
		move.w  d1,(a2)+
		addq.l  #4,a2
loc_2173E:
		movem.l (sp)+,d0-d3/d7-a0
		rts

    ; End of function EndBattleaction


; =============== S U B R O U T I N E =======================================

; Add empty battle action

NullBattleaction:
		
		move.l  a0,-(sp)
		lea     (BATTLE_SCENE_ACTORS).l,a2
		move.w  #-1,(a2)+
		movea.l (sp)+,a0
		rts

    ; End of function NullBattleaction


; =============== S U B R O U T I N E =======================================

; Battle action effect handler
; 
; In: D0 = actor index
;     A0 = effect entry address
;     A1 = pointer to effect routine

ExecuteBattleaction:
		
		        module
		movem.l d0-d6/a3-a4,-(sp)
		andi.w  #$FF,d0
		lea     ((TARGETS_LIST-$1000000)).w,a3
		bsr.w   IsTargetOpponent
		move.w  d1,((OPPONENT_TARGET_INDEX-$1000000)).w
		bsr.w   LoadBattlesceneActors
		jsr     j_GetItemsCurseSettingsForCombatant
		move.b  d1,((CURSED_ITEMS_SETTINGS-$1000000)).w
		bsr.w   DetermineCurseParalysis
		bcs.w   loc_218A8
		bsr.w   CheckDispel     
		bcc.s   loc_2178E
		move.w  #442,((BATTLESCENE_MESSAGE_INDEX-$1000000)).w
						; "[Name] casts [Spell][Line]level [Num]![Line]But the spell fails."
		bra.w   loc_218A8
loc_2178E:
		clr.w   d3
		move.b  EFFECTDEF_OFFSET_MESSAGE(a0),d3
		bge.s   loc_2179A
		move.b  ((BATTLE_MESSAGE_OFFSET-$1000000)).w,d3
loc_2179A:
		andi.w  #$FF,d3
		addi.w  #436,d3         ; "[Name] attacks!"
		move.w  d3,((BATTLESCENE_MESSAGE_INDEX-$1000000)).w
		move.w  d0,((BATTLESCENE_ACTOR_INDEX-$1000000)).w
		move.l  a0,-(sp)
		lea     ((BATTLESCENE_MESSAGE_INDEX-$1000000)).w,a0
		bsr.w   CopyBattlesceneData
		movea.l (sp)+,a0
		move.b  (a0),d3
		bge.s   @CheckMpCost    ; branch if battle message >= 0
		cmpi.b  #-1,d3
		bne.s   loc_217C6
		ext.w   d3
		move.w  d3,d4
		bra.s   loc_217CE
loc_217C6:
		bsr.w   LoadBattlespriteData
		move.b  EFFECTDEF_OFFSET_ANIM(a0),d4
loc_217CE:
		bsr.w   MirrorSpellAnimationIfEnemy
		bsr.w   sub_2157A       
@CheckMpCost:
		move.w  ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w,d4
		beq.s   @CheckOpponent
		clr.w   d3
		neg.w   d4
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d5
		moveq   #-1,d6
		bsr.w   WriteBattlesceneCommand
@CheckOpponent:
		
		move.w  ((OPPONENT_TARGET_INDEX-$1000000)).w,d1
		bge.s   loc_21802       ; continue if target is an opponent
		move.w  (a3)+,d1
		blt.w   loc_218A8
		cmp.w   d0,d1
		beq.s   loc_21802
		bsr.w   sub_2154C       
loc_21802:
		bsr.w   DetermineDoubleAttack
loc_21806:
		bsr.w   sub_218D4       
loc_2180A:
		bsr.w   sub_218EE       
		jsr     (a1)            ; jump to effect routine
		move.l  a0,-(sp)
		lea     ((AFTER_TURN_MESSAGE_INDEX-$1000000)).w,a0
		cmpi.w  #-1,(a0)
		beq.s   loc_21820
		bsr.w   CopyBattlesceneData
loc_21820:
		movea.l (sp)+,a0
		move.w  ((word_FFA9CA-$1000000)).w,d3
		blt.s   loc_2183E
		bsr.w   LoadBattlespriteData
		move.w  ((word_FFA9CC-$1000000)).w,d4
		bsr.w   sub_2157A       
		tst.b   ((byte_FFCB6B-$1000000)).w
		bne.s   loc_2183E
		bsr.w   sub_215AA
loc_2183E:
		move.w  ((EFFECT_HP_CHANGE-$1000000)).w,d3
		move.w  ((EFFECT_MP_CHANGE-$1000000)).w,d4
		move.w  ((EFFECT_STATUS_CHANGE-$1000000)).w,d5
		move.w  ((EFFECT_REACTION-$1000000)).w,d6
		bsr.w   sub_215F2       
		tst.w   ((word_FFA9CA-$1000000)).w
		blt.s   loc_21862
		tst.b   ((byte_FFCB6B-$1000000)).w
		beq.s   loc_21862
		bsr.w   sub_215AA
loc_21862:
		move.l  a0,-(sp)
		lea     ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,a0
		cmpi.w  #-1,(a0)
		beq.s   loc_21872
		bsr.w   CopyBattlesceneData
loc_21872:
		lea     ((BATTLE_MESSAGE_INDEX_2-$1000000)).w,a0
		cmpi.w  #-1,(a0)
		beq.s   loc_21880
		bsr.w   sub_2160E       
loc_21880:
		movea.l (sp)+,a0
		tst.w   ((word_FFA9CA-$1000000)).w
		blt.s   loc_21890
		move.w  #$D,(a2)+
		move.w  #$E,(a2)+
loc_21890:
		bsr.w   sub_219C0       
		subq.w  #1,((NUMBER_OF_ATTACKS-$1000000)).w
		bgt.w   loc_2180A
		move.w  (a3)+,d1
		blt.s   loc_218A8
		bsr.w   sub_2154C       
		bra.w   loc_21806
loc_218A8:
		bsr.w   sub_21A1C
		bsr.w   DetermineCurseDamage
		bsr.w   nullsub_21AC8
		bsr.w   sub_21ACA
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_218CA
		clr.w   ((EXPERIENCE_TO_GAIN-$1000000)).w
		clr.w   ((COINS_TO_GAIN-$1000000)).w
loc_218CA:
		bsr.w   sub_21620       
		movem.l (sp)+,d0-d6/a3-a4
		rts
        modend

    ; End of function ExecuteBattleaction


; =============== S U B R O U T I N E =======================================

; Initialize amount of damage to inflict and status effects change

sub_218D4:
		clr.w   ((word_FFCB58-$1000000)).w
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,((EFFECT_STATUS_CHANGE-$1000000)).w
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_218D4


; =============== S U B R O U T I N E =======================================

; Initialize battle action data

sub_218EE:
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((word_FFA9CA-$1000000)).w,a1
		move.b  (a0)+,d0
		bge.s   loc_21900
		move.w  #-1,(a1)+
		bra.s   loc_21906
loc_21900:
		andi.w  #7,d0
		move.w  d0,(a1)+
loc_21906:
		move.w  #-1,d0
		move.w  d0,(a1)+
		move.w  d0,(a1)+
		move.b  d0,((byte_FFCB6B-$1000000)).w
		clr.b   ((byte_FFCB6C-$1000000)).w
		lea     ((EFFECT_HP_CHANGE-$1000000)).w,a1
		clr.w   (a1)+
		clr.w   (a1)+
		addq.l  #2,a1
		moveq   #-1,d1
		move.w  d1,(a1)+
		move.w  d1,(a1)+
		move.w  d1,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		move.w  d1,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_218EE


; =============== S U B R O U T I N E =======================================

; Check if target is an opponent, get its combatant index -> d1.w if true, else -1
; 
; In: a3 = target table entry address
;     d0.w = caster index

IsTargetOpponent:
		
		movem.w d0/d2,-(sp)
		jsr     j_GetEntity
		move.w  d1,d2           ; d2.w = caster's entity index
		move.w  (a3),d0
		jsr     j_GetEntity
		eor.w   d2,d1
		btst    #ENTITYENTRY_BIT_ENEMY,d1
		bne.s   @Opponent
		move.w  #-1,d1
		bra.s   @Done
@Opponent:
		move.w  (a3)+,d1
@Done:
		movem.w (sp)+,d0/d2
		rts

    ; End of function IsTargetOpponent


; =============== S U B R O U T I N E =======================================

DetermineDoubleAttack:
		
		movem.l d1-d2/d7,-(sp)
		tst.b   ((DEBUG_DOUBLE_ATTACK-$1000000)).w
		bne.s   loc_219A6
		moveq   #1,d2
		tst.b   ((BATTLE_MESSAGE_OFFSET-$1000000)).w
		bne.s   loc_219A8
		jsr     j_GetModifiedDoubleAttackMode
		cmpi.w  #DOUBLE_ATTACK_MODE_NEVER,d1
		beq.s   loc_219A8
		cmpi.w  #DOUBLE_ATTACK_MODE_HIGH,d1
		bne.s   loc_2198C
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #39,d7
		bra.s   loc_219A8
loc_2198C:
		jsr     j_GetEntity
		tst.w   d1
		beq.s   loc_219B2
		cmpi.b  #ALLY_HANZOU,d1
		beq.s   loc_219B2
		moveq   #7,d1
loc_2199E:
		bsr.w   GenerateRandomNumber0To99
		cmp.w   d1,d7
		bcc.s   loc_219A8
loc_219A6:
		moveq   #2,d2
loc_219A8:
		move.w  d2,((NUMBER_OF_ATTACKS-$1000000)).w
		movem.l (sp)+,d1-d2/d7
		rts
loc_219B2:
		bsr.w   CalculateEffectiveLevel
		add.w   d1,d1
		divu.w  #3,d1
		addq.w  #7,d1
		bra.s   loc_2199E

    ; End of function DetermineDoubleAttack


; =============== S U B R O U T I N E =======================================

; Attack cleanup - clear item dropped, set to single attack if first will kill enemy

sub_219C0:
		clr.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bsr.s   CheckFatalDamage
		bgt.s   @Return
		move.w  #1,((NUMBER_OF_ATTACKS-$1000000)).w
@Return:
		rts

    ; End of function sub_219C0


; =============== S U B R O U T I N E =======================================

LoadBattlespriteData:
		
		andi.w  #1,d3
		bne.s   loc_219DE
		jsr     j_LoadBattlespriteDataWithWeapon
		bra.s   return_219E4
loc_219DE:
		jsr     j_LoadBattlespriteDataWithoutWeapon
return_219E4:
		rts

    ; End of function LoadBattlespriteData


; =============== S U B R O U T I N E =======================================

; Check if damage will defeat target

CheckFatalDamage:
		
		movem.w d0-d1,-(sp)
		move.w  d1,d0
		jsr     j_GetCurrentHpForCombatant
		cmp.w   ((word_FFCB58-$1000000)).w,d1
		movem.w (sp)+,d0-d1
		rts

    ; End of function CheckFatalDamage


; =============== S U B R O U T I N E =======================================

; Check if caster is under dispel status
; 
; Out: CCR = Carry-bit set if true

CheckDispel:
		movem.w d1,-(sp)
		tst.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		beq.s   @Skip
		jsr     j_GetStatusEffectsForCombatant
		andi.w  #STATUSEFFECT_DISPEL,d1
		beq.s   @Skip
		ori     #1,ccr
@Skip:
		movem.w (sp)+,d1
		rts

    ; End of function CheckDispel


; =============== S U B R O U T I N E =======================================

sub_21A1C:
		move.w  d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_21A2E
		cmp.b   ((BATTLE_SCENE_ENEMY-$1000000)).w,d0
		bra.s   loc_21A32
loc_21A2E:
		cmp.b   ((BATTLE_SCENE_ALLY-$1000000)).w,d0
loc_21A32:
		beq.s   loc_21A3A
		move.w  d0,d1
		bsr.w   sub_2154C       
loc_21A3A:
		move.w  (sp)+,d1
		rts

    ; End of function sub_21A1C


; =============== S U B R O U T I N E =======================================

MirrorSpellAnimationIfEnemy:
		
		ext.w   d4
		blt.s   @Return
		bsr.w   IsEnemy         
		bge.s   @Return
		eori.w  #1,d4
@Return:
		rts

    ; End of function MirrorSpellAnimationIfEnemy


; =============== S U B R O U T I N E =======================================

; Carry-bit set if paralysis occurs

DetermineCurseParalysis:
		
		movem.l d7,-(sp)
		move.b  ((CURSED_ITEMS_SETTINGS-$1000000)).w,d7
		btst    #0,d7
		beq.s   @Skip
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to be paralyzed
		bcc.s   @Skip
		move.w  #488,d7         ; "A curse! [Name]'s body[Line]suddenly goes numb."
		move.w  #$F,(a2)+
		move.w  d7,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		addq.l  #4,a2
		ori     #1,ccr
@Skip:
		movem.l (sp)+,d7
		rts

    ; End of function DetermineCurseParalysis


; =============== S U B R O U T I N E =======================================

DetermineCurseDamage:
		
		movem.l d1/d3-d7,-(sp)
		btst    #1,((CURSED_ITEMS_SETTINGS-$1000000)).w
		beq.s   @Skip
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #50,d7          ; 50% chance to receive curse damage
		bcc.s   @Skip
		move.w  ((EFFECT_HP_CHANGE-$1000000)).w,d3
		bge.s   @Skip
		asr.w   #3,d3           ; curse damage = inflicted damage divided by 8
		clr.w   d4
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d5
		clr.w   d6
		bsr.w   WriteBattlesceneCommand
		neg.w   d3
		ext.l   d3
		move.w  #489,d7         ; "A curse! [Name] suffers[Line][Num] points of damage."
		move.w  #15,(a2)+
		move.w  d7,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		move.l  d3,(a2)+
@Skip:
		movem.l (sp)+,d1/d3-d7
		rts

    ; End of function DetermineCurseDamage


; =============== S U B R O U T I N E =======================================

nullsub_21AC8:
		
		rts

    ; End of function nullsub_21AC8


; =============== S U B R O U T I N E =======================================

sub_21ACA:
		movem.l d1/d3-d7,-(sp)
		move.b  ((byte_FFCB6C-$1000000)).w,d4
		beq.s   loc_21AE8
		clr.w   d3
		ext.w   d4
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d5
		move.w  #1,d6
		bsr.w   WriteBattlesceneCommand
loc_21AE8:
		movem.l (sp)+,d1/d3-d7
		rts

    ; End of function sub_21ACA

