
; ASM FILE code\gameflow\battle\battleactionsengine.asm :
; 0x20A04..0x21520 : Battle actions engine
table_EffectData:
		incbin "data/stats/effects/effect00.bin"
		dc.w effect_PhysicalAttack-StartBattleaction
		incbin "data/stats/effects/effect01.bin"
		dc.w effect_DoomBlade-StartBattleaction
		incbin "data/stats/effects/effect02.bin"
		dc.w effect_PhysicalAttack-StartBattleaction
		incbin "data/stats/effects/effect03.bin"
		dc.w effect_AbsorbMp-StartBattleaction
		incbin "data/stats/effects/effect04.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect05.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect06.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect07.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect08.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect09.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect10.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect11.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect12.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect13.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect14.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect15.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect16.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect17.bin"
		dc.w EffectRoutine_Antidote-StartBattleaction
		incbin "data/stats/effects/effect18.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect19.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect20.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect21.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect22.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect23.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect24.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect25.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect26.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect27.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect28.bin"
		dc.w effect_Detox-StartBattleaction
		incbin "data/stats/effects/effect29.bin"
		dc.w effect_Detox-StartBattleaction
		incbin "data/stats/effects/effect30.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect31.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect32.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect33.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect34.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect35.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect36.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect37.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect38.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect39.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect40.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect41.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect42.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect43.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect44.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect45.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect46.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect47.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect48.bin"
		dc.w effect_Desoul-StartBattleaction
		incbin "data/stats/effects/effect49.bin"
		dc.w effect_Desoul-StartBattleaction
		incbin "data/stats/effects/effect50.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect51.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect52.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect53.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect54.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect55.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect56.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect57.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect58.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction

; =============== S U B R O U T I N E =======================================

; Effect Handler (calls 20C1C) -- Laser Eye range routine

DetermineLaserEyeAction:
		
		movem.l d1-d2/a0,-(sp)
		move.b  ((LASER_EYE_COUNTDOWN-$1000000)).w,d2
		cmpi.b  #5,d2
		blt.s   @Countdown
		bsr.w   StartBattleaction
		clr.b   ((LASER_EYE_COUNTDOWN-$1000000)).w
		bra.s   @Done
@Countdown:
		moveq   #-1,d1
		bsr.w   LoadBattlesceneActors
		lea     ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,a0
		andi.w  #$FF,d2
		addi.w  #$206,d2
		move.w  d2,(a0)
		bsr.w   CopyBattlesceneData
		bsr.s   InitializeBattlesceneAftermath
		bsr.w   sub_21620       
		addq.b  #1,((LASER_EYE_COUNTDOWN-$1000000)).w
@Done:
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function DetermineLaserEyeAction


; =============== S U B R O U T I N E =======================================

; In: d5.b = battleaction index

StartBattleaction:
		
		movem.l d5/a0-a2,-(sp)
		bsr.s   InitializeBattlesceneAftermath
		lea     table_EffectData(pc), a0
		andi.w  #$FF,d5
		asl.w   #3,d5
		adda.w  d5,a0
		move.w  EFFECTDEF_OFFSET_ROUTINE(a0),d5
		lea     StartBattleaction(pc,d5.w),a1
		bsr.w   ExecuteBattleaction
		movem.l (sp)+,d5/a0-a2
		rts

    ; End of function StartBattleaction


; =============== S U B R O U T I N E =======================================

; Clear experience, coins, and dropped items values.

InitializeBattlesceneAftermath:
		
		clr.w   ((EXPERIENCE_TO_GAIN-$1000000)).w
		clr.w   ((COINS_TO_GAIN-$1000000)).w
		move.w  #-1,((ITEM_DROPPED_FLAG-$1000000)).w
		rts

    ; End of function InitializeBattlesceneAftermath


; =============== S U B R O U T I N E =======================================

; In: A0 = effect data address
;     D0 = caster index
;     D1 = target index

EffectRoutine_Heal:
		
		movem.l d2-d3,-(sp)
		bsr.w   IsSpellNullified
		bcs.s   loc_20CAA
		movem.w d0-d1,-(sp)
		move.w  d1,d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d2
		jsr     j_GetCurrentHpForCombatant
		sub.w   d1,d2
		movem.w (sp)+,d0-d1
		move.b  EFFECTDEF_OFFSET_POWER(a0),d3
		cmpi.b  #-1,d3
		bne.s   loc_20C82
		move.w  d2,d3
		bra.s   loc_20C88
loc_20C82:
		ext.w   d3
		bsr.w   ApplyDamageSpread
loc_20C88:
		cmp.w   d3,d2
		bge.s   loc_20C8E
		move.w  d2,d3
loc_20C8E:
		move.w  #1,((EFFECT_REACTION-$1000000)).w
		move.w  d3,((EFFECT_HP_CHANGE-$1000000)).w
		move.w  #454,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] regains [Num] hit[Line]points."
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		ext.l   d3
		move.l  d3,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		bsr.s   CalculateHealingExperience
loc_20CAA:
		movem.l (sp)+,d2-d3
		rts

    ; End of function EffectRoutine_Heal


