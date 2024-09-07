
; ASM FILE code\common\churchactions.asm :
; 0x17028..0x175DE : Church menu functions

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
		move.w  #396,d0         ; "Welcome, [Hero]![Line]I've been expecting you.[Wait2][Line]How can I help you[Line]and the Shining Force?[Wait2]"
		bsr.w   DisplayMenuMessage
@Start:
		jsr     (j_CloseMessageWindow).l
		clr.w   -6(a6)
		bsr.w   sub_16EAE
		beq.w   @Exit           
		dbf     d0,@IsCureAction
                
		                ; Save action
		jsr     j_PopulateForceMembersList
		move.w  #400,d0         ; "Shall I make a record of your[Line]adventures thus far?"
		bsr.w   DisplayMenuMessage
		bsr.w   CheckYesNoPrompt
		bne.w   loc_17086
		move.w  #397,d0         ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17086:
		movem.l d0-a6,-(sp)
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		jsr     (j_SaveGame).l
		move.w  #39,d0
		jsr     (j_ClearEventFlag).l
		movem.l (sp)+,d0-a6
		sndCom  MUSIC_SAVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #401,d0         ; "There, my record of your[Line]exploits is complete.[Wait2]"
		bsr.w   DisplayMenuMessage
		move.w  #402,d0         ; "Will you continue your[Line]journey?"
		bsr.w   DisplayMenuMessage
		bsr.w   CheckYesNoPrompt
		bne.w   loc_175A8
		move.w  #403,d0         ; "Yes, you should rest before[Line]continuing. Remember, a tired[Line]warrior is soon a dead one![Wait2]"
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
		move.w  #404,d0         ; "Well, let's just see who[Line]needs my help.[Wait2]"
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
		move.w  #407,d0         ; "Oh, my![Line][Name] is poisoned![Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #CHURCH_CURE_POISON_COST,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #409,d0         ; "I can heal [Name],[Line]but it'll cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17162
		move.w  #397,d0         ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_171B4
loc_17162:
		moveq   #CHURCH_CURE_POISON_COST,d0
		bsr.w   CheckGold       
		bne.w   loc_17178
		move.w  #410,d0         ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_171B4
loc_17178:
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
		move.w  #411,d0         ; "Done. [Name] is cured![Wait2]"
		bsr.w   DisplayMenuMessage
loc_171B4:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_17104
		tst.b   -$16(a6)
		bne.s   loc_171D4
		move.w  #405,d0         ; "Hmmm...no one's poisoned.[Wait2]"
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
		move.w  #408,d0         ; "Oh, my![Line][Name] is cursed![Wait2]"
		bsr.w   DisplayMenuMessage
		moveq   #CHURCH_CURE_CURSE_COST,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #409,d0         ; "I can heal [Name],[Line]but it'll cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17238
		move.w  #397,d0         ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_172DC
loc_17238:
		moveq   #CHURCH_CURE_CURSE_COST,d0
		bsr.w   CheckGold       
		bne.w   loc_1724E
		move.w  #410,d0         ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_172DC
loc_1724E:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetStatusEffects
		bclr    #STATUSEFFECT_BIT_CURSE,d1
		jsr     j_SetStatusEffects
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItem
		bcs.s   loc_1728E
		move.w  d2,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_1728E
		jsr     j_GetEntityItemsAddress
		bclr    #ITEMENTRY_BIT_EQUIPPED,(a0,d3.w)
loc_1728E:
		move.w  #ITEMTYPE_MASK_RING,d1
		jsr     j_GetEquippedItem
		bcs.s   loc_172B4
		move.w  d2,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_172B4
		jsr     j_GetEntityItemsAddress
		bclr    #ITEMENTRY_BIT_EQUIPPED,(a0,d3.w)
loc_172B4:
		jsr     j_ResetCombatants
		moveq   #CHURCH_CURE_CURSE_COST,d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #412,d0         ; "Done. [Name] is cured![Wait2]"
		bsr.w   DisplayMenuMessage
loc_172DC:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_171DC
		tst.b   -$15(a6)
		bne.s   loc_172FC
		move.w  #406,d0         ; "No one's cursed![Wait2]"
		bsr.w   DisplayMenuMessage
loc_172FC:
		bra.w   loc_175A8
@IsReviveAction:
		
		dbf     d0,@IsPromoteAction
                
		                ; Revive action
		jsr     j_PopulateForceMembersList
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a5
		move.w  #404,d0         ; "Well, let's just see who[Line]needs my help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   -8(a6)
		clr.b   -$17(a6)
