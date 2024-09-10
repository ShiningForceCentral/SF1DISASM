
; ASM FILE code\gameflow\battle\battlefieldengine.asm :
; 0x20404..0x20A04 : Battlefield engine

; =============== S U B R O U T I N E =======================================

; In: A0 = move cost entry address

MakeEffectiveMoveCosts:
		
		bsr.w   LoadMoveCosts   
		bsr.w   BlockSpacesOccupiedByOpponents

    ; End of function MakeEffectiveMoveCosts


; =============== S U B R O U T I N E =======================================

; Setup registers to calculate and load total move costs to table at $FFA8C0
; 
; In: D1 = moving combatant's Y
;     D2 = moving combatant's X
;     D3 = moving combatant's modified move * 2 (i.e., move points)

PopulateTotalMoveCosts:
		
		movem.l d1/a0,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = moving combatant's position converted to offset
		adda.w  d1,a0           ; A0 = passability flags entry address
		moveq   #-1,d1
		jsr     j_ClearPassabilityFlags
		jsr     j_ClearTableAtFFA8C0
		bsr.s   CalculateTotalMoveCosts
		movem.l (sp)+,d1/a0
		rts

    ; End of function PopulateTotalMoveCosts


; =============== S U B R O U T I N E =======================================

; Calculate total move costs to reachable spaces, load to table at $FFA8C0
; 
; In: A0 = passability flags entry address
;     D3 = moving combatant's modified move * 2 (i.e., move points)

CalculateTotalMoveCosts:
		
		movem.l d0-d5/a0-a1,-(sp)
		lea     bt_204F6(pc), a1
		clr.w   d0
		clr.w   d1
		clr.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
						; clear total move cost at starting position
		move.w  ((MAP_WIDTH-$1000000)).w,d4
loc_20446:
		suba.w  d4,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space up
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_20464       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_20464
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #0,(a0)
		bra.w   loc_20446

    ; End of function CalculateTotalMoveCosts


; =============== S U B R O U T I N E =======================================

sub_20464:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		adda.w  d4,a0
		adda.w  d4,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space down
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_2048C       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_2048C
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #4,(a0)
		bra.w   loc_20446

    ; End of function sub_20464


; =============== S U B R O U T I N E =======================================

sub_2048C:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		suba.w  d4,a0
		subq.l  #1,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space left
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_204B4       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_204B4
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #$C,(a0)
		bra.w   loc_20446

    ; End of function sub_2048C


; =============== S U B R O U T I N E =======================================

sub_204B4:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		addq.l  #1,a0
		addq.l  #1,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space right
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_204DC       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_204DC
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #8,(a0)
		bra.w   loc_20446

    ; End of function sub_204B4


; =============== S U B R O U T I N E =======================================

sub_204DC:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		subq.l  #1,a0
		tst.b   d0
		beq.s   loc_204F0
		move.b  (a0),d1
		jmp     (a1,d1.w)
loc_204F0:
		movem.l (sp)+,d0-d5/a0-a1
		rts

    ; End of function sub_204DC

bt_204F6:       bra.w   sub_20464       ; related to move costs calculation
		bra.w   sub_2048C
		bra.w   sub_204DC
		bra.w   sub_204B4

; =============== S U B R O U T I N E =======================================

; Load move costs table given entry at A0, mapped to current terrain data

LoadMoveCosts:
		
		movem.l d0-d2/a1-a2,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a1
		movea.l (p_TerrainData).l,a2
		clr.w   d2
		move.w  #$3FF,d0
loc_2051A:
		move.b  (a1),d1
		andi.w  #$FF,d1
		asl.w   #2,d1
		move.b  (a2,d1.w),d1    ; D1 = terrain type
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d2
		move.b  d2,OFFSET_CURRENT_TERRAIN_DATA_TO_MOVE_COSTS(a1)
		addq.l  #1,a1
		dbf     d0,loc_2051A
                
		movem.l (sp)+,d0-d2/a1-a2
		rts

    ; End of function LoadMoveCosts


; =============== S U B R O U T I N E =======================================

; Block spaces occupied by opponents (bits 0 and 1 of D4 determine if enemies or force members should be blocked, respectively)