; =============== S U B R O U T I N E =======================================

CalculateHealingExperience:
		
		movem.l d0-d3,-(sp)
		bsr.s   IsHealerClass   
		bne.s   loc_20CDA       ; skip if caster is not a healer class
		move.w  d1,d0
		jsr     j_GetMaxHpForCombatant
		tst.w   d3
		beq.s   loc_20CDA       ; skip if healing amount is 0
		muls.w  #EXPERIENCE_HEAL_CAP,d3; max EXP per target = 20
		divs.w  d1,d3
		addq.w  #1,d3
		cmpi.w  #EXPERIENCE_PER_HEAL,d3
		bge.s   loc_20CD6
		move.w  #EXPERIENCE_PER_HEAL,d3
loc_20CD6:
		add.w   d3,((EXPERIENCE_TO_GAIN-$1000000)).w
loc_20CDA:
		bsr.s   CapExperienceToGain
		movem.l (sp)+,d0-d3
		rts

    ; End of function CalculateHealingExperience


; =============== S U B R O U T I N E =======================================

; Check if caster D0 is a healer class -> CCR zero-bit set if true

IsHealerClass:
		
		movem.l d1,-(sp)
		jsr     j_GetClassForCombatant
		cmpi.b  #CLASS_HEAL,d1
		beq.s   @Done
		cmpi.b  #CLASS_VICR,d1
		beq.s   @Done
		cmpi.b  #CLASS_MONK,d1
		beq.s   @Done
		cmpi.b  #CLASS_MSMK,d1
@Done:
		movem.l (sp)+,d1
		rts

    ; End of function IsHealerClass


; =============== S U B R O U T I N E =======================================

CapExperienceToGain:
		
		cmpi.w  #EXPERIENCE_ACTION_CAP,((EXPERIENCE_TO_GAIN-$1000000)).w
		bcs.s   @Return
		move.w  #EXPERIENCE_ACTION_CAP,((EXPERIENCE_TO_GAIN-$1000000)).w
@Return:
		rts

    ; End of function CapExperienceToGain


; =============== S U B R O U T I N E =======================================

EffectRoutine_Antidote:
		
		movem.l d2-d3,-(sp)
		bra.s   loc_20D28       

    ; End of function EffectRoutine_Antidote


; =============== S U B R O U T I N E =======================================

effect_Detox:
		movem.l d2-d3,-(sp)
		bsr.w   IsSpellNullified
		bcs.s   loc_20D76
loc_20D28:
		move.w  ((EFFECT_STATUS_CHANGE-$1000000)).w,d3
						; Cure poison
		tst.b   EFFECTDEF_OFFSET_STATUS(a0)
		bne.s   loc_20D3E
		andi.w  #(STATUSEFFECT_MASK-STATUSEFFECT_POISON),((EFFECT_STATUS_CHANGE-$1000000)).w
		move.w  #456,d2         ; "All traces of poison are[Line]purged from [Name]."
		bra.s   loc_20D48
loc_20D3E:
		andi.w  #STATUSEFFECT_QUICK|STATUSEFFECT_BOOST|STATUSEFFECT_SHIELD,((EFFECT_STATUS_CHANGE-$1000000)).w
		move.w  #457,d2         ; "[Name] recovers."
loc_20D48:
		cmp.w   ((EFFECT_STATUS_CHANGE-$1000000)).w,d3
		bne.s   loc_20D52
		move.w  #465,d2         ; "But nothing happens."
loc_20D52:
		bsr.s   IsHealerClass   
		bne.s   loc_20D68
		cmp.w   ((EFFECT_STATUS_CHANGE-$1000000)).w,d3
		bne.s   loc_20D62
		addq.w  #1,((EXPERIENCE_TO_GAIN-$1000000)).w
		bra.s   loc_20D68
loc_20D62:
		addi.w  #EXPERIENCE_PER_HEAL,((EXPERIENCE_TO_GAIN-$1000000)).w
loc_20D68:
		move.w  #1,((EFFECT_REACTION-$1000000)).w
		move.w  d2,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
loc_20D76:
		movem.l (sp)+,d2-d3
		rts

    ; End of function effect_Detox


; =============== S U B R O U T I N E =======================================

effect_PhysicalAttack:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsEnemy         
		blt.s   loc_20D8E       
		move.w  #443,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "Inflicts [Num] points of damage on[Line]the [Name]."
		bra.s   loc_20D94
loc_20D8E:
		move.w  #444,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] suffers [Num][Line]points of damage."
loc_20D94:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		bsr.w   DetermineEvade  
		bcs.s   loc_20DE2
		clr.w   ((DAMAGE_MULTIPLIER-$1000000)).w
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		beq.s   loc_20DB4
		move.b  ((DEBUG_SPECIAL_ATTACK-$1000000)).w,((SPECIAL_ATTACK_INDEX-$1000000)).w
		move.b  #100,((SPECIAL_ATTACK_PERCENT-$1000000)).w
loc_20DB4:
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d2
		bsr.w   GenerateRandomNumber0To99
		cmp.b   ((SPECIAL_ATTACK_PERCENT-$1000000)).w,d7
		bge.s   loc_20DC8
		bsr.w   JumpToSpecialAttackRoutine
		bra.s   loc_20DCC
