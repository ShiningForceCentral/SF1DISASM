
; ASM FILE code\common\stats\statsengine_1.asm :
; 0x21B80..0x23178 : Character stats engine

; =============== S U B R O U T I N E =======================================

InitializeBattleCombatants:
		
		movem.l d0-d2/a0-a1,-(sp)
		bsr.s   ClearCombatantData
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		movea.l ((FORCE_POSITIONS_POINTER-$1000000)).w,a1
		move.b  (a1)+,d0
loc_21B90:
		beq.s   loc_21BA0
		move.b  (a0)+,d1
		blt.s   loc_21BA0
		bsr.w   sub_21C78
		addq.l  #2,a1
		subq.b  #1,d0
		bra.s   loc_21B90
loc_21BA0:
		bsr.s   GetEnemyPositionsPointer
		beq.s   loc_21BBE
		lea     ((byte_FFA476-$1000000)).w,a0
		move.b  #$80,d1
		move.b  (a1)+,d0
loc_21BAE:
		beq.s   loc_21BBE
		move.b  BATTLEDATA_ENEMY_SPAWN_COUNTER(a1),(a0)+
		bsr.s   sub_21BF6
		addq.l  #4,a1
		addq.b  #1,d1
		subq.b  #1,d0
		bra.s   loc_21BAE
loc_21BBE:
		clr.b   ((LASER_EYE_COUNTDOWN-$1000000)).w
		clr.b   ((TRIGGERED_AI_REGIONS-$1000000)).w
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function InitializeBattleCombatants


; =============== S U B R O U T I N E =======================================

; Get enemy positions pointer -> A1

GetEnemyPositionsPointer:
		
		movem.l d0,-(sp)
		movea.l ((ENEMY_POSITIONS_POINTER-$1000000)).w,a1
		move.l  a1,d0
		movem.l (sp)+,d0
		rts

    ; End of function GetEnemyPositionsPointer


; =============== S U B R O U T I N E =======================================

ClearCombatantData:
		
		movem.l d0/a0,-(sp)
		lea     ((COMBATANT_DATA-$1000000)).w,a0
		move.w  #511,d0
@Loop:
		move.b  #-1,(a0)+
		dbf     d0,@Loop
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function ClearCombatantData


; =============== S U B R O U T I N E =======================================

sub_21BF6:
		movem.l d0/a0-a1,-(sp)
		bsr.s   sub_21C0C
		bcs.s   loc_21C06
		bsr.w   sub_21C78
		bcs.s   loc_21C06
		subq.b  #1,(a0)
loc_21C06:
		movem.l (sp)+,d0/a0-a1
		rts

    ; End of function sub_21BF6


; =============== S U B R O U T I N E =======================================

sub_21C0C:
		movem.l d0-d2,-(sp)
		bsr.w   GetEnemyPositionsPointer
		beq.w   loc_21C60
		move.w  d1,d2
		andi.w  #$7F,d2 
		asl.w   #2,d2
		lea     1(a1,d2.w),a1
		clr.w   d0
		move.b  2(a1),d0
		beq.s   loc_21C38
		addi.w  #464,d0
		jsr     (j_CheckEventFlag).l
		beq.s   loc_21C60
loc_21C38:
		movem.l d1-d2/a1,-(sp)
		move.b  (a1)+,d2
		move.b  (a1),d1
		bsr.w   IsSpaceOccupied 
		movem.l (sp)+,d1-d2/a1
		bcs.s   loc_21C60
		lea     ((byte_FFA476-$1000000)).w,a0
		move.w  d1,d2
		andi.w  #$7F,d2 
		adda.w  d2,a0
		tst.b   (a0)
		beq.s   loc_21C60
loc_21C5A:
		movem.l (sp)+,d0-d2
		rts
loc_21C60:
		move.b  d1,d0
		clr.w   d1
		jsr     j_SetCurrentHp
		ori     #1,ccr
		bra.s   loc_21C5A

    ; End of function sub_21C0C


; =============== S U B R O U T I N E =======================================

sub_21C70:
		movem.l d0-d1/d3,-(sp)
		move.b  d1,d3
		bra.s   loc_21C8A

    ; End of function sub_21C70


; =============== S U B R O U T I N E =======================================

sub_21C78:
		movem.l d0-d1/d3,-(sp)
		move.b  d1,d3
		move.b  d1,d0
		jsr     j_GetCurrentHp
		tst.w   d1
		beq.s   loc_21C96
loc_21C8A:
		bsr.w   FindEmptyCombatantSlot
		bcs.s   loc_21C96
		move.b  d3,d1
		bsr.s   PopulateCombatantSlot
		tst.w   d0
loc_21C96:
		movem.l (sp)+,d0-d1/d3
		rts

    ; End of function sub_21C78


; =============== S U B R O U T I N E =======================================

; Populate combatant slot D0 with force member D1, and place them at coordinates A1

PopulateCombatantSlot:
		
		movem.l d1-d2/a1,-(sp)
		move.w  d1,-(sp)
		jsr     j_SetEntityIndex
		bsr.w   LoadCombatantData
		move.b  (a1)+,d2        ; X
		move.b  (a1)+,d1        ; Y
		jsr     j_SetCombatantPosition
		move.w  (sp)+,d1
		tst.b   d1
		bge.s   @Skip           ; skip if combatant is a force member
                
		lea     ((byte_FFA496-$1000000)).w,a1
		andi.w  #COMBATANT_INDEX_MASK,d1
		clr.b   (a1,d1.w)
@Skip:
		movem.l (sp)+,d1-d2/a1
		rts

    ; End of function PopulateCombatantSlot


; =============== S U B R O U T I N E =======================================

; Find first empty combatant slot -> D0
; 
; CCR: carry-bit set if not found

FindEmptyCombatantSlot:
		
		movem.w d1,-(sp)
		clr.w   d0
loc_21CD4:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_21CEC
		addq.w  #1,d0
		cmpi.b  #COMBATANT_ENTRIES_NUMBER,d0
		bne.s   loc_21CD4
		ori     #1,ccr
loc_21CEC:
		movem.w (sp)+,d1
		rts

    ; End of function FindEmptyCombatantSlot


; =============== S U B R O U T I N E =======================================

; Load combatant D0 data

LoadCombatantData:
		
		movem.l d1-d2/d4-d6/a0-a1,-(sp)
		jsr     j_LoadBaseAttack
		jsr     j_LoadBaseDefense
		jsr     j_LoadBaseAgility
		jsr     j_LoadBaseMove
		jsr     j_LoadBaseCritical
		jsr     j_GetBaseDoubleAttackMode
		jsr     j_SetModifiedDoubleAttackMode
		jsr     j_GetEntityItemsAddressForCombatant
		moveq   #ITEM_SLOTS_COUNTER,d2
@ApplyEquipOnStats_Loop:
		
		move.b  (a0),d1
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		beq.s   @NextItem
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.s   @NextItem
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_EQUIP_EFFECT(a1),d4
		move.b  ITEMDEF_OFFSET_EQUIP_EFFECT_VALUE(a1),d5
		jsr     j_JumpToRangeOrEquipEffect
@NextItem:
		addq.l  #1,a0
		dbf     d2,@ApplyEquipOnStats_Loop
                
		bsr.s   ApplyStatusEffectsOnStats
		movem.l (sp)+,d1-d2/d4-d6/a0-a1
		rts

    ; End of function LoadCombatantData


; =============== S U B R O U T I N E =======================================

ApplyStatusEffectsOnStats:
		
		movem.l d0-d3,-(sp)
		moveq   #STATUSEFFECT_BIT_QUICK,d1
		jsr     j_GetStatusEffectCounter
		beq.s   loc_21D74
		moveq   #10,d1
		jsr     j_IncreaseModifiedAgility
		moveq   #10,d1
		jsr     j_IncreaseModifiedDefense
loc_21D74:
		moveq   #STATUSEFFECT_BIT_SLOW,d1
		jsr     j_GetStatusEffectCounter
		beq.s   loc_21D8E
		moveq   #10,d1
		jsr     j_DecreaseModifiedAgility
		moveq   #10,d1
		jsr     j_DecreaseModifiedDefense
loc_21D8E:
		moveq   #STATUSEFFECT_BIT_BOOST,d1
		jsr     j_GetStatusEffectCounter
		beq.s   loc_21DA0
		moveq   #15,d1
		jsr     j_IncreaseModifiedAttack
loc_21DA0:
		movem.l (sp)+,d0-d3
		rts

    ; End of function ApplyStatusEffectsOnStats


; =============== S U B R O U T I N E =======================================

LoadCombatantDataForForceMember:
		
		movem.w d0,-(sp)
		bsr.w   FindCombatantEntry
		bne.s   loc_21DB6
		jsr     j_LoadCombatantData
loc_21DB6:
		movem.w (sp)+,d0
		rts

    ; End of function LoadCombatantDataForForceMember


; =============== S U B R O U T I N E =======================================

sub_21DBC:
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((ENEMY_DATA-$1000000)).w,a0
		move.w  #$4FF,d0
