
; ASM FILE code\specialscreens\readerscreen\readerfunctions_1.asm :
; 0x3284..0x3660 : Simone screen functions, part 1

; =============== S U B R O U T I N E =======================================

; Suspend game

sub_3284:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #120,d0
		bsr.w   j_Sleep
		sndCom  SOUND_COMMAND_18564
		moveq   #60,d0
		bsr.w   j_Sleep
		bsr.w   InitializeReaderScreen
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     sub_164014
		jsr     (j_OpenMessageWindow).l
		move.w  #SFX_DIALOG_BLEEP_1,((SPEECH_SFX-$1000000)).w
		txt     59              ; "Done for now? That's OK. Get[Line]lots of rest, and I'll see[Line]you soon![Wait2]"
		txt     60              ; "Don't stay away too long,[Line]though. We need you here to[Line]lead the Shining Force![Wait2]"
		closeTxt
		jsr     sub_164018
		bsr.w   DisplayShiningForceLogo
		move.w  #3600,d0
		bsr.w   j_Sleep
		bsr.w   j_FadeOutToBlack
		bsr.w   j_DisableDisplayAndInterrupts
		movea.w #$2700,sp
		movea.l (InitStack).w,sp
		movea.l (p_Start).w,a0  
		jmp     (a0)

    ; End of function sub_3284


; =============== S U B R O U T I N E =======================================

; Simone's ending speech

sub_32EC:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #120,d0
		bsr.w   j_Sleep
		sndCom  SOUND_COMMAND_18564
		moveq   #60,d0
		bsr.w   j_Sleep
		bsr.w   InitializeReaderScreen
		move.b  #1,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_OpenMessageWindow).l
		move.w  #SFX_DIALOG_BLEEP_1,((SPEECH_SFX-$1000000)).w
		txt     62              ; "Swallowed by the murky brine,[Line]the Castle of the Ancients[Line]was lost forevermore.[Delay2][Delay2]"
		clearTxt
		txt     63              ; "The battle over and Rune[Line]saved, the warriors of the[Line]Shining Force returned home.[Delay2][Delay2]"
		clearTxt
		txt     64              ; "Led by Mae, Guardiana was[Line]rebuilt and Anri inherited[Line]the throne.[Delay2][Delay2]"
		clearTxt
		txt     65              ; "As for [Hero], he is[Line]believed to have perished at[Line]sea along with Dark Dragon.[Delay2][Delay2]"
		jsr     sub_164014
		clearTxt
		txt     66              ; "And that is the official[Line]ending. But you and I know[Line]differently, don't we?[Delay2][Delay2]"
		clearTxt
		txt     67              ; "Somewhere, evil stirs in a[Line]land that has need of a[Line]hero.[Delay2][Delay2]"
		clearTxt
		txt     68              ; "And I know you'll be up to[Line]the challenge, [Hero]![Delay2][Delay2]"
		clearTxt
		txt     69              ; "Well, goodbye for now. I have[Line]a feeling I'll be seeing you[Line]again.[Delay2][Delay2][Delay2]"
		closeTxt
		moveq   #60,d0
		bsr.w   j_Sleep
		sndCom  SOUND_COMMAND_FADE_OUT
		move.w  #300,d0
		bsr.w   j_Sleep
		sndCom  MUSIC_CREDITS
		bsr.w   j_FadeOutToBlack
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function sub_32EC


; =============== S U B R O U T I N E =======================================

DisplayReaderScreen:
		
		bsr.w   InitializeReaderScreen
		tst.b   ((DEBUG_MODE_UNLOCKED-$1000000)).w
		beq.s   loc_339E
		cmpi.b  #INPUT_UP,(P2_INPUT).l
		bne.s   loc_339E
		move.b  #1,((DEBUG_MODE_ACTIVATED-$1000000)).w
		sndCom  SFX_VALIDATION
loc_339E:
		move.w  #SFX_DIALOG_BLEEP_1,((SPEECH_SFX-$1000000)).w
		bsr.w   CheckSram
		sndCom  MUSIC_SIMONE
		tst.b   ((DEBUG_MODE_ACTIVATED-$1000000)).w
		beq.s   loc_33CA
		btst    #INPUT_BIT_START,(P1_INPUT).l
		beq.s   loc_33CA
		addq.b  #1,((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		jsr     j_InitializeNewGame
		bra.w   loc_34B8
loc_33CA:
		jsr     (j_OpenMessageWindow).l
		clr.b   ((MESSAGE_SPEED-$1000000)).w
		tst.b   (P1_INPUT).l    
		bne.s   loc_33EE
		txt     39              ; "Wow! Dark Dragon, Ancients...[Line]Let's see now, what else does[Line]this old book say?[Wait2][Line]Hmmm. One thousand years[Line]have passed since they[Line]vanquished Dark Dragon.[Wait2][Line]And this book says[Line]Dark Dragon threatened to[Line]return right about now.[Wait2][Line]I bet anything that Dark[Line]Dragon is behind the evil[Line]hordes of Runefaust![Wait2]"
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		txt     40              ; "I need to tell someone about[Line]this! But who would listen to[Line]a kid like me?[Wait2]"
loc_33EE:
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     sub_164014
		tst.b   (P1_INPUT).l    
		bne.s   byte_340E       
		txt     41              ; "Oh, hi! I didn't notice you[Line]there at first. Maybe you'll[Line]listen. Nobody else will.[Wait2]"
		txt     42              ; "This book tells of an ancient[Line]evil that threatened our land[Line]long ago--Dark Dragon![Wait2]"