loc_20DC8:
		bsr.w   CalculateDamage 
loc_20DCC:
		bsr.w   HandleTargetDefeat
		ext.l   d3
		beq.s   loc_20DE2
		move.l  d3,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		neg.w   d3
		move.w  d3,((EFFECT_HP_CHANGE-$1000000)).w
		clr.w   ((EFFECT_REACTION-$1000000)).w
loc_20DE2:
		tst.w   ((EXPERIENCE_TO_GAIN-$1000000)).w
		bne.s   loc_20DEE
		move.w  #1,((EXPERIENCE_TO_GAIN-$1000000)).w
loc_20DEE:
		movem.l (sp)+,d2-d7
		rts

    ; End of function effect_PhysicalAttack


; =============== S U B R O U T I N E =======================================

; In: D3 = calculated damage

HandleTargetDefeat:
		
		movem.l d0-d6,-(sp)
		move.w  ((word_FFCB58-$1000000)).w,d4
		add.w   d3,((word_FFCB58-$1000000)).w
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d5
		jsr     j_GetCurrentHpForCombatant
		move.w  d1,d6
		movem.w (sp)+,d0-d1
		bsr.s   CalculateKillExperience
		bsr.w   CheckFatalDamage
		bgt.s   loc_20E38
		add.w   d2,((EXPERIENCE_TO_GAIN-$1000000)).w
		move.w  d6,d3
		sub.w   d4,d3
		bsr.w   LoadCoinsToGain 
		bsr.w   LoadItemToDrop  
		bsr.w   DetermineDarkDragonFinisher
		bsr.s   LoadDeathMessage
loc_20E38:
		muls.w  d3,d2
		divs.w  d5,d2
		add.w   d2,((EXPERIENCE_TO_GAIN-$1000000)).w
		bsr.w   CapExperienceToGain
		movem.l (sp)+,d0-d6
		rts

    ; End of function HandleTargetDefeat


; =============== S U B R O U T I N E =======================================

; Load death message depending on if target is force or enemy

LoadDeathMessage:
		
		move.l  d0,-(sp)
		move.w  d1,d0
		bsr.w   IsEnemy         
		blt.s   loc_20E5C       
		move.w  #451,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
						; "[Name] can fight[Line]no longer."
		bra.s   loc_20E62
loc_20E5C:
		move.w  #450,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
						; "[Name] is defeated!"
loc_20E62:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_2-$1000000)).w
		move.l  (sp)+,d0
		rts

    ; End of function LoadDeathMessage


; =============== S U B R O U T I N E =======================================

; Get experience for killing enemy based on level difference -> D2

CalculateKillExperience:
		
		move.l  d1,-(sp)
		bsr.w   CalculateLevelDifference
		cmpi.w  #-3,d1
		bge.s   loc_20E7A
		moveq   #-3,d1
		bra.s   loc_20E82
loc_20E7A:
		cmpi.w  #5,d1
		ble.s   loc_20E82
		moveq   #5,d1
loc_20E82:
		clr.w   d2
		move.b  table_KillExperienceGains(pc,d1.w),d2
		move.l  (sp)+,d1
		rts

    ; End of function CalculateKillExperience

		dc.b 48                 ; 3 or more levels below target
		dc.b 32
		dc.b 24
table_KillExperienceGains:
		dc.b 16                 ; same level as target
		dc.b 10
		dc.b 6
		dc.b 4
		dc.b 2
		dc.b 1                  ; 5 or more levels above target
		dc.b $FF

; =============== S U B R O U T I N E =======================================

; Load coins for killing enemy

LoadCoinsToGain:
		
		movem.l d0-d1/a0-a1,-(sp)
		move.b  d1,d0
		bsr.w   IsEnemy         
		bge.s   loc_20EB4
		jsr     j_GetEntity
		move.b  d1,d0
		bsr.w   GetEnemyEntryAddress
		move.w  (a1),d0
		add.w   d0,((COINS_TO_GAIN-$1000000)).w
loc_20EB4:
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function LoadCoinsToGain


; =============== S U B R O U T I N E =======================================

; Give Jogurt Ring if Jogurt kills an enemy and it hasn't been given yet

LoadItemToDrop:
		
		movem.l d0-d2,-(sp)
		clr.w   d2
		move.b  d1,d2
		jsr     j_GetEntity
		cmpi.b  #ALLY_JOGURT,d1
		bne.s   loc_20EDE
		move.w  #ITEM_YOGURT_RING,d1
		jsr     j_IsItemInDealsOrHeldByForce
		bcc.s   loc_20EDE
		move.w  d0,d2
		bra.s   loc_20EE8
loc_20EDE:
		move.b  d2,d0
		jsr     j_FindItemToDrop
		blt.s   loc_20EF0
loc_20EE8:
		move.w  d2,((ITEM_DROPPED_FLAG-$1000000)).w
		move.w  d1,((ITEM_TO_DROP-$1000000)).w
loc_20EF0:
		movem.l (sp)+,d0-d2
		rts

    ; End of function LoadItemToDrop


; =============== S U B R O U T I N E =======================================