loc_21DC8:
		move.b  #-1,(a0)+
		dbf     d0,loc_21DC8
                
		bsr.w   GetEnemyPositionsPointer
		beq.s   loc_21DEC
		move.b  #$80,d0
		move.b  (a1),d1
loc_21DDC:
		beq.s   loc_21DE8
		bsr.w   LoadEnemyStats
		addq.b  #1,d0
		subq.b  #1,d1
		bra.s   loc_21DDC
loc_21DE8:
		bsr.w   SetForceLeaderStatsInBattleTestMode
loc_21DEC:
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_21DBC


; =============== S U B R O U T I N E =======================================

LoadEnemyStats:
		
		movem.l d0-d1/a0-a3,-(sp)
		bsr.w   GetEnemyEntryAddress
		bcs.w   loc_21EA0
		movea.l a0,a2
		movea.l a1,a3
		move.b  ENEMY_OFFSET_CLASS(a3),d1
		jsr     j_SetClass
		move.b  ENEMY_OFFSET_LEVEL(a3),d1
		jsr     j_SetLevel
		move.b  ENEMY_OFFSET_ATTACK(a3),d1
		jsr     j_SetBaseAttack
		move.b  ENEMY_OFFSET_DEFENSE(a3),d1
		jsr     j_SetBaseDefense
		move.b  ENEMY_OFFSET_AGILITY(a3),d1
		jsr     j_SetBaseAgility
		move.b  ENEMY_OFFSET_MOVE(a3),d1
		jsr     j_SetBaseMove
		move.w  ENEMY_OFFSET_HP(a3),d1
		jsr     j_SetMaxHp
		move.b  ENEMY_OFFSET_MP(a3),d1
		jsr     j_SetMaxMp
		clr.w   d1
		jsr     j_SetBaseCritical
		jsr     j_SetStatusEffects
		jsr     j_RefillHp
		jsr     j_RefillMp
		bsr.w   sub_21EA6
		jsr     j_GetEntityItemsAddress
		move.l  #-1,(a0)        ; 4 empty item slots
		move.b  BATTLEDATA_ENEMY_ITEM_0(a2),d1
		move.b  d1,(a0)+
		cmp.b   BATTLEDATA_ENEMY_ITEM_1(a2),d1
		beq.s   loc_21E8E
		move.b  BATTLEDATA_ENEMY_ITEM_1(a2),d1
		move.b  d1,(a0)
loc_21E8E:
		jsr     j_GetCharacterSpellsAddress
		move.l  #-1,(a0)        ; 4 empty spell slots
		move.b  BATTLEDATA_ENEMY_SPELL(a2),d1
		move.b  d1,(a0)
loc_21EA0:
		movem.l (sp)+,d0-d1/a0-a3
		rts

    ; End of function LoadEnemyStats


; =============== S U B R O U T I N E =======================================

sub_21EA6:
		movem.l d0-d1/a0-a1,-(sp)
		jsr     j_GetEntityStatsAddress
		movea.l a0,a1
		move.w  #9,d1
loc_21EB6:
		clr.b   (a0)+
		dbf     d1,loc_21EB6
                
		move.b  ENEMY_OFFSET_11(a3),d1
		movea.l ((dword_FFC612-$1000000)).w,a0
		bsr.w   GetVariableLengthEntryAddress
		beq.s   loc_21ED2
		subq.w  #1,d1
loc_21ECC:
		move.b  (a0)+,(a1)+
		dbf     d1,loc_21ECC
loc_21ED2:
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_21EA6


; =============== S U B R O U T I N E =======================================

sub_21ED8:
		movem.l d0-d2/a0-a1,-(sp)
		bsr.w   GetEnemyPositionsPointer
		beq.w   loc_21F10
		lea     ((SAVED_BATTLE_DATA-$1000000)).w,a0
		move.b  #$80,d0
		move.b  (a1),d2
loc_21EEE:
		beq.s   loc_21F10
		move.w  (a0)+,d1
		jsr     j_SetCurrentHp
		move.b  (a0)+,d1
		jsr     j_SetCurrentMp
		addq.l  #1,a0
		move.w  (a0)+,d1
		jsr     j_SetStatusEffects
		addq.b  #1,d0
		subq.b  #1,d2
		bra.s   loc_21EEE
loc_21F10:
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function sub_21ED8


; =============== S U B R O U T I N E =======================================

sub_21F16:
		movem.l d0-d2/a0-a1,-(sp)
		bsr.w   GetEnemyPositionsPointer
		beq.w   loc_21F5E
		lea     ((SAVED_BATTLE_DATA-$1000000)).w,a0
		move.w  #191,d0
loc_21F2A:
		move.b  #-1,(a0)+
		dbf     d0,loc_21F2A
                
		lea     ((SAVED_BATTLE_DATA-$1000000)).w,a0
		move.b  #128,d0
		move.b  (a1),d2
loc_21F3C:
		beq.s   loc_21F5E
		jsr     j_GetCurrentHp
		move.w  d1,(a0)+
		jsr     j_GetCurrentMP
		move.b  d1,(a0)+
		addq.l  #1,a0
		jsr     j_GetStatusEffects
		move.w  d1,(a0)+
		addq.b  #1,d0
		subq.b  #1,d2
		bra.s   loc_21F3C
loc_21F5E:
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function sub_21F16


; =============== S U B R O U T I N E =======================================

sub_21F64:
		movem.l d0-d3/a0-a1,-(sp)
		move.l  ((dword_FFC60A-$1000000)).w,d3
		beq.s   loc_21F72
		movea.l d3,a0
		jsr     (a0)
loc_21F72:
		clr.w   d3
		lea     ((byte_FFA8C2-$1000000)).w,a0
		tst.b   ((byte_FFB4D7-$1000000)).w
		bne.s   loc_21FDE
		bsr.w   GetEnemyPositionsPointer
		beq.s   loc_21FDE
		move.b  #$80,d0
		move.b  (a1)+,d1
loc_21F8A:
		beq.s   loc_21FDE
		movem.w d1,-(sp)
		jsr     j_GetCurrentHp
		tst.w   d1
		movem.w (sp)+,d1
		bgt.s   loc_21FD6
		movem.l d1/a0-a1,-(sp)
		move.b  d0,d1
		bsr.w   sub_21C0C
		movem.l (sp)+,d1/a0-a1
		bcs.s   loc_21FD6
		movem.w d0,-(sp)
		bsr.w   FindEmptyCombatantSlot
		move.w  d0,d2
		movem.w (sp)+,d0
		bcs.s   loc_21FD6
		movem.w d1,-(sp)
		bsr.w   LoadEnemyStats
		move.b  d0,d1
		bsr.w   sub_21BF6
		movem.w (sp)+,d1
		addq.w  #1,d3
		move.b  d2,(a0)+
		st      (a0)+
loc_21FD6:
		addq.l  #4,a1
		addq.b  #1,d0
		subq.b  #1,d1
		bra.s   loc_21F8A
loc_21FDE:
		st      (a0)
		move.w  d3,((TABLE_AT_FFA8C0-$1000000)).w
		jsr     RegenerateHP(pc)
		nop
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function sub_21F64


; =============== S U B R O U T I N E =======================================

; Get enemy D0 (from enemies list) entry address -> A1 if they exists, carry-bit set if not

GetEnemyEntryAddress:
		
		movem.l d0-d1,-(sp)
		movea.l ((ENEMIES_LIST_POINTER-$1000000)).w,a0
		move.l  a0,d1
		beq.s   loc_2201C
		andi.w  #FORCEMEMBERENTRY_MASK_INDEX_0,d0
		asl.w   #2,d0
		adda.w  d0,a0
		move.b  (a0),d1
		cmpi.b  #-1,d1
		beq.s   loc_2201C
		movea.l ((ENEMY_DATA_POINTER-$1000000)).w,a1
		andi.w  #$FF,d1
		asl.w   #4,d1
		adda.w  d1,a1
		tst.b   d0
		bra.s   loc_22020
loc_2201C:
		ori     #1,ccr
loc_22020:
		movem.l (sp)+,d0-d1
		rts

    ; End of function GetEnemyEntryAddress


; =============== S U B R O U T I N E =======================================

ResetCombatants:
		
		movem.l d0-d1/a1,-(sp)
		bsr.w   ClearCombatantData
		lea     byte_2204A(pc), a1
		moveq   #FORCE_MEMBERS_COUNTER,d0
@Loop:
		bsr.w   IsInForce       
		beq.s   @Next
		move.w  d0,d1
		bsr.w   PopulateCombatantSlot
@Next:
		dbf     d0,@Loop
                
		movem.l (sp)+,d0-d1/a1
		rts

    ; End of function ResetCombatants

byte_2204A:     dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_2204C:
		movem.l d1/a0-a1,-(sp)
		lea     byte_2204A(pc), a1
		bsr.w   sub_22090
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
loc_2205C:
		move.b  (a0)+,d1
		blt.s   loc_22066
		bsr.w   sub_21C70
		bra.s   loc_2205C
loc_22066:
		movem.l (sp)+,d1/a0-a1
		rts

    ; End of function sub_2204C


; =============== S U B R O U T I N E =======================================

RefreshMembersList:
		
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		clr.w   d1
		clr.w   d0
