
; ASM FILE code\gameflow\battle\battleinit.asm :
; 0x26F46..0x2704E : Battle initialization functions

; =============== S U B R O U T I N E =======================================

InitializeBattleData:
		
		movem.l d0-d1/a0-a3,-(sp)
		lea     (BATTLE_HEADER_POINTER).l,a0
		lea     table_EnemyDefs(pc), a2
		move.l  a2,$C(a0)
		lea     table_2751A(pc), a2
		move.l  a2,$10(a0)
		lea     rpt_MapHeaders(pc), a3
		lea     rpt_MapHeaders(pc), a1
		move.b  (CURRENT_CHAPTER).l,d0
		ext.w   d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_26F7E
		suba.l  a1,a1
		bra.s   loc_26F82
loc_26F7E:
		lea     (a3,d0.w),a1
loc_26F82:
		move.b  (CURRENT_REGION).l,d0
		ext.w   d0
		addq.w  #1,d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_26F98
		suba.l  a1,a1
		bra.s   loc_26F9C
loc_26F98:
		lea     (a3,d0.w),a1
loc_26F9C:
		move.w  (a1)+,d0
		bne.s   loc_26FA4
		suba.l  a2,a2
		bra.s   loc_26FA8
loc_26FA4:
		lea     (a3,d0.w),a2
loc_26FA8:
		move.l  a2,(a0)
		move.b  (CURRENT_MAP_VERSION).l,d0
		ext.w   d0
		addq.w  #1,d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_26FC0
		suba.l  a1,a1
		bra.s   loc_26FC4
loc_26FC0:
		lea     (a3,d0.w),a1
loc_26FC4:
		move.w  (a1)+,d0
		bne.s   loc_26FCC
		suba.l  a2,a2
		bra.s   loc_26FD0
loc_26FCC:
		lea     (a3,d0.w),a2
loc_26FD0:
		move.l  a2,4(a0)
		move.w  (a1)+,d0
		bne.s   loc_26FDC
		suba.l  a2,a2
		bra.s   loc_26FE0
loc_26FDC:
		lea     (a3,d0.w),a2
loc_26FE0:
		move.l  a2,8(a0)
		move.w  (a1)+,d0
		bne.s   loc_26FEC
		suba.l  a2,a2
		bra.s   loc_26FF0
loc_26FEC:
		lea     (a3,d0.w),a2
loc_26FF0:
		move.l  a2,$14(a0)
		move.w  (a1)+,d0
		bne.s   loc_26FFC
		suba.l  a2,a2
		bra.s   loc_27000
loc_26FFC:
		lea     (a3,d0.w),a2
loc_27000:
		move.l  a2,$1C(a0)
		move.w  (a1)+,d0
		bne.s   loc_2700C
		suba.l  a2,a2
		bra.s   loc_27010
loc_2700C:
		lea     (a3,d0.w),a2
loc_27010:
		move.l  a2,$20(a0)
		move.b  (CURRENT_MAP_ENTRANCE).l,d0
		ext.w   d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_27028
		suba.l  a1,a1
		bra.s   loc_2702C
loc_27028:
		lea     (a3,d0.w),a1
loc_2702C:
		move.l  a1,$18(a0)
		movem.l (sp)+,d0-d1/a0-a3
		rts

    ; End of function InitializeBattleData


; =============== S U B R O U T I N E =======================================

; Flag AI Regions as triggered

sub_27036:
		move.w  d0,-(sp)
		move.b  (byte_FF9C88).l,d0
		or.b    (TRIGGERED_AI_REGIONS).l,d0
		move.b  d0,(byte_FF9C88).l
		move.w  (sp)+,d0
		rts

    ; End of function sub_27036