effect_DoomBlade:
		
		movem.l d2-d7,-(sp)
		bsr.w   DetermineEvade  
		bcs.w   loc_20DE2
		clr.w   ((DAMAGE_MULTIPLIER-$1000000)).w
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d2
		bsr.w   specialAttack_InstantDeath
		bra.w   loc_20DCC

    ; End of function effect_DoomBlade


; =============== S U B R O U T I N E =======================================

effect_UnnullifiableMagicAttack:
		
		movem.l d2-d7,-(sp)
		bra.w   loc_20F26

    ; End of function effect_UnnullifiableMagicAttack


; =============== S U B R O U T I N E =======================================

effect_MagicAttack:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsSpellNullified
		bcs.w   loc_20DE2
loc_20F26:
		bsr.w   IsEnemy         
		blt.s   loc_20F34       
		move.w  #443,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "Inflicts [Num] points of damage on[Line]the [Name]."
		bra.s   loc_20F3A       
loc_20F34:
		move.w  #444,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] suffers [Num][Line]points of damage."
loc_20F3A:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
						; load target's name index
		clr.w   ((DAMAGE_MULTIPLIER-$1000000)).w
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d2
		andi.b  #7,d2
		clr.w   d3
		move.b  EFFECTDEF_OFFSET_POWER(a0),d3
		bsr.w   ApplyDamageSpread
		bsr.w   ApplyResistance 
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d4
		andi.w  #$18,d4
		asr.w   #2,d4
		move.w  table_MagicChanceToCriticalPercents(pc,d4.w),d4
		bsr.w   GenerateRandomNumber0To99
		cmp.w   d4,d7
		bcc.s   loc_20F74
		move.w  #3,((DAMAGE_MULTIPLIER-$1000000)).w
loc_20F74:
		bsr.w   ApplyCriticalDamage
		bra.w   loc_20DCC

    ; End of function effect_MagicAttack

table_MagicChanceToCriticalPercents:
		dc.w 3
		dc.w 4
		dc.w 6

; =============== S U B R O U T I N E =======================================

EffectRoutine_InflictStatus:
		
		movem.l d2-d7,-(sp)
		bra.s   loc_20F94       

    ; End of function EffectRoutine_InflictStatus


; =============== S U B R O U T I N E =======================================

effect_InflictStatusNullifiableByShield:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsSpellNullified
		bcs.w   loc_20DE2
loc_20F94:
		clr.w   d2              ; default to "Blaze" resistance
		cmpi.b  #EFFECT_STATUS_SLEEP,EFFECTDEF_OFFSET_STATUS(a0)
		bne.s   loc_20FA0
		moveq   #RESISTANCE_FIRE_WEAKNESS,d2
loc_20FA0:
		tst.b   EFFECTDEF_OFFSET_CAN_FAIL(a0)
		beq.s   loc_20FB0
		bsr.w   DetermineEffectFailure
		bcc.s   loc_20FB0
		bsr.s   LoadEffectFailureMessage
		bra.s   loc_20FB6
loc_20FB0:
		move.b  EFFECTDEF_OFFSET_STATUS(a0),d2
		bsr.s   LoadEffectSuccessMessage
loc_20FB6:
		bra.w   loc_20DE2

    ; End of function effect_InflictStatusNullifiableByShield


; =============== S U B R O U T I N E =======================================

LoadEffectFailureMessage:
		
		move.w  d0,-(sp)
		tst.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		beq.s   loc_20FC8       
		move.w  #452,d0         ; "But the spell doesn't work."
		bra.s   loc_20FCC
loc_20FC8:
		move.w  #465,d0         ; "But nothing happens."
loc_20FCC:
		move.w  d0,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		move.w  (sp)+,d0
		rts

    ; End of function LoadEffectFailureMessage


; =============== S U B R O U T I N E =======================================

; In: D1 = target index
;     D2 = status effect index

LoadEffectSuccessMessage:
		
		movem.l d0/d2/d4/a0,-(sp)
		clr.w   d4
		move.b  d2,d4
		asl.w   #2,d4
		lea     table_StatusEffectMessageParameters(pc,d4.w),a0
		clr.w   d0
		move.b  d1,d0
		move.b  (a0)+,d4
		ext.w   d4
		blt.s   loc_20FF0
		addi.w  #471,d4         ; "[Name]'s speed increases[Line]by [Num]. Defense level[Line]increases by [Num]."
loc_20FF0:
		move.w  d4,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
		move.w  d0,((BATTLE_MESSAGE_ARG_NAME_2-$1000000)).w
		moveq   #0,d4
		move.b  (a0)+,d4
		move.l  d4,((BATTLE_MESSAGE_ARG_NUMBER_2-$1000000)).w
		move.w  (a0),d4
		or.w    d4,((EFFECT_STATUS_CHANGE-$1000000)).w
		movem.l (sp)+,d0/d2/d4/a0
		rts

    ; End of function LoadEffectSuccessMessage

