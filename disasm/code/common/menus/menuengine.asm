
; ASM FILE code\common\menus\menuengine.asm :
; 0x560C..0x66FA : Menu engine

; =============== S U B R O U T I N E =======================================

YesNoPrompt:
		clr.w   d0
		move.b  (P1_INPUT).l,d0 
		bra.s   loc_5618

    ; End of function YesNoPrompt


; =============== S U B R O U T I N E =======================================

YesNoChoiceBox:
		
		clr.w   d0
loc_5618:
		move.w  d0,-(sp)
		lea     tiles_YesNoPrompt(pc), a0
		jsr     (j_DecompressGraphics).l
		sndCom  SFX_MENU_SWITCH
		clr.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		bsr.w   sub_5744
		move.w  #$90,d0 
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$60,d0 
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$30,d0 
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #0,d0
		bsr.w   sub_57BA
		move.w  (sp)+,d0
		beq.w   loc_5672
loc_566A:
		tst.b   (P1_INPUT).l    
		bne.s   loc_566A
loc_5672:
		moveq   #$F,d6
loc_5674:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_568E
		clr.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_56F2
loc_568E:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56AA
		move.b  #-1,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_56F2
loc_56AA:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56C2
		moveq   #-1,d0
		move.b  d0,(CURRENT_DIAMOND_MENU_SELECTION).l
		bra.w   byte_5702
loc_56C2:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56DA
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   byte_5702
loc_56DA:
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56F4
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   byte_5702
loc_56F2:
		moveq   #$13,d6
loc_56F4:
		bsr.w   sub_5744
		subq.w  #1,d6
		bne.s   loc_56FE
		moveq   #$14,d6
loc_56FE:
		bra.w   loc_5674
byte_5702:
		sndCom  SFX_MENU_SWITCH
		movem.w d0-d1,-(sp)
		move.w  #$FFD0,d0
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$FFA0,d0
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$FF70,d0
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$100,d0
		bsr.w   sub_57BA
		movem.w (sp)+,d0-d1
		ext.w   d0
		rts

    ; End of function YesNoChoiceBox


; =============== S U B R O U T I N E =======================================

sub_5744:
		lea     (FF3000_LOADING_SPACE).l,a2
		movea.l a2,a0
		cmpi.w  #$A,d6
		ble.s   loc_575E
		tst.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		bne.s   loc_575E
		adda.w  #$120,a0
loc_575E:
		lea     (byte_FF3800).l,a1
		move.w  #$120,d7
		jsr     (j_CopyBytes).l
		adda.w  #$120,a1
		movea.l a2,a0
		adda.w  #$240,a0
		cmpi.w  #$A,d6
		ble.s   loc_578C
		cmpi.b  #-1,(CURRENT_DIAMOND_MENU_SELECTION).l
		bne.s   loc_578C
		adda.w  #$120,a0
loc_578C:
		move.w  #$120,d7
		jsr     (j_CopyBytes).l
		adda.w  #$120,a1
		lea     (byte_FF3800).l,a0
		lea     ($FDC0).l,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		rts

    ; End of function sub_5744


; =============== S U B R O U T I N E =======================================

sub_57BA:
		lea     (SPRITE_01_PROPERTIES).l,a0
		move.w  #$106,(a0)+
		move.b  #$A,(a0)
		addq.l  #2,a0
		move.w  #$C7EE,(a0)+
		move.w  #$E0,(a0) 
		add.w   d0,(a0)+
		move.w  #$106,(a0)+
		move.b  #$A,(a0)
		addq.l  #2,a0
		move.w  #$C7F7,(a0)+
		move.w  #$108,(a0)
		add.w   d0,(a0)+
		rts

    ; End of function sub_57BA

tiles_YesNoPrompt:
		incbin "data/graphics/tech/menus/yesnoprompttiles.bin"

; =============== S U B R O U T I N E =======================================

ExecuteMainMenu:
		
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  #1,((byte_FFB53A-$1000000)).w
		clr.b   ((byte_FFB4CA-$1000000)).w
