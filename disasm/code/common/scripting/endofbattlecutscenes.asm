
; ASM FILE code\common\scripting\endofbattlecutscenes.asm :
; 0x12A4C4..0x12ABCC : End-of-battle cutscenes

; =============== S U B R O U T I N E =======================================

sub_12A4C4:
		tst.b   ((DEBUG_MODE_ACTIVATED-$1000000)).w
		beq.s   loc_12A4DA
		cmpi.b  #INPUT_B|INPUT_C|INPUT_A,(P1_INPUT).l
		bne.s   loc_12A4DA
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
loc_12A4DA:
		move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  rjt_EnemyDeathScripts(pc,d0.w),d0
		jmp     rjt_EnemyDeathScripts(pc,d0.w)

    ; End of function sub_12A4C4

rjt_EnemyDeathScripts:
		dc.w edcs00-rjt_EnemyDeathScripts
		dc.w edcs01_02_03_04-rjt_EnemyDeathScripts
		dc.w edcs01_02_03_04-rjt_EnemyDeathScripts
		dc.w edcs01_02_03_04-rjt_EnemyDeathScripts
		dc.w edcs01_02_03_04-rjt_EnemyDeathScripts
		dc.w edcs05-rjt_EnemyDeathScripts
		dc.w edcs06-rjt_EnemyDeathScripts
		dc.w edcs07-rjt_EnemyDeathScripts
		dc.w edcs08-rjt_EnemyDeathScripts
		dc.w edcs09-rjt_EnemyDeathScripts
		dc.w edcs10-rjt_EnemyDeathScripts
		dc.w edcs11-rjt_EnemyDeathScripts
		dc.w edcs12-rjt_EnemyDeathScripts
		dc.w edcs13-rjt_EnemyDeathScripts
		dc.w edcs14-rjt_EnemyDeathScripts
		dc.w edcs15-rjt_EnemyDeathScripts
		dc.w edcs16-rjt_EnemyDeathScripts
		dc.w edcs17-rjt_EnemyDeathScripts
		dc.w edcs18-rjt_EnemyDeathScripts
		dc.w edcs19-rjt_EnemyDeathScripts
		dc.w edcs20-rjt_EnemyDeathScripts
		dc.w edcs21-rjt_EnemyDeathScripts
		dc.w edcs22-rjt_EnemyDeathScripts
		dc.w edcs23-rjt_EnemyDeathScripts
		dc.w edcs24-rjt_EnemyDeathScripts
		dc.w edcs25-rjt_EnemyDeathScripts
		dc.w edcs26-rjt_EnemyDeathScripts
		dc.w edcs27-rjt_EnemyDeathScripts
		dc.w edcs28-rjt_EnemyDeathScripts
		dc.w edcs29-rjt_EnemyDeathScripts

; =============== S U B R O U T I N E =======================================

edcs00:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A54E
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A54E:
		openTxt
		txt     113             ; "Fools...you have won here,[Line]but Lord Kane of Runefaust is[Line]even now attacking Guardiana![Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs00


; =============== S U B R O U T I N E =======================================

edcs01_02_03_04:
		
		rts

    ; End of function edcs01_02_03_04


; =============== S U B R O U T I N E =======================================

edcs05:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A586
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A586:
		openTxt
		txt     130             ; "No! It cannot be! After all[Line]these centuries....[Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs05


; =============== S U B R O U T I N E =======================================

edcs06:
		move.w  #NPC01,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		openTxt
		txt     135             ; "Fools! Light will never defeat[Line]the Darkness....[Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
edcs07:
		rts

    ; End of function edcs06


; =============== S U B R O U T I N E =======================================

edcs08:
		move.w  #NPC02,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A5DA
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A5DA:
		openTxt
		txt     149             ; "You think you've won, but[Line]you've failed. The Laser Eye[Line]is ours now![Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
edcs09:
		rts

    ; End of function edcs08


; =============== S U B R O U T I N E =======================================

edcs10:
		move.w  #NPC02,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A610
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A610:
		openTxt
		txt     161             ; "You may have beaten us here,[Line]but General Elliott will stop[Line]you in Pao![Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs10


; =============== S U B R O U T I N E =======================================

