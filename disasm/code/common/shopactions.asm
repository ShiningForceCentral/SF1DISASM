
; ASM FILE code\common\shopactions.asm :
; 0x168FE..0x16DAE : Shop menu functions

; =============== S U B R O U T I N E =======================================

; In: D0 = current shop index
;     D1 = 
;     D2 = 

ExecuteShopMenu:
		
		        module
		movem.l d3-a5,-(sp)
		link    a6,#-64
		move.b  d0,((CURRENT_SHOP-$1000000)).w
		move.w  d1,-6(a6)
		move.w  d2,-$1A(a6)
		move.b  d2,-$1B(a6)
		bsr.w   LoadShopInventory
		clr.w   -2(a6)
		tst.w   -6(a6)
		bne.s   loc_1692C
		move.w  #363,d0         ; "Welcome! Do come in! We've[Line]got the best, you know. Take[Line]your time, take your time![Wait2]"
		bsr.w   DisplayMenuMessage
loc_1692C:
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		bsr.w   sub_16EA6
		beq.w   loc_16D8C       
		dbf     d0,@Deals
                
		clr.w   -$12(a6)        ; Buy
loc_16946:
		bsr.w   OpenGoldWindowInMenu
		bsr.w   LoadShopInventory
		bne.s   loc_1695C
		move.w  #376,d0         ; "Sorry, no deals today.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16D6C
loc_1695C:
		tst.w   -$12(a6)
		beq.s   loc_1696C       
		move.w  #377,d0         ; "I have some great stuff here.[Line]See anything you like?"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16974       
loc_1696C:
		move.w  #367,d0         ; "What would you like?"
		bsr.w   DisplayMenuMessage
loc_16974:
		bsr.w   sub_16E66       ; display shop inventory window
		beq.w   loc_16D6C       ; branch if no item selected (i.e., canceling out of menu)
		move.w  d0,d1           ; D1 = selected item index
		move.w  d0,-$A(a6)
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetItemPrice
		move.w  d2,-4(a6)
		ext.l   d2
		move.l  d2,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #368,d0         ; "[Item], right?[Line]That comes to [Num] coins.[Line]OK?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu; display yes/no choice box
		bne.w   loc_169C4       ; branch if yes selected
loc_169A6:
		move.w  #369,d0         ; "Rats! We almost had a deal.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_169AE:
		bsr.w   CloseGoldWindowInMenu
		move.w  #375,d0         ; "Want anything else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.s   loc_16946
		bra.w   loc_16D6C
loc_169C4:
		moveq   #0,d0
		move.w  -4(a6),d0       ; D0 = item price
		bsr.w   CheckGold       
		bne.s   loc_169DA       ; branch if enough gold
		move.w  #370,d0         ; "You don't have enough money[Line]to buy that. Sorry.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_169AE
loc_169DA:
		move.w  #371,d0         ; "Who do you wish to have it?"
		bsr.w   DisplayMenuMessage
		move.w  #VDPTILE_EQ_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
						; load "Eq" VDP tile entry
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		clr.w   d3
loc_169F4:
		move.w  -$A(a6),d2      ; D2 = selected item index
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
		move.b  (a5,d3.w),d0
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d0
		jsr     j_IsItemEquippable
		bcc.s   loc_16A10       ; branch if item can be equipped
		bra.w   loc_16A16
loc_16A10:
		bset    #6,(a5,d3.w)