@Loop:
		jsr     (a1)
		beq.s   @Skip
		move.b  d0,(a0)+        ; add member to list
		addq.w  #1,d1           ; increment list length
@Skip:
		addq.w  #1,d0
		cmpi.w  #FORCE_MEMBERS_NUMBER,d0
		bcs.s   @Loop
                
		move.w  d1,((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w
		st      (a0)
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function RefreshMembersList


; =============== S U B R O U T I N E =======================================

sub_22090:
		movem.l d0-d1/a0-a1,-(sp)
		lea     sub_22100(pc), a1
		bra.s   RefreshMembersList

    ; End of function sub_22090


; =============== S U B R O U T I N E =======================================

PopulateForceMembersList:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     IsInForce(pc), a1
		bra.s   RefreshMembersList

    ; End of function PopulateForceMembersList


; =============== S U B R O U T I N E =======================================

PopulateBattlePartyMembersList:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     IsInForceAndBattleParty(pc), a1
		bra.s   RefreshMembersList

    ; End of function PopulateBattlePartyMembersList


; =============== S U B R O U T I N E =======================================

PopulateReservePartyMembersList:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     IsInForceAndReserveParty(pc), a1
		bra.s   RefreshMembersList

    ; End of function PopulateReservePartyMembersList


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has joined -> CCR zero-bit cleared if true

IsInForce:
		movem.l d1,-(sp)
		move.l  ((FORCE_MEMBER_FLAGS-$1000000)).w,d1
		btst    d0,d1
		movem.l (sp)+,d1
		rts

    ; End of function IsInForce


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has joined and is in battle party
; 
;     Out: D1 = 0 if not in battle party, 1 otherwise
;          CCR zero-bit set if member has not joined, cleared otherwise

IsInForceAndBattleParty:
		
		bsr.s   IsInForce       
		beq.s   @Return         ; return if member has not joined
		bsr.s   IsInBattleParty 
@Return:
		rts

    ; End of function IsInForceAndBattleParty


; =============== S U B R O U T I N E =======================================

; Check if force member D0 is in battle party -> D1 = 0 if false, 1 if true

IsInBattleParty:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
@Loop:
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)
		beq.s   @Break
		cmp.b   (a0)+,d0
		bne.s   @Next
		moveq   #1,d1
		bra.s   @Break
@Next:
		dbf     d1,@Loop
                
		clr.w   d1
@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function IsInBattleParty


; =============== S U B R O U T I N E =======================================

IsInForceAndReserveParty:
		
		bsr.s   IsInForce       
		beq.s   @Return
		bsr.s   IsInBattleParty 
		eori    #4,ccr
@Return:
		rts

    ; End of function IsInForceAndReserveParty


; =============== S U B R O U T I N E =======================================

sub_22100:
		movem.l d0,-(sp)
		bsr.w   FindCombatantEntry
		movem.l (sp)+,d0
		rts

    ; End of function sub_22100


; =============== S U B R O U T I N E =======================================

; Add force member D0 to battle party

JoinBattleParty:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
@FindEmptyBattleSlot_Loop:
		
		cmp.b   (a0),d0
		beq.s   @Break
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)
		bne.s   @Next
		move.b  d0,(a0)
		bsr.s   SortBattlePartyMembers
		bra.s   @Break
@Next:
		addq.l  #1,a0
		dbf     d1,@FindEmptyBattleSlot_Loop
@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function JoinBattleParty


; =============== S U B R O U T I N E =======================================

; Remove force member D0 from battle party

LeaveBattleParty:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
@Loop:
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)
		beq.s   @Break
		cmp.b   (a0),d0
		bne.s   @Next
		st      (a0)
		bsr.s   SortBattlePartyMembers
		bra.s   @Break
@Next:
		addq.l  #1,a0
		dbf     d1,@Loop
@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function LeaveBattleParty


; =============== S U B R O U T I N E =======================================

; Get first empty slot in battle party -> D2

GetEmptyBattlePartySlot:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		clr.w   d2
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
@Loop:
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)+
		beq.s   @Break
		addq.w  #1,d2
		dbf     d1,@Loop
@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function GetEmptyBattlePartySlot


; =============== S U B R O U T I N E =======================================

SortBattlePartyMembers:
		
		movem.l d0-d3/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d0
loc_22180:
		ble.s   loc_221A8
		move.w  d0,d1
loc_22184:
		subq.w  #1,d1
		blt.s   loc_221A4
		move.b  (a0,d0.w),d2
		cmp.b   (a0,d1.w),d2
		bcc.s   loc_221A2
		move.b  (a0,d0.w),d2
		move.b  (a0,d1.w),d3
		move.b  d3,(a0,d0.w)
		move.b  d2,(a0,d1.w)
loc_221A2:
		bra.s   loc_22184
loc_221A4:
		subq.w  #1,d0
		bra.s   loc_22180
loc_221A8:
		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function SortBattlePartyMembers


; =============== S U B R O U T I N E =======================================

; Add character D0 to force (if not already)     

JoinForce:
		movem.l d1-d2,-(sp)
		bsr.s   dup_IsInForce   
		bne.s   loc_221CE
		move.l  ((FORCE_MEMBER_FLAGS-$1000000)).w,d1
		bset    d0,d1
		move.l  d1,((FORCE_MEMBER_FLAGS-$1000000)).w
		bsr.w   GetEmptyBattlePartySlot
		cmpi.w  #BATTLE_PARTY_SLOTS_NUMBER,d2
		bge.s   loc_221CE
		bsr.w   JoinBattleParty 
loc_221CE:
		movem.l (sp)+,d1-d2
		rts

    ; End of function JoinForce


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has joined (duplicate)

dup_IsInForce:
		
		movem.l d1,-(sp)
		move.l  ((FORCE_MEMBER_FLAGS-$1000000)).w,d1
		btst    d0,d1
		movem.l (sp)+,d1
		rts

    ; End of function dup_IsInForce


; =============== S U B R O U T I N E =======================================

RegenerateHp:
		movem.l d0-d2/a0,-(sp)
		moveq   #COMBATANT_ENTRIES_COUNTER,d2
@Loop:
		move.b  d2,d0
		bsr.w   alt_GetEntity   
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   @Skip           ; skip if combatant entry is unpopulated
		jsr     j_GetClass
		bsr.w   GetClassEntryAddress
		btst    #CLASS_PROPERTY_BIT_HP_REGEN,CLASSDEF_OFFSET_PROPERTIES(a0)
		beq.s   @Skip           ; skip if class is not set to regenerate HP
		jsr     j_GetMaxHp
		asr.w   #2,d1           ; D1 = max HP divided by 4
		jsr     j_IncreaseCurrentHp
@Skip:
		dbf     d2,@Loop
                
		movem.l (sp)+,d0-d2/a0
		rts

    ; End of function RegenerateHp


; =============== S U B R O U T I N E =======================================

RefillWholeForceHp:
		
		move.w  d0,-(sp)
		moveq   #FORCE_MEMBERS_COUNTER,d0
@Loop:
		jsr     j_RefillHp
		dbf     d0,@Loop
                
		move.w  (sp)+,d0
		rts

    ; End of function RefillWholeForceHp


; =============== S U B R O U T I N E =======================================

SetForceLeaderStatsInBattleTestMode:
		
		movem.l d0-d1/a0,-(sp)
		btst    #6,((byte_FF9C52-$1000000)).w
		bne.s   @Skip
		clr.w   d0
		move.w  #2000,d1
		jsr     j_SetMaxHp
		jsr     j_RefillHp
		move.w  #98,d1
		jsr     j_SetMaxMp
		jsr     j_RefillMp
		jsr     j_SetBaseAgility
		jsr     j_SetBaseMove
		jsr     j_LoadCombatantData
		jsr     j_GetEntityItemsAddress
		move.b  #ITEM_KINDAN_NOHAKO,2(a0)
		jsr     j_GetCharacterSpellsAddress
		addq.l  #1,a0
		move.b  #SPELL_BLAZE|LV_4,(a0)+
		move.b  #SPELL_FREEZE|LV_4,(a0)+
		move.b  #SPELL_BOLT|LV_4,(a0)+
@Skip:
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function SetForceLeaderStatsInBattleTestMode


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w entity index -> d1.w if they exist, else -1