table_StatusEffectMessageParameters:
		; 4 bytes per entry : 
		dc.b 0                  ; Quick
		dc.b 10
		dc.w STATUSEFFECT_QUICK
		dc.b 1                  ; Slow
		dc.b 10
		dc.w STATUSEFFECT_SLOW
		dc.b 2                  ; Boost
		dc.b 15
		dc.w STATUSEFFECT_BOOST
		dc.b 3                  ; Dispel
		dc.b 0
		dc.w STATUSEFFECT_DISPEL
		dc.b 4                  ; Shield
		dc.b 0
		dc.w STATUSEFFECT_SHIELD
		dc.b 5                  ; Muddle
		dc.b 0
		dc.w STATUSEFFECT_MUDDLE
		dc.b 6                  ; Sleep
		dc.b 0
		dc.w STATUSEFFECT_SLEEP
		dc.b 7                  ; Poison
		dc.b 0
		dc.w STATUSEFFECT_POISON
		dc.b 8                  ; Curse
		dc.b 0
		dc.w STATUSEFFECT_CURSE
		dc.b 9                  ; Jogurt
		dc.b 0
		dc.w STATUSEFFECT_JOGURT

; =============== S U B R O U T I N E =======================================

effect_Desoul:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsSpellNullified
		bcs.w   loc_20DE2
		bsr.w   IsEnemy         
		blt.s   loc_2104E       
		move.w  #458,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] can no longer fight."
		bra.s   loc_21054
loc_2104E:
		move.w  #459,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] can no longer fight."
loc_21054:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		bsr.w   IsVulnerableToInstantDeath
		beq.w   loc_21068
		moveq   #RESISTANCE_FIRE_WEAKNESS,d2
		bsr.w   DetermineEffectFailure
		bcc.s   loc_21070       
loc_21068:
		bsr.w   LoadEffectFailureMessage
		bra.w   loc_20DE2
loc_21070:
		move.w  #999,d3         ; inflict 999 points of damage
		bra.w   loc_20DCC

    ; End of function effect_Desoul


; =============== S U B R O U T I N E =======================================

effect_AbsorbMp:
		
		movem.l d6-d7,-(sp)
		move.w  #469,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "The [Item] makes a[Line]strange sound."
		move.w  ((SELECTED_ITEM_ENTRY-$1000000)).w,d6
		move.w  d6,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetCurrentMpForCombatant
		move.w  #3,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #2,d7
		cmp.w   d1,d7
		ble.s   loc_210A8
		move.w  d1,d7
loc_210A8:
		ext.l   d7
		movem.w (sp)+,d0-d1
		tst.l   d7
		beq.s   loc_210C6
		move.w  #470,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] loses [Num] magic[Line]points."
		andi.w  #$FF,d0
		move.w  d0,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  d7,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		bra.s   loc_210CA
loc_210C6:
		bsr.w   LoadEffectFailureMessage
loc_210CA:
		add.b   d7,((byte_FFCB6C-$1000000)).w
		neg.w   d7
		move.w  d7,((EFFECT_MP_CHANGE-$1000000)).w
		movem.l (sp)+,d6-d7
		rts

    ; End of function effect_AbsorbMp


; =============== S U B R O U T I N E =======================================

effect_IncreaseStat:
		
		movem.l d0-d1,-(sp)
		move.b  d1,d0
		clr.w   d1
		move.b  2(a0),d1
		bsr.w   IncreaseStatOnItemUse
		movem.l (sp)+,d0-d1
		rts

    ; End of function effect_IncreaseStat


; =============== S U B R O U T I N E =======================================

; Calculate physical attack damage -> D3

CalculateDamage:
		
		movem.l d0-d1,-(sp)
		move.w  d1,-(sp)
		jsr     j_GetModifiedAttack
		move.w  d1,d3           ; D3 = attacker's Attack
		move.w  (sp)+,d1
		move.w  d0,-(sp)
		move.b  d1,d0           ; D0 = defender index
		jsr     j_GetModifiedDefense
		sub.w   d1,d3           ; D3 = (Defense - Attack)
		move.w  (sp)+,d0
		bsr.w   ApplyLandEffect 
		bsr.w   ApplyResistance 
		bsr.s   ApplyCriticalDamage
		bsr.s   ApplyDamageSpread
		tst.w   d3
		bgt.s   @Continue
		move.w  #1,d3           ; minimum 1 point of damage
@Continue:
		movem.l (sp)+,d0-d1
		rts

    ; End of function CalculateDamage


; =============== S U B R O U T I N E =======================================

; Determine critical hit, apply damage multiplier -> D3

ApplyCriticalDamage:
		
		movem.l d1/d7,-(sp)
		jsr     j_GetModifiedCritical
		bsr.w   GenerateRandomNumber0To99
		cmp.w   d1,d7
		bge.s   @Failure
		move.w  #4,((DAMAGE_MULTIPLIER-$1000000)).w
@Failure:
		move.w  ((DAMAGE_MULTIPLIER-$1000000)).w,d1
		beq.s   @Skip           ; skip if damage multiplier = 0
		muls.w  d1,d3
		asr.w   #1,d3
		bsr.s   LoadCriticalHitMessage
@Skip:
		movem.l (sp)+,d1/d7
		rts

    ; End of function ApplyCriticalDamage


; =============== S U B R O U T I N E =======================================

LoadCriticalHitMessage:
		
		bsr.w   IsEnemy         
		blt.s   @Enemy
		move.w  #$3E,((word_FFA9CC-$1000000)).w 
		move.w  #447,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "A deadly attack inflicts[Line][Num] points of damage[Line]on [Name]."
		bra.s   @Continue