byte_340E:
		txt     43              ; "I think Dark Dragon's coming[Line]back! Will you help us?[Line]C'mon, it'll be an adventure![Wait2]"
		bra.s   loc_3422
loc_3416:
		jsr     sub_164014
		txt     57              ; "Come on! Let's get on with[Line]your adventure!"
loc_3422:
		clr.w   d0
		jsr     j_CheckSavedGames
		move.w  d0,-(sp)
		move.w  (sp)+,d0
		bmi.s   loc_3416
		add.w   d0,d0
		move.w  rjt_ReaderScreenActions(pc,d0.w),d0
		jmp     rjt_ReaderScreenActions(pc,d0.w)

    ; End of function DisplayReaderScreen

rjt_ReaderScreenActions:
		dc.w readerScreenAction_New-rjt_ReaderScreenActions
		dc.w readerScreenAction_Cont-rjt_ReaderScreenActions
		dc.w ReaderScreenAction_Del-rjt_ReaderScreenActions
		dc.w ReaderScreenAction_Copy-rjt_ReaderScreenActions

; =============== S U B R O U T I N E =======================================

readerScreenAction_New:
		
		jsr     (j_CreateMessageWindow).l
		txt     61              ; "Pick an adventure."
		moveq   #1,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3628
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     44              ; "Say, what shall I call you?[Wait2]"
		jsr     (j_CloseMessageWindow).l
		jsr     j_InitializeNewGame
		clr.w   d0
		jsr     j_NameAlly
		cmpi.b  #INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P2_INPUT).l
		bne.s   loc_34A6
		moveq   #1,d0
		moveq   #REGULAR_NON_LEADER_FORCE_MEMBERS_COUNTER,d7
loc_3492:
		movem.w d0/d7,-(sp)
		jsr     j_NameAlly
		movem.w (sp)+,d0/d7
		addq.w  #1,d0
		dbf     d7,loc_3492
loc_34A6:
		jsr     (j_OpenMessageWindow).l
		txt     45              ; "Nice to meet you,[Line][Hero]! I'm Simone.[Wait2][Line]Come back often[Line]and tell me everything![Wait2]"
		txt     46              ; "You need to get going! Evil[Line]spreads farther across Rune[Line]with every passing day.[Wait2]"
loc_34B8:
		move.b  #1,((CURRENT_CHAPTER-$1000000)).w
		jsr     SaveGame(pc)
		nop
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(SAVE_FLAGS).l
		bset    d0,(byte_20022F).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		sndCom  SOUND_COMMAND_FADE_OUT
		bsr.w   j_FadeOutToBlack
		clr.w   d0
		rts

    ; End of function readerScreenAction_New


; =============== S U B R O U T I N E =======================================

readerScreenAction_Cont:
		
		jsr     (j_CreateMessageWindow).l
		txt     47              ; "Let's get going![Line]You're doing great so far![Wait2]"
		jsr     (j_CreateMessageWindow).l
		txt     48              ; "Which adventure would you[Line]like to continue?[Wait2]"
		moveq   #2,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3628
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		jsr     LoadGame(pc)
		nop
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     49              ; "Good luck! And be sure to[Line]stop by to let me know how[Line]you're doing, OK?[Wait2]"
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		sndCom  SOUND_COMMAND_FADE_OUT
		bsr.w   j_FadeOutToBlack
		moveq   #-1,d0
		rts

    ; End of function readerScreenAction_Cont


; =============== S U B R O U T I N E =======================================

ReaderScreenAction_Del:
		
		jsr     (j_CreateMessageWindow).l
		txt     50              ; "Really? Which adventure[Line]should I delete?[Wait2]"
		moveq   #2,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3416
		movem.w d0,-(sp)
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     51              ; "Are you sure?"
		jsr     (j_YesNoChoiceBox).l
		tst.w   d0
		movem.w (sp)+,d0
		bmi.w   loc_3628
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		bsr.w   sub_3652
		txt     52              ; "OK, it's done![Wait2]"
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		addq.w  #1,d0
		bclr    d0,(SAVE_FLAGS).l
		bclr    d0,(byte_20022F).l
		bra.w   loc_3416
ReaderScreenAction_Copy:
		
		jsr     (j_CreateMessageWindow).l
		txt     53              ; "Which adventure do you wish[Line]to copy?"
		moveq   #2,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3628
		movem.w d0,-(sp)
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     54              ; "Where do you wish to copy it[Line]to?"
		moveq   #1,d0
		jsr     j_CheckSavedGames
		movem.w (sp)+,d1
		bmi.w   loc_3628
		move.w  d0,-(sp)
		move.w  d1,((CURRENT_SAVE_SLOT-$1000000)).w
		bsr.w   LoadGame
		move.w  (sp)+,d0
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		bsr.w   DeleteGame
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(SAVE_FLAGS).l
		bset    d0,(byte_20022F).l
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		bsr.w   sub_3652
		txt     55              ; "Done![Wait2]"
		bra.w   loc_3416
loc_3628:
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     56              ; "Change your mind? No problem![Wait2]"
		bra.w   loc_3416
		jsr     (j_OpenMessageWindow).l
		txt     58              ; "Oh no! I can't find adventure[Line][Num]! I hope you're not too[Line]mad![Wait2]"
		txt     59              ; "Done for now? That's OK. Get[Line]lots of rest, and I'll see[Line]you soon![Wait2]"
		rts

    ; End of function ReaderScreenAction_Del


; =============== S U B R O U T I N E =======================================

sub_3652:
		jsr     sub_164018
		moveq   #20,d0
		jsr     (Sleep).l       

    ; End of function sub_3652