loc_5A26:
		btst    #INPUT_BIT_A,((TEMP_INPUT_STATES-$1000000)).w
		beq.s   loc_5A3E
		clr.w   d0
		clr.b   ((byte_FFB4CB-$1000000)).w
		jsr     j_OpenMiniStatusWindow
		bsr.w   DisplayGoldWindow
loc_5A3E:
		move.b  #MAIN_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8038
		tst.w   (word_FFD0BC).l
		beq.s   loc_5A62
		move.w  d0,-(sp)
		bsr.w   HideGoldWindow
		clr.w   d0
		jsr     j_CloseMiniStatusWindow
		move.w  (sp)+,d0
loc_5A62:
		tst.b   d0
		bmi.w   return_5A80
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_MainMenuActions(pc,d0.w),d0
		jmp     rjt_MainMenuActions(pc,d0.w)
rjt_MainMenuActions:
		
		dc.w mainMenuAction_Talk-rjt_MainMenuActions
		dc.w MainMenuAction_Magic-rjt_MainMenuActions
		dc.w MainMenuAction_Item-rjt_MainMenuActions
		dc.w j_j_MainMenuAction_Search-rjt_MainMenuActions
return_5A80:
		rts

    ; End of function ExecuteMainMenu


; =============== S U B R O U T I N E =======================================

j_j_MainMenuAction_Search:
		
		jmp     j_MainMenuAction_Search

    ; End of function j_j_MainMenuAction_Search


; =============== S U B R O U T I N E =======================================

mainMenuAction_Talk:
		
		cmpi.b  #ALLY_NOVA,((COMBATANT_1_ENTITY-$1000000)).w
		beq.s   loc_5A98
		jmp     sub_10028
		bra.s   MainMenuAction_Magic
loc_5A98:
		jmp     (j_TalkMenuAction).l

    ; End of function mainMenuAction_Talk


; =============== S U B R O U T I N E =======================================

MainMenuAction_Magic:
		
		clr.b   ((byte_FFB4C9-$1000000)).w
		clr.b   ((byte_FFB4C5-$1000000)).w
		clr.w   d0
		jsr     j_GetEntitySpellsAddressForCombatant
		cmpi.b  #-1,(a0)
		bne.s   loc_5ABE
		moveq   #1,d0           ; "No magic." refusal text
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5ABE:
		move.b  #MAGIC_MENU,((CURRENT_MENU-$1000000)).w
		bsr.w   sub_8048
		cmpi.w  #-1,d0
		bne.s   loc_5AD8
		jsr     (j_WaitForVInt).l
		bra.w   loc_5A26
loc_5AD8:
		move.b  d1,((SPELL_INDEX-$1000000)).w
		clr.w   d0
		jsr     j_GetCurrentMP
		move.w  d1,-(sp)
		move.b  ((SPELL_INDEX-$1000000)).w,d1
		jsr     j_GetMPCost
		move.w  (sp)+,d1
		cmp.w   d1,d2
		ble.s   loc_5B00
		moveq   #3,d0           ; "Not enough MP." refusal text
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5B00:
		move.w  d2,-(sp)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  ((SPELL_INDEX-$1000000)).w,d1
		move.w  d1,-(sp)
		andi.w  #SPELLENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  (sp)+,d1
		lsr.w   #6,d1
		ext.l   d1
		addq.l  #1,d1
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		openTxt
		txt     437             ; "[Name] casts [Spell][Line]level [Num]!"
		sndCom  SFX_SPELL_CAST
		txt     490             ; "[Dict][Line]"
		clearTxt
		txt     465             ; "But nothing happens."
		txt     490             ; "[Dict][Line]"
		closeTxt
		clr.w   d0
		move.w  (sp)+,d1
		bra.w   loc_5A26

    ; End of function MainMenuAction_Magic


; =============== S U B R O U T I N E =======================================

MainMenuAction_Item:
		
		bsr.w   ExecuteItemMenu
		bmi.w   loc_5A3E
		rts

    ; End of function MainMenuAction_Item


