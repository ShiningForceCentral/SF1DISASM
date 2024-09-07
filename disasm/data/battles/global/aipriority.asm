
; ASM FILE data\battles\global\aipriority.asm :
; 0x240E8..0x244CA : AI priority values by movetype and class

; =============== S U B R O U T I N E =======================================

; Use item AI -> CCR carry-bit set if unable to proceed

AiAction_UseItem:
		
		movem.l d1-d2/d4/a0-a1,-(sp)
		move.b  d2,((CURRENT_ITEM_OR_SPELL-$1000000)).w
		jsr     j_GetEntityItemsAddressForCombatant
		move.b  (a0,d2.w),d1    ; D1 = item index in slot number D2
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		beq.s   @RegularAttack  ; fall back to regular attack if item slot is empty
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_USABLE,d2
		beq.s   @RegularAttack  ; fall back to regular attack if item is not usable
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_USE_RANGE(a1),d4
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		bsr.s   LoadRangeData   
		move.b  ITEMDEF_OFFSET_USE_EFFECT(a1),((CURRENT_EFFECT-$1000000)).w
		bsr.w   GetRangeEntryAddress
		btst    #RANGE_GROUP_BIT_FRIENDS,RANGE_OFFSET_GROUP(a1)
		beq.s   @TargetingFoes
		lea     PriorityRoutine_LowHealth(pc), a1
		bra.s   @Continue
@TargetingFoes:
		
		lea     priority_ClassDistanceHealth(pc), a1
@Continue:
		move.l  a1,((PRIORITY_ROUTINE_ADDRESS-$1000000)).w
		move.b  #2,((CURRENT_BATTLEACTION_TYPE-$1000000)).w
@Done:
		movem.l (sp)+,d1-d2/d4/a0-a1
		rts
@RegularAttack:
		
		ori     #1,ccr
		bra.s   @Done

    ; End of function AiAction_UseItem


; =============== S U B R O U T I N E =======================================

LoadRegularAttackData:
		
		movem.l d4-d5,-(sp)
		clr.b   ((CURRENT_ATTACK_TYPE-$1000000)).w
		clr.b   ((BATTLE_ANIMATION_TYPE-$1000000)).w
		bsr.w   Battleaction_Attack
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		move.b  d5,((CURRENT_EFFECT-$1000000)).w
		bsr.s   LoadRangeData   
		clr.b   ((CURRENT_BATTLEACTION_TYPE-$1000000)).w
		movem.l (sp)+,d4-d5
		rts

    ; End of function LoadRegularAttackData


; =============== S U B R O U T I N E =======================================

; Load range D4 data

LoadRangeData:
		
		movem.l d4/a1,-(sp)
		bsr.w   GetRangeEntryAddress
		clr.w   d4
		move.b  (a1),d4
		cmpi.b  #4,d4           ; max distance must lower than 4
		bcs.s   @Continue
		moveq   #1,d4
@Continue:
		move.w  d4,((CURRENT_RANGE_MAX_DISTANCE-$1000000)).w
		move.b  RANGE_OFFSET_MIN_DISTANCE(a1),d4
		move.w  d4,((CURRENT_RANGE_MIN_DISTANCE-$1000000)).w
		move.b  RANGE_OFFSET_GROUP(a1),d4
		bsr.w   GetAdjustedGroupFlags
		move.b  d4,((TARGETING_RANGE_BITFIELD-$1000000)).w
		movem.l (sp)+,d4/a1
		rts

    ; End of function LoadRangeData


; =============== S U B R O U T I N E =======================================

sub_241A2:
		movem.w d1,-(sp)
		cmpi.b  #-1,d1
		bne.s   loc_241B0
		bsr.w   sub_241CA
loc_241B0:
		move.w  ((TARGETS_LIST-$1000000)).w,d1
		cmpi.b  #-1,d1
		beq.s   loc_241C0
		bsr.w   sub_24220
		bra.s   loc_241C4
loc_241C0:
		bsr.w   sub_2423E
