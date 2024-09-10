
; ASM FILE code\common\stats\statsfunctions.asm :
; 0x24BAC..0x24FC4 : Stats functions

; =============== S U B R O U T I N E =======================================

; Get level of character D0 (+10 if promoted) -> D1

CalculateEffectiveLevel:
		
		move.w  d2,-(sp)
		jsr     j_GetLevelForCombatant
		move.w  d1,d2
		jsr     j_GetClassForCombatant
		cmpi.w  #PROMOTED_CLASSES_START,d1
		bcs.s   @Skip
		cmpi.w  #CLASS_YGRT,d1
		bcc.s   @Skip
		addi.w  #10,d2
@Skip:
		move.w  d2,d1
		move.w  (sp)+,d2
		rts

    ; End of function CalculateEffectiveLevel


; =============== S U B R O U T I N E =======================================

; Check if character D0 asleep

IsAsleep:
		movem.l d0-d1,-(sp)
		clr.b   ((IS_ASLEEP_FLAG-$1000000)).w
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_SLEEP,d1
		beq.s   @Done
		move.b  #1,((IS_ASLEEP_FLAG-$1000000)).w
@Done:
		movem.l (sp)+,d0-d1
		rts

    ; End of function IsAsleep


; =============== S U B R O U T I N E =======================================

HandleAfterTurnStatusEffects:
		
		movem.l d0-d5/a0,-(sp)
		moveq   #0,d3
		bsr.w   HandlePoison
		bsr.w   HandleSleep
		lea     table_StatusEffectBits(pc), a0
		moveq   #STATUSEFFECT_COUNTERS_COUNTER,d2
loc_24C06:
		move.b  (a0)+,d1
		bsr.w   DecrementStatusEffectCounter
		addq.l  #1,a0
		dbf     d2,loc_24C06
                
		tst.l   d3
		beq.w   loc_24C92
		bsr.w   sub_24CA6       
		openTxt
		andi.w  #$FF,d0
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		btst    #31,d3
		beq.s   loc_24C3E
		move.w  #461,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "The poison in [Name]'s[Line]body inflicts [Num] points of[Line]damage.[Wait2]"
		move.l  #2,((AFTER_TURN_MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   DisplayAfterTurnMessage
loc_24C3E:
		btst    #30,d3
		beq.s   loc_24C50
		move.w  #462,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] can no longer fight.[Wait2]"
		bsr.w   DisplayAfterTurnMessage
		bra.s   byte_24C8A
loc_24C50:
		btst    #29,d3
		beq.s   loc_24C60
		move.w  #460,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] is asleep.[Wait2]"
		bsr.w   DisplayAfterTurnMessage
loc_24C60:
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_2-$1000000)).w
		lea     table_StatusEffectSpells(pc), a0
		clr.w   d4
		move.w  #481,d0         ; "The [Spell] spell ends. Speed[Line]and defense levels[Line]return to normal.[Wait2]"
		moveq   #6,d2
loc_24C70:
		move.b  (a0)+,d4
		move.w  d4,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  (a0)+,d4
		btst    d4,d3
		beq.s   loc_24C84
		move.w  d0,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
		bsr.w   DisplayAfterTurnMessage
loc_24C84:
		addq.w  #1,d0
		dbf     d2,loc_24C70
byte_24C8A:
		closeTxt
		jsr     j_LoadCursorTiles
loc_24C92:
		movem.l (sp)+,d0-d5/a0
		rts

    ; End of function HandleAfterTurnStatusEffects

table_StatusEffectSpells:
		; Status effect spells table : 7 entries, 2 bytes per entry
		dc.b SPELL_QUICK|LV_1
table_StatusEffectBits:
		dc.b STATUSEFFECT_BIT_QUICK
		dc.b SPELL_SLOW|LV_1
		dc.b STATUSEFFECT_BIT_SLOW
		dc.b SPELL_BOOST|LV_1
		dc.b STATUSEFFECT_BIT_BOOST
		dc.b SPELL_DISPEL|LV_1
		dc.b STATUSEFFECT_BIT_DISPEL
		dc.b SPELL_SHIELD|LV_1
		dc.b STATUSEFFECT_BIT_SHIELD
		dc.b SPELL_MUDDLE|LV_1
		dc.b STATUSEFFECT_BIT_MUDDLE
		dc.b SPELL_SLEEP|LV_1
		dc.b STATUSEFFECT_BIT_SLEEP

