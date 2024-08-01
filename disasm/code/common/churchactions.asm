
; ASM FILE code/common/churchactions.asm :
; 0x17028..0x175DE : Church actions

; =============== S U B R O U T I N E =======================================

; In: D1 =
;     D2 = 

ExecuteChurchMenu:
		
		                module
		movem.l d3-a5,-(sp)
		link    a6,#-64
		move.w  d1,-6(a6)
		move.w  d2,-$1A(a6)
		move.b  d2,-$1B(a6)
		clr.w   -2(a6)
		tst.w   -6(a6)
		bne.s   @Start
		move.w  #$18C,d0        ; "Welcome, [Hero]![Line]I've been expecting you.[Wait2][Line]How can I help you[Line]and the Shining Force?[Wait2]"
		bsr.w   DisplayMenuMessage
@Start:
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		bsr.w   sub_16EAE
		beq.w   @Exit           
		dbf     d0,@IsCureAction
                
		                ; Save action
		jsr     j_PopulateForceMembersList
		move.w  #$190,d0        ; "Shall I make a record of your[Line]adventures thus far?"
		bsr.w   DisplayMenuMessage
		bsr.w   CheckYesNoPrompt
		bne.w   @SaveFile
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
@SaveFile:
		movem.l d0-a6,-(sp)
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		jsr     (j_SaveGame).l
		move.w  #$27,d0 
		jsr     (j_ClearEventFlag).l
		movem.l (sp)+,d0-a6
		sndCom  MUSIC_SAVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$191,d0        ; "There, my record of your[Line]exploits is complete.[Wait2]"
		bsr.w   DisplayMenuMessage
		move.w  #$192,d0        ; "Will you continue your[Line]journey?"
		bsr.w   DisplayMenuMessage
		bsr.w   CheckYesNoPrompt
		bne.w   loc_175A8
		move.w  #$193,d0        ; "Yes, you should rest before[Line]continuing. Remember, a tired[Line]warrior is soon a dead one![Wait2]"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayPortraitInMenu
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		jmp     (sub_370).l
@IsCureAction:
		
		dbf     d0,@IsReviveAction
                
		                ; Cure action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		move.w  #$194,d0        ; "Well, let's just see who[Line]needs my help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   -8(a6)
		clr.b   -$16(a6)