@Enemy:
		move.w  #$3E,((word_FFA9CC-$1000000)).w 
		move.w  #448,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "A stunning attack! [Name][Line]suffers [Num] points[Line]of damage."
@Continue:
		tst.b   ((BATTLE_ANIMATION_TYPE-$1000000)).w
		bne.s   @Return
		move.b  #3,((BATTLE_ANIMATION_TYPE-$1000000)).w
@Return:
		rts

    ; End of function LoadCriticalHitMessage


; =============== S U B R O U T I N E =======================================

; Apply damage spread to D3

ApplyDamageSpread:
		
		movem.l d5-d7,-(sp)
		moveq   #21,d6
		jsr     (j_GenerateRandomNumber).l
		move.w  d7,d5
		jsr     (j_GenerateRandomNumber).l
		add.w   d5,d7
		asr.w   #1,d7
		addi.w  #80,d7
		muls.w  d7,d3
		divs.w  #100,d3
		movem.l (sp)+,d5-d7
		rts

    ; End of function ApplyDamageSpread


; =============== S U B R O U T I N E =======================================

; Apply land effect to damage D3

ApplyLandEffect:
		
		movem.l d0-d2/a0,-(sp)
		move.b  d1,d0           ; land effect bug! should move defender index to D1 before calling
		jsr     j_GetLandEffectForCombatant
		move.w  #100,d2
		sub.w   d1,d2           ; subtract LE from 100 and use as %
		muls.w  d2,d3
		divs.w  #100,d3
		movem.l (sp)+,d0-d2/a0
		rts

    ; End of function ApplyLandEffect


; =============== S U B R O U T I N E =======================================

; Apply resistance to element D2 unto damage D3

ApplyResistance:
		
		move.l  d2,-(sp)
		cmpi.b  #EFFECT_ELEMENT_NONE,d2
		bne.s   loc_211D2
		clr.w   d2
		bra.s   loc_211D4
loc_211D2:
		bsr.s   GetTargetCombatantResistance
loc_211D4:
		move.b  table_DamageResistancePercents(pc,d2.w),d2
		muls.w  d2,d3
		divs.w  #100,d3
		move.l  (sp)+,d2
		rts

    ; End of function ApplyResistance

table_DamageResistancePercents:
		dc.b 100
		dc.b 75
		dc.b 50
		dc.b 125

; =============== S U B R O U T I N E =======================================

; Get combatant D1 resistance to element D2 -> D2

GetTargetCombatantResistance:
		
		movem.l d0-d1,-(sp)
		move.b  d1,d0
		move.b  d2,d1
		jsr     j_GetResistance
		ext.w   d2
		movem.l (sp)+,d0-d1
		rts

    ; End of function GetTargetCombatantResistance


; =============== S U B R O U T I N E =======================================

; Check if spell is nullified by magic curtain

IsSpellNullified:
		
		movem.l d0-d1,-(sp)
		tst.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		beq.s   loc_2121E       ; skip if spell costs 0 MP to cast
		move.b  d1,d0
		jsr     j_GetStatusEffectsForCombatant
		andi.w  #STATUSEFFECT_SHIELD,d1
		beq.s   loc_2121E
		move.w  #453,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "But the spell is nullified by[Line]the magic curtain."
		ori     #1,ccr
loc_2121E:
		movem.l (sp)+,d0-d1
		rts

    ; End of function IsSpellNullified


; =============== S U B R O U T I N E =======================================

; Determine whether targeted combatant D1 evades the attack
; 
;       In: D0 = attacker index
;           D1 = target index
; 
;       Out: CCR carry-bit set when successful

DetermineEvade:
		
		movem.l d1-d3/d7,-(sp)
		bsr.s   IsAbleToEvade   
		bcc.s   @Failure
		clr.w   d3
		move.b  d1,d3           ; d3.b = copy of target index
		move.w  #7,d2
		bsr.s   GetTargetCombatantResistance
		move.b  table_ChanceToEvadePercents(pc,d2.w),d2
						; get percent chance to evade according to resistance setting, and continue if != 0
		bne.s   @Continue
		moveq   #25,d2          ; 25% chance to evade if attacker is muddled
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_MUDDLE,d1
						; BUG : This instruction is causing the chance to evade when attacker is muddled to be applied only every other turn
                ;andi.w  #STATUSEFFECT_COUNTER_MUDDLE,d1    ; <- suggested fix to the aforementioned bug
                
		bne.s   @Continue
		moveq   #3,d2           ; 3% chance to evade under normal circumstances
@Continue:
		bsr.s   GenerateRandomNumber0To99
		cmp.b   d2,d7
		bge.s   @Failure        ; branch if failed the evade roll
		move.w  #446,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] quickly evades."
		move.w  d3,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		ori     #1,ccr
@Failure:
		movem.l (sp)+,d1-d3/d7
		rts

    ; End of function DetermineEvade

table_ChanceToEvadePercents:
		dc.b 0
		dc.b 25
		dc.b 50
		dc.b 0

; =============== S U B R O U T I N E =======================================

; Check if combatant D1 is able to evade attacks -> CCR carry-bit set if true

