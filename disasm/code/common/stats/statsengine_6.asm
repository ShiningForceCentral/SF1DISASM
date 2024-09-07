
; ASM FILE code\common\stats\statsengine_6.asm :
; 0x244CA..0x246EC : Character stats engine

; =============== S U B R O U T I N E =======================================

; Apply distance to target priority -> d6.w
; 
; Starts at 400 points for adjacent targets, -40 points per distance greater than 1 space.

ApplyDistanceToTargetPriority:
		
		movem.l d1-d2/a0,-(sp)
		move.w  (a0)+,d2
		move.w  (a0),d1
		bsr.w   CalculateDistanceToTarget
		move.w  #100,d1
		subq.w  #1,d7
		muls.w  #10,d7
		sub.w   d7,d1
		ble.s   loc_244EA
		muls.w  #4,d1
		add.w   d1,d6
loc_244EA:
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function ApplyDistanceToTargetPriority


; =============== S U B R O U T I N E =======================================

ApplyHealthToTargetPriority:
		
		movem.l d0-d2,-(sp)
		move.w  (a1),d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d2
		jsr     j_GetCurrentHpForCombatant
		muls.w  #100,d1
		divs.w  d2,d1
		muls.w  #1,d1
		add.w   d1,d6
		movem.l (sp)+,d0-d2
		rts

    ; End of function ApplyHealthToTargetPriority


; =============== S U B R O U T I N E =======================================

PriorityRoutine_LowHealth:
		
		movem.l d0-d2,-(sp)
		move.w  (a1),d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d2
		jsr     j_GetCurrentHpForCombatant
		move.w  d2,-(sp)
		sub.w   d1,d2
		muls.w  #100,d2
		move.w  (sp)+,d1
		divs.w  d1,d2
		move.w  d2,d6
		movem.l (sp)+,d0-d2
		rts

    ; End of function PriorityRoutine_LowHealth


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotQuickened:
		
		move.w  #STATUSEFFECT_QUICK,d6
		bra.s   sub_24562

    ; End of function PriorityRoutine_NotQuickened


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotBoosted:
		
		move.w  #STATUSEFFECT_BOOST,d6
		bra.s   sub_24562

    ; End of function PriorityRoutine_NotBoosted


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotShielded:
		
		move.w  #STATUSEFFECT_SHIELD,d6
		bra.s   sub_24562

    ; End of function PriorityRoutine_NotShielded


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotSlowed:
		
		move.w  #STATUSEFFECT_SLOW,d6
		bra.s   sub_24580

    ; End of function PriorityRoutine_NotSlowed


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotDispelled:
		
		move.w  #STATUSEFFECT_DISPEL,d6
		bra.s   sub_24580

    ; End of function PriorityRoutine_NotDispelled


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotMuddled:
		
		move.w  #STATUSEFFECT_MUDDLE,d6
		bra.s   sub_24580

    ; End of function PriorityRoutine_NotMuddled


; =============== S U B R O U T I N E =======================================

sub_24562:
		movem.l d0-d1,-(sp)
		move.w  (a1),d0
		jsr     j_GetStatusEffectsForCombatant
		and.w   d6,d1
		beq.s   loc_24576
		clr.w   d6
		bra.s   loc_2457A
loc_24576:
		move.w  #100,d6
loc_2457A:
		movem.l (sp)+,d0-d1
		rts

    ; End of function sub_24562


; =============== S U B R O U T I N E =======================================

sub_24580:
		movem.l d0-d2,-(sp)
		move.b  d0,d2
		move.w  (a1),d0
		jsr     j_GetStatusEffectsForCombatant
		and.w   d6,d1
		beq.s   loc_24596
		clr.w   d6
		bra.s   loc_2459C
loc_24596:
		move.b  d2,d0
		bsr.w   priority_ClassDistanceHealth
loc_2459C:
		movem.l (sp)+,d0-d2
		rts

    ; End of function sub_24580


; =============== S U B R O U T I N E =======================================

sub_245A2:
		movem.l d0-d2/a0-a5,-(sp)
		lea     ((byte_FFA8C2-$1000000)).w,a0
		lea     $84(a0),a1
		lea     $C6(a0),a2
		move.w  -2(a0),d0
		subq.w  #1,d0