loc_17104:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d1
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d1
		move.b  d1,-$1C(a6)
		                
		move.b  -$1C(a6),d0
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_POISON,d1
		beq.w   loc_171B4
		st      -$16(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #$197,d0        ; "Oh, my![Line][Name] is poisoned![Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #CHURCH_CURE_POISON_COST,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$199,d0        ; "I can heal [Name],[Line]but it'll cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @CheckCost_CurePoison
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_171B4
@CheckCost_CurePoison:
		moveq   #CHURCH_CURE_POISON_COST,d0
		bsr.w   CheckGold       
		bne.w   @ExecuteCurePoison
		move.w  #$19A,d0        ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_171B4
@ExecuteCurePoison:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetStatusEffects
		bclr    #STATUSEFFECT_BIT_POISON,d1
		jsr     j_SetStatusEffects
		moveq   #CHURCH_CURE_POISON_COST,d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$19B,d0        ; "Done. [Name] is cured![Wait2]"
		bsr.w   DisplayMenuMessage
loc_171B4:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_17104
		tst.b   -$16(a6)
		bne.s   loc_171D4
		move.w  #$195,d0        ; "Hmmm...no one's poisoned.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_171D4:
		clr.w   -8(a6)
		clr.b   -$15(a6)
loc_171DC:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d1
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d1
		move.b  d1,-$1C(a6)
		                
		move.b  d1,d0
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_CURSE,d1
		beq.w   loc_172DC
		st      -$15(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #$198,d0        ; "Oh, my![Line][Name] is cursed![Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #CHURCH_CURE_CURSE_COST,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$199,d0        ; "I can heal [Name],[Line]but it'll cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @CheckCost_CureCurse
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_172DC
@CheckCost_CureCurse:
		moveq   #CHURCH_CURE_CURSE_COST,d0
		bsr.w   CheckGold       
		bne.w   @RemoveCursedWeapon
		move.w  #$19A,d0        ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_172DC
@RemoveCursedWeapon:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetStatusEffects
		bclr    #STATUSEFFECT_BIT_CURSE,d1
		jsr     j_SetStatusEffects
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItem
		bcs.s   @RemoveCursedRing
		move.w  d2,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   @RemoveCursedRing
		jsr     j_GetEntityItemsAddress
		bclr    #ITEMENTRY_BIT_EQUIPPED,(a0,d3.w)
@RemoveCursedRing:
		move.w  #ITEMTYPE_MASK_RING,d1
		jsr     j_GetEquippedItem
		bcs.s   @ExecuteCureCurse
		move.w  d2,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   @ExecuteCureCurse
		jsr     j_GetEntityItemsAddress
		bclr    #ITEMENTRY_BIT_EQUIPPED,(a0,d3.w)
@ExecuteCureCurse:
		jsr     j_ResetCombatants
		moveq   #CHURCH_CURE_CURSE_COST,d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$19C,d0        ; "Done. [Name] is cured![Wait2]"
		bsr.w   DisplayMenuMessage
loc_172DC:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_171DC
		tst.b   -$15(a6)
		bne.s   loc_172FC
		move.w  #$196,d0        ; "No one's cursed![Wait2]"
		bsr.w   DisplayMenuMessage
loc_172FC:
		bra.w   loc_175A8
@IsReviveAction:
		
		dbf     d0,@IsPromoteAction
                
		                ; Revive action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		move.w  #$194,d0        ; "Well, let's just see who[Line]needs my help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   -8(a6)
		clr.b   -$17(a6)
loc_1731E:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d0
		move.b  d0,-$1C(a6)
		jsr     j_GetCurrentHP
		tst.w   d1
		bne.w   loc_173EC
		st      -$17(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #$19E,d0        ; "Oh, my! [Name] is in bad[Line]shape. I'll see if I can help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   d0
		move.b  -$1C(a6),d0
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		moveq   #0,d7
		tst.b   (a0,d0.w)
		beq.w   @CalculateCost_Raise
		moveq   #CHURCH_BASE_PROMOTION_LEVEL,d7
@CalculateCost_Raise:
		jsr     j_GetLevel
		add.w   d7,d1
		mulu.w  #CHURCH_RAISE_COST_PER_LEVEL,d1
		move.w  d1,-4(a6)
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #$19F,d0        ; "I can revive [Name], but it[Line]will cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @CheckCost_Raise
		move.w  #$18D,d0        ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_173EC
@CheckCost_Raise:
		moveq   #0,d0
		move.w  -4(a6),d0
		bsr.w   CheckGold       
		bne.w   @ExecuteRaise
		move.w  #$19A,d0        ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_173EC
@ExecuteRaise:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetMaxHP
		jsr     j_SetCurrentHP
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #$1A0,d0        ; "[Name] has revived![Wait2]"
		bsr.w   DisplayMenuMessage
loc_173EC:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_1731E
		tst.b   -$17(a6)
		bne.s   loc_1740C
		move.w  #$19D,d0        ; "Hmm...everyone seems OK.[Wait2]"
		bsr.w   DisplayMenuMessage
loc_1740C:
		bra.w   loc_175A8
@IsPromoteAction:
		
		                ; Promote action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		clr.w   -8(a6)
		clr.b   -$18(a6)
loc_17422:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d0
		sf      -$40(a6,d0.w)
		move.b  d0,-$1C(a6)
		cmpi.b  #ALLY_JOGURT,d0
		beq.s   loc_17456
		jsr     j_GetLevel
		cmpi.w  #CHURCH_BASE_PROMOTION_LEVEL,d1
		blt.s   loc_17470
		clr.w   d0
		move.b  -$1C(a6),d0
		jsr     j_GetClass
		cmpi.w  #BASE_CLASSES_END,d1
		bgt.s   loc_17470
loc_17456:
		andi.w  #$FF,d0
		st      -$40(a6,d0.w)
		st      -$18(a6)
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		move.w  -8(a6),d0
		bset    #6,(a0,d0.w)
loc_17470:
		addq.w  #1,-8(a6)
		move.w  -8(a6),d0
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.s   loc_17422
		tst.b   -$18(a6)
		bne.s   loc_17490       
		move.w  #$1A1,d0        ; "I'm sorry, but no one has[Line]earned a promotion.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17490:
		move.w  #$1A2,d0        ; "Does anyone want to be[Line]promoted?"
		bsr.w   DisplayMenuMessage
		move.w  #VDPTILE_CL_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
		bsr.w   DisplayPortraitInMenu
		movem.l d1-a6,-(sp)
		jsr     j_CreateMembersListScreen
		cmpi.w  #-1,d0
		movem.l (sp)+,d1-a6
		bne.s   @CheckAlive
		move.w  #$1A3,d0        ; "Changed your mind?[Line]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
@CheckAlive:
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d0
		move.b  d0,-$1C(a6)
		jsr     j_GetCurrentHP
		tst.w   d1
		bne.s   loc_174E4
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$1A5,d0        ; "[Name] needs to be revived[Line]before being promoted.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_174E4:
		tst.b   -$40(a6,d0.w)
		bne.s   @ConfirmPromo
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetClass
		cmpi.w  #BASE_CLASSES_END,d1
		ble.s   @LevelTooLow       
		move.w  d1,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  #$1A9,d0        ; "Hmm...[Line]I think [Name] should[Line]stay as [Class].[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
@LevelTooLow:
		move.w  #$1A4,d0        ; "Hmm...[Name] needs some more[Line]training. Come back[Line]later.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
@ConfirmPromo:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$1A6,d0        ; "[Name] wants[Line]a promotion?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @ExecutePromo
		move.w  #$1A3,d0        ; "Changed your mind?[Line]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
@ExecutePromo:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_2-$1000000)).w
		jsr     j_GetClass
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #JOGURT,d0
		beq.s   @DescribePromo
		jsr     j_Promote
@DescribePromo:
		jsr     j_GetClass
		move.w  d1,((MESSAGE_ARG_NAME_3-$1000000)).w
		move.w  #$1A7,d0        ; "I hereby make a promotion.[Line]Now, [Class] [Name] shall[Line]be known as a [Class]![Wait2]"
		bsr.w   DisplayMenuMessage
		sndCom  MUSIC_PROMOTION
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		movem.l d0-a6,-(sp)
		jsr     loc_11D22       ; Update Max's map sprite after promoting
		movem.l (sp)+,d0-a6
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  ((MESSAGE_ARG_NAME_3-$1000000)).w,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  #$1A8,d0        ; "Congratulations, [Name]![Wait2]"
		bsr.w   DisplayMenuMessage
loc_175A8:
		bsr.w   CloseGoldWindowInMenu
		move.w  #$18E,d0        ; "Can I help in some other way?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @Start
@Exit:
		move.w  #$18F,d0        ; "May the Powers of Light be[Line]always with you, [Hero]![Wait2]"
		bsr.w   DisplayMenuMessage
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		move.w  -6(a6),d1
		move.b  -$19(a6),d2
		unlk    a6
		movem.l (sp)+,d3-a5
		rts
                modend

    ; End of function ExecuteChurchMenu

