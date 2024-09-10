
; ASM FILE code\gameflow\battle\battlefunctions.asm :
; 0x24FC4..0x25154 : Battle functions

; =============== S U B R O U T I N E =======================================

ClearPassabilityFlags:
		
		movem.l d0/a0,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		bra.s   loc_24FD6

    ; End of function ClearPassabilityFlags


; =============== S U B R O U T I N E =======================================

ClearTableAtFFA8C0:
		
		movem.l d0/a0,-(sp)
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
loc_24FD6:
		move.w  #$3FF,d0
loc_24FDA:
		move.b  d1,(a0)+        ; Clear RAM Table (A0)
		dbf     d0,loc_24FDA
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function ClearTableAtFFA8C0


; =============== S U B R O U T I N E =======================================

; Wrapper for 25026 and 24FEC

InitializeBattleMap:
		
		bsr.s   sub_25026       
		bsr.s   TrimBattleTerrain
		rts

    ; End of function InitializeBattleMap


; =============== S U B R O U T I N E =======================================

; Trim battle terrain table down to map size

TrimBattleTerrain:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		movea.l a0,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d1
		subq.w  #1,d1
loc_25000:
		clr.b   (a0)
		clr.b   -1(a0,d0.w)
		adda.w  d0,a0
		dbf     d1,loc_25000
                
		move.w  ((MAP_HEIGHT-$1000000)).w,d1
		subq.w  #1,d1
		mulu.w  d0,d1
		subq.w  #1,d0
loc_25016:
		clr.b   (a1,d1.w)
		clr.b   (a1)+
		dbf     d0,loc_25016
                
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function TrimBattleTerrain


; =============== S U B R O U T I N E =======================================

; Load map size and terrain data

sub_25026:
		movem.l d0-d3/a0-a2,-(sp)
		movea.l ((BATTLE_HEADER_POINTER-$1000000)).w,a2
		lea     BATTLEHEADER_OFFSET_MAP_WIDTH(a2),a0
		clr.w   d0
		move.b  (a0)+,d0
		addq.w  #2,d0
		move.w  d0,((MAP_WIDTH-$1000000)).w
		move.b  (a0)+,d0
		addq.w  #2,d0
		move.w  d0,((MAP_HEIGHT-$1000000)).w
		lea     ((TERRAIN_DATA-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		lea     1(a1,d0.w),a1
		moveq   #-1,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d2
		subq.w  #3,d2
loc_25058:
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		subq.w  #3,d3
loc_2505E:
		tst.w   d0
		bge.s   loc_25074
		move.b  (a0)+,d0
		move.b  d0,d1
		andi.w  #$F0,d0 
		asr.w   #4,d0
		andi.w  #$F,d1
		move.b  (a2,d1.w),d1
loc_25074:
		move.b  d1,(a1)+
		subq.w  #1,d0
		dbf     d3,loc_2505E
                
		adda.w  #2,a1
		dbf     d2,loc_25058
                
		move.l  ((AI_REGIONS_POINTER-$1000000)).w,d0
		beq.w   loc_250D4
		movea.l d0,a0
		lea     ((byte_FFB0C0-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		lea     1(a1,d0.w),a1
		moveq   #-1,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d2
		subq.w  #3,d2
loc_250A2:
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		subq.w  #3,d3
loc_250A8:
		tst.w   d0
		bge.s   loc_250BA
		move.b  (a0)+,d0
		move.b  d0,d1
		andi.w  #$F0,d0 
		asr.w   #4,d0
		andi.w  #$F,d1
loc_250BA:
		tst.b   -$400(a1)
		bne.s   loc_250C4
		clr.b   (a1)+
		bra.s   loc_250C8
loc_250C4:
		move.b  d1,(a1)+
		subq.w  #1,d0
loc_250C8:
		dbf     d3,loc_250A8
                
		adda.w  #2,a1
		dbf     d2,loc_250A2
loc_250D4:
		movem.l (sp)+,d0-d3/a0-a2
		rts

    ; End of function sub_25026


; =============== S U B R O U T I N E =======================================

ClearTerrainAtOccupiedSpaces:
		
		movem.l d0-d2/a0,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_250E4:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_25100
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; convert coordinates to offset
		clr.b   (a0,d1.w)
loc_25100:
		dbf     d0,loc_250E4
                
		movem.l (sp)+,d0-d2/a0
		rts

    ; End of function ClearTerrainAtOccupiedSpaces


; =============== S U B R O U T I N E =======================================

; Reset target grid (i.e., passability flags table) and load from A0

LoadPredefinedTargetGrid:
		
		movem.l d0-d3/a0-a1,-(sp)
		bsr.w   ClearPassabilityFlags
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		lea     1(a1,d0.w),a1
		moveq   #-1,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d2
		subq.w  #3,d2
loc_25126:
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		subq.w  #3,d3
loc_2512C:
		tst.w   d0
		bge.s   loc_2513E
		move.b  (a0)+,d0
		move.b  d0,d1
		andi.w  #$F0,d0 
		asr.w   #4,d0
		andi.w  #$F,d1
loc_2513E:
		move.b  d1,(a1)+
		subq.w  #1,d0
		dbf     d3,loc_2512C
                
		adda.w  #2,a1
		dbf     d2,loc_25126
                
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function LoadPredefinedTargetGrid

