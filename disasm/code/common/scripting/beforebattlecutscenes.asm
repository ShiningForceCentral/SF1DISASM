
; ASM FILE code\common\scripting\beforebattlecutscenes.asm :
; 0x128F98..0x12A4C4 : Before-battle cutscenes

; =============== S U B R O U T I N E =======================================

sub_128F98:
		move.l  #$EEE0EEE,d4
		moveq   #$F,d7
loc_128FA0:
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #31,d6
loc_128FA8:
		eor.l   d4,(a0)+
		dbf     d6,loc_128FA8
                
		jsr     (j_ApplyVIntCramDma).l
		moveq   #4,d0
		jsr     (j_Sleep).l
		dbf     d7,loc_128FA0
                
		rts

    ; End of function sub_128F98


; =============== S U B R O U T I N E =======================================

sub_128FC2:
		move.w  #1,((word_FFB7C6-$1000000)).w
		bsr.w   sub_12BF92
		add.w   d0,d0
		move.w  rpt_BeforeBattleCutscenes(pc,d0.w),d0
		jmp     rpt_BeforeBattleCutscenes(pc,d0.w)

    ; End of function sub_128FC2

rpt_BeforeBattleCutscenes:
		dc.w bbcs00-rpt_BeforeBattleCutscenes
		dc.w bbcs01-rpt_BeforeBattleCutscenes
		dc.w bbcs02-rpt_BeforeBattleCutscenes
		dc.w bbcs03-rpt_BeforeBattleCutscenes
		dc.w bbcs04-rpt_BeforeBattleCutscenes
		dc.w bbcs05-rpt_BeforeBattleCutscenes
		dc.w bbcs06-rpt_BeforeBattleCutscenes
		dc.w bbcs07-rpt_BeforeBattleCutscenes
		dc.w bbcs08-rpt_BeforeBattleCutscenes
		dc.w bbcs09-rpt_BeforeBattleCutscenes
		dc.w bbcs10-rpt_BeforeBattleCutscenes
		dc.w bbcs11-rpt_BeforeBattleCutscenes
		dc.w bbcs12-rpt_BeforeBattleCutscenes
		dc.w bbcs13-rpt_BeforeBattleCutscenes
		dc.w bbcs14-rpt_BeforeBattleCutscenes
		dc.w bbcs15-rpt_BeforeBattleCutscenes
		dc.w bbcs16-rpt_BeforeBattleCutscenes
		dc.w bbcs17-rpt_BeforeBattleCutscenes
		dc.w bbcs18-rpt_BeforeBattleCutscenes
		dc.w bbcs19-rpt_BeforeBattleCutscenes
		dc.w bbcs20-rpt_BeforeBattleCutscenes
		dc.w bbcs21-rpt_BeforeBattleCutscenes
		dc.w bbcs22-rpt_BeforeBattleCutscenes
		dc.w bbcs23-rpt_BeforeBattleCutscenes
		dc.w bbcs24-rpt_BeforeBattleCutscenes
		dc.w bbcs25-rpt_BeforeBattleCutscenes
		dc.w bbcs26-rpt_BeforeBattleCutscenes
		dc.w bbcs27-rpt_BeforeBattleCutscenes
		dc.w bbcs28-rpt_BeforeBattleCutscenes
		dc.w bbcs29-rpt_BeforeBattleCutscenes

; =============== S U B R O U T I N E =======================================

bbcs00:
		moveq   #50,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #50,d0
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #ALLY_LOWE,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129068
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
loc_129068:
		moveq   #PORTRAIT_LOWE,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     105             ; "[Hero]![Line]Goblins! Runefaust[Line]must be up to something![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #ALLY_TAO,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1290C2
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
						; 1, V4|H4|63