BlockSpacesOccupiedByOpponents:
		
		movem.l d0-d3/a0,-(sp)
		lea     ((MOVE_COSTS-$1000000)).w,a0
		move.w  #COMBATANT_ENTRIES_COUNTER,d0
loc_2054A:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_2057A
		tst.b   d1
		bge.s   loc_20562       ; branch if force member
		btst    #1,d4
		beq.s   loc_2057A       ; skip if not tasked to block spaces occupied by force members
		bra.s   loc_20568
loc_20562:
		btst    #0,d4
		beq.s   loc_2057A       ; skip if not tasked to block spaces occupied by enemies
loc_20568:
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  #-1,(a0,d1.w)   ; make space at combatant position impassable
loc_2057A:
		dbf     d0,loc_2054A
                
		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function BlockSpacesOccupiedByOpponents


; =============== S U B R O U T I N E =======================================

; Setup registers to make effective move costs table for combatant D0

SetupEffectiveMoveCosts:
		
		movem.l d1-d4/a0,-(sp)
		jsr     j_GetMoveCostEntryAddress
loc_2058E:
		jsr     j_GetCombatantPosition
		bsr.w   MakeEffectiveMoveCosts
		movem.l (sp)+,d1-d4/a0
		rts

    ; End of function SetupEffectiveMoveCosts


; =============== S U B R O U T I N E =======================================

; Setup registers to make targeting move costs table

SetupTargetingMoveCosts:
		
		movem.l d1-d4/a0,-(sp)
		movea.l (p_MoveCostData).l,a0
		clr.w   d4
		bra.s   loc_2058E

    ; End of function SetupTargetingMoveCosts


; =============== S U B R O U T I N E =======================================

MakeEffectivePassabilityFlags:
		
		bsr.s   InitPassabilityFlags
		bsr.s   ClearAllowedToStayAtFlags
		rts

    ; End of function MakeEffectivePassabilityFlags


; =============== S U B R O U T I N E =======================================

; Initialize all spaces within move range as "allowed to pass through" and "allowed to stay at"

InitPassabilityFlags:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		movea.l (p_TerrainData).l,a1
		move.w  #$3FF,d0
loc_205C4:
		clr.b   (a0)
		cmpi.b  #-1,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		beq.s   loc_205D2       ; branch if space is outside move range
		ori.b   #3,(a0)
loc_205D2:
		addq.l  #1,a0
		dbf     d0,loc_205C4
                
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function InitPassabilityFlags


; =============== S U B R O U T I N E =======================================

; Clear "allowed to stay at" in passability flags table for all occupied spaces

ClearAllowedToStayAtFlags:
		
		movem.l d0-d2/a0-a1,-(sp)
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		move.w  #COMBATANT_ENTRIES_COUNTER,d0
loc_205EE:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_20612       ; skip if combatant slot is empty
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = combatant's position converted to offset
		tst.b   (a0,d1.w)
		beq.s   loc_20612       ; skip if position is our own
		bclr    #1,(a1,d1.w)    ; clear "allowed to stay at" flag at this position
loc_20612:
		dbf     d0,loc_205EE
                
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function ClearAllowedToStayAtFlags


; =============== S U B R O U T I N E =======================================

; Mark spaces within distances D2 to D1 as passable

MakeTargetingGrid:
		
		movem.l d0-d3/a0-a1,-(sp)
		cmpi.b  #SPECIAL_RANGE_LASER_EYE,d1
		bne.s   loc_2062E
		bsr.w   LoadLaserEyeTargetGrid
		bra.w   loc_2068C
loc_2062E:
		cmpi.b  #SPECIAL_RANGE_TORCH_EYE,d1
		bne.s   loc_2063C
		bsr.w   MakeTorchEyeTargetGrid
		bra.w   loc_2068C
loc_2063C:
		cmpi.b  #SPECIAL_RANGE_UNUSED,d1
		bne.s   loc_2064A
		bsr.w   MakeSpecialTargetGrid
		bra.w   loc_2068C
