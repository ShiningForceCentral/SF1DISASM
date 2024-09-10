
; ASM FILE code\common\stats\levelup.asm :
; 0x246EC..0x24BAC : Level up functions

; =============== S U B R O U T I N E =======================================

LevelUp:
		bsr.s   IncreaseStatsOnLevelUpForCombatant
		bcs.s   @Return
		bsr.w   DisplayLevelUpMessages
		tst.b   d0
@Return:
		rts

    ; End of function LevelUp


; =============== S U B R O U T I N E =======================================

; Increase stats on level up by force index

IncreaseStatsOnLevelUpForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   IncreaseStatsOnLevelUp
		movem.w (sp)+,d0
		rts

    ; End of function IncreaseStatsOnLevelUpForCombatant


; =============== S U B R O U T I N E =======================================

; Increase stats for force member D0 on level up

IncreaseStatsOnLevelUp:
		
		movem.l d0-d4/a0,-(sp)
		bsr.w   IsAtLevelCap    
		bcs.w   loc_247EA       ; if so, exit
		cmpi.b  #ALLY_JOGURT,d0
		beq.s   loc_24722       ; if force member is Jogurt, skip
		moveq   #1,d1           ; otherwise add 1 to level
		jsr     j_IncreaseLevel
loc_24722:
		clr.w   d1              ; set EXP to 0
		jsr     j_SetExperience
		jsr     j_GetLevel
		move.w  d1,d3           ; get new level, save to D3
		clr.w   d4
		lea     ((STATS_TO_GAIN-$1000000)).w,a0
		jsr     j_GetBaseAttack
		move.w  d1,d2           ; get current Attack to D2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+        ; store difference for message box
		jsr     j_SetBaseAttack
		addq.w  #1,d4
		jsr     j_GetBaseDefense
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetBaseDefense
		addq.w  #1,d4
		jsr     j_GetBaseAgility
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetBaseAgility
		addq.w  #1,d4
		jsr     j_GetMaxHp
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetMaxHp
		addq.w  #1,d4
		jsr     j_GetMaxMP
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetMaxMp
		addq.w  #1,d4
		jsr     j_GetBaseCritical
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetBaseCritical
		addq.w  #1,d4
		bsr.w   LearnSpell      
		bsr.w   LoadCombatantDataForForceMember
		tst.b   d0
loc_247EA:
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function IncreaseStatsOnLevelUp


; =============== S U B R O U T I N E =======================================

; Calculate maximum increase of stat given target D1, current D2 and level D3 -> D2

CalculateStatGain:
		
		movem.l d6-d7,-(sp)
		tst.w   d1              ; check that target stat value isn't zero
		bne.s   loc_247FC       
		clr.w   d2
		bra.s   loc_2484C       ; if so, just end
loc_247FC:
		cmpi.w  #GROWTH_PROJECTION_LEVEL,d3
						; check if level <= 20
		ble.s   loc_2481A
		cmpi.w  #FORCE_STAT_CAP,d2; check if stat >= 99
		bge.s   loc_2481A
		                
		move.w  d2,d1           ; set target stat to current value
		moveq   #4,d6           ; get random number in the range 0-3
		jsr     (j_GenerateRandomNumber).l
		tst.w   d7
		bne.s   loc_24818
		addq.w  #1,d1           ; if zero add one to target (1/4 chance of increasing target by 1)
loc_24818:
		bra.s   loc_24846
loc_2481A:
		move.w  d1,d6
		asr.w   #2,d6           ; increase target stat randomly, anywhere from 0 to 25% of target or 4, whichever is lower
		cmpi.w  #5,d6
		ble.s   loc_24826
		moveq   #5,d6
loc_24826:
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d1
		jsr     (j_GenerateRandomNumber).l
						; do it again but substract
		sub.w   d7,d1
		cmpi.w  #FORCE_STAT_CAP,d1; cap target at 99
		ble.s   loc_24840       
		move.w  #FORCE_STAT_CAP,d1
loc_24840:
		cmp.w   d2,d1           ; keep highest of current (D2) and target (D1)
		bge.s   loc_24846
		move.w  d2,d1
loc_24846:
		move.w  d1,d7
		sub.w   d2,d7
		move.w  d7,d2
loc_2484C:
		movem.l (sp)+,d6-d7
		rts

    ; End of function CalculateStatGain


; =============== S U B R O U T I N E =======================================

