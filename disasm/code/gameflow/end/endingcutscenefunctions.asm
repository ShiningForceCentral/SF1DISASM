
; ASM FILE code\gameflow\end\endingcutscenefunctions.asm :
; 0x6A2E..0x6AB8 : Ending cutscene functions

; =============== S U B R O U T I N E =======================================

sub_6A2E:
		jsr     j_RefillWholeForceHp
		clr.w   (CURRENT_OBJECT).l
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   LoadEndingCutsceneCombatantData
		clr.b   (byte_FFB53A).l
		move.w  #$1605,(SCREEN_POSITION).l
		move.w  #$1B09,(CURSOR_POSITION_X).l
		clr.b   (byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (AREA_CURSOR_INDEX).l
		move.b  #-1,(byte_FFB4D3).l
		move.b  #1,(byte_FFB4D7).l
		rts

    ; End of function sub_6A2E


; =============== S U B R O U T I N E =======================================

; Load combatant data during ending cutscene.

LoadEndingCutsceneCombatantData:
		
		clr.b   (CURRENT_REGION).l
		clr.b   (CURRENT_MAP_ENTRANCE).l
		move.b  #-1,(CURRENT_MAP_VERSION).l
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		moveq   #COMBATANT_ENTRIES_COUNTER,d7
		lea     (COMBATANT_DATA).l,a1
		lea     table_EndingCutsceneCombatantData(pc), a0
		nop
@Loop:
		move.l  (a0)+,(a1)
		lea     COMBATANT_ENTRY_SIZE(a1),a1
		dbf     d7,@Loop
                
		rts

    ; End of function LoadEndingCutsceneCombatantData