; =============== S U B R O U T I N E =======================================

; related to the battle cursor

sub_24CA6:
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
						; Y = 1, size = V4|H4, link = 47
		rts

    ; End of function sub_24CA6


; =============== S U B R O U T I N E =======================================

HandlePoison:
		movem.l d0-d1,-(sp)
		clr.b   ((IS_POISONED_FLAG-$1000000)).w
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_POISON,d1
		beq.s   loc_24CE8
		bset    #31,d3
		moveq   #2,d1           ; inflict 2 points of damage
		jsr     j_DecreaseCurrentHpForCombatant
		tst.w   d1
		bne.s   loc_24CE8
		bset    #30,d3
		move.b  #1,((IS_POISONED_FLAG-$1000000)).w
loc_24CE8:
		movem.l (sp)+,d0-d1
		rts

    ; End of function HandlePoison


; =============== S U B R O U T I N E =======================================

HandleSleep:
		movem.l d0-d1,-(sp)
		moveq   #STATUSEFFECT_BIT_SLEEP,d1
		bsr.w   TerminateStatusEffectRandomly
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_SLEEP,d1
		beq.s   loc_24D08
		bset    #29,d3
loc_24D08:
		movem.l (sp)+,d0-d1
		rts

    ; End of function HandleSleep


; =============== S U B R O U T I N E =======================================

; Clear statuses of all members and restore HP/MP to max

ResetForceMemberStats:
		
		movem.l d0-d1,-(sp)
		moveq   #FORCE_MEMBERS_COUNTER,d0
loc_24D14:
		jsr     j_GetStatusEffects
		andi.w  #STATUSEFFECT_POISON|STATUSEFFECT_CURSE,d1
		jsr     j_SetStatusEffects
		jsr     j_GetCurrentHp
		tst.w   d1
		beq.s   loc_24D34
		jsr     j_RefillHp
loc_24D34:
		jsr     j_RefillMp
		dbf     d0,loc_24D14
                
		movem.l (sp)+,d0-d1
		rts

    ; End of function ResetForceMemberStats


; =============== S U B R O U T I N E =======================================

; Decrement counter for status effect D1, with chance to end it early

DecrementStatusEffectCounter:
		
		movem.l d2/d7,-(sp)
		jsr     j_GetStatusEffectCounter
		beq.s   loc_24D6A
		bsr.w   GenerateRandomNumber0To99
		cmp.b   table_StatusEffectEndingPercents(pc,d2.w),d7
		bge.s   loc_24D5E
		clr.w   d2
		bra.s   loc_24D60
loc_24D5E:
		subq.w  #1,d2
loc_24D60:
		bne.s   loc_24D64
		bset    d1,d3
loc_24D64:
		jsr     j_SetStatusEffectCounter
loc_24D6A:
		movem.l (sp)+,d2/d7
		rts

    ; End of function DecrementStatusEffectCounter

table_StatusEffectEndingPercents:
		; Chances to end status effect early, indexed by counter
		dc.b 100
		dc.b 100
		dc.b 33
		dc.b 0

; =============== S U B R O U T I N E =======================================

; Clear status effect bit D1, 50% of the time

TerminateStatusEffectRandomly:
		
		movem.l d2/d7,-(sp)
		move.w  d1,d2
		jsr     j_GetStatusEffectsForCombatant
		btst    d2,d1
		beq.s   loc_24D98
		bsr.w   GenerateRandomNumber0To99
		cmpi.b  #50,d7
		bge.s   loc_24D98
		bclr    d2,d1
		jsr     j_SetStatusEffectsForCombatant
		bset    d2,d3
loc_24D98:
		movem.l (sp)+,d2/d7
		rts

    ; End of function TerminateStatusEffectRandomly


; =============== S U B R O U T I N E =======================================