DisplayLevelUpMessages:
		
		movem.l d0-d2/a0-a1,-(sp)
		movem.l d0-a6,-(sp)
		jsr     sub_8014
		jsr     sub_124020
		movem.l (sp)+,d0-a6
		openTxt
		lea     ((MESSAGE_ARG_NAME_1-$1000000)).w,a0
		move.w  d0,(a0)+
		move.w  d0,(a0)
		lea     ((MESSAGE_ARG_NUMBER-$1000000)).w,a0
		moveq   #0,d1
		jsr     j_GetLevelForCombatant
		move.l  d1,(a0)
		jsr     j_GetEntity
		cmpi.b  #ALLY_JOGURT,d1
		bne.s   byte_2489A      
		txt     499             ; "...[Wait2]It appears that [Name]'s[Line]level increases to [Num].[Line]"
		bra.w   byte_2490A
		bra.s   loc_248A0
byte_2489A:
		txt     491             ; "[Name]'s level increases[Line]to [Num]![Wait2]"
loc_248A0:
		lea     ((STATS_TO_GAIN-$1000000)).w,a1
		move.b  (a1)+,d1
		beq.s   loc_248B0
		move.l  d1,(a0)
		txt     492             ; "Attack level increases[Line]by [Num].[Wait2]"
loc_248B0:
		move.b  (a1)+,d1
		beq.s   loc_248BC
		move.l  d1,(a0)
		txt     493             ; "Defense level increases[Line]by [Num].[Wait2]"
loc_248BC:
		move.b  (a1)+,d1
		beq.s   loc_248C8
		move.l  d1,(a0)
		txt     494             ; "Speed increases by [Num].[Wait2]"
loc_248C8:
		move.b  (a1)+,d1
		beq.s   loc_248D4
		move.l  d1,(a0)
		txt     495             ; "Maximum hit points increases[Line]by [Num].[Wait2]"
loc_248D4:
		move.b  (a1)+,d1
		beq.s   loc_248E0
		move.l  d1,(a0)
		txt     496             ; "Maximum magic points[Line]increases by [Num].[Wait2]"
loc_248E0:
		addq.l  #1,a1
loc_248E2:
		move.b  (a1)+,d1
		cmpi.b  #-1,d1
		beq.s   byte_2490A
		move.b  d1,d2
		andi.w  #SPELLENTRY_MASK_INDEX,d2
		move.w  d2,((MESSAGE_ARG_NAME_1-$1000000)).w
		asr.l   #6,d1
		addq.l  #1,d1
		move.w  #497,d0         ; "And learns a new[Line][Spell] spell.[Wait2]"
		move.l  d1,(a0)
		cmpi.b  #1,d1
		beq.s   byte_24906      ; ""
		addq.w  #1,d0
byte_24906:
		txtD0
		bra.s   loc_248E2
byte_2490A:
		closeTxt
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function DisplayLevelUpMessages


; =============== S U B R O U T I N E =======================================

; Promote force member D0 (save level promoted at to $FFA16A table, add 16 to class index)

Promote:
		movem.l d0-d2,-(sp)
		jsr     j_GetLevel
		andi.w  #$FF,d0
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		move.b  d1,(a0,d0.w)
		jsr     j_GetClass
		addi.w  #16,d1
		jsr     j_SetClass
		clr.w   d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseAttack
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseDefense
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseAgility
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetMaxHp
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetMaxMp
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseCritical
		addq.w  #1,d2
		                
		moveq   #1,d1
		jsr     j_SetLevel
		clr.w   d1
		jsr     j_SetExperience
		jsr     j_GetCurrentHp
		move.w  d1,d2
		jsr     j_GetMaxHp
		cmp.w   d2,d1
		bge.s   loc_249B6
		jsr     j_SetCurrentHp
loc_249B6:
		jsr     j_GetCurrentMP
		move.w  d1,d2
		jsr     j_GetMaxMP
		cmp.w   d2,d1
		bge.s   loc_249CE
		jsr     j_SetCurrentMp
loc_249CE:
		bsr.w   LoadCombatantDataForForceMember
		movem.l (sp)+,d0-d2
		rts

    ; End of function Promote


; =============== S U B R O U T I N E =======================================

; Calculate force member D0 total growth for stat D1 -> D1

CalculateTotalStatGrowth:
		
		movem.l d2-d4/a0,-(sp)
		bsr.w   GetGrowthEntryAddress
		move.b  (a0,d1.w),d2    ; D2 = stat D1 growth value
		bsr.s   MapStatToForceEntryOffset
		bsr.s   CalculateInitialStatValue
		move.w  d1,d4           ; D4 = stat D1 base value
		jsr     j_GetLevel
		bsr.w   CalculateGrowthTarget
		add.w   d4,d1
		movem.l (sp)+,d2-d4/a0
		rts

    ; End of function CalculateTotalStatGrowth


