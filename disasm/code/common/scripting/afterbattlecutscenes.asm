
; ASM FILE code\common\scripting\afterbattlecutscenes.asm :
; 0x12ABCC..0x12BF42 : After-battle cutscenes

; =============== S U B R O U T I N E =======================================

ExecuteAfterBattleScript:
		
		move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  rjt_AfterBattleScripts(pc,d0.w),d0
		jmp     rjt_AfterBattleScripts(pc,d0.w)

    ; End of function ExecuteAfterBattleScript

rjt_AfterBattleScripts:
		dc.w abcs00-rjt_AfterBattleScripts
		dc.w abcs01-rjt_AfterBattleScripts
		dc.w abcs02-rjt_AfterBattleScripts
		dc.w abcs03-rjt_AfterBattleScripts
		dc.w abcs04-rjt_AfterBattleScripts
		dc.w abcs05-rjt_AfterBattleScripts
		dc.w abcs06-rjt_AfterBattleScripts
		dc.w abcs07-rjt_AfterBattleScripts
		dc.w abcs08-rjt_AfterBattleScripts
		dc.w abcs09-rjt_AfterBattleScripts
		dc.w abcs10-rjt_AfterBattleScripts
		dc.w abcs11-rjt_AfterBattleScripts
		dc.w abcs12-rjt_AfterBattleScripts
		dc.w abcs13-rjt_AfterBattleScripts
		dc.w abcs14-rjt_AfterBattleScripts
		dc.w abcs15-rjt_AfterBattleScripts
		dc.w abcs16-rjt_AfterBattleScripts
		dc.w abcs17-rjt_AfterBattleScripts
		dc.w abcs18-rjt_AfterBattleScripts
		dc.w abcs19-rjt_AfterBattleScripts
		dc.w abcs20-rjt_AfterBattleScripts
		dc.w abcs21-rjt_AfterBattleScripts
		dc.w abcs22-rjt_AfterBattleScripts
		dc.w abcs23-rjt_AfterBattleScripts
		dc.w abcs24-rjt_AfterBattleScripts
		dc.w abcs25-rjt_AfterBattleScripts
		dc.w abcs26-rjt_AfterBattleScripts
		dc.w abcs27-rjt_AfterBattleScripts
		dc.w abcs28-rjt_AfterBattleScripts
		dc.w abcs29-rjt_AfterBattleScripts

; =============== S U B R O U T I N E =======================================

abcs00:
		 
		sndCom  MUSIC_EARTHQUAKE; Ancient gate post-battle cutscene.
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12AC50:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12AC50
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     114             ; "If that creature spoke truly,[Line]we must return to help defend[Line]Guardiana![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.b  #4,((EGRESS_LOCATION-$1000000)).w
		rts

    ; End of function abcs00


; =============== S U B R O U T I N E =======================================

abcs01:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     118             ; "Well done, Shining Force![Line]Now, enter Guardiana and find[Line]out what's happened there![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs01


; =============== S U B R O U T I N E =======================================

abcs02:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     120             ; "Excellent! Kane will have to[Line]do better than that to stop[Line]you. On to Alterone![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs02


; =============== S U B R O U T I N E =======================================

abcs03:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     126             ; "[Hero], there's no time[Line]to lose. Kane must be found[Line]and stopped at all costs.[Wait2][Line]Find out all you can and[Line]be sure to talk to the king[Line]of Alterone![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #49,d0
		jsr     (j_ClearEventFlag).l
		moveq   #102,d0
		jsr     (j_SetEventFlag).l
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function abcs03


; =============== S U B R O U T I N E =======================================

abcs04:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     128             ; "[Hero], now enter[Line]Manarina! We must inform[Line]Anri about Guardiana![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs04


; =============== S U B R O U T I N E =======================================

abcs05:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     131             ; "[Hero], the Orb of Light[Line]must be within that chest.[Line]Take it quickly![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs05


; =============== S U B R O U T I N E =======================================

abcs06:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #$C,d0
		moveq   #-128,d1        ; NPC00
		jsr     j_SetEntityIndex
		moveq   #$1B,d1
		jsr     j_SetCombatantX
		moveq   #5,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AD90
		bsr.w   sub_12C342      
		move.w  #0,d2
		move.w  #MAPSPRITE_BOY,d3
		bsr.w   sub_12C2BE