edcs11:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_ELLIOTT,d0
		jsr     j_OpenPortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A64E
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A64E:
		openTxt
		txt     168             ; "Perhaps you have the strength[Line]to rescue King Ramladu and[Line]Runefaust! Stop Darksol![Wait2][Line]Promise that you will free[Line]Runefaust, known as Protectora[Line]before Darksol came....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs11


; =============== S U B R O U T I N E =======================================

edcs12:
		move.w  #NPC05,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   loc_12A68C
		moveq   #-128,d0        ; NPC00
		jsr     j_GetCurrentHp
		tst.w   d1
		bne.w   return_12BFCE
		moveq   #48,d0
		jsr     (j_SetEventFlag).l
		bra.w   loc_12A6A6
loc_12A68C:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #$FFFFFF85,d0   ; NPC05
		jsr     j_GetCurrentHp
		tst.w   d1
		bne.w   return_12BFCE
loc_12A6A6:
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs12


; =============== S U B R O U T I N E =======================================

edcs13:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_BALBAZAK,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_BALBAZAK,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     173             ; "[Hero]! Take the ship,[Line]but please spare my life![Line]Please![Wait2]"
loc_12A6D0:
		jsr     (j_YesNoChoiceBox).l
		clearTxt
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.s   byte_12A6E6     
		txt     174             ; "You don't want to[Line]kill me, do you?[Line]Please let me go.[Wait2]"
		bra.s   loc_12A6D0