; =============== S U B R O U T I N E =======================================

; Calculate force member D0 initial stat D1 value, factoring in promoted at level -> D1

CalculateInitialStatValue:
		
		movem.l d2-d4/a0,-(sp)
		bsr.w   GetUnpromotedGrowthEntryAddress
		move.b  (a0,d1.w),d2    ; D2 = stat D1 unpromoted growth value
		bsr.s   MapStatToForceEntryOffset
		bsr.w   GetInitialForceEntryAddress
		clr.w   d4
		move.b  (a0,d3.w),d4    ; D4 = stat D1 unpromoted initial value
		bsr.w   GetPromotedAtLevel
		beq.s   loc_24A26       ; if not promoted, skip
		bsr.s   CalculateGrowthTarget
		add.w   d1,d4           ; add growth target to initial value
		muls.w  #85,d4          ; and multiply by 0.85
		divs.w  #100,d4
loc_24A26:
		move.w  d4,d1
		movem.l (sp)+,d2-d4/a0
		rts

    ; End of function CalculateInitialStatValue


; =============== S U B R O U T I N E =======================================

; Map stat D1 to force entry offset -> D3

MapStatToForceEntryOffset:
		
		move.w  d1,d3
		asl.w   #1,d3
		move.w  StatOffsets(pc,d3.w),d3; get address of corresponding stat into force data
		rts

    ; End of function MapStatToForceEntryOffset

StatOffsets:    dc.w FORCE_OFFSET_BASE_ATTACK
		dc.w FORCE_OFFSET_BASE_DEFENSE
		dc.w FORCE_OFFSET_BASE_AGILITY
		dc.w FORCE_OFFSET_MAXIMUM_HP_LOW_BYTE
		dc.w FORCE_OFFSET_MAXIMUM_MP
		dc.w FORCE_OFFSET_BASE_CRITICAL

; =============== S U B R O U T I N E =======================================

; Calculate growth target value based on level D1 and growth value D2 -> D1

CalculateGrowthTarget:
		
		move.l  d2,-(sp)
		bsr.s   CalculateGrowthPercent
		andi.w  #GROWTH_MASK_VALUE,d2; multiply curve % by growth to get target value
		muls.w  d2,d1
		divs.w  #100,d1
		move.l  (sp)+,d2
		rts

    ; End of function CalculateGrowthTarget


; =============== S U B R O U T I N E =======================================

; Calculate growth percent based on level D1 and growth curve D2 -> D1

CalculateGrowthPercent:
		
		movem.l d2-d5/a0,-(sp)
		cmpi.w  #GROWTH_PROJECTION_LEVEL,d1
		ble.s   loc_24A66       ; continue if level <= 20
		move.w  #100,d1
		bra.s   loc_24A9C       ; else, return 100%
loc_24A66:
		andi.w  #GROWTH_MASK_CURVE_INDEX,d2
						; find growth curve
		asr.w   #5,d2
		movea.l (p_rpt_GrowthCurves).l,a0
		move.w  (a0,d2.w),d2    ; D2 = offset to curve entry
		lea     (a0,d2.w),a0    ; A0 = curve entry address
		moveq   #1,d2           ; find break point in curve
		clr.b   d3
loc_24A7E:
		cmp.b   (a0),d1
		ble.s   loc_24A88       
		move.b  (a0)+,d2
		move.b  (a0)+,d3
		bra.s   loc_24A7E
loc_24A88:
		sub.w   d2,d1           ; interpolate to get growth %
		clr.w   d4
		move.b  (a0)+,d4
		sub.w   d2,d4
		clr.w   d5
		move.b  (a0)+,d5
		sub.w   d3,d5
		muls.w  d5,d1
		divs.w  d4,d1
		add.w   d3,d1
loc_24A9C:
		movem.l (sp)+,d2-d5/a0
		rts

    ; End of function CalculateGrowthPercent


; =============== S U B R O U T I N E =======================================

; Get force member D0 growth entry address based on if promoted -> A0

GetGrowthEntryAddress:
		
		bsr.s   IsPromoted      
		beq.s   GetUnpromotedGrowthEntryAddress
						; branch if not promoted
		movea.l (p_PromotedGrowths).l,a0
		bra.s   loc_24AB4

    ; End of function GetGrowthEntryAddress


; =============== S U B R O U T I N E =======================================