loc_12AD90:
		jsr     j_LoadCursorTiles
		move.w  #$1B,d1
		move.w  #5,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12ADD6
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #1,d1
		move.w  #MAPSPRITE_BOY,d3
		bsr.w   sub_12C09E
loc_12ADD6:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12ADF2
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #MAPSPRITE_BOY,d3
		bsr.w   sub_12C2BE
byte_12ADF2:
		openTxt
		txt     136             ; "She...that evil woman...was[Line]going to take me to Runefaust,[Line]to feed me to a dragon![Wait2][Line]Thank you! I'm going home and[Line]I'm never leaving![Wait2]"
		closeTxt
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AE18
		bsr.w   sub_12C342      
		moveq   #2,d2
		moveq   #5,d1
		move.w  #MAPSPRITE_BOY,d3
		bsr.w   sub_12C09E
loc_12AE18:
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AE3A
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #7,d1
		move.w  #MAPSPRITE_BOY,d3
		bsr.w   sub_12C09E
loc_12AE3A:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AE4E
		moveq   #-1,d1
		jsr     j_SetEntityIndex
loc_12AE4E:
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function abcs06


; =============== S U B R O U T I N E =======================================

abcs07:
		moveq   #100,d0
		jsr     (j_SetEventFlag).l
		moveq   #126,d0
		jsr     (j_ClearEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs07


; =============== S U B R O U T I N E =======================================

abcs08:
		moveq   #99,d0
		jsr     (j_SetEventFlag).l
		move.w  #$2A,((MAP_HEIGHT-$1000000)).w 
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     150             ; "[Hero], the Moon Stone[Line]lies inside the cavern.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #0,d1
		moveq   #$1E,d2
		moveq   #0,d3
		moveq   #$1E,d4
		moveq   #$17,d5
		moveq   #$B,d6
		jmp     sub_80AC

    ; End of function abcs08


; =============== S U B R O U T I N E =======================================

abcs09:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     152             ; "Head for the bridge. We need[Line]to get across quickly![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs09


; =============== S U B R O U T I N E =======================================

; Pao bridge post-battle cutscene (i.e., the "Pelle" scene.)

abcs10:
		clr.w   ((word_FFB7C6-$1000000)).w
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #12,d0          ; 12 = first enemy combatant
		moveq   #-128,d1
		jsr     j_SetEntityIndex
		moveq   #29,d1
		jsr     j_SetCombatantX
		moveq   #20,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		jsr     j_LoadCursorTiles
		move.w  #29,d1
		move.w  #18,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AF42
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #4,d1
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C09E
loc_12AF42:
		moveq   #PORTRAIT_PELLE,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     162             ; "Whew! I thought I was a[Line]goner, but I caught a branch[Line]and just hung on.[Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12AF6E
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #0,d1
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C09E
loc_12AF6E:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12AF8A
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C2BE
byte_12AF8A:
		clearTxt
		txt     163             ; "A great battle! I don't know[Line]who you are, but I want to[Line]tag along![Wait2]"
		jsr     j_ClosePortraitWindow
		moveq   #ALLY_PELLE,d0
		bsr.w   sub_12C446      
		closeTxt
		moveq   #PORTRAIT_NOVA,d0; branch to this location to skip Pelle's appearance and dialogue
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     164             ; "A good job getting to that[Line]Laser Eye. Hurry on to Pao.[Line]Evil is afoot![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		openTxt
		clr.w   ((SPEECH_SFX-$1000000)).w
		txt     358             ; "With the Laser Eye gone,[Line]the Shining Force heads toward[Line]the moving town of Pao.[Wait2][Line]Knowing that Runefaust is[Line]gathering its forces, our[Line]heroes hurried onward.[Wait2]"
		closeTxt
		moveq   #37,d0
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs10


; =============== S U B R O U T I N E =======================================

abcs11:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     169             ; "Elliott was a great warrior...[Line]too bad he was our enemy.[Wait2][Line]But look, the traveling town[Line]of Pao is coming up again![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     (j_FadeOutToBlack).l
		sndCom  SFX_TRAIN_WHISTLE
		moveq   #120,d0
		jsr     (j_Sleep).l
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #2,d1
		moveq   #4,d2
		moveq   #$2A,d3 
		moveq   #$B,d4
		moveq   #1,d5
		moveq   #0,d6
		jsr     sub_80AC
		jsr     (j_FadeInFromBlack).l
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitializeBattleData
		jmp     j_InitializeBattleMap

    ; End of function abcs11


; =============== S U B R O U T I N E =======================================

abcs12:
		moveq   #48,d0
		jsr     (j_CheckEventFlag).l
		beq.s   loc_12B05C
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #$26,d1 
		moveq   #$10,d2
		moveq   #$10,d3
		moveq   #$B,d4
		moveq   #0,d5
		moveq   #0,d6
		jsr     sub_80AC
		bra.s   loc_12B074
loc_12B05C:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		moveq   #$26,d1 
		moveq   #$10,d2
		moveq   #9,d3
		moveq   #7,d4
		moveq   #0,d5
		moveq   #0,d6
		jsr     sub_80AC
loc_12B074:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		sndCom  SFX_HIT
		moveq   #20,d0
		jmp     (j_Sleep).l

    ; End of function abcs12


; =============== S U B R O U T I N E =======================================

abcs13:
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARKSOL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     182             ; "Take the ship, as that fool[Line]said. You will not survive[Line]the voyage! Ha, ha, ha![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.b  #$A,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$D,(FADING_PALETTE_FLAGS).l
		moveq   #20,d0
		jsr     (j_Sleep).l
		openTxt
		clr.w   ((SPEECH_SFX-$1000000)).w
		txt     359             ; "Thus did the Shining Force[Line]free Uranbatol and set sail[Line]for a land of legend....[Wait2]"
		closeTxt
		moveq   #37,d0
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs13


; =============== S U B R O U T I N E =======================================

abcs14:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     184             ; "The ship was damaged in the[Line]battle. We must repair it.[Line]That island over there....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #$C,d0
		moveq   #-128,d1
		jsr     j_SetEntityIndex
		moveq   #3,d1
		jsr     j_SetCombatantX
		moveq   #31,d1
		jsr     j_SetCombatantY
		jsr     sub_8028
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B156
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #MAPSPRITE_MERMAID,d3
		bsr.w   sub_12C2BE
loc_12B156:
		jsr     j_LoadCursorTiles
		move.w  #8,d1
		move.w  #$1F,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B19C
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #4,d1
		move.w  #MAPSPRITE_MERMAID,d3
		bsr.w   sub_12C09E
loc_12B19C:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B1B8
		bsr.w   sub_12C342      
		move.w  #0,d2
		move.w  #MAPSPRITE_MERMAID,d3
		bsr.w   sub_12C2BE
loc_12B1B8:
		moveq   #PORTRAIT_SHELL,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     185             ; "Thank you for destroying[Line]those monsters! My name is[Line]Shell of Waral.[Wait2][Line]You can repair your ship in[Line]Waral. Please follow me![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B1EC
		bsr.w   sub_12C342      
		moveq   #2,d2
		moveq   #4,d1
		move.w  #MAPSPRITE_MERMAID,d3
		bsr.w   sub_12C09E
loc_12B1EC:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     186             ; "I've heard of Waral. We[Line]should be able to get the[Line]ship fixed there.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #35,d0
		jsr     (j_ClearEventFlag).l

    ; End of function abcs14


; =============== S U B R O U T I N E =======================================

abcs15:
		bra.w   sub_12BF66

    ; End of function abcs15


; =============== S U B R O U T I N E =======================================

abcs16:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     191             ; "The ship's helm was destroyed[Line]in the battle. We're now[Line]adrift at sea![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		openTxt
		clr.w   ((SPEECH_SFX-$1000000)).w
		txt     360             ; "The ship drifted off course,[Line]lost at sea. What will become[Line]of the Shining Force?[Wait2]"
		closeTxt
		moveq   #37,d0
		jsr     (j_SetEventFlag).l
		moveq   #35,d0
		jsr     (j_ClearEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs16


; =============== S U B R O U T I N E =======================================

abcs17:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     195             ; "[Hero], you must[Line]stop Kane before he finds the[Line]Manual of the Seal. Onward![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs17


; =============== S U B R O U T I N E =======================================

abcs18:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     200             ; "It seems that Darksol is[Line]behind all the evil afoot.[Line]Stop him and it all ends.[Wait2][Line]In any case, let's take[Line]another look at this village.[Wait2][Line]Check the shrine again....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #71,d0
		jsr     (j_SetEventFlag).l
		moveq   #48,d0
		jsr     (j_ClearEventFlag).l
		moveq   #124,d0
		jsr     (j_ClearEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs18


; =============== S U B R O U T I N E =======================================

abcs19:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     202             ; "Mishaela is said to possess[Line]the Sword of Light. You must[Line]enter her castle and get it![Wait2][Line]With that legendary weapon,[Line]you stand a much better[Line]chance against Darksol.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs19


; =============== S U B R O U T I N E =======================================

abcs20:
		moveq   #55,d0
		jsr     (j_CheckEventFlag).l
		beq.s   loc_12B2FC
		moveq   #37,d0
		jsr     (j_SetEventFlag).l
		jsr     (j_OpenMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		txt     361             ; "Will Darksol release Dark[Line]Dragon from the bonds of the[Line]Ancients?[Wait2][Line]Or will [Hero] stop[Line]Darksol and save all of[Line]Rune from the ultimate evil?[Wait2][Line]The Shining Force hurries[Line]on to Prompt....[Wait2]"
		jsr     (j_CloseMessageWindow).l
		bra.w   sub_12BF66
loc_12B2FC:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     208             ; "With the Sword of Light you[Line]might be able to defeat[Line]Darksol. We shall see![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs20


; =============== S U B R O U T I N E =======================================

abcs21:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     210             ; "Now, on to the Tower of the[Line]Ancients![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs21


; =============== S U B R O U T I N E =======================================

abcs22:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     214             ; "Get in there, quickly![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #88,d0
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs22


; =============== S U B R O U T I N E =======================================

abcs23:
		moveq   #90,d0
		jsr     (j_SetEventFlag).l
		bra.w   sub_12BF66

    ; End of function abcs23


; =============== S U B R O U T I N E =======================================

abcs24:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     218             ; "Now, [Hero], into[Line]Runefaust![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs24


; =============== S U B R O U T I N E =======================================

abcs25:
		moveq   #PORTRAIT_RAMLADU,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_RAMLADU,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     220             ; "Is that the best you can do?[Line]Well, meet my robots,[Line]weaklings![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #60,d0
		jsr     (j_Sleep).l
		movea.l (off_124068).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #30,d0
		jsr     (j_Sleep).l
		movea.l (off_12406C).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #30,d0
		jsr     (j_Sleep).l
		movea.l (off_124070).l,a0
		lea     ($B580).l,a1
		move.w  #$240,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_EnableDmaQueueProcessing).l
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12B44A:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12B44A
		moveq   #60,d0
		jsr     (j_Sleep).l
		move.b  ((byte_FF9C51-$1000000)).w,d0
		lsl.w   #2,d0
		andi.w  #$C0,d0 
		or.b    d0,((byte_FF9C51-$1000000)).w
		bra.w   sub_12BF66

    ; End of function abcs25


; =============== S U B R O U T I N E =======================================

abcs26:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     222             ; "[Hero]! Darksol has[Line]already entered the Castle of[Line]the Ancients.  You must hurry![Wait2][Line]I found a secret passage[Line]to the gate. It is in the[Line]entry hall of this castle.[Wait2][Line]Return to town and make[Line]your final preparations. Then[Line]take the passage.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs26


; =============== S U B R O U T I N E =======================================

abcs27:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     227             ; "You've destroyed Colossus![Line]But where is Darksol?[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		sndCom  MUSIC_EARTHQUAKE
		jsr     j_LoadCursorTiles
		move.w  #$10,d1
		move.w  #3,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #0,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$20,d2 
		moveq   #$E,d3
		moveq   #0,d4
		moveq   #4,d5
		moveq   #5,d6
		jsr     sub_80AC
loc_12B54A:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12B54A
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		move.b  #5,((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     228             ; "Use the staircase,[Line][Hero].[Line]Darksol must be up there![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function abcs27


; =============== S U B R O U T I N E =======================================

sub_12B598:
		jsr     sub_80CC
		jmp     (j_ApplyVIntCramDma).l

    ; End of function sub_12B598

byte_12B5A4:    dc.b 0
		dc.b $28
		dc.b 1
		dc.b $1E
		dc.b 0
		dc.b $14
		dc.b 1
		dc.b $13
		dc.b 2
		dc.b $12
		dc.b 1
		dc.b $11
		dc.b 2
		dc.b $10
		dc.b 3
		dc.b $F
		dc.b 2
		dc.b $E
		dc.b 3
		dc.b $D
		dc.b 2
		dc.b $C
		dc.b 3
		dc.b $B
		dc.b 4
		dc.b $A
		dc.b 3
		dc.b 9
		dc.b 2
		dc.b 8
		dc.b 1
		dc.b 7
		dc.b 2
		dc.b 6
		dc.b 3
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 2
		dc.b 5
		dc.b 1
		dc.b 5
		dc.b 2
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 2
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 3
		dc.b 5
		dc.b 2
		dc.b $A
		dc.b 3
		dc.b $F
		dc.b 4
		dc.b 0
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

abcs28:
		lea     byte_12B5A4(pc), a0
loc_12B5EC:
		clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12B608
		move.l  a0,-(sp)
		bsr.s   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12B5EC
loc_12B608:
		moveq   #0,d1
		moveq   #$20,d2 
		moveq   #$C,d3
		moveq   #2,d4
		moveq   #6,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #120,d0
		jsr     (j_Sleep).l
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   sub_12BF66

    ; End of function abcs28

byte_12B62C:    dc.b 4
		dc.b $14
		dc.b 3
		dc.b $1E
		dc.b 2
		dc.b $28
		dc.b 1
		dc.b $32
		dc.b 0
		dc.b $3C
		dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

abcs29:
		moveq   #PORTRAIT_DARK_DRAGON,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARK_DRAGON,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     237             ; "Nooooo! These puny creatures[Line]cannot defeat the Lord of[Line]Darkness![Delay2][Delay2]"
		clearTxt
		txt     238             ; "Never! I will not be banished[Line]again! The Powers of Darkness[Line]will sustain me![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.b  #1,(FADING_COUNTER_MAX).l
		jsr     (j_FadeOutToWhite).l
		jsr     (j_FadeInFromWhite).l
		jsr     (j_FadeOutToWhite).l
		jsr     (j_FadeInFromWhite).l
		move.b  #3,(FADING_COUNTER_MAX).l
		jsr     (j_FadeOutToWhite).l
		clr.w   d0
		moveq   #$F,d1
		jsr     j_SetCombatantX
		moveq   #$B,d1
		jsr     j_SetCombatantY
		moveq   #$1E,d7
		lea     ((COMBATANT_1_Y-$1000000)).w,a1
loc_12B6A4:
		move.b  (a1),d0
		cmpi.b  #$B,d0
		blt.s   loc_12B6AE
		addq.b  #1,(a1)
loc_12B6AE:
		lea     $10(a1),a1
		dbf     d7,loc_12B6A4
                
		jsr     sub_8028
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B6FE
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
loc_12B6FE:
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B716
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12B716:
		jsr     (j_FadeInFromWhite).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		clearTxt
		txt     239             ; "Dark Dragon still lives![Line]Perhaps we cannot kill him![Line]There must be a way....[Delay2][Delay2]"
		clearTxt
		txt     240             ; "[Hero]! Dark Dragon[Line]must be sealed away once[Line]again. And only you can do it![Delay2][Delay2]"
		clearTxt
		txt     241             ; "Use the Chaos Breaker! Drive[Line]it through Dark Dragon![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_DARK_DRAGON,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARK_DRAGON,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     242             ; "Fools! Nothing you do can[Line]stop me! I am Dark Dragon,[Line]Darkness incarnate![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     243             ; "[Hero]! Stab him with[Line]the Chaos Breaker![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #30,d0
		jsr     (j_Sleep).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B7B8
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #0,d1
		move.w  #MAPSPRITE_MAX_HERO,d3
		bsr.w   sub_12C09E
loc_12B7B8:
		moveq   #20,d0
		jsr     (j_Sleep).l
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12B7DC
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #MAPSPRITE_MAX_HERO,d3
		bsr.w   sub_12C2BE
loc_12B7DC:
		moveq   #60,d0
		jsr     (j_Sleep).l
		move.w  #$4100,(SPRITE_22_TILE_FLAGS).l
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12B808
		bsr.w   sub_12C342      
		move.w  #2,d2
		move.w  #MAPSPRITE_MAX_STABBING_DARK_DRAGON,d3
		bsr.w   sub_12C2BE
byte_12B808:
		sndCom  SFX_BOW_MASTER
		moveq   #20,d0
		jsr     (j_Sleep).l
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12B830
		bsr.w   sub_12C342      
		move.w  #0,d2
		move.w  #MAPSPRITE_MAX_STABBING_DARK_DRAGON,d3
		bsr.w   sub_12C2BE
byte_12B830:
		sndCom  SFX_HEALING
		moveq   #60,d0
		jsr     (j_Sleep).l
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12B858
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #MAPSPRITE_MAX_STABBING_DARK_DRAGON,d3
		bsr.w   sub_12C2BE
byte_12B858:
		sndCom  SFX_DOOR_OPEN
		moveq   #20,d0
		jsr     (j_Sleep).l
		sndCom  SFX_BOLT_SPELL
		bsr.w   SetupScreenTint_Dark
		movea.l (p_pal_BED2A).l,a0
		lea     (PALETTE_2_CURRENT).l,a1
		moveq   #7,d7
loc_12B87A:
		move.l  (a0),$80(a1)
		move.l  (a0)+,(a1)+
		dbf     d7,loc_12B87A
                
		jsr     (j_ApplyVIntCramDma).l
		movea.l (off_BC008).l,a0
		lea     ($D000).l,a1
		move.w  #$300,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movea.l (off_BC00C).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		movea.l (off_BC010).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		movea.l (off_BC014).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #10,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		movea.l (off_BC010).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		movea.l (off_BC00C).l,a0
		move.w  (a0)+,d0
		move.w  (a0)+,d1
		bsr.w   sub_12BF42
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		jsr     sub_80DC
		jsr     sub_8054
		moveq   #5,d0
		jsr     (j_Sleep).l
		bsr.w   RestorePalettes
		sndCom  MUSIC_EARTHQUAKE
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_MONSTER_3
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		lea     byte_12B62C(pc), a0
loc_12B9AA:
		clr.w   d0
		move.b  (a0)+,d0
		bmi.s   byte_12B9C8
		move.l  a0,-(sp)
		bsr.w   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12B9AA
byte_12B9C8:
		sndCom  SOUND_COMMAND_FADE_OUT
loc_12B9CC:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12B9CC
		move.w  #180,d0
		jsr     (j_Sleep).l
		move.w  #$1E,((CURRENT_OBJECT-$1000000)).w
		sndCom  MUSIC_ATTACK
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     245             ; "[Hero]! The Castle of the[Line]Ancients is sinking! Let's[Line]get out of here![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #$F0,d7 
loc_12BA0E:
		jsr     (j_WaitForVInt).l
		tst.b   (P1_INPUT).l    
		dbne    d7,loc_12BA0E
		openTxt
		clr.w   ((SPEECH_SFX-$1000000)).w
		txt     246             ; "But [Hero] cannot move![Delay2][Delay2]"
		closeTxt
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     247             ; "[Hero] is somehow bound[Line]to the Chaos Breaker![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #120,d0
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     248             ; "[Hero]! Break free! We[Line]won't leave without you![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #120,d0
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_MAX_HERO,d0
		jsr     j_OpenPortraitWindow
		clr.w   d1              ; MAPSPRITE_MAX_SDMN
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     249             ; "I can't get free, but you[Line]won't die with me![Delay2]"
		sndCom  SFX_SPELL_CAST
		lea     (PALETTE_2_CURRENT).l,a0
		lea     (PALETTE_2_BASE).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		jsr     (j_FadeOutToWhite).l
		sndCom  SOUND_COMMAND_FADE_OUT
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		lea     (PALETTE_1_BASE).l,a0
		moveq   #31,d7
loc_12BAD0:
		move.l  #$EEE0EEE,(a0)+
		dbf     d7,loc_12BAD0
                
		clr.w   (PALETTE_1_BASE).l
		moveq   #120,d0
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		clr.w   ((CURRENT_OBJECT-$1000000)).w
		jsr     (j_WaitForVInt).l
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (sub_378).l
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_MAE_KNT,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     250             ; "[Hero] used his Egress[Line]magic to save us. But[Line]where is [Hero]?[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_LOWE_HEAL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     251             ; "That spell's supposed to[Line]get us all out. Why isn't[Line][Hero] here? Why, Nova?[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     252             ; "I have no answers for you.[Line]Perhaps a great hero is[Line]needed to guard the seal.[Delay2][Line]Perhaps he must[Line]stand as an eternal vigil to[Line]prevent Dark Dragon's return.[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_LOWE_HEAL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     253             ; "But why did it have[Line]to be [Hero]? Any of us[Line]would have taken his place....[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #ALLY_MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BB94
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
loc_12BB94:
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_MAE_KNT,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     254             ; "I won't believe it![Line][Hero] will come back,[Line]I know it![Delay2]"
		move.w  #ALLY_MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12BBC2
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
byte_12BBC2:
		clearTxt
		txt     255             ; "Perhaps [Hero] will still[Line]come out. Wait, look at[Line]the castle![Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #0,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		sndCom  MUSIC_EARTHQUAKE
		jsr     j_LoadCursorTiles
		move.w  #5,d1
		move.w  #$A,d0
		lsl.w   #8,d1
		or.w    d1,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		move.w  #ALLY_MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC2A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC2A:
		move.w  #ALLY_LOWE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC42
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC42:
		move.w  #ALLY_NOVA,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC5A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC5A:
		move.w  #ALLY_ANRI,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC72
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC72:
		move.w  #ALLY_TAO,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BC8A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BC8A:
		move.w  #ALLY_KHRIS,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCA2
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCA2:
		move.w  #ALLY_HANS,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCBA
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCBA:
		move.w  #ALLY_LUKE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCD2
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCD2:
		move.w  #ALLY_KEN,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BCEA
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BCEA:
		move.w  #ALLY_TAO,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BD02
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12BD02:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #60,d0
		jsr     (j_Sleep).l
		moveq   #5,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #$A,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #60,d0
		jsr     (j_Sleep).l
		moveq   #$F,d1
		moveq   #$10,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		moveq   #60,d0
		jsr     (j_Sleep).l
		moveq   #4,d1
		moveq   #7,d2
		moveq   #4,d3
		moveq   #7,d4
		moveq   #4,d5
		moveq   #3,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		sndCom  SOUND_COMMAND_FADE_OUT
		moveq   #30,d0
		jsr     (j_Sleep).l
loc_12BD96:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12BD96
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		moveq   #ALLY_LOWE,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     256             ; "No! It's gone...the castle...[Line]and [Hero] with it....[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #ALLY_LOWE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12BE08
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
byte_12BE08:
		sndCom  MUSIC_SAD_THEME
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		openTxt
		clearTxt
		txt     257             ; "That's it. He didn't escape.[Line]He's gone....[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		move.w  #ALLY_MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12BE46
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12BE46:
		openTxt
		txt     259             ; "I won't believe it....[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		move.w  #ALLY_NOVA,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12BE76
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12BE76:
		openTxt
		txt     258             ; "[Hero] has saved all of[Line]Rune. His sacrifice will be[Line]remembered forever.[Delay2][Line]And now, friends, it is[Line]time for us to begin the long[Line]journey home....[Delay2][Delay2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #60,d0
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_MAE,d0
		jsr     j_OpenPortraitWindow
		move.w  #ALLY_MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12BEAE
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
byte_12BEAE:
		openTxt
		txt     259             ; "I won't believe it....[Delay2][Delay2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12BF04
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d6,d0
		jsr     sub_8098
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l
		lea     byte_12BF3E(pc), a0
		move.b  #1,((byte_FFB4C5-$1000000)).w
		bsr.w   sub_12C404
loc_12BF04:
		moveq   #90,d0
		jsr     (j_Sleep).l
		openTxt
		txt     260             ; "[Hero]!"
		moveq   #2,d0
		jsr     sub_80D8
		move.w  #120,d0
		jsr     (j_Sleep).l
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #240,d0
		jsr     (j_Sleep).l
		jmp     j_PlayEnding

    ; End of function abcs29

byte_12BF3E:    dc.b 3
		dc.b 3
		dc.b 3
		dc.b $FF