IsAbleToEvade:
		
		movem.l d0-d1/a0,-(sp)
		move.b  d1,d0
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_SLEEP,d1
		bne.s   @NotAbleToEvade ; unable to evade when sleeping
		jsr     j_GetClassForCombatant
		lea     table_UnableToEvadeClasses(pc), a0
@Loop:
		move.b  (a0)+,d0
		cmpi.b  #-1,d0
		beq.s   @Break          ; break out of loop when end of table is reached
		cmp.b   d0,d1
		beq.s   @NotAbleToEvade
		bra.s   @Loop
@Break:
		ori     #1,ccr
@Done:
		movem.l (sp)+,d0-d1/a0
		rts
@NotAbleToEvade:
		
		tst.w   d0
		bra.s   @Done

    ; End of function IsAbleToEvade

table_UnableToEvadeClasses:
		; List of class indexes which are unable to evade physical attacks, $FF terminated
		dc.b CLASS_LASER_EYE
		dc.b CLASS_DARK_DRAGON_1
		dc.b CLASS_DARK_DRAGON_2
		dc.b -1

; =============== S U B R O U T I N E =======================================

; Generate random number 0 to 99, returned in d7.w

GenerateRandomNumber0To99:
		
		move.l  d6,-(sp)
		move.w  #100,d6
		jsr     (j_GenerateRandomNumber).l
		move.l  (sp)+,d6
		rts

    ; End of function GenerateRandomNumber0To99


; =============== S U B R O U T I N E =======================================

; In: D1 = target index
;     D2 = resistance index
; 
; Out: CCR: carry-bit clear if successful

DetermineEffectFailure:
		
		movem.l d0-d2/d7,-(sp)
		tst.b   ((DEBUG_EFFECT_FAILURE-$1000000)).w
		bne.s   @Skip
		bsr.w   GetTargetCombatantResistance
		move.b  table_StatusEffectResistancePercents(pc,d2.w),d2
		muls.w  #37,d2
		divs.w  #100,d2
		bsr.s   GenerateRandomNumber0To99
		cmp.w   d7,d2
@Skip:
		movem.l (sp)+,d0-d2/d7
		rts

    ; End of function DetermineEffectFailure

table_StatusEffectResistancePercents:
		dc.b 100
		dc.b 50
		dc.b 0
		dc.b 125

; =============== S U B R O U T I N E =======================================

; Get level difference between attacker D0 and target D1 -> D1

CalculateLevelDifference:
		
		movem.w d0/d2,-(sp)
		move.w  d1,-(sp)
		bsr.w   CalculateEffectiveLevel
		move.w  d1,d2           ; D2 = attacker's effective level
		move.w  (sp)+,d0
		bsr.w   CalculateEffectiveLevel
		sub.w   d1,d2
		move.w  d2,d1
		movem.w (sp)+,d0/d2
		rts

    ; End of function CalculateLevelDifference


; =============== S U B R O U T I N E =======================================

; Check if combatant D1 is vulnerable to instant death attacks

IsVulnerableToInstantDeath:
		
		movem.w d2,-(sp)
		moveq   #RESISTANCE_FIRE_WEAKNESS,d2
		bsr.w   GetTargetCombatantResistance
		move.b  table_StatusEffectResistancePercents(pc,d2.w),d2
		movem.w (sp)+,d2
		rts

    ; End of function IsVulnerableToInstantDeath


; =============== S U B R O U T I N E =======================================

JumpToSpecialAttackRoutine:
		
		clr.w   d3
		move.b  ((SPECIAL_ATTACK_INDEX-$1000000)).w,d3
		asl.w   #2,d3
		jsr     bt_SpecialAttacks(pc,d3.w)
		rts

    ; End of function JumpToSpecialAttackRoutine


; =============== S U B R O U T I N E =======================================

bt_SpecialAttacks:
		
		bra.w   specialAttack_150PercentCritical

    ; End of function bt_SpecialAttacks

		bra.w   specialAttack_200PercentCritical
		bra.w   specialAttack_DemonSmile
		bra.w   specialAttack_OminousIncantation
		bra.w   specialAttack_OminousIncantation
		bra.w   specialAttack_InflictPoison
		bra.w   specialAttack_InflictSleep
		bra.w   specialAttack_InflictSleep
		bra.w   *+4

; =============== S U B R O U T I N E =======================================

specialAttack_InstantDeath:
		
		movem.l d2/d7,-(sp)
		bsr.w   IsEnemy         
		blt.s   loc_21352       
		move.w  #443,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "Inflicts [Num] points of damage on[Line]the [Name]."
		bra.s   loc_21358
loc_21352:
		move.w  #444,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] suffers [Num][Line]points of damage."
loc_21358:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		bsr.w   IsVulnerableToInstantDeath
		beq.s   loc_21382
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_21372       
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #6,d7           ; 6% death, or go back to normal attack
		bge.s   loc_21382
loc_21372:
		move.w  #468,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] is killed with a[Line]single blow."
		move.w  #99,d3
		clr.b   ((byte_FFCB6B-$1000000)).w
		bra.s   loc_21386
loc_21382:
		bsr.w   CalculateDamage 
loc_21386:
		movem.l (sp)+,d2/d7
		rts

    ; End of function specialAttack_InstantDeath