loc_245B8:
		ble.s   loc_24602
		lea     4(a0),a3
		lea     2(a1),a4
		lea     2(a2),a5
		move.w  d0,d1
loc_245C8:
		subq.w  #1,d1
		blt.s   loc_245F2
		move.w  (a2),d2
		cmp.w   (a5),d2
		bcc.s   loc_245E4
		move.l  (a0),d2
		move.l  (a3),(a0)
		move.l  d2,(a3)
		move.w  (a1),d2
		move.w  (a4),(a1)
		move.w  d2,(a4)
		move.w  (a2),d2
		move.w  (a5),(a2)
		move.w  d2,(a5)
loc_245E4:
		adda.w  #4,a3
		adda.w  #2,a4
		adda.w  #2,a5
		bra.s   loc_245C8
loc_245F2:
		adda.w  #4,a0
		adda.w  #2,a1
		adda.w  #2,a2
		subq.w  #1,d0
		bra.s   loc_245B8
loc_24602:
		movem.l (sp)+,d0-d2/a0-a5
		rts

    ; End of function sub_245A2


; =============== S U B R O U T I N E =======================================

; Get land effect of space occupied by combatant D0 -> D1

GetLandEffectForCombatant:
		
		move.w  d2,-(sp)
		jsr     j_GetCombatantPosition
		bsr.s   GetLandEffectAtPosition
		move.w  (sp)+,d2
		rts

    ; End of function GetLandEffectForCombatant


; =============== S U B R O U T I N E =======================================

; Get land effect of space at position D2,D1 -> D1

GetLandEffectAtPosition:
		
		movem.l d2/a1,-(sp)
		bsr.s   GetTerrainEntryAddress
		movea.l a0,a1
		move.b  (a1),d1
		jsr     j_GetLandEffectEntryAddress
		andi.w  #$FF,d1
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.b  1(a1),d1
		movea.l (p_table_26BF2).l,a0
		bsr.w   GetVariableLengthEntryAddress
		move.w  d2,d1
		movem.l (sp)+,d2/a1
		rts

    ; End of function GetLandEffectAtPosition


; =============== S U B R O U T I N E =======================================

; Get terrain entry address of space at position D2,D1 -> A0

GetTerrainEntryAddress:
		
		movem.w d1-d2,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  (a0,d1.w),d1
		movea.l (p_TerrainData).l,a0
		andi.w  #$FF,d1
		asl.w   #2,d1
		adda.w  d1,a0
		movem.w (sp)+,d1-d2
		rts

    ; End of function GetTerrainEntryAddress


; =============== S U B R O U T I N E =======================================

sub_2466C:
		movem.l d2/a0,-(sp)
		bsr.w   IsFlyingOrHovering
		bne.s   loc_2467A
		clr.w   d1
		bra.s   loc_24688
loc_2467A:
		jsr     j_GetCombatantPosition
		bsr.s   GetTerrainEntryAddress
		move.b  3(a0),d1
		ext.w   d1
loc_24688:
		movem.l (sp)+,d2/a0
		rts

    ; End of function sub_2466C


; =============== S U B R O U T I N E =======================================

; Get background layers for terrain -> D0, D1

GetTerrainBackgrounds:
		
		movem.l d2/a0,-(sp)
		jsr     j_GetCombatantPosition
		bsr.s   GetTerrainEntryAddress
		move.w  #-1,d0
		move.b  2(a0),d1
		ext.w   d1
		cmpi.w  #-1,d1
		beq.s   loc_246CE
		tst.b   d1
		bge.s   loc_246CA
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #9,d0
		bcc.s   loc_246C0
		move.b  byte_246D4-1(pc,d0.w),d0
		bra.s   loc_246C8
loc_246C0:
		move.b  ((byte_FFCBB3-$1000000)).w,d0
		move.b  byte_246DB(pc,d0.w),d0
loc_246C8:
		ext.w   d0
loc_246CA:
		andi.w  #$7F,d1 
loc_246CE:
		movem.l (sp)+,d2/a0
		rts

    ; End of function GetTerrainBackgrounds

byte_246D4:     dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b 0
		dc.b 0
byte_246DB:     dc.b 8
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
		dc.b 8
		dc.b 8
		dc.b 8
		dc.b $FF