loc_1731E:
		move.w  -8(a6),d0
		move.b  (a5,d0.w),d0
		move.b  d0,-$1C(a6)
		jsr     j_GetCurrentHp
		tst.w   d1
		bne.w   loc_173EC
		st      -$17(a6)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  -$1C(a6),((MESSAGE_ARG_NAME_1+1-$1000000)).w
		move.w  #414,d0         ; "Oh, my! [Name] is in bad[Line]shape. I'll see if I can help.[Wait2]"
		bsr.w   DisplayMenuMessage
		clr.w   d0
		move.b  -$1C(a6),d0
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		moveq   #0,d7
		tst.b   (a0,d0.w)
		beq.w   loc_17362
		moveq   #CHURCH_BASE_PROMOTION_LEVEL,d7
loc_17362:
		jsr     j_GetLevel
		add.w   d7,d1
		mulu.w  #CHURCH_RAISE_COST_PER_LEVEL,d1
		move.w  d1,-4(a6)
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #415,d0         ; "I can revive [Name], but it[Line]will cost [Num] coins.[Line]Agreed?"
		bsr.w   DisplayMenuMessage
		bsr.w   OpenGoldWindowInMenu
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17396
		move.w  #397,d0         ; "Remember that I'm always[Line]willing to record your deeds.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_173EC
loc_17396:
		moveq   #0,d0
		move.w  -4(a6),d0
		bsr.w   CheckGold       
		bne.w   loc_173B0
		move.w  #410,d0         ; "Sorry. I'm afraid I can't heal[Line][Name]. Union rules,[Line]you know.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_173EC
loc_173B0:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetMaxHp
		jsr     j_SetCurrentHp
		moveq   #0,d1
		move.w  -4(a6),d1
		jsr     j_DecreaseGold
		bsr.w   OpenGoldWindowInMenu
		sndCom  MUSIC_REVIVE
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  #416,d0         ; "[Name] has revived![Wait2]"
		bsr.w   DisplayMenuMessage
loc_173EC:
		move.w  -8(a6),d0
		addq.w  #1,d0
		move.w  d0,-8(a6)
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bcs.w   loc_1731E
		tst.b   -$17(a6)
		bne.s   loc_1740C
		move.w  #413,d0         ; "Hmm...everyone seems OK.[Wait2]"
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
		move.w  #417,d0         ; "I'm sorry, but no one has[Line]earned a promotion.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17490:
		move.w  #418,d0         ; "Does anyone want to be[Line]promoted?"
		bsr.w   DisplayMenuMessage
		move.w  #VDPTILE_CL_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
		bsr.w   DisplayPortraitInMenu
		movem.l d1-a6,-(sp)
		jsr     j_CreateMembersListScreen
		cmpi.w  #-1,d0
		movem.l (sp)+,d1-a6
		bne.s   loc_174C2
		move.w  #419,d0         ; "Changed your mind?[Line]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_174C2:
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX,d0
		move.b  d0,-$1C(a6)
		jsr     j_GetCurrentHp
		tst.w   d1
		bne.s   loc_174E4
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #421,d0         ; "[Name] needs to be revived[Line]before being promoted.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_174E4:
		tst.b   -$40(a6,d0.w)
		bne.s   loc_1751C
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		jsr     j_GetClass
		cmpi.w  #BASE_CLASSES_END,d1
		ble.s   loc_17510       
		move.w  d1,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  #425,d0         ; "Hmm...[Line]I think [Name] should[Line]stay as [Class].[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17510:
		move.w  #420,d0         ; "Hmm...[Name] needs some more[Line]training. Come back[Line]later.[Wait2]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_1751C:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #422,d0         ; "[Name] wants[Line]a promotion?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   loc_17542
		move.w  #419,d0         ; "Changed your mind?[Line]"
		bsr.w   DisplayMenuMessage
		bra.w   loc_175A8
loc_17542:
		clr.w   d0
		move.b  -$1C(a6),d0
		move.w  d0,((MESSAGE_ARG_NAME_2-$1000000)).w
		jsr     j_GetClass
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ALLY_JOGURT,d0
		beq.s   loc_17562
		jsr     j_Promote
loc_17562:
		jsr     j_GetClass
		move.w  d1,((MESSAGE_ARG_NAME_3-$1000000)).w
		move.w  #423,d0         ; "I hereby make a promotion.[Line]Now, [Class] [Name] shall[Line]be known as a [Class]![Wait2]"
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
		move.w  #424,d0         ; "Congratulations, [Name]![Wait2]"
		bsr.w   DisplayMenuMessage
loc_175A8:
		bsr.w   CloseGoldWindowInMenu
		move.w  #398,d0         ; "Can I help in some other way?"
		bsr.w   DisplayMenuMessage
		bsr.w   DisplayYesNoPromptInMenu
		bne.w   @Start
@Exit:
		move.w  #399,d0         ; "May the Powers of Light be[Line]always with you, [Hero]![Wait2]"
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