loc_2064A:
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		movea.l a0,a1
		movem.w d1-d2,-(sp)     ; -> push max and min distances
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = combatant's position converted to offset
		adda.w  d1,a0           ; A0 = passability flags entry address
		movem.w (sp)+,d1-d2     ; D1,D2 <- pull max and min distances
		move.w  d1,d3
		andi.w  #$7F,d1 
		move.w  #$3FF,d0
loc_20670:
		clr.b   (a1)
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a1),d1
		bcs.s   loc_20686
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a1),d2
		bhi.s   loc_20686
		bsr.s   sub_20692       
		bcs.s   loc_20686
		bset    #0,(a1)
loc_20686:
		addq.l  #1,a1
		dbf     d0,loc_20670
loc_2068C:
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function MakeTargetingGrid


; =============== S U B R O U T I N E =======================================

; In: A1 = current position into passability flags table

sub_20692:
		movem.l d0-d3/a2-a4,-(sp)
		move.l  a1,d1
		sub.l   a0,d1           ; D1 = offset to currently evaluated space
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		lea     table_206DC(pc), a2
		lea     OFFSET_PASSABILITY_FLAGS_TO_CURRENT_TERRAIN_DATA(a0),a3
						; A3 = current terrain data entry address
		move.w  #$1B,d0
loc_206AA:
		move.w  2(a2),d2
		muls.w  d3,d2
		add.w   (a2),d2
		cmp.w   d2,d1
		bne.s   loc_206CC
		move.w  6(a2),d2
		muls.w  d3,d2
		add.w   4(a2),d2
		tst.b   (a3,d2.w)
		bne.s   loc_206CC
		ori     #1,ccr
		bra.s   loc_206D6
loc_206CC:
		adda.w  #8,a2
		dbf     d0,loc_206AA
                
		tst.b   d0
loc_206D6:
		movem.l (sp)+,d0-d3/a2-a4
		rts

    ; End of function sub_20692

table_206DC:    ; Table of XY offsets, two bytes each X,Y
		dc.w 0, -3              ; Target relative position
		dc.w 0, -2              ; Obstruction relative position
                
		dc.w 0, -3
		dc.w 0, -1
                
		dc.w -1, -2
		dc.w -1, -1
                
		dc.w -1, -2
		dc.w 0, -1
                
		dc.w 0, -2
		dc.w 0, -1
                
		dc.w 1, -2
		dc.w 0, -1
                
		dc.w 1, -2
		dc.w 1, -1
                
		dc.w -2, -1
		dc.w -1, -1
                
		dc.w -2, -1
		dc.w -1, 0
                
		dc.w 2, -1
		dc.w 1, -1
                
		dc.w 2, -1
		dc.w 1, 0
                
		dc.w -3, 0
		dc.w -2, 0
                
		dc.w -3, 0
		dc.w -1, 0
                
		dc.w -2, 0
		dc.w -1, 0
                
		dc.w 2, 0
		dc.w 1, 0
                
		dc.w 3, 0
		dc.w 1, 0
                
		dc.w 3, 0
		dc.w 2, 0
                
		dc.w -2, 1
		dc.w -1, 0
                
		dc.w -2, 1
		dc.w -1, 1
                
		dc.w 2, 1
		dc.w 1, 0
                
		dc.w 2, 1
		dc.w 1, 1
                
		dc.w -1, 2
		dc.w -1, 1
                
		dc.w -1, 2
		dc.w 0, 1
                
		dc.w 0, 2
		dc.w 0, 1
                
		dc.w 1, 2
		dc.w 0, 1
                
		dc.w 1, 2
		dc.w 1, 1
                
		dc.w 0, 3
		dc.w 0, 1
                
		dc.w 0, 3
		dc.w 0, 2

; =============== S U B R O U T I N E =======================================

; Get Laser Eye's predefined target grid address, load to passability flags table

LoadLaserEyeTargetGrid:
		
		move.l  a0,-(sp)
		lea     table_LaserEyeTargetGrid(pc), a0
		bsr.w   LoadPredefinedTargetGrid
		movea.l (sp)+,a0
		rts

    ; End of function LoadLaserEyeTargetGrid