byte_12A6E6:
		txt     175             ; "Thank you! Take the ship, go[Line]after Darksol![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #20,d0
		jsr     (j_Sleep).l
		move.b  #9,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$D,(FADING_PALETTE_FLAGS).l
		moveq   #20,d0
		jsr     (j_Sleep).l
		moveq   #MAPSPRITE_DARKSOL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     176             ; "Balbazak, you betrayed me![Wait2]"
		closeTxt
		moveq   #PORTRAIT_BALBAZAK,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_BALBAZAK,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     177             ; "No, no, please Darksol![Line]Leave me in peace![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		sndCom  SFX_HIT
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARKSOL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     178             ; "You disgust me, Balbazak![Line]Leave you in peace? I will[Line]leave you in pieces![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_BALBAZAK,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_BALBAZAK,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     179             ; "Forgive me![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARKSOL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     180             ; "Too late, worm! Receive your[Line]punishment for failure![Wait2]"
		sndCom  SFX_HIT
		bsr.w   sub_128F98
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A7D0
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A7D0:
		moveq   #PORTRAIT_BALBAZAK,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_BALBAZAK,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     181             ; "I am dying, [Hero]....[Line]You must kill Darksol...[Line]free Runefaust....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs13


; =============== S U B R O U T I N E =======================================

edcs14:
		rts

    ; End of function edcs14


; =============== S U B R O U T I N E =======================================

edcs15:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A81C
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A81C:
		openTxt
		txt     189             ; "Arrghh...I was so close...the[Line]way to Metapha...almost[Line]ours....[Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs15


; =============== S U B R O U T I N E =======================================

edcs16:
		rts

    ; End of function edcs16


; =============== S U B R O U T I N E =======================================

edcs17:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A854
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A854:
		openTxt
		txt     194             ; "You'll never beat Kane,[Line]Shining Fools![Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs17


; =============== S U B R O U T I N E =======================================

edcs18:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_KANE_MASKED,d0
		jsr     j_OpenPortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A892
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A892:
		openTxt
		txt     198             ; "Arrgh! My mask[Line]is...breaking![Wait2]"
		bsr.w   sub_128F98
		jsr     j_ClosePortraitWindow
		sndCom  SFX_METALLIC
		moveq   #PORTRAIT_KANE_UNMASKED,d0
		jsr     j_OpenPortraitWindow
		clearTxt
		txt     199             ; "Wh...where am I? I[Line]remember now. Darksol masked[Line]my face to control me....[Wait2][Line]What have I done?[Line]He even made me fight you![Line]Forgive me, [Hero]![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A8D0
		bsr.w   sub_12C036
loc_12A8D0:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A8E4
		moveq   #-1,d1
		jsr     j_SetEntityIndex
loc_12A8E4:
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs18


; =============== S U B R O U T I N E =======================================

edcs19:
		rts

    ; End of function edcs19


; =============== S U B R O U T I N E =======================================

edcs20:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_MISHAELA,d0
		jsr     j_OpenPortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A91A
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A91A:
		openTxt
		txt     207             ; "Though you can take...my[Line]sword...you will never...stop[Line]Darksol.[Wait2][Line]Dark Dragon will be set[Line]free....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs20


; =============== S U B R O U T I N E =======================================

edcs21:
		rts

    ; End of function edcs21


; =============== S U B R O U T I N E =======================================

edcs22:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A982
		bsr.w   sub_12C342      
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
byte_12A982:
		openTxt
		txt     213             ; "Lord Darksol...I have failed[Line]...they're coming...into the[Line]tower....[Wait2]"
		closeTxt
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs22


; =============== S U B R O U T I N E =======================================

edcs23:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_CHAOS,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_CHAOS,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     216             ; "This unit...now ceases to[Line]function...mission incomplete[Line]...system failure....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs23


; =============== S U B R O U T I N E =======================================

edcs24:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs24


; =============== S U B R O U T I N E =======================================

edcs25:
		rts

    ; End of function edcs25


; =============== S U B R O U T I N E =======================================

edcs26:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_RAMLADU,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_RAMLADU,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     221             ; "I am dying...but my mind is[Line]once more my own. Darksol[Line]was controlling me.[Wait2][Line]You must stop Darksol![Line]If he frees Dark Dragon,[Line]all of Rune is doomed.[Wait2][Line]He has gone to the gate,[Line]to summon the castle from the[Line]depths of the sea. Go![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs26


; =============== S U B R O U T I N E =======================================

edcs27:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_COLOSSUS,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_COLOSSUS,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     226             ; "Fools...Dark Dragon...will[Line]come...to destroy you....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs27


; =============== S U B R O U T I N E =======================================

edcs28:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARKSOL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     233             ; "Dark Dragon! With my dying[Line]breath...I summon you....[Line]Arise, Dark Dragon![Wait2]"
		bsr.w   sub_128F98
		moveq   #10,d0
		jsr     (j_Sleep).l
		bsr.w   sub_128F98
		moveq   #10,d0
		jsr     (j_Sleep).l
		txt     490             ; "[Dict][Line]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12AA98
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
byte_12AA98:
		clearTxt
		txt     234             ; "Yes! At last, you are[Line]awakening![Wait2]"
		txt     235             ; "I offer myself to you, Dark[Line]Dragon! Use my power to help[Line]you cast off your bonds.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AABE
		bsr.w   sub_12C036
loc_12AABE:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AAD6
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12AAD6:
		moveq   #-128,d2        ; NPC00
		bsr.w   FindEntityForCutscene
		moveq   #$F,d1
		jsr     j_SetCombatantX
		moveq   #$1E,d1
		jsr     j_SetCombatantY
		jsr     j_LoadCursorTiles
		move.w  #$F,d1
		move.w  #7,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		moveq   #-128,d2        ; NPC00
		bsr.w   FindEntityForCutscene
		moveq   #7,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AB3A
		bsr.w   sub_12BFF0
loc_12AB3A:
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     236             ; "You are free once more! Let[Line]all of Rune tremble! I die[Line]fulfilled! Cringe fools![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AB62
		bsr.w   sub_12C036
loc_12AB62:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AB76
		moveq   #-1,d1
		jsr     j_SetEntityIndex
loc_12AB76:
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs28


; =============== S U B R O U T I N E =======================================

edcs29:
		move.w  #NPC00,d2
		bsr.w   WasEntityKilledByLastAttack
		beq.s   loc_12AB9E
		move.w  #NPC01,d2
		bsr.w   WasEntityKilledByLastAttack
		beq.s   loc_12AB9E
		move.w  #NPC02,d2
		bsr.w   WasEntityKilledByLastAttack
		bne.w   return_12BFCE
loc_12AB9E:
		clr.w   d2
		moveq   #-128,d0
		jsr     j_GetCurrentHp
		add.w   d1,d2
		moveq   #$FFFFFF81,d0
		jsr     j_GetCurrentHp
		add.w   d1,d2
		moveq   #$FFFFFF82,d0
		jsr     j_GetCurrentHp
		add.w   d1,d2
		bne.w   return_12BFCE
		moveq   #-1,d2
		bsr.w   KillChosenEnemies
		rts

    ; End of function edcs29

		rts
