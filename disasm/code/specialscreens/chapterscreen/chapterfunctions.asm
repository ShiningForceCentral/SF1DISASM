
; ASM FILE code\specialscreens\chapterscreen\chapterfunctions.asm :
; 0x3A44..0x3F0E : Display chapter screen functions

; =============== S U B R O U T I N E =======================================

DisplayChapterScreen:
		
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		lea     (pt_ChapterScreenTiles).l,a0
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     ($2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movea.l (p_palette_ChapterScreens).l,a0
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		lea     layout_ChapterScreen(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		move.w  #180,d0
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		cmpi.b  #1,((CURRENT_CHAPTER-$1000000)).w
		bne.s   byte_3AE0
		sndCom  MUSIC_TOWN
		bra.s   loc_3AE4
byte_3AE0:
		sndCom  MUSIC_INTRO
loc_3AE4:
		moveq   #38,d0
		bsr.w   SetEventFlag
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  #-1,((byte_FF9C4D-$1000000)).w
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_3B06(pc,d0.w),d0
		jmp     off_3B06(pc,d0.w)

    ; End of function DisplayChapterScreen

off_3B06:       dc.w byte_3B16-off_3B06
		dc.w sub_3B8E-off_3B06
		dc.w sub_3BD2-off_3B06
		dc.w sub_3C18-off_3B06
		dc.w sub_3C5E-off_3B06
		dc.w sub_3CAA-off_3B06
		dc.w sub_3CF2-off_3B06
		dc.w sub_3D3A-off_3B06
                

; START OF FUNCTION CHUNK FOR DisplayChapterScreen

byte_3B16:
		openTxt
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #SFX_DIALOG_BLEEP_6,((SPEECH_SFX-$1000000)).w
		txt     780             ; "[Hero]? [Hero]?[Line]C'mon, kid, wake up![Line]I didn't hit you that hard.[Wait2]"
		clearTxt
		sndCom  SFX_SWORDS_HIT
		moveq   #20,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #40,d0
		jsr     (j_Sleep).l
		sndCom  SFX_CRITICAL_HIT
		moveq   #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_HIT
		txt     781             ; "Keep your guard up, kid.[Line]Those beasts of Runefaust[Line]will tear you to pieces![Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   SetEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #$80,((byte_FF9C88-$1000000)).w 
		rts

; END OF FUNCTION CHUNK FOR DisplayChapterScreen


; =============== S U B R O U T I N E =======================================

sub_3B8E:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     349             ; "[Hero] and the Shining[Line]Force followed Kane's trail[Line]to the town of Rindo....[Wait2]"
		jsr     (j_FadeOutToBlack).l
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #$C0,((byte_FF9C88-$1000000)).w 
		rts

    ; End of function sub_3B8E


; =============== S U B R O U T I N E =======================================

sub_3BD2:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     350             ; "The Shining Force arrived in[Line]Bustoke, a town built into a[Line]mountainside.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   SetEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #$80,((byte_FF9C88-$1000000)).w 
		rts

    ; End of function sub_3BD2


; =============== S U B R O U T I N E =======================================

sub_3C18:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     351             ; "The Shining Force reached the[Line]Pao Prairie to discover that[Line]Pao was a town of wagons![Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #6,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   SetEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

    ; End of function sub_3C18


; =============== S U B R O U T I N E =======================================

sub_3C5E:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     352             ; "After a week at sea, sentries[Line]spotted a horde of monsters[Line]approaching the ship....[Wait2]"
		jsr     (j_FadeOutToBlack).l
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #2,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #0,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

    ; End of function sub_3C5E


; =============== S U B R O U T I N E =======================================

sub_3CAA:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     353             ; "The Shining Force finally[Line]reached the port of Rudo, far[Line]from Prompt.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   SetEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

    ; End of function sub_3CAA


; =============== S U B R O U T I N E =======================================

sub_3CF2:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     354             ; "The Shining Force quickly[Line]reached Prompt, hoping[Line]that they had come in time.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   SetEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

    ; End of function sub_3CF2


; =============== S U B R O U T I N E =======================================

sub_3D3A:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     355             ; "Runefaust at last! The long[Line]and perilous journey is near[Line]its end.[Wait2][Line]It is up to the Shining Force[Line]whether it ends as a[Line]triumph for Light or Darkness.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #39,d0
		bsr.w   ClearEventFlag
		move.w  #$C0,((byte_FF9C88-$1000000)).w 
		rts

    ; End of function sub_3D3A


; =============== S U B R O U T I N E =======================================

; End chapter

EndChapter:
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #2,d0
		bne.s   loc_3DBC
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		txt     357             ; "[Hero] and the Shining[Line]Force head toward Bustoke.[Line]What awaits them there?[Wait2][Line]The legacy of the Ancients[Line]is still a mystery. Will[Line]they ever solve it?[Wait2]"
		jsr     (j_FadeOutToBlack).l
		bra.w   byte_3DEC
loc_3DBC:
		cmpi.b  #7,d0
		bne.s   byte_3DEC
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		txt     362             ; "The Shining Force is now in a[Line]desperate race against time.[Line]Dark Dragon is awakening![Wait2]"
		jsr     (j_FadeOutToBlack).l
byte_3DEC:
		sndCom  SOUND_COMMAND_FADE_OUT
		moveq   #90,d0
		bsr.w   j_Sleep
		bsr.w   j_DisableDisplayAndInterrupts
		bsr.w   j_ClearScrollAndSpriteTables
		lea     (pt_ChapterScreenTiles).l,a0
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     ($2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		bsr.w   j_ApplyImmediateVramDmaOnCompressedTiles
		movea.l (p_tiles_ChapterEnd).l,a0
		lea     ($4000).w,a1
		move.w  #$100,d0
		move.w  #2,d1
		bsr.w   j_ApplyImmediateVramDmaOnCompressedTiles
		sndCom  MUSIC_CHAPTER_END
		jsr     (j_EnableDisplayAndInterrupts).l
		movea.l (p_palette_ChapterScreens).l,a0
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		lea     layout_ChapterEnd(pc), a0
		move.w  #$404,d0
		move.w  #$E0F,d1
		jsr     j_CreateWindow
		lea     layout_ChapterScreen(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		clr.w   d0
		bsr.w   j_PlayMusicAfterCurrentOne
		move.w  #60,d0
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_OpenMessageWindow).l
		addq.b  #1,((CURRENT_CHAPTER-$1000000)).w
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #8,d0
		ble.w   loc_3EC8
		rts
loc_3EC8:
		clr.l   d0
		lea     ((EVENT_FLAGS-$1000000)).w,a0
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.w   (a0)+
		lea     ((byte_FF9C6E-$1000000)).w,a0
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		sndCom  MUSIC_SIMONE
		jsr     (j_FadeInFromBlack).l
		txt     70              ; "Do you want to record your[Line]exploits so far?"
		jsr     (j_YesNoChoiceBox).l
		bne.s   byte_3F02
		jsr     (j_SaveGame).l
byte_3F02:
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		rts

    ; End of function EndChapter