table_LaserEyeTargetGrid:
		dc.b $F0
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $20
		dc.b $21 
		dc.b $F0 
		dc.b $10
		dc.b $F1 
		dc.b $D1 
		dc.b $F0 
		dc.b $F1 
		dc.b $E1 
		dc.b $E0 
		dc.b $F1 
		dc.b $D1 
		dc.b $F0 
		dc.b $F0 
		dc.b $80 
		dc.b $21 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $F0 
		dc.b $D0 

; =============== S U B R O U T I N E =======================================

; Make Torch Eye's special target grid, clear space occupied by combatant D0

MakeTorchEyeTargetGrid:
		
		movem.l d1-d2/a0,-(sp)
		bsr.s   MakeSpecialTargetGrid
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		clr.b   (a0,d1.w)
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function MakeTorchEyeTargetGrid


; =============== S U B R O U T I N E =======================================

; Clear passability flags, mark all spaces within 2 of combatant D0 as targetable

MakeSpecialTargetGrid:
		
		movem.l d1-d3/a0,-(sp)
		moveq   #0,d1
		jsr     j_ClearPassabilityFlags
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		move.w  ((MAP_HEIGHT-$1000000)).w,d1
		subq.w  #1,d1
		blt.s   loc_20862
loc_2083A:
		move.w  ((MAP_WIDTH-$1000000)).w,d2
		subq.w  #1,d2
		blt.s   loc_2085E
loc_20842:
		bsr.w   CalculateDistanceToTarget
		cmpi.w  #2,d7
		bgt.s   loc_2085A
		move.w  d1,d3
		mulu.w  ((MAP_WIDTH-$1000000)).w,d3
		add.w   d2,d3
		move.b  #1,(a0,d3.w)
loc_2085A:
		dbf     d2,loc_20842
loc_2085E:
		dbf     d1,loc_2083A
loc_20862:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function MakeSpecialTargetGrid


; =============== S U B R O U T I N E =======================================

; Calculate distance up to 3 of tiles around D2,D1

sub_20868:
		movem.l d0-d3/a0-a1,-(sp)
		lea     ((MOVE_COSTS-$1000000)).w,a0
		clr.w   d0
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		mulu.w  d3,d1
		add.w   d2,d1
loc_2087E:
		move.b  (a1,d1.w),d2
		tst.b   d2
		bne.s   loc_2088E
		clr.b   (a0)+
		addq.w  #1,d0
		add.w   d3,d1
		bra.s   loc_2087E
loc_2088E:
		cmpi.b  #4,d2
		bne.s   loc_2089E
		move.b  #1,(a0)+
		addq.w  #1,d0
		sub.w   d3,d1
		bra.s   loc_2087E
loc_2089E:
		cmpi.b  #8,d2
		bne.s   loc_208AE
		move.b  #2,(a0)+
		addq.w  #1,d0
		subq.w  #1,d1
		bra.s   loc_2087E
loc_208AE:
		cmpi.b  #$C,d2
		bne.s   loc_208BE
		move.b  #3,(a0)+
		addq.w  #1,d0
		addq.w  #1,d1
		bra.s   loc_2087E
loc_208BE:
		cmpi.w  #$F,d0
		ble.s   loc_208C6
		moveq   #$F,d0
loc_208C6:
		lea     ((byte_FFCB28-$1000000)).w,a1
		subq.w  #1,d0
		bcs.s   loc_208D4
loc_208CE:
		move.b  -(a0),(a1)+
		dbf     d0,loc_208CE
loc_208D4:
		move.b  #-1,(a1)
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function sub_20868


; =============== S U B R O U T I N E =======================================

; Make total move costs table for enemy combatant D0
; 
; In: D3 = 

CreateTotalMoveCosts:
		
		movem.l d1-d4/a0,-(sp)
		jsr     j_GetMoveCostEntryAddress
		bsr.w   LoadMoveCosts   
		tst.w   d3
		bge.s   loc_208F6
		moveq   #1,d4
		bsr.w   BlockSpacesOccupiedByOpponents
loc_208F6:
		andi.w  #$7FFF,d3
		beq.s   loc_20900
		bsr.w   BlockAllOccupiedSpaces