; =============== S U B R O U T I N E =======================================

ExecuteItemMenu:
		
		clr.w   ((SPEECH_SFX-$1000000)).w
loc_5B58:
		tst.w   (word_FFD984).l
		beq.s   loc_5B62
		closeTxt
loc_5B62:
		clr.b   ((byte_FFB52A-$1000000)).w
		move.b  #ITEM_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8048
		tst.w   d0
		bge.w   loc_5B7A
		rts
loc_5B7A:
		add.w   d0,d0
		move.w  rjt_ItemMenuActions(pc,d0.w),d0
		jmp     rjt_ItemMenuActions(pc,d0.w)

    ; End of function ExecuteItemMenu

rjt_ItemMenuActions:
		dc.w itemMenuAction_Use-rjt_ItemMenuActions
		dc.w itemMenuAction_Give-rjt_ItemMenuActions
		dc.w itemMenuAction_Equip-rjt_ItemMenuActions
		dc.w itemMenuAction_Drop-rjt_ItemMenuActions
                

; START OF FUNCTION CHUNK FOR ExecuteItemMenu

itemMenuAction_Use:
		
		openTxt
		bsr.w   sub_617C
loc_5B92:
		jsr     (j_CreateMessageWindow).l
		txt     28              ; "Use whose item?"
		jsr     sub_8044
		tst.w   d0
		bmi.s   loc_5B58
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.b  d0,((byte_FFF001-$1000000)).w
		jsr     j_GetEntityItemsAddress
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		andi.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ITEM_CHAOS_BREAKER,d0
		bne.w   loc_5C30
		cmpi.b  #8,((CURRENT_CHAPTER-$1000000)).w
		bne.w   loc_5C30
		tst.b   ((CURRENT_REGION-$1000000)).w
		bne.w   loc_5C30
		cmpi.w  #$170A,((CURSOR_POSITION_X-$1000000)).w
		bne.w   loc_5C30
		moveq   #41,d0
		bsr.w   CheckEventFlag
		beq.w   loc_5C2E
		moveq   #49,d0
		bsr.w   CheckEventFlag
		bne.w   loc_5C2E
		moveq   #49,d0
		bsr.w   SetEventFlag
		clearTxt
		txt     540             ; "[Hero] uses the[Line][Item].[Wait2]"
		closeTxt
		move.b  #5,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		clr.b   ((byte_FFB538-$1000000)).w
		jmp     sub_124008
loc_5C2E:
		moveq   #$27,d0 
loc_5C30:
		cmpi.b  #ITEM_ANTIDOTE,d0
		bne.w   loc_5C7E
		clearTxt
		txt     29              ; "Who will use the[Line][Item]?"
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.w   loc_5B92
		move.w  d0,-(sp)
		clearTxt
		txt     540             ; "[Hero] uses the[Line][Item].[Wait2]"
		clearTxt
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		jsr     j_CurePoison
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
						; ""
		txtD0
		bsr.w   byte_5CE6       
		closeTxt
		rts
loc_5C7E:
		cmpi.b  #ITEM_POWER_POTION,d0
		blt.w   loc_5CE0
		cmpi.b  #ITEM_BREAD_OF_LIFE,d0
		bgt.w   loc_5CE0
		clearTxt
		txt     29              ; "Who will use the[Line][Item]?"
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.w   loc_5B92
		movem.w d0,-(sp)
		clearTxt
		txt     540             ; "[Hero] uses the[Line][Item].[Wait2]"
		clearTxt
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		move.w  ((MESSAGE_ARG_NAME_1-$1000000)).w,d1
		subq.w  #5,d1
		jsr     j_IncreaseStatOnItemUse
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
						; ""
		txtD0
		bsr.w   byte_5CE6       
		closeTxt
		jmp     j_ResetForceMemberStats
loc_5CE0:
		jmp     sub_10024
byte_5CE6:
		txt     490             ; "[Dict][Line]"
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		jmp     j_RemoveItem