loc_16A16:
		addq.w  #1,d3
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d3
		bcs.s   loc_169F4       
		bsr.w   sub_16E30
		beq.s   loc_169A6       
		move.w  d0,-8(a6)
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
		move.w  -$A(a6),d2
		jsr     j_IsItemEquippable
		bcc.w   loc_16A54
		beq.w   loc_16A54
		move.w  -8(a6),((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #372,d0         ; "[Name] can't use this. Do you[Line]still want it?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_169C4
loc_16A54:
		move.w  -8(a6),d0
		move.w  -$A(a6),d1
		jsr     j_GiveItem
		bcc.w   loc_16A80
		move.w  -8(a6),((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #373,d0         ; "[Name]'s hands are full. How[Line]about someone else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_169C4
		bra.w   loc_169AE
loc_16A80:
		jsr     j_DecrementDealsStock
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		move.w  #374,d0         ; "Here you go! Use it in good[Line]health, my friend.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_169AE
@Deals:
		dbf     d0,@Sell
                
		st      -$12(a6)
		bra.w   loc_16946
@Repair:
		move.w  #388,d0         ; "Repair whose item?"
		bsr.w   DisplayMenuMessage
		bsr.w   sub_16E48
		beq.w   loc_16D6C
		move.w  d0,-8(a6)
		move.w  d1,-$C(a6)
		jsr     j_GetEntityItemsAddress
		move.l  a0,-$10(a6)
		move.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  -$C(a6),d1
		and.b   (a0,d1.w),d0
		move.w  d0,-$A(a6)
		move.w  d0,d1
		jsr     j_GetItemPrice
		lsr.w   #2,d2
		move.w  d2,-4(a6)
		move.w  -$C(a6),d1
		btst    #6,(a0,d1.w)
		bne.s   loc_16B18
		move.w  #390,d0         ; "Who are you trying to fool?[Line]That item's not damaged.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_16B02:
		move.w  #395,d0         ; "Anything else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_16D6C
		bsr.w   CloseGoldWindowInMenu
		bra.s   @Repair         
loc_16B18:
		move.w  -4(a6),d2
		ext.l   d2
		move.l  d2,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   OpenGoldWindowInMenu
		move.w  #389,d0         ; "That'll cost [Num] coins. OK?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_16B38
		bra.s   loc_16B02       
loc_16B38:
		moveq   #0,d0
		move.w  -4(a6),d0
		bsr.w   CheckGold       
		bne.s   loc_16B4E
		move.w  #391,d0         ; "I'd like to repair it, but[Line]you seem to be a bit low on[Line]money. Sorry.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16B02       
loc_16B4E:
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_16B78       
		movea.l -$10(a6),a0
		move.w  -$C(a6),d0
		btst    #ITEMENTRY_BIT_EQUIPPED,(a0,d0.w)
		beq.s   loc_16B78       
		move.w  #392,d0         ; "Whoa! I don't repair cursed[Line]items! Nope, not me. I'm[Line]nobody's fool![Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16B02       
loc_16B78:
		move.w  #393,d0         ; "OK. Just a minute.[Wait2]"
		bsr.w   DisplayMenuMessage
		sndCom  SFX_SWORDS_HIT
		moveq   #20,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #20,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #10,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #10,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #10,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOW_MASTER
		moveq   #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #20,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #20,d0
		jsr     (j_Sleep).l
		move.w  #394,d0         ; "I have it right here. It's as[Line]good as new! Try not to[Line]damage it again, OK?[Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		movea.l -$10(a6),a0
		move.w  -$C(a6),d0
		bclr    #6,(a0,d0.w)
		bra.w   loc_16B02       
@Sell:
		dbf     d0,@Repair      
loc_16C0E:
		move.w  #378,d0         ; "Let's see. Who wants to sell,[Line]and which item?"
		bsr.w   DisplayMenuMessage
		bsr.w   sub_16E48
		beq.w   loc_16D6C
                
		move.w  d0,-8(a6)
		move.w  d1,-$C(a6)
		jsr     j_GetEntityItemsAddress
		move.l  a0,-$10(a6)
		move.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  -$C(a6),d1
		and.b   (a0,d1.w),d0
		move.w  d0,-$A(a6)
		move.w  d0,d1
		cmpi.w  #ITEM_ORB_OF_LIGHT,d0
		beq.w   loc_16D60       
		cmpi.w  #ITEM_MOON_STONE,d0
		beq.w   loc_16D60       
		cmpi.w  #ITEM_LUNAR_DEW,d0
		beq.w   loc_16D60       
		cmpi.w  #ITEM_SWORD_OF_LIGHT,d0
		beq.w   loc_16D60       
		cmpi.w  #ITEM_SWORD_OF_DARKNESS,d0
		beq.w   loc_16D60       
		cmpi.w  #ITEM_CHAOS_BREAKER,d0
		beq.w   loc_16D60       
		jsr     j_GetItemPrice
		move.l  d2,d0
		add.l   d2,d2
		add.l   d0,d2
		lsr.l   #2,d2
		move.w  d2,-4(a6)
		move.l  d2,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   IsSellingDealsItem
		bne.s   loc_16C98       
		move.w  #379,d0         ; "I'll give you [Num] coins[Line]for it. OK?"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16CA0
loc_16C98:
		move.w  #380,d0         ; "Say, that's nice! How about[Line][Num] coins for it?"
		bsr.w   DisplayMenuMessage
loc_16CA0:
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @IsCursed
		move.w  #381,d0         ; "Sorry we couldn't cut a deal.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_16CB4:
		bsr.w   CloseGoldWindowInMenu
		move.w  #386,d0         ; "Anything else to sell?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_16D6C
		bra.w   loc_16C0E       
@IsCursed:
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_16CF6
		movea.l -$10(a6),a0
		move.w  -$C(a6),d0
		btst    #ITEMENTRY_BIT_EQUIPPED,(a0,d0.w)
		beq.s   loc_16CF6
		move.w  #387,d0         ; "Hey, wait a minute. I don't[Line]deal with cursed items! It's[Line]bad luck, you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.s   loc_16CB4
loc_16CF6:
		move.w  -8(a6),d0
		move.w  -$C(a6),d1
		jsr     j_RemoveItem
		move.w  -$A(a6),d1
		jsr     j_IncrementDealsStock
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_IncreaseGold
		bsr.w   OpenGoldWindowInMenu
		move.w  -$A(a6),d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_WEAPON,d2
		bne.s   loc_16D42
		tst.w   -$14(a6)
		bne.s   loc_16D40
		move.w  #385,d0         ; "Thanks, I don't sell this[Line]type of item, but I know[Line]someone who does.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D40:
		bra.s   loc_16D54       
loc_16D42:
		tst.w   -$14(a6)
		beq.s   loc_16D54       
		move.w  #384,d0         ; "Thanks, I don't sell this[Line]type of item, but I know[Line]someone who does.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D54:
		move.w  #383,d0         ; "It's mine, all mine![Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D60:
		move.w  #382,d0         ; "I'd like to help, but we[Line]don't deal with these.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_16CB4
loc_16D6C:
		bsr.w   CloseGoldWindowInMenu
		move.w  #364,d0         ; "Anything else?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		beq.w   loc_16D8C       
		move.w  #365,d0         ; "What do you need, then?[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_1692C
loc_16D8C:
		move.w  #366,d0         ; "Thank you. Do come again![Wait2]"
		bsr.w   DisplayMenuMessage
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		move.w  -6(a6),d1
		move.b  -$19(a6),d2
		unlk    a6
		movem.l (sp)+,d3-a5
		rts
        modend

    ; End of function ExecuteShopMenu