loc_20900:
		jsr     j_GetModifiedMove
		move.w  d1,d3
		add.w   d3,d3           ; D3 = moving combatant's modified move * 2 (i.e., move points)
		jsr     j_GetCombatantPosition
		bsr.w   PopulateTotalMoveCosts
		movem.l (sp)+,d1-d4/a0
		rts

    ; End of function CreateTotalMoveCosts


; =============== S U B R O U T I N E =======================================

; In: D3 = 

BlockAllOccupiedSpaces:
		
		movem.l d0-d2/d5-a0,-(sp)
		jsr     j_GetCombatantPosition
		move.b  d0,d5
		move.w  ((MAP_WIDTH-$1000000)).w,d5
		lea     ((MOVE_COSTS-$1000000)).w,a0
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
@Loop:
		move.w  d1,-(sp)
		jsr     j_GetEntity
		move.w  d1,d6
		move.w  (sp)+,d1
		cmpi.b  #EMPTY_COMBATANT_SLOT,d6
		beq.s   @Next           ; go to next combatant if entry is unoccupied
		cmp.b   d6,d5
		beq.s   @Next
		cmpi.b  #EMPTY_COMBATANT_SLOT,d6
		beq.s   @Next           ; go to next combatant if entry is unoccupied (again!)
		tst.b   d6
		bge.s   @Next           ; go to next combatant if entity is a force member
		bsr.s   CalculateDistanceToTarget
		cmp.w   d3,d7
		bcs.s   @Next
		movem.w d1-d2,-(sp)
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  #-1,(a0,d1.w)
		movem.w (sp)+,d1-d2
@Next:
		dbf     d0,@Loop
                
		movem.l (sp)+,d0-d2/d5-a0
		rts

    ; End of function BlockAllOccupiedSpaces


; =============== S U B R O U T I N E =======================================

; Calculate distance measured in spaces between positions D2,D1 and D6,D5 -> D7

CalculateDistance:
		
		movem.w d1-d2,-(sp)
		sub.w   d6,d2
		bge.s   loc_20984
		neg.w   d2
loc_20984:
		sub.w   d5,d1
		bge.s   loc_2098A
		neg.w   d1
loc_2098A:
		add.w   d2,d1
		move.w  d1,d7
		movem.w (sp)+,d1-d2
		rts

    ; End of function CalculateDistance


; =============== S U B R O U T I N E =======================================

; Calculate distance between combatant D0 and position D2,D1 -> D7

CalculateDistanceToTarget:
		
		movem.w d5-d6,-(sp)
		move.w  d2,d6
		move.w  d1,d5
		jsr     j_GetCombatantPosition
		bsr.w   CalculateDistance
		move.w  d6,d2
		move.w  d5,d1
		movem.w (sp)+,d5-d6
		rts

    ; End of function CalculateDistanceToTarget


; =============== S U B R O U T I N E =======================================

; Calculate distance between combatants D0 and D1 -> D7

CalculateDistanceBetweenCombatants:
		
		movem.w d1-d3,-(sp)
		move.w  d0,d3
		move.w  d1,d0
		jsr     j_GetCombatantPosition
		move.w  d3,d0
		bsr.w   CalculateDistanceToTarget
		movem.w (sp)+,d1-d3
		rts

    ; End of function CalculateDistanceBetweenCombatants


; =============== S U B R O U T I N E =======================================

; Check if space at position D2,D1 is occupied by a combatant
; 
; CCR: carry-bit set if true

IsSpaceOccupied:
		
		movem.l d0-d4,-(sp)
		clr.w   d4
		move.b  d2,d4           ; D4 = X
		clr.w   d3
		move.b  d1,d3           ; D3 = Y
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_209D8:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_209F8
		jsr     j_GetCombatantPosition
		cmp.w   d4,d2
		bne.s   loc_209F8
		cmp.w   d3,d1
		bne.s   loc_209F8
		ori     #1,ccr
		bra.s   loc_209FE
loc_209F8:
		dbf     d0,loc_209D8
                
		tst.w   d0
loc_209FE:
		movem.l (sp)+,d0-d4
		rts

    ; End of function IsSpaceOccupied