; END OF FUNCTION CHUNK FOR ExecuteItemMenu


; =============== S U B R O U T I N E =======================================

nullsub_5CFC:
		rts

    ; End of function nullsub_5CFC


; START OF FUNCTION CHUNK FOR ExecuteItemMenu

itemMenuAction_Give:
		
		openTxt
		bsr.w   sub_617C
		txt     31              ; "Transfer whose item?"
		jsr     sub_8044
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_5B58
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1    ; D1 = selected item index
		move.w  d1,-(sp)        ; save selected item index
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1        ; restore selected item index -> D1
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.s   byte_5D5C       ; branch if item is not equipped
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   byte_5D5C       ; branch if item can be unequipped
		jsr     j_PlayCursedItemMusic
		clearTxt
		txt     33              ; "The [Item] is cursed[Line]and can't be given away.[Wait2]"
		bra.w   byte_5E9A
byte_5D5C:
		clearTxt
		txt     32              ; "Who gets the [Item]?"
		jsr     sub_8060
loc_5D6A:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_5D7E
		jsr     sub_8068
		bra.w   loc_5B58
loc_5D7E:
		jsr     j_GetEntityItemsAddress
		move.w  d0,((word_FFB7C8-$1000000)).w
		cmpi.b  #-1,3(a0)
		beq.s   loc_5DA0        ; branch if member has an empty item slot
		move.w  d0,-(sp)
		jsr     j_PickItemSlot
		move.w  (sp)+,d0
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		blt.s   loc_5D6A
loc_5DA0:
		jsr     sub_8068
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7CA-$1000000)).w
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		move.b  (a0,d1.w),d1    ; D1 = item index to give
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GiveItem
		bcc.w   loc_5E8C        ; branch is item has successfully been given
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GetEntityItemsAddress
		move.w  ((word_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.w   loc_5E14
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_5E14
		jsr     j_PlayCursedItemMusic
		clearTxt
		txt     15              ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   byte_5E9A
loc_5E14:
		move.w  ((word_FFB7C8-$1000000)).w,d0
		cmp.w   ((CURRENT_OBJECT-$1000000)).w,d0
		bne.w   loc_5E40
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  d2,d1
		jsr     j_GiveItem
		bra.s   byte_5E9A
loc_5E40:
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     j_RemoveItem
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  ((word_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
		jsr     j_GiveItem
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  (sp)+,d1
		jsr     j_GiveItem
		bra.s   byte_5E9A
loc_5E8C:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItem
byte_5E9A:
		clearTxt
		closeTxt
		rts
itemMenuAction_Equip:
		
		openTxt
		bsr.w   sub_617C
		txt     35              ; "Who do you wish to equip?"
		jsr     j_CreateMembersListScreen
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_5B58
		move.w  d0,-(sp)
		move.w  d0,d2
		bsr.w   FindCombatantSlot
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d0
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
		jsr     j_LoadEquippableItems
		bne.s   loc_5EE0
		clearTxt
		txt     34              ; "[Name] can't be[Line]equipped with anything![Wait2]"
		clearTxt
		bra.s   byte_5F46
loc_5EE0:
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		beq.w   loc_5F08
		clr.b   ((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F08
		bsr.w   sub_6C6E
		clearTxt
		bra.w   loc_5B58
loc_5F08:
		move.w  #ITEMTYPE_MASK_RING,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		beq.w   loc_5F42
		move.b  #MAIN_MENU,((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F42
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		bne.s   loc_5EE0
		bsr.w   sub_6C6E
		clearTxt
		bra.w   loc_5B58
loc_5F42:
		bsr.w   sub_6C6E
byte_5F46:
		clearTxt
		closeTxt
		rts
itemMenuAction_Drop:
		
		openTxt
		bsr.w   sub_617C
		txt     37              ; "Discard whose item?"
		jsr     sub_8044
		tst.w   d0
		bmi.w   loc_5B58
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_5FAA
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_5FAA
		jsr     j_PlayCursedItemMusic
		clearTxt
		txt     33              ; "The [Item] is cursed[Line]and can't be given away.[Wait2]"
		bra.w   byte_5FD0
loc_5FAA:
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CANNOT_DROP,d2
		bne.s   byte_5FC8
		jsr     j_IncrementDealsStock
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItem
		bra.s   byte_5FD0
byte_5FC8:
		clearTxt
		txt     38              ; "[Hero] keeps the[Line][Item].[Wait2]"
byte_5FD0:
		clearTxt
		closeTxt
		rts
		clearTxt
		txt     2               ; "A change of heart, eh?[Wait2]"
		closeTxt
		rts

; END OF FUNCTION CHUNK FOR ExecuteItemMenu


; =============== S U B R O U T I N E =======================================

DisplayAdvisorPortrait:
		
		move.w  d0,-(sp)
		tst.w   (word_FFD082).l
		bne.s   loc_5FF4
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
loc_5FF4:
		move.w  (sp)+,d0
		rts

    ; End of function DisplayAdvisorPortrait


; =============== S U B R O U T I N E =======================================

ExecuteHeadquartersMenu:
		
		jsr     j_ResetCombatants
		bsr.s   DisplayAdvisorPortrait
		openTxt
		txt     0               ; "Well, [Hero],[Line]are you ready to[Line]face the enemy?[Wait2]"
byte_6008:
		closeTxt
		clr.b   ((byte_FFB4CA-$1000000)).w
loc_600E:
		move.b  #HEADQUARTERS_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8048
		tst.b   d0
		bge.s   loc_6028
		openTxt
byte_6020:
		txt     3               ; "If that is all, then go now,[Line]for the hordes of Runefaust[Line]are still on the attack![Wait2]"
		rts
loc_6028:
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_HeadquartersMenuActions(pc,d0.w),d0
		jmp     rjt_HeadquartersMenuActions(pc,d0.w)

    ; End of function ExecuteHeadquartersMenu

rjt_HeadquartersMenuActions:
		dc.w headquartersMenuAction_Advice-rjt_HeadquartersMenuActions
		dc.w headquartersMenuAction_Join-rjt_HeadquartersMenuActions
		dc.w headquartersMenuAction_Item-rjt_HeadquartersMenuActions
		dc.w headquartersMenuAction_Status-rjt_HeadquartersMenuActions
                

; START OF FUNCTION CHUNK FOR ExecuteHeadquartersMenu

		openTxt
byte_6042:
		txt     1               ; "Anything else, [Hero]?"
		jsr     (j_YesNoChoiceBox).l
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bge.w   byte_6008
		clearTxt
		bra.s   byte_6020       
loc_605A:
		bsr.s   DisplayAdvisorPortrait
		clearTxt
		txt     2               ; "A change of heart, eh?[Wait2]"
		clearTxt
		bra.s   byte_6042       
headquartersMenuAction_Advice:
		
		openTxt
		bsr.w   GetAdviceMessageOffset
		addi.w  #$2EE,d0
		txtD0
		clearTxt
		bra.s   byte_6042       

; END OF FUNCTION CHUNK FOR ExecuteHeadquartersMenu


; =============== S U B R O U T I N E =======================================

; Get offset to advice message index for current battle -> D0

GetAdviceMessageOffset:
		
		clr.w   d2
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d2
		subq.w  #1,d2
		move.w  d2,d1
		move.b  table_AdviceMessageNumbers(pc,d2.w),d2
		subq.w  #1,d2
		clr.w   d0
@Loop:
		btst    d0,((byte_FF9C53-$1000000)).w
		beq.s   @Break
		cmp.b   d0,d2
		beq.s   @Break
		addq.w  #1,d0
		bra.s   @Loop
@Break:
		add.b   table_AdviceMessageOffsets(pc,d1.w),d0
		rts

    ; End of function GetAdviceMessageOffset

table_AdviceMessageOffsets:
		; Base advice message offsets for each chapter
		dc.b 0
		dc.b 4
		dc.b 8
		dc.b 11
		dc.b 14
		dc.b 17
		dc.b 21
		dc.b 25
                
table_AdviceMessageNumbers:
		; Number of advice messages per chapter
		dc.b 4
		dc.b 4
		dc.b 3
		dc.b 3
		dc.b 3
		dc.b 4
		dc.b 4
		dc.b 5
                

; START OF FUNCTION CHUNK FOR ExecuteHeadquartersMenu

headquartersMenuAction_Join:
		
		openTxt
loc_60B0:
		jsr     j_PopulateReservePartyMembersList
		tst.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w
		bne.w   byte_60CA       
		txt     6               ; "[Hero], no one[Line]is waiting![Delay1]"
		clearTxt
		bra.w   byte_6042       
byte_60CA:
		txt     4               ; "Who do you wish to take?"
		jsr     j_ClosePortraitWindow
		move.b  #-1,((byte_FFC140-$1000000)).w
		jsr     j_CreateMembersListScreen
		bsr.w   DisplayAdvisorPortrait
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetCurrentHpForCombatant
		tst.w   d1
		bne.s   byte_6112
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		clearTxt
		txt     7               ; "Are you sure? After all,[Line][Name] needs to[Line]be revived."
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bmi.s   byte_60CA       
byte_6112:
		clearTxt
		txt     5               ; "Who will you leave behind?"
		jsr     j_PopulateBattlePartyMembersList
		jsr     j_ClosePortraitWindow
		move.b  #-1,((byte_FFC140-$1000000)).w
		jsr     j_CreateMembersListScreen
		bsr.w   DisplayAdvisorPortrait
		move.w  d0,((word_FFB7C6-$1000000)).w
		bmi.w   loc_605A
		bne.s   loc_614A
		clearTxt
		txt     26              ; "Without you, [Hero], who[Line]will lead the Shining Force?[Wait2]"
		bra.s   byte_6112
loc_614A:
		move.w  ((word_FFB7C6-$1000000)).w,d0
		jsr     j_LeaveBattleParty
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
		jsr     j_JoinBattleParty
		clearTxt
		txt     8               ; "Anyone else to replace?"
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_60B0
		bra.w   byte_6042       

; END OF FUNCTION CHUNK FOR ExecuteHeadquartersMenu


; =============== S U B R O U T I N E =======================================

sub_617C:
		move.w  #VDPTILE_FW_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
						; load "Fw" VDP tile entry
		jsr     j_PopulateBattlePartyMembersList
		move.w  ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d7
		subq.w  #1,d7
		move.w  d7,-(sp)
		movem.l d7-a1,-(sp)
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		move.w  #BATTLE_PARTY_SLOTS_NUMBER,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     j_PopulateForceMembersList
		lea     (FF0FFE_LOADING_SPACE).l,a0
		move.w  (sp)+,d7
loc_61BA:
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a1
		move.b  (a0)+,d0
loc_61C0:
		cmp.b   (a1)+,d0
		bne.s   loc_61C0
		bset    #6,-1(a1)
		dbf     d7,loc_61BA
                
		rts

    ; End of function sub_617C


; START OF FUNCTION CHUNK FOR ExecuteHeadquartersMenu

headquartersMenuAction_Status:
		
		openTxt
		bsr.s   sub_617C
byte_61D4:
		txt     24              ; "View whose status?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_605A
		closeTxt
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_GetPortrait
		move.w  d1,d0
		jsr     j_OpenPortraitWindow
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_BuildMemberStatusWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$20010901,d1
		move.w  #8,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_WaitForPlayerInput).l
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$9012001,d1
		move.w  #8,d2
		jsr     j_MoveWindowWithSfx
		jsr     j_ClosePortraitWindow
		bsr.w   DisplayAdvisorPortrait
		openTxt
		txt     25              ; "Check someone else's status?"
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   byte_61D4       
		bra.w   byte_6042       

; END OF FUNCTION CHUNK FOR ExecuteHeadquartersMenu


; =============== S U B R O U T I N E =======================================

headquartersMenuAction_Item:
		
		clr.b   ((byte_FFB52A-$1000000)).w
		move.b  #ITEM_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8048
		cmpi.w  #-1,d0
		beq.w   loc_600E
		add.w   d0,d0
		move.w  rjt_HeadquartersItemActions(pc,d0.w),d0
		jmp     rjt_HeadquartersItemActions(pc,d0.w)

    ; End of function headquartersMenuAction_Item

rjt_HeadquartersItemActions:
		dc.w headquartersItemMenu_Use-rjt_HeadquartersItemActions
		dc.w headquartersItemMenu_Give-rjt_HeadquartersItemActions
		dc.w headquartersItemMenu_Equip-rjt_HeadquartersItemActions
		dc.w headquartersItemMenu_Drop-rjt_HeadquartersItemActions
                

; START OF FUNCTION CHUNK FOR headquartersMenuAction_Item

headquartersItemMenu_Use:
		
		openTxt
		bsr.w   sub_617C
loc_6298:
		jsr     (j_CreateMessageWindow).l
		txt     9               ; "Use whose item?"
		jsr     j_ClosePortraitWindow
		jsr     sub_8044
		bsr.w   DisplayAdvisorPortrait
		tst.w   d0
		bmi.w   loc_605A
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		clearTxt
		andi.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ITEM_ANTIDOTE,d0
		bne.w   loc_632A
		clearTxt
		txt     29              ; "Who will use the[Line][Item]?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.s   loc_6298
		move.w  d0,-(sp)
		clearTxt
		txt     540             ; "[Hero] uses the[Line][Item].[Wait2]"
		clearTxt
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		jsr     j_CurePoison
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
						; ""
		txtD0
		bsr.w   byte_5CE6       
		bra.w   byte_6398
loc_632A:
		cmpi.b  #ITEM_POWER_POTION,d0
		blt.w   byte_6392       
		cmpi.b  #ITEM_BREAD_OF_LIFE,d0
		bgt.w   byte_6392       
		clearTxt
		txt     29              ; "Who will use the[Line][Item]?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.w   loc_6298
		movem.w d0,-(sp)
		clearTxt
		txt     540             ; "[Hero] uses the[Line][Item].[Wait2]"
		clearTxt
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		move.w  ((MESSAGE_ARG_NAME_1-$1000000)).w,d1
		subq.w  #5,d1
		jsr     j_IncreaseStatOnItemUse
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
						; ""
		txtD0
		bsr.w   byte_5CE6       
		jsr     j_ResetForceMemberStats
		bra.s   byte_6398
byte_6392:
		txt     11              ; "[Hero]! What are you[Line]trying to do with that?[Wait2]"
byte_6398:
		clearTxt
		txt     12              ; "Any other item to use?"
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_6298
		bra.w   byte_6042       
headquartersItemMenu_Give:
		
		openTxt
		bsr.w   sub_617C
byte_63BA:
		txt     13              ; "Transfer whose item?"
		jsr     j_ClosePortraitWindow
		jsr     sub_8044
		bsr.w   DisplayAdvisorPortrait
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   byte_641E
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   byte_641E
		jsr     j_PlayCursedItemMusic
		clearTxt
		txt     15              ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   byte_656C
byte_641E:
		clearTxt
		txt     16              ; "Now, who gets it?"
		jsr     j_ClosePortraitWindow
		jsr     sub_8060
loc_6432:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_644A
		jsr     sub_8068
		bsr.w   DisplayAdvisorPortrait
		bra.w   loc_605A
loc_644A:
		jsr     j_GetEntityItemsAddress
		move.w  d0,((word_FFB7C8-$1000000)).w
		cmpi.b  #-1,3(a0)
		beq.w   loc_646E
		move.w  d0,-(sp)
		jsr     j_PickItemSlot
		move.w  (sp)+,d0
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		blt.s   loc_6432
loc_646E:
		jsr     sub_8068
		bsr.w   DisplayAdvisorPortrait
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7CA-$1000000)).w
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddressForCombatant
		move.b  (a0,d1.w),d1
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GiveItemForCombatant
		bcc.w   loc_655E
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GetEntityItemsAddressForCombatant
		move.w  ((word_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_64E6
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_64E6
		jsr     j_PlayCursedItemMusic
		clearTxt
		txt     15              ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   byte_656C
loc_64E6:
		move.w  ((word_FFB7C8-$1000000)).w,d0
		cmp.w   ((CURRENT_OBJECT-$1000000)).w,d0
		bne.w   loc_6512
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  d2,d1
		jsr     j_GiveItem
		bra.s   byte_656C
loc_6512:
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     j_RemoveItemForCombatant
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d2
		move.b  (a0,d1.w),d2
loc_653E:
		jsr     j_RemoveItemForCombatant
loc_6544:
		move.w  ((word_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
loc_654A:
		jsr     j_GiveItemForCombatant
loc_6550:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  (sp)+,d1
loc_6556:
		jsr     j_GiveItemForCombatant
		bra.s   byte_656C
loc_655E:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
loc_6562:
		move.w  ((word_FFB7C6-$1000000)).w,d1
loc_6566:
		jsr     j_RemoveItemForCombatant
byte_656C:
		clearTxt
		txt     17              ; "Anything else to transfer?"
loc_6574:
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
loc_6580:
		beq.w   byte_63BA       
		bra.w   byte_6042       
headquartersItemMenu_Equip:
		
		openTxt
		bsr.w   sub_617C
byte_658E:
		txt     18              ; "Who do you wish to equip?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
loc_65A4:
		bmi.w   loc_605A
		move.w  d0,d2
loc_65AA:
		bsr.w   FindCombatantSlot
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
loc_65B6:
		jsr     j_LoadEquippableItemsForCombatant
		bne.s   loc_65CE
		bsr.w   DisplayAdvisorPortrait
		clearTxt
		txt     27              ; "[Name] can't be[Line]equipped with anything![Wait2]"
		clearTxt
		bra.s   loc_6630
loc_65CE:
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItemsForCombatant
		beq.w   loc_65F4
loc_65E0:
		clr.b   ((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_65F4
loc_65EC:
		bsr.w   sub_6C6E
		bra.w   loc_605A
loc_65F4:
		move.w  #ITEMTYPE_MASK_RING,d1
loc_65F8:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
loc_65FC:
		jsr     j_LoadEquippableItemsForCombatant
		beq.w   loc_662C
		move.b  #MAIN_MENU,((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_662C
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
loc_661C:
		jsr     j_LoadEquippableItemsForCombatant
		bne.s   loc_65CE
		bsr.w   sub_6C6E
loc_6628:
		bra.w   loc_605A
loc_662C:
		bsr.w   sub_6C6E
loc_6630:
		bsr.w   DisplayAdvisorPortrait
		clearTxt
		txt     20              ; "Anyone else to equip?"
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   byte_658E       
loc_664C:
		bra.w   byte_6042       
headquartersItemMenu_Drop:
		
		openTxt
loc_6652:
		bsr.w   sub_617C
byte_6656:
		txt     21              ; "Discard whose item?"
loc_665C:
		jsr     j_ClosePortraitWindow
loc_6662:
		jsr     sub_8044
		bsr.w   DisplayAdvisorPortrait
		tst.w   d0
		bmi.w   loc_605A
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
loc_667E:
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_66B8
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_66B8
		jsr     j_PlayCursedItemMusic
		clearTxt
		txt     15              ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   byte_66DE
loc_66B8:
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CANNOT_DROP,d2
		bne.s   byte_66D6
		jsr     j_IncrementDealsStock
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItemForCombatant
		bra.s   byte_66DE
byte_66D6:
		clearTxt
		txt     22              ; "[Hero]! It would be[Line]foolish to discard the[Line][Item].[Wait2]"
byte_66DE:
		clearTxt
		txt     23              ; "Anything else to discard?"
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   byte_6656       
		bra.w   byte_6042       

; END OF FUNCTION CHUNK FOR headquartersMenuAction_Item