DisplayAfterTurnMessage:
		
		move.l  d0,-(sp)
		move.w  ((AFTER_TURN_MESSAGE_INDEX-$1000000)).w,d0
		move.w  ((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  ((AFTER_TURN_MESSAGE_ARG_NAME_2-$1000000)).w,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.l  ((AFTER_TURN_MESSAGE_ARG_NUMBER-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		txtD0
		move.l  (sp)+,d0
		rts

    ; End of function DisplayAfterTurnMessage


; =============== S U B R O U T I N E =======================================

; Get current gold -> D1

GetGold:
		move.l  (CURRENT_GOLD).l,d1
		rts

    ; End of function GetGold


; =============== S U B R O U T I N E =======================================

; Set D1 -> current gold

SetGold:
		move.l  d1,(CURRENT_GOLD).l
		rts

    ; End of function SetGold


; =============== S U B R O U T I N E =======================================

; Add D1 to current gold, cap at 999999

IncreaseGold:
		add.l   (CURRENT_GOLD).l,d1
		cmpi.l  #FORCE_GOLD_CAP,d1
		ble.s   loc_24DE0
		move.l  #FORCE_GOLD_CAP,d1
loc_24DE0:
		move.l  d1,(CURRENT_GOLD).l
		rts

    ; End of function IncreaseGold


; =============== S U B R O U T I N E =======================================

; Sub D1 from current gold, cap at 0

DecreaseGold:
		sub.l   d1,(CURRENT_GOLD).l
		bge.s   loc_24DF6
		clr.l   (CURRENT_GOLD).l
loc_24DF6:
		move.l  (CURRENT_GOLD).l,d1
		rts

    ; End of function DecreaseGold


; =============== S U B R O U T I N E =======================================

; Add 1 to deals stock for item D1

IncrementDealsStock:
		
		move.w  d2,-(sp)
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_RARE,d2
		beq.s   loc_24E18
		bsr.s   GetDealsStock   
		addq.w  #1,d2
		cmpi.w  #16,d2
		bcc.s   loc_24E18
		bsr.s   SetDealsStock   
loc_24E18:
		move.w  (sp)+,d2
		rts

    ; End of function IncrementDealsStock


; =============== S U B R O U T I N E =======================================

; Sub 1 from deals stock for item D1

DecrementDealsStock:
		
		move.w  d2,-(sp)
		bsr.s   GetDealsStock   
		subq.w  #1,d2
		bcs.s   loc_24E26
		bsr.s   SetDealsStock   
loc_24E26:
		move.w  (sp)+,d2
		rts

    ; End of function DecrementDealsStock


; =============== S U B R O U T I N E =======================================

; Get stock of item D1 currently in deals -> D2

GetDealsStock:
		
		movem.l d1/a0,-(sp)
		bsr.s   GetDealsStockEntryAddress
		bcs.s   loc_24E38
		move.b  (a0),d2
		asr.w   #4,d2
		bra.s   loc_24E3A
loc_24E38:
		move.b  (a0),d2
loc_24E3A:
		andi.w  #$F,d2
		movem.l (sp)+,d1/a0
		rts

    ; End of function GetDealsStock


; =============== S U B R O U T I N E =======================================

; Set D2 -> stock of item D1 currently in deals

SetDealsStock:
		
		movem.l d1-d2/a0,-(sp)
		andi.w  #$F,d2
		bsr.s   GetDealsStockEntryAddress
		bcs.s   loc_24E58
		asl.b   #4,d2
		andi.b  #$F,(a0)
		bra.s   loc_24E5C
loc_24E58:
		andi.b  #$F0,(a0)
loc_24E5C:
		or.b    d2,(a0)
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function SetDealsStock


; =============== S U B R O U T I N E =======================================

; Get item D1 deals stock entry address -> A0

GetDealsStockEntryAddress:
		
		lea     (DEALS_ITEMS).l,a0
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		asr.w   #1,d1
		adda.w  d1,a0
		rts

    ; End of function GetDealsStockEntryAddress


; =============== S U B R O U T I N E =======================================

; Load items currently in deals into shop inventory
; 
; In: A0 = shop data address
;     D0 = shop type (0: weapon shop, 1: item shop)

LoadDealsInventory:
		
		movem.l d0-d3/a0-a1/a3,-(sp)
		clr.w   d3
		lea     (TABLE_AT_FFA8C0).l,a3; shop inventory
		clr.w   d1
loc_24E82:
		jsr     j_GetItemType
		tst.b   d0
		bne.s   loc_24E94       ; branch if item shop
		btst    #ITEMTYPE_BIT_WEAPON,d2
		beq.s   loc_24EB0       ; weapon shop : branch if item not a weapon
		bra.s   loc_24E9A
loc_24E94:
		btst    #ITEMTYPE_BIT_WEAPON,d2
		bne.s   loc_24EB0       ; item shop : branch if item is a weapon
loc_24E9A:
		movea.l a0,a1
loc_24E9C:
		move.b  (a1)+,d2
		blt.s   loc_24EA6       ; branch out upon reaching end of shop data
		cmp.b   d2,d1
		beq.s   loc_24EB0       ; skip displaying item in deals if regularly for sale
		bra.s   loc_24E9C
loc_24EA6:
		bsr.w   GetDealsStock   
		beq.s   loc_24EB0       ; branch if no item in stock
		addq.w  #1,d3
		move.w  d1,(a3)+
loc_24EB0:
		addq.w  #1,d1
		cmpi.w  #ITEM_NOTHING,d1
		bne.s   loc_24E82
		move.w  d3,(SHOP_INVENTORY_LENGTH).l
		movem.l (sp)+,d0-d3/a0-a1/a3
		rts

    ; End of function LoadDealsInventory


; =============== S U B R O U T I N E =======================================

; Check if item D1 not in deals stock or held by any character

IsItemInDealsOrHeldByForce:
		
		movem.l d0-d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		bsr.w   GetDealsStock   
		bne.s   loc_24ED4
		bsr.s   IsItemHeldByForce
loc_24ED4:
		movem.l (sp)+,d0-d1
		rts

    ; End of function IsItemInDealsOrHeldByForce


; =============== S U B R O U T I N E =======================================

; Check if character has item D1

IsItemHeldByCharacter:
		
		movem.l d1-d3/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d2
loc_24EE6:
		move.b  (a0)+,d3
		andi.w  #ITEMENTRY_MASK_INDEX,d3
		cmp.b   d1,d3
		beq.s   loc_24EF8
		dbf     d2,loc_24EE6
                
		ori     #1,ccr
loc_24EF8:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function IsItemHeldByCharacter


; =============== S U B R O U T I N E =======================================

; Check if any character has item D1

IsItemHeldByForce:
		
		movem.l d1-d3/a0,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		moveq   #FORCE_MEMBERS_COUNTER,d0
loc_24F08:
		bsr.s   IsItemHeldByCharacter
		bcc.s   loc_24F14
		dbf     d0,loc_24F08
                
		ori     #1,ccr
loc_24F14:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function IsItemHeldByForce


; =============== S U B R O U T I N E =======================================

; Load force member's base attack to combatant D0 entry

LoadBaseAttack:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseAttackForCombatant
		jsr     j_SetModifiedAttack
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseAttack


; =============== S U B R O U T I N E =======================================

; Load force member's base defense to combatant D0 entry

LoadBaseDefense:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseDefenseForCombatant
		jsr     j_SetModifiedDefense
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseDefense


; =============== S U B R O U T I N E =======================================

; Load force member's base agility to combatant D0 entry

LoadBaseAgility:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseAgilityForCombatant
		jsr     j_SetModifiedAgility
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseAgility


; =============== S U B R O U T I N E =======================================

; Load force member's base move to combatant D0 entry

LoadBaseMove:
		move.l  d1,-(sp)
		jsr     j_GetBaseMoveForCombatant
		jsr     j_SetModifiedMove
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseMove


; =============== S U B R O U T I N E =======================================

; Load force member's base critical to combatant D0 entry

LoadBaseCritical:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseCriticalForCombatant
		jsr     j_SetModifiedCritical
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseCritical


; =============== S U B R O U T I N E =======================================

; Refill force member D0 HP

RefillHp:
		move.l  d1,-(sp)
		jsr     j_GetMaxHp
		jsr     j_SetCurrentHp
		move.l  (sp)+,d1
		rts

    ; End of function RefillHp


; =============== S U B R O U T I N E =======================================

; Refill force member D0 MP

RefillMp:
		move.l  d1,-(sp)
		jsr     j_GetMaxMP
		jsr     j_SetCurrentMp
		move.l  (sp)+,d1
		rts

    ; End of function RefillMp


; =============== S U B R O U T I N E =======================================

; Refill force member's HP for combatant D0

RefillHpForCombatant:
		
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		move.w  d1,d0
		bsr.w   RefillHp        
		movem.w (sp)+,d0-d1
		rts

    ; End of function RefillHpForCombatant


; =============== S U B R O U T I N E =======================================

; Refill force member's MP for combatant D0

RefillMpForCombatant:
		
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		move.w  d1,d0
		bsr.w   RefillMp        
		movem.w (sp)+,d0-d1
		rts

    ; End of function RefillMpForCombatant