; =============== S U B R O U T I N E =======================================

specialAttack_150PercentCritical:
		
		move.l  d7,-(sp)
		move.b  #3,d3
loc_21392:
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_213A2
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to score critical hit
		bge.s   loc_213AA
loc_213A2:
		move.w  d3,((DAMAGE_MULTIPLIER-$1000000)).w
		bsr.w   LoadCriticalHitMessage
loc_213AA:
		bsr.w   CalculateDamage 
		move.l  (sp)+,d7
		rts

    ; End of function specialAttack_150PercentCritical


; =============== S U B R O U T I N E =======================================

specialAttack_200PercentCritical:
		
		move.l  d7,-(sp)
		move.b  #4,d3
		bra.s   loc_21392

    ; End of function specialAttack_200PercentCritical


; =============== S U B R O U T I N E =======================================

specialAttack_DemonSmile:
		
		movem.l d6-d7,-(sp)
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetCurrentMpForCombatant
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #5,d7
		cmp.w   d1,d7
		ble.s   loc_213DA
		move.w  d1,d7
loc_213DA:
		ext.l   d7
		movem.w (sp)+,d0-d1
		move.w  #$3F,((word_FFA9CC-$1000000)).w 
		move.w  #463,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] uses the Demon's[Line]Smile!"
		andi.w  #$FF,d0
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		tst.l   d7
		beq.s   loc_2140C       
		move.w  #464,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Num] magic points are[Line]stolen from [Name]."
		andi.w  #$FF,d1
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  d7,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		bra.s   loc_21412
loc_2140C:
		move.w  #465,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "But nothing happens."
loc_21412:
		add.b   d7,((byte_FFCB6C-$1000000)).w
		neg.w   d7
		move.w  d7,((EFFECT_MP_CHANGE-$1000000)).w
		clr.w   d3
		movem.l (sp)+,d6-d7
		rts

    ; End of function specialAttack_DemonSmile


; =============== S U B R O U T I N E =======================================

specialAttack_OminousIncantation:
		
		movem.l d6-d7,-(sp)
		move.w  #8,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #8,d7
		ext.l   d7
		move.w  #$3F,((word_FFA9CC-$1000000)).w 
		move.w  #466,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] whispers an[Line]ominous incantation!"
		andi.w  #$FF,d0
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #467,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Num] hit points are stolen[Line]from [Name]."
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  d7,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		move.w  d7,d3
		movem.l (sp)+,d6-d7
		rts

    ; End of function specialAttack_OminousIncantation


; =============== S U B R O U T I N E =======================================

specialAttack_InflictPoison:
		
		movem.l d2/d7,-(sp)
		bsr.w   CalculateDamage 
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_21478
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to inflict poison
		bge.s   loc_2147E
loc_21478:
		moveq   #EFFECT_STATUS_POISON,d2
		bsr.w   LoadEffectSuccessMessage
loc_2147E:
		movem.l (sp)+,d2/d7
		rts

    ; End of function specialAttack_InflictPoison


; =============== S U B R O U T I N E =======================================

specialAttack_InflictSleep:
		
		movem.l d2/d7,-(sp)
		bsr.w   CalculateDamage 
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_2149C
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to inflict sleep
		bge.s   loc_214A2
loc_2149C:
		moveq   #EFFECT_STATUS_SLEEP,d2
		bsr.w   LoadEffectSuccessMessage
loc_214A2:
		movem.l (sp)+,d2/d7
		rts

    ; End of function specialAttack_InflictSleep


; =============== S U B R O U T I N E =======================================

; Perform a special animation if Max kills the last Dark Dragon head with the Chaos Breaker.

DetermineDarkDragonFinisher:
		
		movem.l d0-d4,-(sp)
		move.b  d1,d4           ; d4.w = copy of target index
		jsr     j_GetClassForCombatant
		cmpi.b  #CLASS_HERO,d1
		bne.s   loc_2151A
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItemForCombatant
		bcs.s   loc_2151A
		cmpi.b  #ITEM_CHAOS_BREAKER,d2
		bne.s   loc_2151A
		move.b  d4,d0
		jsr     j_GetClassForCombatant; get class for target
		cmpi.b  #CLASS_DARK_DRAGON_1,d1
		beq.s   loc_214E0
		cmpi.b  #CLASS_DARK_DRAGON_2,d1
		bne.s   loc_2151A
loc_214E0:
		clr.w   d2
		move.b  #128,d0
		jsr     j_GetCurrentHp
		tst.w   d1
		beq.s   loc_214F2
		addq.w  #1,d2
loc_214F2:
		addq.b  #1,d0
		jsr     j_GetCurrentHp
		tst.w   d1
		beq.s   loc_21500
		addq.w  #1,d2
loc_21500:
		addq.b  #1,d0
		jsr     j_GetCurrentHp
		tst.w   d1
		beq.s   loc_2150E
		addq.w  #1,d2
loc_2150E:
		cmpi.b  #1,d2
		bgt.s   loc_2151A
		move.b  #4,((BATTLE_ANIMATION_TYPE-$1000000)).w
loc_2151A:
		movem.l (sp)+,d0-d4
		rts

    ; End of function DetermineDarkDragonFinisher

