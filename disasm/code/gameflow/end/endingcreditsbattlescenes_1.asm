
; ASM FILE code\gameflow\end\endingcreditsbattlescenes_1.asm :
; 0x26E16..0x26EE4 : Ending credits battle scenes, part 1

; =============== S U B R O U T I N E =======================================

; Prepare Ending Sequence

LoadEndingCreditsForce:
		
		movem.l d0-d1/a0-a3,-(sp)
		lea     table_EndingCreditsForceData(pc), a1
		lea     (PROMOTED_AT_LEVELS).l,a2
		lea     (BATTLE_PARTY_MEMBERS).l,a3
		clr.w   d0
loc_26E2C:
		move.b  (a1)+,d0
		blt.s   loc_26E54
		move.b  d0,(a3)+
		jsr     j_RefillHp
		move.b  (a1)+,d1
		jsr     j_SetClass
		move.b  #$14,(a2,d0.w)
		jsr     j_GetEntityItemsAddress
		moveq   #-1,d1
		move.l  d1,(a0)
		move.b  (a1)+,(a0)
		bra.s   loc_26E2C
loc_26E54:
		st      (a3)
		move.l  #$90000FF,(CURRENT_CHAPTER).l
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		jsr     sub_20010
		jsr     j_InitializeBattleCombatants
		movem.l (sp)+,d0-d1/a0-a3
		rts

    ; End of function LoadEndingCreditsForce


; =============== S U B R O U T I N E =======================================

; In: d0.w

WriteEndingCreditsBattlesceneScript:
		
		movem.l d0-d2/a0/a2,-(sp)
		lea     table_EndingAnimationSequence(pc), a0
		clr.w   d1
		move.w  d0,d1
		asl.w   #2,d1
		adda.w  d1,a0
		lea     (BATTLE_SCENE_ACTORS).l,a2
		move.b  (a0)+,d1
		ext.w   d1
		move.b  (a0)+,d2
		ext.w   d2
		clr.w   (a2)+           ; battlescene command
		move.w  d2,(a2)+        ; enemy
		move.w  d1,(a2)+        ; ally
		move.b  (a0)+,d1
		ext.w   d1
		move.b  (a0)+,d2
		ext.w   d2
		btst    #0,d0
		bne.s   loc_26EC6
		move.w  #1,(a2)+
		move.w  d1,(a2)+
		move.w  d2,(a2)+
		move.w  #$A,(a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		bra.s   loc_26EDA
loc_26EC6:
		move.w  #2,(a2)+
		move.w  d1,(a2)+
		move.w  d2,(a2)+
		move.w  #9,(a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
loc_26EDA:
		move.w  #-1,(a2)+
		movem.l (sp)+,d0-d2/a0/a2
		rts

    ; End of function WriteEndingCreditsBattlesceneScript