loc_241C4:
		movem.w (sp)+,d1
		rts

    ; End of function sub_241A2


; =============== S U B R O U T I N E =======================================

sub_241CA:
		movem.l d0-d4,-(sp)
		jsr     j_GetModifiedMove
		move.w  d1,d3
		add.w   d3,d3
		clr.w   d4
		bsr.w   SetupEffectiveMoveCosts
		bsr.w   MakeEffectivePassabilityFlags
		move.b  -2(a0),d1
		bsr.w   sub_241F8
		lea     priority_ClassDistanceHealth(pc), a3
		bsr.w   sub_24324       
		movem.l (sp)+,d0-d4
		rts

    ; End of function sub_241CA


; =============== S U B R O U T I N E =======================================

sub_241F8:
		movem.l d0/d2/a0-a1,-(sp)
		lea     ((byte_FFB0C0-$1000000)).w,a0
		lea     -$C00(a0),a1
		clr.w   d2
		move.w  #$3FF,d0
loc_2420A:
		move.b  (a0)+,d2
		btst    d2,d1
		beq.s   loc_24214
		andi.b  #1,(a1)
loc_24214:
		addq.w  #1,a1
		dbf     d0,loc_2420A
                
		movem.l (sp)+,d0/d2/a0-a1
		rts

    ; End of function sub_241F8


; =============== S U B R O U T I N E =======================================

sub_24220:
		movem.l d0-d4,-(sp)
		move.b  d0,d4
		move.b  d1,d0
		jsr     j_GetCombatantPosition
		move.b  d4,d0
		move.w  ((CURRENT_RANGE_MAX_DISTANCE-$1000000)).w,d3
		bsr.w   sub_23D9C
		movem.l (sp)+,d0-d4
		rts

    ; End of function sub_24220


; =============== S U B R O U T I N E =======================================

sub_2423E:
		movem.w d1-d2,-(sp)
		move.b  #-1,((byte_FFCB28-$1000000)).w
		jsr     j_GetCombatantPosition
		move.w  d2,((word_FFCB38-$1000000)).w
		move.w  d1,((word_FFCB3A-$1000000)).w
		movem.w (sp)+,d1-d2
		rts

    ; End of function sub_2423E


; =============== S U B R O U T I N E =======================================

; Trigger AI regions (or set AI regions to trigger?)

sub_2425C:
		movem.l d0-d3/a0,-(sp)
		clr.b   d3
		lea     ((byte_FFB0C0-$1000000)).w,a0
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_24268:
		jsr     j_GetEntity
		tst.b   d1
		blt.s   loc_24284       ; branch if enemy
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  (a0,d1.w),d2
		bset    d2,d3
loc_24284:
		dbf     d0,loc_24268
                
		move.b  d3,((TRIGGERED_AI_REGIONS-$1000000)).w
		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function sub_2425C


; =============== S U B R O U T I N E =======================================

sub_24292:
		movem.l d1-d3,-(sp)
		movea.l ((ENEMY_BEHAVIORS_POINTER-$1000000)).w,a0
		move.l  a0,d2
		beq.w   loc_242E6
		jsr     j_GetEntity
		andi.w  #$7F,d1 
loc_242AA:
		clr.w   d2
		move.b  (a0),d2
		cmpi.b  #-1,d2
		beq.w   loc_242E6
		tst.b   d1
		beq.s   loc_242C4
		asl.w   #2,d2
		lea     1(a0,d2.w),a0
		subq.w  #1,d1
		bra.s   loc_242AA
loc_242C4:
		addq.l  #1,a0
		tst.w   d2
loc_242C8:
		beq.w   loc_242E6
		move.b  ((TRIGGERED_AI_REGIONS-$1000000)).w,d3
		and.b   (a0),d3
		bne.s   loc_242DA
		addq.l  #4,a0
		subq.w  #1,d2
		bra.s   loc_242C8
loc_242DA:
		addq.l  #1,a0
		clr.w   d7
		move.b  (a0)+,d7
