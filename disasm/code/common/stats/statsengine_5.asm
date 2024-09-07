
; ASM FILE code\common\stats\statsengine_5.asm :
; 0x2401C..0x240DC : Character stats engine

; =============== S U B R O U T I N E =======================================

; Cast spell AI -> CCR carry-bit set if unable to proceed

AiAction_CastSpell:
		
		movem.l d1-d4/a0-a1,-(sp)
		jsr     j_GetEntitySpellsAddressForCombatant
		cmpi.b  #EMPTY_SPELL_SLOT,(a0)
		beq.w   @RegularAttack  ; skip if spell slot is empty
		jsr     j_GetCurrentMpForCombatant
		move.w  d1,d3           ; D3 = caster's current MP
		move.b  (a0),d1         ; D1 = spell index
		move.b  d1,d4
		andi.w  #SPELLENTRY_MASK_LEVEL,d4
		asr.w   #6,d4           ; D4 = spell level counter
@Loop:
		jsr     j_GetMPCost
		cmp.w   d2,d3
		bge.s   @Break          ; break out of loop if current MP is sufficient to cast spell at level being currently evaluated
		subi.b  #$40,d1 ; get previous level spell index
		dbf     d4,@Loop
                
		bra.s   @RegularAttack  ; fall back to regular attack if unable to cast
@Break:
		bsr.s   LoadAiSpellcastData
@Done:
		movem.l (sp)+,d1-d4/a0-a1
		rts
@RegularAttack:
		
		ori     #1,ccr
		bra.s   @Done

    ; End of function AiAction_CastSpell


; =============== S U B R O U T I N E =======================================

; Caster AI : prepare to cast spell D1

LoadAiSpellcastData:
		
		movem.l d1/d4/a0-a1,-(sp)
		bsr.w   GetSpellEntryAddress
		move.b  (a1),d4
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		bsr.w   LoadRangeData   
		move.b  SPELL_OFFSET_EFFECT(a1),((CURRENT_EFFECT-$1000000)).w
		move.b  #1,((CURRENT_BATTLEACTION_TYPE-$1000000)).w
		move.b  d1,((CURRENT_ITEM_OR_SPELL-$1000000)).w
		andi.w  #SPELLENTRY_MASK_INDEX,d1
		add.w   d1,d1
		lea     rp_PriorityRoutine_Heal(pc,d1.w),a0
		move.w  (a0),d1
		adda.w  d1,a0
		move.l  a0,((PRIORITY_ROUTINE_ADDRESS-$1000000)).w
		movem.l (sp)+,d1/d4/a0-a1
		rts

    ; End of function LoadAiSpellcastData

rp_PriorityRoutine_Heal:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Heal
rp_PriorityRoutine_Aura:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Aura
rp_PriorityRoutine_Detox:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Detox
rp_PriorityRoutine_Quick:
		dc.w PriorityRoutine_NotQuickened-rp_PriorityRoutine_Quick
rp_PriorityRoutine_Slow:
		dc.w PriorityRoutine_NotSlowed-rp_PriorityRoutine_Slow
rp_PriorityRoutine_Boost:
		dc.w PriorityRoutine_NotBoosted-rp_PriorityRoutine_Boost
rp_PriorityRoutine_Dispel:
		dc.w PriorityRoutine_NotDispelled-rp_PriorityRoutine_Dispel
rp_PriorityRoutine_Shield:
		dc.w PriorityRoutine_NotShielded-rp_PriorityRoutine_Shield
rp_PriorityRoutine_Muddle:
		dc.w PriorityRoutine_NotMuddled-rp_PriorityRoutine_Muddle
rp_PriorityRoutine_Blaze:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Blaze
rp_PriorityRoutine_Freeze:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Freeze
rp_PriorityRoutine_Bolt:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Bolt
rp_PriorityRoutine_Desoul:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Desoul
rp_PriorityRoutine_Egress:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Egress
rp_PriorityRoutine_dummy:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_dummy
rp_PriorityRoutine_Sleep:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Sleep

; =============== S U B R O U T I N E =======================================

AiAction_DarkDragon:
		
		movem.l d1/d7-a0,-(sp)
		bsr.w   GenerateRandomNumber0To99
		lea     table_DarkDragonSpells(pc), a0
@Loop:
		sub.b   (a0)+,d7
		bcs.s   @Break
		addq.l  #1,a0
		bra.s   @Loop
@Break:
		move.b  (a0),d1
		bsr.w   LoadAiSpellcastData
		movem.l (sp)+,d1/d7-a0
		rts

    ; End of function AiAction_DarkDragon

