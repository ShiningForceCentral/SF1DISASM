
; ASM FILE code\common\stats\statsengine_3.asm :
; 0x23A3E..0x23ACE : Character stats engine

; =============== S U B R O U T I N E =======================================

; Get entity's map sprite index for combatant D0 -> D1

GetMapSpriteForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   GetMapsprite    
		move.w  (sp)+,d0
		rts

    ; End of function GetMapSpriteForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity D0 map sprite index -> D1
; 
;     - Check if changed into Jogurt
;     - Apply outfits if applicable
;     - Add 30 to index if promoted

GetMapsprite:
		movem.l d0/a0-a1,-(sp)
		cmpi.b  #-1,d0
		beq.s   @Done
		tst.b   d0
		bge.s   @ForceMember
		                
		bsr.w   GetEnemyEntryAddress
		clr.w   d1
		move.b  ENEMY_OFFSET_MAPSPRITE(a1),d1
		bra.s   @Done
@ForceMember:
		cmpi.b  #ALLY_NOVA,d0
		bne.s   @isChangedIntoJogurt
		move.w  #MAPSPRITE_NOVA,d1
		bra.s   @Done
@isChangedIntoJogurt:
		
		bsr.w   IsEntityChangedIntoJogurt
		beq.s   @ApplyOutfits
		move.w  #MAPSPRITE_JOGURT_1,d1
		bra.s   @Done
@ApplyOutfits:
		
		bsr.s   ApplyOutfitItems
		bcc.s   @Done
		clr.w   d1
		move.b  d0,d1
		bsr.w   IsPromoted      
		beq.s   @Done
		addi.w  #PROMOTED_MAPSPRITES_START,d1
@Done:
		movem.l (sp)+,d0/a0-a1
		rts

    ; End of function GetMapsprite


; =============== S U B R O U T I N E =======================================

; Apply outfit items -> D1 = new map sprite index

ApplyOutfitItems:
		
		movem.l d2-d5/a0-a1,-(sp)
		lea     table_OutfitItems(pc), a1
@FindForceMember:
		
		cmp.b   (a1)+,d0
		bcs.s   @Skip
		beq.s   @Found
		addq.l  #2,a1
		bra.s   @FindForceMember
@Found:
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d1
@Loop:
		move.b  (a0)+,d2
		andi.b  #ITEMENTRY_MASK_INDEX,d2
		cmp.b   (a1),d2
		bne.s   @NextItemSlot
		clr.w   d1
		move.b  1(a1),d1
		bra.s   @Done
@NextItemSlot:
		
		dbf     d1,@Loop
@Skip:
		ori     #1,ccr
@Done:
		movem.l (sp)+,d2-d5/a0-a1
		rts

    ; End of function ApplyOutfitItems