; Get force member D0 unpromoted growth entry address -> A0

GetUnpromotedGrowthEntryAddress:
		
		movea.l (p_UnpromotedGrowths).l,a0
loc_24AB4:
		move.l  d0,-(sp)
		andi.w  #$FF,d0         ; index into growth table to find member's entry
		mulu.w  #6,d0
		adda.w  d0,a0
		move.l  (sp)+,d0
		rts

    ; End of function GetUnpromotedGrowthEntryAddress


; =============== S U B R O U T I N E =======================================

; Get force member D0 initial data entry address -> A0

GetInitialForceEntryAddress:
		
		move.w  d0,-(sp)
		movea.l (p_InitialForceMembersData).l,a0
		andi.w  #$FF,d0
		mulu.w  #$28,d0 
		adda.w  d0,a0
		move.w  (sp)+,d0
		rts

    ; End of function GetInitialForceEntryAddress


; =============== S U B R O U T I N E =======================================

; Check if force member D0 is promoted

IsPromoted:
		movem.w d1,-(sp)
		bsr.s   GetPromotedAtLevel
		movem.w (sp)+,d1
		rts

    ; End of function IsPromoted


; =============== S U B R O U T I N E =======================================

; Get force member D0 promoted at level -> D1 (0 if not promoted)

GetPromotedAtLevel:
		
		movem.l d0/a1,-(sp)
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a1
		andi.w  #$FF,d0
		clr.w   d1
		move.b  (a1,d0.w),d1
		movem.l (sp)+,d0/a1
		rts

    ; End of function GetPromotedAtLevel


; =============== S U B R O U T I N E =======================================

; Learn new spell on level up

LearnSpell:
		movem.l d1-d3/a0-a1,-(sp)
		lea     ((SPELLS_TO_LEARN-$1000000)).w,a1
		bsr.w   GetSpellLearningEntryAddress
		bcs.s   loc_24B26
		bsr.w   CalculateTotalLevel
		move.b  d1,d2
		move.b  (a0)+,d3
loc_24B14:
		beq.s   loc_24B26
		cmp.b   (a0)+,d2
		bcs.s   loc_24B26
		bne.s   loc_24B1E
		move.b  (a0),(a1)+
loc_24B1E:
		move.b  (a0)+,d1
		bsr.s   AddSpell        
		subq.b  #1,d3
		bra.s   loc_24B14
loc_24B26:
		move.b  #-1,(a1)
		movem.l (sp)+,d1-d3/a0-a1
		rts

    ; End of function LearnSpell


; =============== S U B R O U T I N E =======================================

; Add spell D1 to character D0

AddSpell:
		movem.l d2-d4/a0,-(sp)
		move.b  d1,d2
		andi.b  #SPELLENTRY_MASK_INDEX,d2
		jsr     j_GetCharacterSpellsAddress
		moveq   #3,d3
loc_24B42:
		move.b  (a0),d4
		cmpi.b  #-1,d4
		beq.s   loc_24B5A
		andi.b  #SPELLENTRY_MASK_INDEX,d4
		cmp.b   d2,d4
		beq.s   loc_24B5A
		addq.l  #1,a0
		dbf     d3,loc_24B42
                
		bra.s   loc_24B5C
loc_24B5A:
		move.b  d1,(a0)
loc_24B5C:
		movem.l (sp)+,d2-d4/a0
		rts

    ; End of function AddSpell


; =============== S U B R O U T I N E =======================================

; Get address of character D0 spells learning data to A0

GetSpellLearningEntryAddress:
		
		movem.w d1,-(sp)
		movea.l (p_SpellLearningData).l,a0
loc_24B6C:
		cmpi.b  #-1,(a0)
		beq.s   loc_24B86
		cmp.b   (a0)+,d0
		beq.s   loc_24B80
		clr.w   d1
		move.b  (a0)+,d1
		add.w   d1,d1
		adda.w  d1,a0
		bra.s   loc_24B6C
loc_24B80:
		movem.w (sp)+,d1
		rts
loc_24B86:
		ori     #1,ccr
		bra.s   loc_24B80

    ; End of function GetSpellLearningEntryAddress


; =============== S U B R O U T I N E =======================================

; Get total level of character D0 (current level + level promoted at) -> D1

CalculateTotalLevel:
		
		movem.l d0/d2/a0,-(sp)
		jsr     j_GetLevel
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		andi.w  #$FF,d0
		move.b  (a0,d0.w),d2
		ble.s   @Done
		add.b   d2,d1
@Done:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function CalculateTotalLevel