GetEntity:
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  (a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetEntity


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w X -> d1.w if they exist, else -1

GetCombatantX:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_X(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCombatantX


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w Y -> d1.w if they exist, else -1

GetCombatantY:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_Y(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCombatantY


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w modified attack -> d1.w if they exist, else -1

GetModifiedAttack:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_ATTACK(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedAttack


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w modified defense -> d1.w if they exist, else -1

GetModifiedDefense:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_DEFENSE(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedDefense


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w modified agility -> d1.w if they exist, else -1

GetModifiedAgility:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_AGILITY(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedAgility


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w modified move -> d1.w if they exist, else -1

GetModifiedMove:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_MOVE(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedMove


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w modified critical -> d1.w if they exist, else -1

GetModifiedCritical:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_CRITICAL(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedCritical


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w modified double attack mode -> d1.w if they exist, else -1

GetModifiedDoubleAttackMode:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_DOUBLE_ATTACK_MODE(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedDoubleAttackMode


; =============== S U B R O U T I N E =======================================

; Get combatant d0.w position X,Y -> d2,d1.w

GetCombatantPosition:
		
		jsr     j_GetCombatantX
		move.w  d1,d2
		jsr     j_GetCombatantY
		rts

    ; End of function GetCombatantPosition


; =============== S U B R O U T I N E =======================================

; Get force member's status effect bitfield d1.w for combatant d0.w -> d2.w

GetStatusEffectCounter:
		
		exg     d1,d2
		bsr.w   GetStatusEffectsForCombatant
		exg     d1,d2
		lsr.w   d1,d2
		andi.w  #STATUSEFFECT_MASK_COUNTER,d2
		rts

    ; End of function GetStatusEffectCounter


; =============== S U B R O U T I N E =======================================

; Get force member D0 class index -> D1

GetClass:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_CLASS(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetClass


; =============== S U B R O U T I N E =======================================

; Get force member D0 level -> D1

GetLevel:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_LEVEL(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetLevel


; =============== S U B R O U T I N E =======================================

; Get force member D0 base attack -> D1

GetBaseAttack:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_ATTACK(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseAttack


; =============== S U B R O U T I N E =======================================

; Get force member D0 base defense -> D1

GetBaseDefense:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_DEFENSE(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseDefense


; =============== S U B R O U T I N E =======================================

; Get force member D0 base agility -> D1

GetBaseAgility:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_AGILITY(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseAgility


; =============== S U B R O U T I N E =======================================

; Get force member D0 base move -> D1

GetBaseMove:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_MOVE(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseMove


; =============== S U B R O U T I N E =======================================

; Get force member D0 base critical -> D1

GetBaseCritical:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_CRITICAL(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseCritical


; =============== S U B R O U T I N E =======================================

; Get force member D0 experience -> D1

GetExperience:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_EXPERIENCE(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetExperience


; =============== S U B R O U T I N E =======================================

; Get force member D0 max HP -> D1

GetMaxHp:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  FORCE_OFFSET_MAXIMUM_HP(a0),d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetMaxHp


; =============== S U B R O U T I N E =======================================

; Get force member D0 current HP -> D1

GetCurrentHp:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  FORCE_OFFSET_CURRENT_HP(a0),d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCurrentHp


; =============== S U B R O U T I N E =======================================

; Get force member D0 max MP -> D1

GetMaxMP:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_MAXIMUM_MP(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetMaxMP


; =============== S U B R O U T I N E =======================================

; Get force member D0 current MP -> D1

GetCurrentMP:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_CURRENT_MP(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCurrentMP


; =============== S U B R O U T I N E =======================================

; Get force member D0 status effects -> D1

GetStatusEffects:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  FORCE_OFFSET_STATUS_EFFECTS(a0),d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetStatusEffects


; =============== S U B R O U T I N E =======================================

; Get force member's class index for combatant D0 -> D1

GetClassForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetClass        
		move.w  (sp)+,d0
		rts

    ; End of function GetClassForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's level for combatant D0 -> D1

GetLevelForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetLevel        
		move.w  (sp)+,d0
		rts

    ; End of function GetLevelForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base attack for combatant D0 -> D1

GetBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseAttack   
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base defense for combatant D0 -> D1

GetBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseDefense  
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base agility for combatant D0 -> D1

GetBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseAgility  
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base move for combatant D0 -> D1

GetBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseMove     
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base critical for combatant D0 -> D1

GetBaseCriticalForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseCritical 
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's experience for combatant D0 -> D1

GetExperienceForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetExperience   
		move.w  (sp)+,d0
		rts

    ; End of function GetExperienceForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's status effects for combatant D0 -> D1

GetStatusEffectsForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetStatusEffects
		move.w  (sp)+,d0
		rts

    ; End of function GetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's max HP for combatant D0 -> D1

GetMaxHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetMaxHp        
		move.w  (sp)+,d0
		rts

    ; End of function GetMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's current HP for combatant D0 -> D1

GetCurrentHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetCurrentHp    
		move.w  (sp)+,d0
		rts

    ; End of function GetCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's max MP from combatant D0 -> D1

GetMaxMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetMaxMP        
		move.w  (sp)+,d0
		rts

    ; End of function GetMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's current MP for combatant D0 -> D1

GetCurrentMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetCurrentMP    
		move.w  (sp)+,d0
		rts

    ; End of function GetCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity D0 stats address -> A0

GetEntityStatsAddress:
		
		movem.l d0/d2,-(sp)
		bsr.w   GetEntityEntryAddress
		movem.l (sp)+,d0/d2
		rts

    ; End of function GetEntityStatsAddress


; =============== S U B R O U T I N E =======================================

; Get entity D0 items address -> A0

GetEntityItemsAddress:
		
		movem.l d0/d2,-(sp)
		bsr.w   GetEntityEntryAddress
		adda.w  #FORCE_OFFSET_ITEMS,a0
		movem.l (sp)+,d0/d2
		rts

    ; End of function GetEntityItemsAddress


; =============== S U B R O U T I N E =======================================

; Get entity D0 spells address -> A0

GetCharacterSpellsAddress:
		
		movem.l d0/d2,-(sp)
		bsr.w   GetEntityEntryAddress
		adda.w  #FORCE_OFFSET_SPELLS,a0
		movem.l (sp)+,d0/d2
		rts

    ; End of function GetCharacterSpellsAddress


; =============== S U B R O U T I N E =======================================

; Get entity stats address for combatant D0 -> A0

GetEntityStatsAddressForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetEntityStatsAddress
		move.w  (sp)+,d0
		rts

    ; End of function GetEntityStatsAddressForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's items address for combatant D0 -> A0

GetEntityItemsAddressForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetEntityItemsAddress
		move.w  (sp)+,d0
		rts

    ; End of function GetEntityItemsAddressForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity spells address for combatant D0 -> A0

GetEntitySpellsAddressForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetCharacterSpellsAddress
		move.w  (sp)+,d0
		rts

    ; End of function GetEntitySpellsAddressForCombatant


; =============== S U B R O U T I N E =======================================

; Get combatant D0 entity index -> D0 (alternate implementation)

alt_GetEntity:
		
		move.l  a0,-(sp)
		andi.w  #$FF,d0
		asl.w   #4,d0
		lea     ((COMBATANT_DATA-$1000000)).w,a0
		move.b  (a0,d0.w),d0
		movea.l (sp)+,a0
		rts

    ; End of function alt_GetEntity


; =============== S U B R O U T I N E =======================================

; Find force member D0 combatant entry address -> A0

FindCombatantEntry:
		
		movem.l d1/a0,-(sp)
		move.b  d0,d1
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
		bsr.s   GetCombatantEntryAddress
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
@Loop:
		cmp.b   (a0),d1
		suba.w  #COMBATANT_ENTRY_SIZE,a0
		dbeq    d0,@Loop
		movem.l (sp)+,d1/a0
		rts

    ; End of function FindCombatantEntry


; =============== S U B R O U T I N E =======================================

; Get combatant D0 entry address -> A0 (CCR zero-bit set if slot is empty)

GetCombatantEntryAddress:
		
		andi.w  #$FF,d0
		asl.w   #4,d0
		lea     ((COMBATANT_DATA-$1000000)).w,a0
		adda.w  d0,a0
		cmpi.b  #EMPTY_COMBATANT_SLOT,(a0)
		rts

    ; End of function GetCombatantEntryAddress


; =============== S U B R O U T I N E =======================================

; Get entity (force member or enemy) D0 data entry address -> A0

GetEntityEntryAddress:
		
		tst.b   d0
		bpl.s   @ForceMember
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX_0,d0
		lea     ((ENEMY_DATA-$1000000)).w,a0
		bra.s   @Continue
@ForceMember:
		lea     ((FORCE_MEMBERS_DATA-$1000000)).w,a0
@Continue:
		andi.w  #$FF,d0
		mulu.w  #FORCE_ENTRY_SIZE,d0
		adda.w  d0,a0
		rts

    ; End of function GetEntityEntryAddress


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 is an enemy -> CCR negative-bit set if true

IsEnemy:
		movem.w d1,-(sp)
		bsr.w   GetEntity       
		tst.b   d1
		movem.w (sp)+,d1
		rts

    ; End of function IsEnemy


; =============== S U B R O U T I N E =======================================

; Get combatant D0 displayed name address (load class name if enemy)
; 
; Out: A0 = name address for combatant
;      D1 = name length for combatant

GetDisplayedNameAddress:
		
		movem.l d0/d2/a1,-(sp)
		move.w  #FORCE_NAME_LENGTH,d1
		bsr.w   GetEntityStatsAddressForCombatant
		tst.b   (a0)
		bne.s   loc_2264E
		bsr.w   GetClassForCombatant
		jsr     j_GetClassNameAddress
		move.w  d1,d2
		lea     ((DISPLAYED_EMEMY_NAME-$1000000)).w,a1
		subq.w  #1,d2
loc_22642:
		move.b  (a0)+,(a1)+
		dbf     d2,loc_22642
                
		clr.b   (a1)
		lea     ((DISPLAYED_EMEMY_NAME-$1000000)).w,a0
loc_2264E:
		movem.l (sp)+,d0/d2/a1
		rts

    ; End of function GetDisplayedNameAddress


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 entity index

SetEntityIndex:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetEntityIndex


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 X

SetCombatantX:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_X(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCombatantX


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 Y

SetCombatantY:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_Y(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCombatantY


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified attack

SetModifiedAttack:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_ATTACK(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedAttack


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified defense

SetModifiedDefense:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_DEFENSE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedDefense


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified agility

SetModifiedAgility:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_AGILITY(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedAgility


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified move

SetModifiedMove:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_MOVE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedMove


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified critical

SetModifiedCritical:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_CRITICAL(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedCritical


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified double attack mode

SetModifiedDoubleAttackMode:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_DOUBLE_ATTACK_MODE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedDoubleAttackMode


; =============== S U B R O U T I N E =======================================

; Set Y = D1, X = D2 -> combatant D0 position

SetCombatantPosition:
		
		move.w  d1,-(sp)
		jsr     j_SetCombatantY
		move.w  d2,d1
		jsr     j_SetCombatantX
		move.w  (sp)+,d1
		rts

    ; End of function SetCombatantPosition


; =============== S U B R O U T I N E =======================================

; Set D2 -> force member's status effect counter D1 for combatant D0

SetStatusEffectCounter:
		
		movem.l d2-d3,-(sp)
		move.w  d1,d3
		jsr     j_GetStatusEffectsForCombatant
		ror.w   d3,d1
		andi.w  #3,d2
		andi.w  #STATUSEFFECT_CURSE|STATUSEFFECT_JOGURT|STATUSEFFECT_MUDDLE|STATUSEFFECT_DISPEL|STATUSEFFECT_QUICK|STATUSEFFECT_SLOW|STATUSEFFECT_BOOST|STATUSEFFECT_SHIELD,d1
		or.w    d2,d1
		rol.w   d3,d1
		bsr.w   SetStatusEffectsForCombatant
		movem.l (sp)+,d2-d3
		rts

    ; End of function SetStatusEffectCounter


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 class index

SetClass:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_CLASS(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetClass


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 level

SetLevel:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_LEVEL(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetLevel


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base attack

SetBaseAttack:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_ATTACK(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseAttack


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base defense

SetBaseDefense:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_DEFENSE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseDefense


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base agility

SetBaseAgility:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_AGILITY(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseAgility


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base move

SetBaseMove:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_MOVE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseMove


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base critical

SetBaseCritical:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_CRITICAL(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseCritical


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 experience

SetExperience:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_EXPERIENCE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetExperience


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 max HP

SetMaxHp:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  d1,FORCE_OFFSET_MAXIMUM_HP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetMaxHp


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 current HP

SetCurrentHp:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  d1,FORCE_OFFSET_CURRENT_HP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCurrentHp


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 max MP

SetMaxMp:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_MAXIMUM_MP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetMaxMp


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 current MP

SetCurrentMp:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_CURRENT_MP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCurrentMp


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 status effects

SetStatusEffects:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  d1,FORCE_OFFSET_STATUS_EFFECTS(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetStatusEffects


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's class index for combatant D0

SetClassForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetClass        
		move.w  (sp)+,d0
		rts

    ; End of function SetClassForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's level for combatant D0

SetLevelForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetLevel        
		move.w  (sp)+,d0
		rts

    ; End of function SetLevelForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base attack for combatant D0

SetBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseAttack   
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base defense for combatant D0

SetBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseDefense  
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base agility for combatant D0

SetBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseAgility  
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base move for combatant D0

SetBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseMove     
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base critical for combatant D0

SetBaseCriticalForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseCritical 
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's experience for combatant D0

SetExperienceForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetExperience   
		move.w  (sp)+,d0
		rts

    ; End of function SetExperienceForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's max HP for combatant D0

SetMaxHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetMaxHp        
		move.w  (sp)+,d0
		rts

    ; End of function SetMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's current HP for combatant D0

SetCurrentHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetCurrentHp    
		move.w  (sp)+,d0
		rts

    ; End of function SetCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's max MP for combatant D0

SetMaxMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetMaxMp        
		move.w  (sp)+,d0
		rts

    ; End of function SetMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's current MP for combatant D0

SetCurrentMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetCurrentMp    
		move.w  (sp)+,d0
		rts

    ; End of function SetCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's status effects for combatant D0

SetStatusEffectsForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetStatusEffects
		move.w  (sp)+,d0
		rts

    ; End of function SetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

; Load force member name from A0 into stats table

LoadForceMemberName:
		
		movem.l d0/a1,-(sp)
		movea.l a0,a1
		jsr     j_GetEntityStatsAddress
		moveq   #FORCE_MEMBER_NAME_COUNTER,d0
@Loop:
		move.b  (a1)+,(a0)+
		dbf     d0,@Loop
                
		movem.l (sp)+,d0/a1
		rts

    ; End of function LoadForceMemberName


; =============== S U B R O U T I N E =======================================

; Add d1.w to combatant d0.w modified attack, capping at 99

IncreaseModifiedAttack:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedAttack
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_228FC
		clr.w   d1
		bra.s   loc_22906
loc_228FC:
		cmpi.w  #STATCAP_ATTACK,d1
		ble.s   loc_22906
		move.w  #STATCAP_ATTACK,d1
loc_22906:
		bsr.w   SetModifiedAttack
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedAttack


; =============== S U B R O U T I N E =======================================

; Add d1.w to combatant d0.w modified defense, capping at 99

IncreaseModifiedDefense:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedDefense
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22926
		clr.w   d1
		bra.s   loc_22930
loc_22926:
		cmpi.w  #STATCAP_DEFENSE,d1
		ble.s   loc_22930
		move.w  #STATCAP_DEFENSE,d1
loc_22930:
		bsr.w   SetModifiedDefense
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedDefense


; =============== S U B R O U T I N E =======================================

; Add d1.w to combatant d0.w modified agility, capping at 99

IncreaseModifiedAgility:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedAgility
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22950
		clr.w   d1
		bra.s   loc_2295A
loc_22950:
		cmpi.w  #STATCAP_AGILITY,d1
		ble.s   loc_2295A
		move.w  #STATCAP_AGILITY,d1
loc_2295A:
		bsr.w   SetModifiedAgility
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedAgility


; =============== S U B R O U T I N E =======================================

; Add d1.w to combatant d0.w modified move, capping at 9

IncreaseModifiedMove:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedMove 
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_2297A
		clr.w   d1
		bra.s   loc_22984
loc_2297A:
		cmpi.w  #STATCAP_MOVE,d1
		ble.s   loc_22984
		move.w  #STATCAP_MOVE,d1
loc_22984:
		bsr.w   SetModifiedMove 
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedMove


; =============== S U B R O U T I N E =======================================

; Add d1.w to combatant d0.w modified critical, capping at 99

IncreaseModifiedCritical:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedCritical
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_229A4
		clr.w   d1
		bra.s   loc_229AE
loc_229A4:
		cmpi.w  #STATCAP_CRITICAL,d1
		ble.s   loc_229AE
		move.w  #STATCAP_CRITICAL,d1
loc_229AE:
		bsr.w   SetModifiedCritical
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedCritical


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w level, capping at 99

IncreaseLevel:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetLevel        
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_229CE
		clr.w   d1
		bra.s   loc_229D8
loc_229CE:
		cmpi.w  #STATCAP_LEVEL,d1
		ble.s   loc_229D8
		move.w  #STATCAP_LEVEL,d1
loc_229D8:
		bsr.w   SetLevel        
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseLevel


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w base attack, capping at 99

IncreaseBaseAttack:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseAttack   
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_229F8
		clr.w   d1
		bra.s   loc_22A02
loc_229F8:
		cmpi.w  #STATCAP_ATTACK,d1
		ble.s   loc_22A02
		move.w  #STATCAP_ATTACK,d1
loc_22A02:
		bsr.w   SetBaseAttack   
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseAttack


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w base defense, capping at 99

IncreaseBaseDefense:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseDefense  
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22A22
		clr.w   d1
		bra.s   loc_22A2C
loc_22A22:
		cmpi.w  #STATCAP_DEFENSE,d1
		ble.s   loc_22A2C
		move.w  #STATCAP_DEFENSE,d1
loc_22A2C:
		bsr.w   SetBaseDefense  
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseDefense


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w base agility, capping at 99

IncreaseBaseAgility:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseAgility  
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22A4C
		clr.w   d1
		bra.s   loc_22A56
loc_22A4C:
		cmpi.w  #STATCAP_AGILITY,d1
		ble.s   loc_22A56
		move.w  #STATCAP_AGILITY,d1
loc_22A56:
		bsr.w   SetBaseAgility  
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseAgility


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w base move, capping at 9

IncreaseBaseMove:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseMove     
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22A76
		clr.w   d1
		bra.s   loc_22A80
loc_22A76:
		cmpi.w  #STATCAP_MOVE,d1
		ble.s   loc_22A80
		move.w  #STATCAP_MOVE,d1
loc_22A80:
		bsr.w   SetBaseMove     
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseMove


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w base critical, capping at 99

IncreaseBaseCritical:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseCritical 
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22AA0
		clr.w   d1
		bra.s   loc_22AAA
loc_22AA0:
		cmpi.w  #STATCAP_CRITICAL,d1
		ble.s   loc_22AAA
		move.w  #STATCAP_CRITICAL,d1
loc_22AAA:
		bsr.w   SetBaseCritical 
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseCritical


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w max HP, capping at 99

IncreaseMaxHp:
		
		movem.l d0/d2,-(sp)
		move.w  d1,d2
		bsr.w   GetMaxHp        
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22AC8
		clr.w   d1
		bra.s   loc_22AD2
loc_22AC8:
		cmpi.w  #STATCAP_HP,d1
		ble.s   loc_22AD2
		move.w  #STATCAP_HP,d1
loc_22AD2:
		bsr.w   SetMaxHp        
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseMaxHp


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w current HP, capping at max HP

IncreaseCurrentHp:
		
		movem.l d2-d3,-(sp)
		move.w  d1,d2
		bsr.w   GetMaxHp        
		move.w  d1,d3
		bsr.w   GetCurrentHp    
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22AF6
		clr.w   d1
		bra.s   loc_22AFC
loc_22AF6:
		cmp.w   d3,d1
		ble.s   loc_22AFC
		move.w  d3,d1
loc_22AFC:
		bsr.w   SetCurrentHp    
		movem.l (sp)+,d2-d3
		rts

    ; End of function IncreaseCurrentHp


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w max MP, capping at 99

IncreaseMaxMp:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetMaxMP        
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22B1C
		clr.w   d1
		bra.s   loc_22B26
loc_22B1C:
		cmpi.w  #STATCAP_MP,d1
		ble.s   loc_22B26
		move.w  #STATCAP_MP,d1
loc_22B26:
		bsr.w   SetMaxMp        
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseMaxMp


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's level for combatant D0

IncreaseLevelForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseLevel   
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseLevelForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base attack for combatant D0

IncreaseBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseAttack
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base defense for combatant D0

IncreaseBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseDefense
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base agility for combatant D0

IncreaseBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseAgility
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base move for combatant D0

IncreaseBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseMove
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base critical for combatant D0

IncreaseBaseCriticalForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseCritical
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's experience for combatant D0

IncreaseExperienceForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseExperience
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseExperienceForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's max HP for combatant D0

IncreaseMaxHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseMaxHp   
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's current HP for combatant D0

IncreaseCurrentHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseCurrentHp
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's max MP for combatant D0

IncreaseMaxMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseMaxMp   
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's current MP for combatant D0

IncreaseCurrentMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseCurrentMp
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

; Add d1.w to force member d0.w current MP, capping at max MP

IncreaseCurrentMp:
		
		movem.w d2-d3,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetCurrentMP    
		cmpi.w  #STATCAP_MP,d1
		bgt.s   loc_22BFA       ; skip if current MP > 99
		move.w  d1,-(sp)
		bsr.w   GetMaxMP        
		move.w  d1,d3
		move.w  (sp)+,d1
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22BF0
		clr.w   d1
		bra.s   loc_22BF6
loc_22BF0:
		cmp.w   d3,d1
		ble.s   loc_22BF6
		move.w  d3,d1
loc_22BF6:
		bsr.w   SetCurrentMp    
loc_22BFA:
		movem.w (sp)+,d2-d3
		rts

    ; End of function IncreaseCurrentMp


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 experience, capping at 99 if at level cap

IncreaseExperience:
		
		movem.l d0/d2-d3,-(sp)
		moveq   #100,d3
		bsr.s   IsAtLevelCap    
		bcc.s   loc_22C0C
		moveq   #99,d3
loc_22C0C:
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetExperience   
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22C1E
		clr.w   d1
		bra.s   loc_22C24
loc_22C1E:
		cmp.w   d3,d1
		ble.s   loc_22C24
		move.w  d3,d1
loc_22C24:
		bsr.w   SetExperience   
		movem.l (sp)+,d0/d2-d3
		rts

    ; End of function IncreaseExperience


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has reached the level cap -> CCR carry-bit set if true

IsAtLevelCap:
		movem.l d1-d2,-(sp)
		tst.b   d0
		blt.s   loc_22C50
		moveq   #FORCE_LEVEL_CAP_UNPROMOTED,d2
		jsr     j_GetClass
		cmpi.w  #PROMOTED_CLASSES_START,d1
		bcs.s   loc_22C46
		moveq   #FORCE_LEVEL_CAP_PROMOTED,d2
loc_22C46:
		jsr     j_GetLevel
		cmp.w   d2,d1
		blt.s   loc_22C56
loc_22C50:
		ori     #1,ccr
		bra.s   loc_22C58
loc_22C56:
		tst.b   d0
loc_22C58:
		movem.l (sp)+,d1-d2
		rts

    ; End of function IsAtLevelCap


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified attack

DecreaseModifiedAttack:
		
		neg.b   d1
		bsr.w   IncreaseModifiedAttack
		rts

    ; End of function DecreaseModifiedAttack


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified defense

DecreaseModifiedDefense:
		
		neg.b   d1
		bsr.w   IncreaseModifiedDefense
		rts

    ; End of function DecreaseModifiedDefense


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified agility

DecreaseModifiedAgility:
		
		neg.b   d1
		bsr.w   IncreaseModifiedAgility
		rts

    ; End of function DecreaseModifiedAgility


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified move

DecreaseModifiedMove:
		
		neg.b   d1
		bsr.w   IncreaseModifiedMove
		rts

    ; End of function DecreaseModifiedMove


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 max HP

DecreaseMaxHp:
		
		neg.w   d1
		bsr.w   IncreaseMaxHp   
		rts

    ; End of function DecreaseMaxHp


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 max MP

DecreaseMaxMp:
		
		neg.b   d1
		bsr.w   IncreaseMaxMp   
		rts

    ; End of function DecreaseMaxMp


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base attack

DecreaseBaseAttack:
		
		neg.b   d1
		bsr.w   IncreaseBaseAttack
		rts

    ; End of function DecreaseBaseAttack


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base defense

DecreaseBaseDefense:
		
		neg.b   d1
		bsr.w   IncreaseBaseDefense
		rts

    ; End of function DecreaseBaseDefense


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base agility

DecreaseBaseAgility:
		
		neg.b   d1
		bsr.w   IncreaseBaseAgility
		rts

    ; End of function DecreaseBaseAgility


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base move

DecreaseBaseMove:
		
		neg.b   d1
		bsr.w   IncreaseBaseMove
		rts

    ; End of function DecreaseBaseMove


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 current HP

DecreaseCurrentHp:
		
		neg.w   d1
		bsr.w   IncreaseCurrentHp
		rts

    ; End of function DecreaseCurrentHp


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 current MP

DecreaseCurrentMp:
		
		neg.b   d1
		bsr.w   IncreaseCurrentMp
		rts

    ; End of function DecreaseCurrentMp


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's max HP for combatant D0

DecreaseMaxHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseMaxHp   
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's max MP for combatant D0

DecreaseMaxMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseMaxMp   
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base attack for combatant D0

DecreaseBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseAttack
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base defense for combatant D0

DecreaseBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseDefense
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base agility for combatant D0

DecreaseBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseAgility
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base move for combatant D0

DecreaseBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseMove
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's current HP for combatant D0

DecreaseCurrentHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseCurrentHp
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's current MP for combatant D0

DecreaseCurrentMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseCurrentMp
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

; Move item D1 to force member D0 first empty item slot if available
; 
; CCR: carry-bit set if empty item slot not found

GiveItem:
		movem.l d0-d1/a0,-(sp)
		andi.b  #ITEMENTRY_MASK_INDEX_AND_BROKEN_BIT,d1
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d0
loc_22D3E:
		cmpi.b  #EMPTY_ITEM_SLOT,(a0)
		bne.s   loc_22D48
		move.b  d1,(a0)
		bra.s   loc_22D52
loc_22D48:
		addq.l  #1,a0
		dbf     d0,loc_22D3E
                
		ori     #1,ccr
loc_22D52:
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function GiveItem


; =============== S U B R O U T I N E =======================================

; Move item D1 to force member's first empty item slot for combatant D0 if available
; 
; CCR: carry-bit set if empty item slot not found

GiveItemForCombatant:
		
		movem.w d0-d2,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		move.b  d1,d0
		move.b  d2,d1
		bsr.s   GiveItem        
		movem.w (sp)+,d0-d2
		rts

    ; End of function GiveItemForCombatant


; =============== S U B R O U T I N E =======================================

; Empty force member D0 item slot D1 and rotate remaining down

RemoveItem:
		movem.l d0-d1/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		andi.w  #$FF,d1
loc_22D7E:
		cmpi.w  #3,d1
		bcc.s   loc_22D8E
		move.b  1(a0,d1.w),(a0,d1.w)
		addq.w  #1,d1
		bra.s   loc_22D7E
loc_22D8E:
		move.b  #EMPTY_ITEM_SLOT,3(a0)
		bsr.w   LoadCombatantDataForForceMember
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function RemoveItem


; =============== S U B R O U T I N E =======================================

; Empty force member's item slot D1 for combatant D0 and rotate remaining down

RemoveItemForCombatant:
		
		movem.w d0-d2,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		move.b  d1,d0
		move.b  d2,d1
		bsr.s   RemoveItem      
		movem.w (sp)+,d0-d2
		rts

    ; End of function RemoveItemForCombatant


; =============== S U B R O U T I N E =======================================

; Count force member D0 empty item slots -> D1
; 
;       CCR carry-bit set if all slots are occupied

CountOccupiedItemSlots:
		
		movem.l d0/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		moveq   #ITEM_SLOTS_COUNTER,d0
@Loop:
		cmpi.b  #EMPTY_ITEM_SLOT,(a0)+
		bne.s   @IncrementOccupiedItemSlotsCounter
		tst.w   d0
		bra.s   @Break
@IncrementOccupiedItemSlotsCounter:
		
		addq.w  #1,d1
		dbf     d0,@Loop
                
		ori     #1,ccr
@Break:
		movem.l (sp)+,d0/a0
		rts

    ; End of function CountOccupiedItemSlots


; =============== S U B R O U T I N E =======================================

; Count force member's empty item slots for combatant D0 -> D1

CountOccupiedItemSlotsForCombatant:
		
		movem.w d0,-(sp)
		jsr     j_GetEntity
		move.b  d1,d0
		bsr.s   CountOccupiedItemSlots
		movem.w (sp)+,d0
		rts

    ; End of function CountOccupiedItemSlotsForCombatant


; =============== S U B R O U T I N E =======================================

; Break force member D0 item in slot D1

BreakItem:
		movem.l d1/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		andi.w  #$FF,d1
		bset    #ITEMENTRY_BIT_BROKEN,(a0,d1.w)
		movem.l (sp)+,d1/a0
		rts

    ; End of function BreakItem


; =============== S U B R O U T I N E =======================================

; Break force member's item in slot D1 for combatant D0

BreakItemForCombatant:
		
		movem.w d0-d2,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		move.b  d1,d0
		move.b  d2,d1
		bsr.s   BreakItem       
		movem.w (sp)+,d0-d2
		rts

    ; End of function BreakItemForCombatant


; =============== S U B R O U T I N E =======================================

; Get item and slot indexes of a given type currently equipped by combatant
; 
;     In: D0 = force member index
;         D1 = item type mask
; 
;     Out: D2 = item index
;          D3 = item slot index
;          CCR carry-bit set if no equipped item found

GetEquippedItemForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetEquippedItem 
		movem.w (sp)+,d0
		rts

    ; End of function GetEquippedItemForCombatant


; =============== S U B R O U T I N E =======================================

; Equip force member with item in slot D2 for combatant D0

EquipItemForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   EquipItem       
		movem.w (sp)+,d0
		rts

    ; End of function EquipItemForCombatant


; =============== S U B R O U T I N E =======================================

; Load table of equippable items for combatant D0

LoadEquippableItemsForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   LoadEquippableItems
		movem.w (sp)+,d0
		rts

    ; End of function LoadEquippableItemsForCombatant


; =============== S U B R O U T I N E =======================================

; Check if item D2 type D1 can be equipped for combatant D0

IsItemEquippableForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IsItemEquippable
		movem.w (sp)+,d0
		rts

    ; End of function IsItemEquippableForCombatant


; =============== S U B R O U T I N E =======================================

; Check if force member is allowed to unequip for combatant D0

GetItemsCurseSettingsForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetItemsCurseSettings
		movem.w (sp)+,d0
		rts

    ; End of function GetItemsCurseSettingsForCombatant


; =============== S U B R O U T I N E =======================================

; Get address of item D1 entry -> A1

GetItemEntryAddress:
		
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		asl.w   #4,d1
		movea.l (p_ItemData).l,a1
		adda.w  d1,a1
		move.w  (sp)+,d1
		rts

    ; End of function GetItemEntryAddress


; =============== S U B R O U T I N E =======================================

; Get item D1 word-sized type flags -> D2

GetItemType:
		move.l  a1,-(sp)
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		bne.s   @OccupiedItemSlot
		clr.w   d2
		bra.s   @Continue
@OccupiedItemSlot:
		
		bsr.s   GetItemEntryAddress
		move.w  ITEMDEF_OFFSET_TYPE(a1),d2
@Continue:
		movea.l (sp)+,a1
		rts

    ; End of function GetItemType


; =============== S U B R O U T I N E =======================================

; Get price of item D1 -> D2

GetItemPrice:
		move.l  a1,-(sp)
		bsr.s   GetItemEntryAddress
		moveq   #0,d2
		move.w  ITEMDEF_OFFSET_PRICE(a1),d2
		movea.l (sp)+,a1
		rts

    ; End of function GetItemPrice


; =============== S U B R O U T I N E =======================================

; Out: d2.w, d3.w

GetEquippedWeaponIndex:
		
		move.w  ((word_FFCBAC-$1000000)).w,d2
		move.w  ((EQUIPPED_WEAPON_INDEX-$1000000)).w,d3
		rts

    ; End of function GetEquippedWeaponIndex


; =============== S U B R O U T I N E =======================================

; Get item and slot indexes of a given type currently equipped by entity
; 
;     In: D0 = entity index
;         D1 = item type mask
; 
;     Out: D2 = item entry
;          D3 = item slot index
;          CCR carry-bit set if no equipped item found

GetEquippedItem:
		
		movem.l d1/d4/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		move.w  d1,d4
		move.w  #ITEM_SLOTS_COUNTER,d3
@Loop:
		move.b  (a0,d3.w),d1
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		beq.s   @Next
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.s   @Next
		bsr.s   GetItemType     
		and.w   d4,d2
		bne.s   @GetItemIndex
@Next:
		dbf     d3,@Loop
                
		move.w  d3,d2
		ori     #1,ccr
		bra.s   @Continue
@GetItemIndex:
		
		move.b  d1,d2
		andi.w  #ITEMENTRY_MASK_INDEX,d2
@Continue:
		movem.l (sp)+,d1/d4/a0
		rts

    ; End of function GetEquippedItem


; =============== S U B R O U T I N E =======================================

; Equip force member D0 with item type D1 in slot D2, unequip old item

EquipItem:
		movem.l d0-d4/a0,-(sp)
		clr.w   d4
		move.b  d2,d4
		jsr     j_GetEntityItemsAddress
		bsr.w   GetEquippedItem 
		bcs.s   loc_22F18
		andi.b  #ITEMENTRY_MASK_INDEX_AND_BROKEN_BIT,(a0,d3.w)
						; unequip old item
loc_22F18:
		cmpi.w  #ITEM_SLOTS_NUMBER,d4
		bcc.s   loc_22F24
		ori.b   #ITEMENTRY_MASK_EQUIPPED_BIT,(a0,d4.w)
loc_22F24:
		bsr.w   FindCombatantEntry
		bne.s   loc_22F30
		jsr     j_LoadCombatantData
loc_22F30:
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function EquipItem


; =============== S U B R O U T I N E =======================================

; Load table of items equippable by force member D0

LoadEquippableItems:
		
		movem.l d0-d4/a0-a1,-(sp)
		lea     ((byte_FFA8C2-$1000000)).w,a1
		moveq   #-1,d3
		move.l  d3,(a1)+
		move.l  d3,(a1)+
		move.l  d3,(a1)+
		move.l  d3,(a1)+
		jsr     j_GetEntityItemsAddress
		clr.w   d3
		lea     ((byte_FFA8C2-$1000000)).w,a1
		clr.w   d4
loc_22F56:
		move.b  (a0)+,d2
		cmpi.b  #-1,d2
		beq.s   loc_22F70
		bsr.s   IsItemEquippable
		bcs.s   loc_22F68
		addq.w  #1,d3
		move.w  d4,(a1)+
		move.w  d2,(a1)+
loc_22F68:
		addq.w  #1,d4
		cmpi.w  #ITEM_SLOTS_NUMBER,d4
		bcs.s   loc_22F56
loc_22F70:
		move.w  d3,((TABLE_AT_FFA8C0-$1000000)).w
		movem.l (sp)+,d0-d4/a0-a1
		rts

    ; End of function LoadEquippableItems


; =============== S U B R O U T I N E =======================================

; Check if item D2 type D1 can be equipped by force member D0
; 
;       Out: CCR carry-bit set if false

IsItemEquippable:
		
		movem.l d1-d3/a1,-(sp)
		exg     d1,d2
		bsr.w   GetItemEntryAddress
		move.w  ITEMDEF_OFFSET_TYPE(a1),d3
		and.w   d2,d3
		beq.s   loc_22FA0
		jsr     j_GetClass
		move.l  (a1),d3         ; D3 = item equip flags
		btst    d1,d3
		beq.s   loc_22F9E       ; branch if item cannot be equipped
loc_22F98:
		movem.l (sp)+,d1-d3/a1
		rts
loc_22F9E:
		tst.l   (a1)
loc_22FA0:
		ori     #1,ccr
		bra.s   loc_22F98

    ; End of function IsItemEquippable


; =============== S U B R O U T I N E =======================================

; Get curse settings for all items equipped by entity D0 -> D1

GetItemsCurseSettings:
		
		movem.w d2-d4,-(sp)
		clr.w   d4
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_CURSE,d1
		beq.s   @Skip           ; skip if entity is not cursed
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		bsr.w   GetItemCurseSetting
		move.w  #ITEMTYPE_MASK_RING,d1
		bsr.w   GetItemCurseSetting
		tst.w   d4
		bne.s   @Skip
		bset    #7,d4
@Skip:
		move.w  d4,d1
		movem.w (sp)+,d2-d4
		rts

    ; End of function GetItemsCurseSettings


; =============== S U B R O U T I N E =======================================

; Get curse setting of item type D1 currently equipped by entity D0 -> D4

GetItemCurseSetting:
		
		bsr.w   GetEquippedItem 
		bcs.s   @Return         ; return if item of given type is not equipped
		move.b  d2,d1
		bsr.w   GetItemType     
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   @Return         ; return if item is not cursed
		andi.w  #ITEMTYPE_MASK_CURSE_SETTING,d2
		bset    d2,d4           ; bit 0 set = chance to paralyze, bit 1 set = chance to inflict damage back to attacker
@Return:
		rts

    ; End of function GetItemCurseSetting


; =============== S U B R O U T I N E =======================================

; Find enemy combatant d0.w item index to drop -> d1.w if it exists, else -1

FindItemToDrop:
		
		movem.l d0/d2-d3/a0-a1,-(sp)
		bsr.w   alt_GetEntity   
		cmpi.b  #EMPTY_COMBATANT_SLOT,d0
		beq.s   @Skip           ; skip if combatant entry is unoccupied
		tst.b   d0
		bge.s   @Skip           ; skip if force member
		jsr     j_GetEntityItemsAddress
		move.w  #ITEM_SLOTS_COUNTER,d1
@Loop:
		move.b  (a0)+,d2
		cmpi.b  #EMPTY_ITEM_SLOT,d2
		beq.s   @Skip           ; skip if item slot is empty
		andi.w  #ITEMENTRY_MASK_INDEX,d2
		lea     table_ItemsToDrop(pc), a1
@FindItem:
		move.b  (a1)+,d3
		blt.s   @Skip           ; skip if reached end of list
		cmp.b   d2,d3
		bne.s   @Next
		move.w  d2,d1
		bra.s   @ItemFound
@Next:
		bra.s   @FindItem
		dbf     d1,@Loop
@Skip:
		move.w  #-1,d1
@ItemFound:
		movem.l (sp)+,d0/d2-d3/a0-a1
		rts

    ; End of function FindItemToDrop

table_ItemsToDrop:
		; List of item indexes to be dropped by enemies, $FF terminated
		dc.b ITEM_DOOM_BLADE
		dc.b ITEM_HEAT_AXE
		dc.b ITEM_ATLAS
		dc.b ITEM_DEMON_ROD
		dc.b ITEM_YOGURT_RING
		dc.b $FF

; =============== S U B R O U T I N E =======================================

; Get address of spell D1 entry -> A1

GetSpellEntryAddress:
		
		move.w  d1,-(sp)
		rol.b   #2,d1
		andi.w  #$FF,d1
		asl.w   #2,d1
		movea.l (p_SpellData).l,a1
		adda.w  d1,a1
		move.w  (sp)+,d1
		rts

    ; End of function GetSpellEntryAddress


; =============== S U B R O U T I N E =======================================

; Get MP cost of spell D1 -> D2

GetMPCost:
		movem.l d1/a1,-(sp)
		bsr.s   GetSpellEntryAddress
		clr.w   d2
		move.b  SPELL_OFFSET_MP_COST(a1),d2
		movem.l (sp)+,d1/a1
		rts

    ; End of function GetMPCost


; =============== S U B R O U T I N E =======================================

; Get address of range D4 entry -> A1

GetRangeEntryAddress:
		
		move.w  d4,-(sp)
		lea     table_RangeData(pc), a1
		andi.w  #$FF,d4
		asl.w   #3,d4
		adda.w  d4,a1
		move.w  (sp)+,d4
		rts

    ; End of function GetRangeEntryAddress


; =============== S U B R O U T I N E =======================================

; Find targetable spaces from range D4

FindTargetableSpaces:
		
		movem.l d0-d4/a0-a1,-(sp)
		cmpi.b  #-1,d4
		beq.s   loc_230DA
		bsr.s   GetRangeEntryAddress
		clr.w   d1
		jsr     j_ClearPassabilityFlags
		clr.b   ((TARGETING_GROUP_BITFIELD-$1000000)).w
		move.b  RANGE_OFFSET_GROUP(a1),d4
		beq.w   loc_230D4
		moveq   #3,d3           ; max range cap
		clr.w   d4
		bsr.w   SetupTargetingMoveCosts
		move.b  RANGE_OFFSET_GROUP(a1),d1
		andi.b  #RANGE_GROUP_MASK_TARGETS,d1
		move.b  d1,((TARGETING_GROUP_BITFIELD-$1000000)).w
		move.b  (a1),d1         ; D1 = max distance
		move.b  RANGE_OFFSET_MIN_DISTANCE(a1),d2
		bsr.w   MakeTargetingGrid
		clr.w   d1
		move.b  RANGE_OFFSET_AREA(a1),d1
		bge.s   loc_230CA
		andi.w  #$7F,d1 
		lea     table_AreaCursors_2(pc), a1
		bra.s   loc_230CE
loc_230CA:
		lea     table_AreaCursors_1(pc), a1
loc_230CE:
		move.b  (a1,d1.w),((AREA_CURSOR_INDEX-$1000000)).w
loc_230D4:
		movem.l (sp)+,d0-d4/a0-a1
		rts
loc_230DA:
		clr.b   ((TARGETING_GROUP_BITFIELD-$1000000)).w
		clr.b   d1
		jsr     j_ClearPassabilityFlags
		clr.b   ((AREA_CURSOR_INDEX-$1000000)).w
		bra.s   loc_230D4

    ; End of function FindTargetableSpaces

table_AreaCursors_1:
		dc.b 0
		dc.b 17
		dc.b 18
table_AreaCursors_2:
		dc.b 0
		dc.b 0
		dc.b 18

; =============== S U B R O U T I N E =======================================

; In: D0 = caster index
;     D1 = target index
;     D4 = range index

FindTargetsWithinArea:
		
		movem.l d0-d4/a1,-(sp)
		cmpi.b  #255,d4
		beq.s   @Skip           ; skip if range index = 255
		movem.w d0-d1/d4,-(sp)
		move.b  d1,d0
		moveq   #3,d3
		clr.w   d4
		bsr.w   SetupTargetingMoveCosts
		movem.w (sp)+,d0-d1/d4
		bsr.w   GetRangeEntryAddress
		move.b  RANGE_OFFSET_GROUP(a1),d4
		bsr.s   GetAdjustedGroupFlags
		move.b  d4,((TARGETING_GROUP_BITFIELD-$1000000)).w
		move.b  d1,d0
		move.b  RANGE_OFFSET_AREA(a1),d1
		clr.b   d2
		bsr.w   MakeTargetingGrid
@Continue:
		movem.l (sp)+,d0-d4/a1
		rts
@Skip:
		jsr     j_ClearPassabilityFlags
		bra.s   @Continue

    ; End of function FindTargetsWithinArea


; =============== S U B R O U T I N E =======================================

; Check if casting combatant D0 is an enemy and adjust group flags D4 accordingly

GetAdjustedGroupFlags:
		
		move.w  d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   @Skip           ; skip if combatant is a force member
		bsr.s   AdjustGroupFlags
@Skip:
		move.w  (sp)+,d1
		rts

    ; End of function GetAdjustedGroupFlags


; =============== S U B R O U T I N E =======================================

; Convert group designation for enemy actions.

AdjustGroupFlags:
		
		move.w  d5,-(sp)
		move.w  d4,d5
		andi.w  #RANGE_GROUP_MASK_ALL,d4
		andi.w  #RANGE_GROUP_MASK_TARGETS,d5
		or.b    table_AdjustedGroupFlags(pc,d5.w),d4
		move.w  (sp)+,d5
		rts

    ; End of function AdjustGroupFlags

table_AdjustedGroupFlags:
		dc.b RANGE_GROUP_NONE
		dc.b RANGE_GROUP_FOES
		dc.b RANGE_GROUP_FRIENDS
		dc.b RANGE_GROUP_FRIENDS_AND_FOES

; =============== S U B R O U T I N E =======================================

; Jump to range/equip effect routine

JumpToRangeOrEquipEffect:
		
		movem.l d4/a1,-(sp)
		cmpi.b  #255,d4
		beq.s   @Skip           ; skip if range or equip effect index = 255
		bsr.w   GetRangeEntryAddress
		jsr     RANGE_OFFSET_ROUTINE(a1)
@Skip:
		movem.l (sp)+,d4/a1
		rts

    ; End of function JumpToRangeOrEquipEffect