loc_242E0:
		movem.l (sp)+,d1-d3
		rts
loc_242E6:
		move.w  #-1,d7
		bra.s   loc_242E0

    ; End of function sub_24292


; =============== S U B R O U T I N E =======================================

sub_242EC:
		move.l  a0,-(sp)
		jsr     j_GetEntity
		andi.w  #$7F,d1 
		lea     ((byte_FFA496-$1000000)).w,a0
		move.b  (a0,d1.w),d1
		ext.w   d1
		movea.l (sp)+,a0
		rts

    ; End of function sub_242EC


; =============== S U B R O U T I N E =======================================

sub_24306:
		movem.l d2/a0,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		andi.w  #$7F,d1 
		lea     ((byte_FFA496-$1000000)).w,a0
		move.b  d2,(a0,d1.w)
		movem.l (sp)+,d2/a0
		rts

    ; End of function sub_24306


; =============== S U B R O U T I N E =======================================

; In: A3 = priority routine address

sub_24324:
		movem.l d1/d6/a0-a2,-(sp)
		move.b  ((TARGETING_RANGE_BITFIELD-$1000000)).w,((TARGETING_GROUP_BITFIELD-$1000000)).w
		jsr     j_PopulateTargetsList
		lea     ((byte_FFA8C2-$1000000)).w,a0
		lea     $84(a0),a1
		lea     $C6(a0),a2
		move.w  -2(a0),d1
		subq.w  #1,d1
		blt.s   loc_24372
loc_24348:
		jsr     (a3)
		move.w  d6,(a2)+
		adda.w  #4,a0
		adda.w  #2,a1
		dbf     d1,loc_24348
                
		bsr.w   sub_245A2
		tst.w   ((TARGET_PRIORITY_TABLE-$1000000)).w
		beq.s   loc_24372
		move.w  ((TARGETS_LIST-$1000000)).w,d1
		bsr.w   CalculateDistanceBetweenCombatants
		tst.w   d0
loc_2436C:
		movem.l (sp)+,d1/d6/a0-a2
		rts
loc_24372:
		ori     #1,ccr
		bra.s   loc_2436C

    ; End of function sub_24324


; =============== S U B R O U T I N E =======================================

priority_ClassDistanceHealth:
		
		clr.w   d6
		bsr.s   ApplyClassToTargetPriority
		bsr.w   ApplyDistanceToTargetPriority
		bsr.w   ApplyHealthToTargetPriority
		rts

    ; End of function priority_ClassDistanceHealth


; =============== S U B R O U T I N E =======================================

; Apply class to target priority -> d6.w
; 
; 2 points per class priority value.

ApplyClassToTargetPriority:
		
		movem.l d0-d1/a0,-(sp)
		lea     table_ClassTargetPriorities(pc), a0
		move.w  (a1),d0
		jsr     j_GetClassForCombatant
		move.b  (a0,d1.w),d1    ; BUG: does not offset to proper table for movetype
		andi.w  #$FF,d1
		muls.w  #2,d1
		add.w   d1,d6
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function ApplyClassToTargetPriority

table_ClassTargetPriorities:
		dc.b 100
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 75
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 100
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 75
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 25
		dc.b 75
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 75
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 100
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 0
		dc.b 75
		dc.b 0
		dc.b 0
		dc.b 75
		dc.b 75
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 100
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 75
		dc.b 0
		dc.b 0
		dc.b 75
		dc.b 75
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 75
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 75
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 75
		dc.b 25
		dc.b 100
		dc.b 100
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 100
		dc.b 100
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 75
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 25
		dc.b 100
		dc.b 100
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 100
		dc.b 100
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 75
		dc.b 25
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 100
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 100
		dc.b 100
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 75
		dc.b 75
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 100
		dc.b 25
		dc.b 100
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 75
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 0
		dc.b 100
		dc.b 0
		dc.b 0
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 25
		dc.b 100
		dc.b 100
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
		dc.b 100
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