loc_1290C2:
		moveq   #PORTRAIT_TAO,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     106             ; "We can take them,[Line][Hero]![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12911C
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
byte_12911C:
		openTxt
		txt     107             ; "Move it, vermin! Find the key[Line]to this blasted door![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12913C
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
byte_12913C:
		clearTxt
		txt     108             ; "C'mon, we're almost in![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12915C
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
byte_12915C:
		clearTxt
		txt     109             ; "Where is that blasted key?[Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12917C
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12917C:
		clearTxt
		txt     110             ; "What? Blast it! Those fools[Line]from Guardiana are here![Wait2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #ALLY_MAX,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1291C8
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
byte_1291C8:
		sndCom  MUSIC_EARTHQUAKE
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		bsr.w   sub_12C312
		move.l  #sub_12C36E,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #$3C,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #$11,d1
		moveq   #$F,d2
		moveq   #2,d3
		moveq   #$D,d4
		moveq   #5,d5
		moveq   #6,d6
		jsr     sub_80AC
		move.w  #$5A,((CURRENT_OBJECT-$1000000)).w 
		moveq   #30,d0
		jsr     (j_Sleep).l
		moveq   #2,d1
		moveq   #7,d2
		moveq   #2,d3
		moveq   #7,d4
		moveq   #5,d5
		moveq   #$C,d6
		jsr     sub_80AC
		openTxt
		txt     111             ; "Earthquake![Wait2]"
		closeTxt
		sndCom  SOUND_COMMAND_FADE_OUT
loc_12922E:
		jsr     (j_WaitForVInt).l
		subq.w  #1,((CURRENT_OBJECT-$1000000)).w
		bne.s   loc_12922E
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129286
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
						; 1, V4|H4|63 : cursor?
byte_129286:
		openTxt
		txt     112             ; "Attack, goblins and dwarves![Line]Strike a blow for the honor[Line]of Runefaust![Wait2]"
		closeTxt
		rts

    ; End of function bbcs00


; =============== S U B R O U T I N E =======================================

bbcs01:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     115             ; "The earthquake blocked the[Line]road. Head north, but be[Line]ready for battle.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1292F2
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
byte_1292F2:
		openTxt
		txt     116             ; "No one enters Guardiana while[Line]we live! For Darksol![Wait2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12933E
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
byte_12933E:
		openTxt
		txt     117             ; "Death to Guardiana![Wait2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #NPC03,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12938A
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
byte_12938A:
		openTxt
		txt     117             ; "Death to Guardiana![Wait2]"
		closeTxt
		rts

    ; End of function bbcs01


; =============== S U B R O U T I N E =======================================

bbcs02:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     119             ; "[Hero]! Enemies await[Line]you on the road to Alterone.[Line]Take all precautions![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs02


; =============== S U B R O U T I N E =======================================

