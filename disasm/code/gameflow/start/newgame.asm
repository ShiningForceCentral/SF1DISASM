
; ASM FILE code\gameflow\start\newgame.asm :
; 0x21AEE..0x21B80 : New game initialization functions

; =============== S U B R O U T I N E =======================================

InitializeNewGame:
		
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		clr.b   ((DISPLAY_BATTLE_MESSAGES_TOGGLE-$1000000)).w
		lea     ((EVENT_FLAGS-$1000000)).w,a0
		move.w  #EVENT_FLAGS_COUNTER,d0
@ClearEventFlags_Loop:
		
		clr.b   (a0)+
		dbf     d0,@ClearEventFlags_Loop
                
		lea     ((DEALS_ITEMS-$1000000)).w,a0
		move.w  #DEALS_ITEMS_BYTES_COUNTER,d0
@ClearDealsItems_Loop:
		
		clr.b   (a0)+
		dbf     d0,@ClearDealsItems_Loop
                
		clr.l   ((CURRENT_GOLD-$1000000)).w
		movea.l (p_InitialForceMembersData).l,a0
		lea     ((FORCE_MEMBERS_DATA-$1000000)).w,a1
		move.w  #FORCE_MEMBERS_DATA_BYTES_COUNTER,d0
@InitForceMembersData_Loop:
		
		move.b  (a0)+,(a1)+
		dbf     d0,@InitForceMembersData_Loop
                
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		move.w  #FORCE_MEMBERS_COUNTER,d0
@ClearPromotedAtLevels_Loop:
		
		clr.b   (a0)+
		dbf     d0,@ClearPromotedAtLevels_Loop
                
		moveq   #REGULAR_FORCE_MEMBERS_COUNTER,d0
@LevelUpRegularForce_Loop:
		
		jsr     j_GetLevel
		move.w  d1,d2
		clr.w   d1
		jsr     j_SetLevel
		subq.w  #1,d2
@IncreaseStatsOnLevelUp_Loop:
		
		jsr     j_IncreaseStatsOnLevelUp
		dbf     d2,@IncreaseStatsOnLevelUp_Loop
                
		jsr     j_RefillHp
		jsr     j_RefillMp
		dbf     d0,@LevelUpRegularForce_Loop
                
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		move.w  #BATTLE_PARTY_SLOTS_COUNTER,d0
@EmptyBattleParty_Loop:
		
		move.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)+
		dbf     d0,@EmptyBattleParty_Loop
                
		clr.w   d0
		bsr.w   JoinForce       ; Max joins
		rts

    ; End of function InitializeNewGame