bbcs03:
		move.w  #479,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #479,d0
		jsr     (j_ClearEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129410
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
loc_129410:
		moveq   #PORTRAIT_KANE_MASKED,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     121             ; "Lowly worms, I shall crush[Line]you beneath my heel. Attack,[Line]soldiers of Runefaust![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129440
		bsr.w   sub_12C342      
		moveq   #2,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129440:
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129458
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
byte_129458:
		openTxt
		txt     122             ; "Lord Kane, Lord Darksol[Line]commands you to return to[Line]Runefaust immediately.[Wait2]"
		closeTxt
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12947A
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_12947A:
		moveq   #PORTRAIT_KANE_MASKED,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     123             ; "Tell him I'm on my way.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		openTxt
		txt     124             ; "Yes, sir.[Wait2]"
		closeTxt
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1294B4
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_1294B4:
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1294C8
		moveq   #-1,d1
		jsr     j_SetEntityIndex
loc_1294C8:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1294E0
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_1294E0:
		moveq   #PORTRAIT_KANE_MASKED,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     125             ; "A shame I can't stay to watch[Line]you meet your doom! My troops[Line]can handle the likes of you.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129510
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_129510:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_129524
		moveq   #-1,d1
		jsr     j_SetEntityIndex
return_129524:
		
		rts

    ; End of function bbcs03


; =============== S U B R O U T I N E =======================================

bbcs04:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     127             ; "Our enemies seek to stop you[Line]from reaching Anri in[Line]Manarina. You must succeed![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs04


; =============== S U B R O U T I N E =======================================

bbcs05:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     129             ; "Behold the dreaded Cavern of[Line]Darkness! You must defeat the[Line]monsters to gain the orb![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs05


; =============== S U B R O U T I N E =======================================

bbcs06:
		move.w  #479,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #479,d0
		jsr     (j_ClearEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1295C0
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
loc_1295C0:
		moveq   #PORTRAIT_MISHAELA,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     132             ; "Well, [Hero], remember[Line]me? You'll soon wish you'd[Line]taken my advice in Alterone![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1295E8
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
byte_1295E8:
		clearTxt
		txt     133             ; "Come, my pets! Look who's[Line]come to play with you. Why,[Line]it's the Shining Force![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129608
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_129608:
		clearTxt
		txt     134             ; "I leave you in good hands,[Line][Hero].[Wait2][Line]I have more vital matters[Line]to attend to right now![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129628
		bsr.w   sub_12C036
loc_129628:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_12963C
		moveq   #-1,d1
		jsr     j_SetEntityIndex
return_12963C:
		
		rts

    ; End of function bbcs06


; =============== S U B R O U T I N E =======================================

bbcs07:
		move.w  #478,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #478,d0
		jsr     (j_ClearEventFlag).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12966E
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12966E:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12969A
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #3,d1
		move.w  #$8D,d3 
		bsr.w   sub_12C09E
loc_12969A:
		moveq   #PORTRAIT_FRIAR,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     137             ; "Been praying, and well you[Line]might![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1296CA
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_1296CA:
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		sndCom  SFX_HIT
		bsr.w   sub_128F98
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     138             ; "You and your pitiful Shining[Line]Force cannot be saved by[Line]prayers! You won't escape![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129700
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_129700:
		clearTxt
		txt     139             ; "How fitting that you perish[Line]in a former chapel of Light![Line][Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129720
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
byte_129720:
		clearTxt
		txt     140             ; "I leave you now in the care[Line]of my minions, who know well[Line]what to do with you....[Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129740
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_129740:
		clearTxt
		txt     141             ; "Undead! Dispose of these[Line]pests once and for all![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129760
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
byte_129760:
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129778
		bsr.w   sub_12C036
loc_129778:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   return_12978C
		moveq   #-1,d1
		jsr     j_SetEntityIndex
return_12978C:
		
		rts

    ; End of function bbcs07


; =============== S U B R O U T I N E =======================================

bbcs08:
		moveq   #50,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #50,d0
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #NPC03,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1297E4
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
loc_1297E4:
		move.w  #NPC03,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1297FC
		bsr.w   sub_12C342      
		move.w  #1,d2
		bsr.w   sub_12C2DC
byte_1297FC:
		openTxt
		txt     142             ; "Master, we have found it![Wait2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129848
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
loc_129848:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129860
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
byte_129860:
		openTxt
		txt     143             ; "The Laser Eye! At last![Wait2]"
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129880
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_129880:
		clearTxt
		txt     144             ; "This is the end of that[Line]cursed Shining Force![Wait2]"
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1298A0
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
byte_1298A0:
		clearTxt
		txt     145             ; "Get rid of those men from[Line]Bustoke. They are of no[Line]further use to us.[Wait2]"
		closeTxt
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_1298C2
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_1298C2:
		jsr     j_LoadCursorTiles
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129904
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
byte_129904:
		openTxt
		txt     146             ; "Alert! Intruders![Wait2]"
		closeTxt
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129926
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129926:
		jsr     j_LoadCursorTiles
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129968
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
byte_129968:
		openTxt
		txt     147             ; "What? The Shining Force![Wait2]"
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129988
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129988:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1299A0
		bsr.w   sub_12C342      
		moveq   #$FFFFFF82,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
byte_1299A0:
		clearTxt
		txt     148             ; "Stop them! We must have time[Line]to remove the Laser Eye![Wait2]"
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_1299C0
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
byte_1299C0:
		closeTxt
		rts

    ; End of function bbcs08


; =============== S U B R O U T I N E =======================================

bbcs09:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     151             ; "Look, they are trying to[Line]block our way to the bridge.[Line]Attack them, Shining Force![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs09


; =============== S U B R O U T I N E =======================================

bbcs10:
		move.w  #479,d0
		jsr     (j_CheckEventFlag).l
		beq.w   return_12BFCE
		move.w  #479,d0
		jsr     (j_ClearEventFlag).l
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		move.l  #sub_8034,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129A28
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C2BE
loc_129A28:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129A40
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
loc_129A40:
		jsr     j_LoadCursorTiles
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129A82
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
byte_129A82:
		openTxt
		txt     153             ; "Traitor! You've betrayed Lord[Line]Kane![Wait2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129ACE
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
loc_129ACE:
		moveq   #PORTRAIT_PELLE,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     154             ; "I owe no allegiance to you or[Line]him, foul fiend that he is![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129B28
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
byte_129B28:
		openTxt
		txt     155             ; "You are only a mercenary. You[Line]do what we pay you to do![Wait2]"
		closeTxt
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129B74
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
loc_129B74:
		moveq   #PORTRAIT_PELLE,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     156             ; "Here, I return your gold. I[Line]shall no longer follow your[Line]orders, toad![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		jsr     j_LoadCursorTiles
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129BCE
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
byte_129BCE:
		openTxt
		txt     157             ; "If you are not with us, then[Line]you are against us![Wait2]"
		closeTxt
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129BF0
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #MAPSPRITE_PELLE_KNT,d1
		bsr.w   loc_12C0AE
loc_129BF0:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129C08
		bsr.w   sub_12C342      
		move.w  #3,d2
		bsr.w   sub_12C2DC
byte_129C08:
		openTxt
		txt     158             ; "I will have the pleasure of[Line]killing you myself![Wait2]"
		closeTxt
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129C30
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #MAPSPRITE_PELLE_KNT,d1
		bsr.w   loc_12C0AE
byte_129C30:
		sndCom  SFX_HIT
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129C50
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C2BE
loc_129C50:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129C6C
		bsr.w   sub_12C342      
		moveq   #-125,d2
		moveq   #1,d1
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C09E
loc_129C6C:
		moveq   #PORTRAIT_PELLE,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     159             ; "Vile fiend! Aiiiieeeee....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		sndCom  SFX_FALLING
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129CA4
		bsr.w   sub_12C342      
		move.w  #1,d2
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C2BE
loc_129CA4:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129CC0
		bsr.w   sub_12C342      
		moveq   #-126,d2
		moveq   #5,d1
		move.w  #MAPSPRITE_PELLE_KNT,d3
		bsr.w   sub_12C09E
loc_129CC0:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129CD4
		moveq   #-1,d1
		jsr     j_SetEntityIndex
byte_129CD4:
		openTxt
		txt     160             ; "Ha, ha! Thus fall all who[Line]dare to oppose the will of[Line]Darksol![Wait2]"
		closeTxt
		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function bbcs10


; =============== S U B R O U T I N E =======================================

bbcs11:
		moveq   #50,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #50,d0
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129D3C
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
loc_129D3C:
		moveq   #PORTRAIT_ELLIOTT,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     166             ; "The time for battle has come.[Line]For King Ramladu![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     167             ; "General Elliott is said to be[Line]the finest swordsman in all[Line]of Rune.[Wait2][Line]Take care, [Hero]![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs11


; =============== S U B R O U T I N E =======================================

bbcs12:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     170             ; "[Hero], you must break[Line]through to reach the harbor.[Line]Be careful, but be quick![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs12


; =============== S U B R O U T I N E =======================================

bbcs13:
		moveq   #51,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #51,d0
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129DEA
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
loc_129DEA:
		moveq   #PORTRAIT_BALBAZAK,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_BALBAZAK,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     171             ; "At last we meet, [Hero].[Line]Soon you and your misfits[Line]will trouble us no longer![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     172             ; "Yes, that is Balbazak, a[Line]commander of the Runefaust[Line]army. You must destroy him![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs13


; =============== S U B R O U T I N E =======================================

bbcs14:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     183             ; "The ship is surrounded by[Line]monsters, [Hero]![Line]Prepare to defend it![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #35,d0
		jsr     (j_SetEventFlag).l
		rts

    ; End of function bbcs14


; =============== S U B R O U T I N E =======================================

bbcs15:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129E68
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_129E68:
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129EAA
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
byte_129EAA:
		openTxt
		txt     187             ; "I invoke a path before[Line]me....What?[Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129ECA
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_129ECA:
		clearTxt
		txt     188             ; "Shining Force! I was so[Line]close...so close! I shall[Line]destroy you all![Wait2]"
		closeTxt
		rts

    ; End of function bbcs15


; =============== S U B R O U T I N E =======================================

bbcs16:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     190             ; "Here we go again. We were[Line]just about to land, too! Go[Line]get them![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #35,d0
		jsr     (j_SetEventFlag).l
		rts

    ; End of function bbcs16


; =============== S U B R O U T I N E =======================================

bbcs17:
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_129F40
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
byte_129F40:
		openTxt
		txt     192             ; "These Guardiana fools must be[Line]stopped. Kane's mission is[Line]vital. Attack![Wait2]"
		closeTxt
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     193             ; "[Hero], you must quickly[Line]break through to Dragonia![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs17


; =============== S U B R O U T I N E =======================================

bbcs18:
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_129FAC
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
loc_129FAC:
		moveq   #PORTRAIT_KANE_MASKED,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     196             ; "Ha! I knew you couldn't hide[Line]in there forever! Come on[Line]out, little hero![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     197             ; "[Hero], be careful.[Line]Remember that Kane killed[Line]Varios![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs18


; =============== S U B R O U T I N E =======================================

bbcs19:
		moveq   #PORTRAIT_MISHAELA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_MISHAELA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     201             ; "Well, [Hero], we meet[Line]once more.  For the last time,[Line]I fear, as you will die here.[Wait2][Line]My minions shall take care of[Line]you, but if they fail, I await[Line]you in Demon Castle![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs19


; =============== S U B R O U T I N E =======================================

bbcs20:
		moveq   #49,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #49,d0
		jsr     (j_SetEventFlag).l
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A05A
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
loc_12A05A:
		moveq   #PORTRAIT_MISHAELA,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     203             ; "Well, here's the little hero[Line]coming for my Sword of Light![Line]Take it, if you dare![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A082
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
byte_12A082:
		clearTxt
		txt     204             ; "You'll never leave my castle,[Line]you pitiful fools![Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A0A2
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A0A2:
		clearTxt
		txt     205             ; "This is as close as you'll[Line]ever come to the Sword of[Line]Light![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     206             ; "[Hero], take great care.[Line]Mishaela is a powerful[Line]wizardess, a dangerous foe![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs20


; =============== S U B R O U T I N E =======================================

bbcs21:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     209             ; "The Tower of the Ancients is[Line]to the east. Hurry, while[Line]there's still time![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs21


; =============== S U B R O U T I N E =======================================

bbcs22:
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A134
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
byte_12A134:
		openTxt
		txt     211             ; "Stop them! Lord Darksol must[Line]not be disturbed![Wait2]"
		closeTxt
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     212             ; "We must get inside the tower![Line]Smash through these monsters[Line]quickly, [Hero]![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs22


; =============== S U B R O U T I N E =======================================

bbcs23:
		moveq   #PORTRAIT_CHAOS,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_CHAOS,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     215             ; "Screech! Kill...kill....[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs23


; =============== S U B R O U T I N E =======================================

bbcs24:
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     217             ; "To the south is Runefaust.[Line]Their army approaches. You[Line]must fight your way in.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs24


; =============== S U B R O U T I N E =======================================

bbcs25:
		clr.w   ((word_FFB7C6-$1000000)).w
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A1E4
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
loc_12A1E4:
		moveq   #PORTRAIT_RAMLADU,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_RAMLADU,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     219             ; "Long have I waited for[Line]this moment, [Hero]![Line]Prepare to meet your death.[Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A21A
		bsr.w   sub_12C342      
		moveq   #0,d2
		moveq   #2,d1
		bsr.w   loc_12C0AE
loc_12A21A:
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   bbcs26
		moveq   #-1,d1
		jsr     j_SetEntityIndex
bbcs26:
		rts

    ; End of function bbcs25


; =============== S U B R O U T I N E =======================================

bbcs27:
		moveq   #48,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #48,d0
		jsr     (j_SetEventFlag).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     223             ; "At last, [Hero]!  The[Line]Castle of the Ancients. The[Line]end is near, for good or ill![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		move.w  #2,((word_FFB7C6-$1000000)).w
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A280
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A280:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A298
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A298:
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A2DA
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
loc_12A2DA:
		moveq   #PORTRAIT_COLOSSUS,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_COLOSSUS,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     224             ; "None shall pass Colossus,[Line]the eternal sentinel![Line]Leave now![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		clr.w   ((word_FFB7C6-$1000000)).w
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A314
		bsr.w   sub_12C342      
		moveq   #3,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A314:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A32C
		bsr.w   sub_12C342      
		moveq   #1,d2
		moveq   #0,d1
		bsr.w   loc_12C0AE
loc_12A32C:
		move.w  #NPC01,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A344
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
loc_12A344:
		move.w  #NPC02,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A35C
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A35C:
		sndCom  SFX_SPELL_CAST
		moveq   #60,d0
		jsr     (j_Sleep).l
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     225             ; "Colossus! I've heard of it[Line]in legends! [Hero]![Line]They are attacking![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs27

table_12A388:   dc.b 0, 30
		dc.b 1, 20
		dc.b 0, 10
		dc.b 1, 5
		dc.b 0, 2
		dc.b 1, 2
		dc.b 0, 2
		dc.b 1, 2
		dc.b 0, 2
		dc.b 1, 2
		dc.b 0, 2
		dc.b 1, 2
		dc.b 0, 2
		dc.b 1, 2
		dc.b 0, 2
		dc.b 1, 2
		dc.b 0, 5
		dc.b 1, 10
		dc.b 0, 20
		dc.b 1, 40
		dc.b 0, 60
                
		dc.w $FFFF

; =============== S U B R O U T I N E =======================================

bbcs28:
		moveq   #50,d0
		jsr     (j_CheckEventFlag).l
		bne.w   return_12BFCE
		moveq   #50,d0
		jsr     (j_SetEventFlag).l
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A3E0
		bsr.w   sub_12C342      
		move.w  #0,d2
		bsr.w   sub_12C2DC
loc_12A3E0:
		jsr     j_LoadCursorTiles
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   loc_12A422
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
loc_12A422:
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_DARKSOL,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     229             ; "Dark Dragon! Awake from your[Line]long sleep! The time has come[Line]for you to reclaim this land![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		lea     table_12A388(pc), a0
loc_12A444:
		clr.w   d0
		move.b  (a0)+,d0
		bmi.s   loc_12A462
		move.l  a0,-(sp)
		bsr.w   sub_12B598
		movea.l (sp)+,a0
		clr.w   d0
		move.b  (a0)+,d0
		move.l  a0,-(sp)
		jsr     (j_Sleep).l
		movea.l (sp)+,a0
		bra.s   loc_12A444
loc_12A462:
		moveq   #PORTRAIT_DARKSOL,d0
		jsr     j_OpenPortraitWindow
		openTxt
		txt     230             ; "Awaken, Dark Dragon![Line]Something is wrong....[Wait2]"
		move.w  #NPC00,d2
		bsr.w   FindEntityForCutscene
		tst.w   d0
		blt.s   byte_12A48A
		bsr.w   sub_12C342      
		move.w  #2,d2
		bsr.w   sub_12C2DC
byte_12A48A:
		clearTxt
		txt     231             ; "[Hero]! Blast![Line]You have meddled for the last[Line]time! Kill them, my servants![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
		moveq   #MAPSPRITE_NOVA,d1
		bsr.w   SetSpeechSfxForCutscene
		openTxt
		txt     232             ; "[Hero]! You must stop[Line]Darksol before he completes[Line]his foul ceremony! Attack![Wait2]"
		closeTxt
		jsr     j_ClosePortraitWindow
		rts

    ; End of function bbcs28


; =============== S U B R O U T I N E =======================================

bbcs29:
		moveq   #43,d0
		jsr     (j_ClearEventFlag).l
		rts

    ; End of function bbcs29

