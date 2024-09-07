
; ASM FILE code\common\menus\memberslistscreen.asm :
; 0xEA66..0xF1CA : Members list screen functions

; =============== S U B R O U T I N E =======================================

CreateMembersListScreen:
		
		bsr.w   sub_EC28
		bsr.w   sub_ECA6
		bra.w   sub_ED5C

    ; End of function CreateMembersListScreen


; =============== S U B R O U T I N E =======================================

sub_EA72:
		bsr.w   sub_EC28
loc_EA76:
		bsr.w   sub_ECA6
		tst.w   d0
		bmi.w   sub_ED5C
		jsr     j_GetEntityItemsAddress
		movea.l a0,a2
		cmpi.b  #-1,(a0)
		beq.s   loc_EA76
		move.w  d0,-(sp)
		bsr.w   PickItemSlot
		move.w  (sp)+,d0
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		blt.s   loc_EA76
		bra.w   sub_ED5C

    ; End of function sub_EA72


; =============== S U B R O U T I N E =======================================

PickItemSlot:
		moveq   #$14,d1
		bsr.w   sub_EDCC
		clr.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bsr.w   sub_EBE0
		move.w  #$A04,d0
		move.l  #$200E090E,d1
		move.w  #6,d2
		bsr.w   MoveWindowWithSfx
		moveq   #$14,d6
loc_EAC4:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EAE4
		cmpi.b  #-1,1(a2)
		beq.s   loc_EAE4
		move.b  #1,((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_EB6A
loc_EAE4:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EB04
		cmpi.b  #-1,2(a2)
		beq.s   loc_EB04
		move.b  #2,((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_EB6A
loc_EB04:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EB1A
		clr.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_EB6A
loc_EB1A:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EB3A
		cmpi.b  #-1,3(a2)
		beq.s   loc_EB3A
		move.b  #3,((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_EB6A
loc_EB3A:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EB4E
		move.b  #-1,((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bra.w   loc_EB94
loc_EB4E:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EB5C
		bra.w   loc_EB94
loc_EB5C:
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_EB80
		bra.w   loc_EB94
loc_EB6A:
		bsr.w   sub_EBE0
		move.w  #$A04,d0
		move.w  #$90E,d1
		bsr.w   CreateWindow    
		bsr.w   sub_AF66
		moveq   #$14,d6
loc_EB80:
		bsr.w   sub_EBB2
		jsr     (j_WaitForVInt).l
		subq.w  #1,d6
		bne.s   loc_EB90
		moveq   #$14,d6
loc_EB90:
		bra.w   loc_EAC4
loc_EB94:
		clr.w   d6
		bsr.w   sub_EBB2
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$A04,d0
		move.l  #$90E200E,d1
		move.w  #6,d2
		bsr.w   MoveWindowWithSfx
		rts

    ; End of function PickItemSlot


; =============== S U B R O U T I N E =======================================

sub_EBB2:
		lea     (SPRITE_00_PROPERTIES).l,a1
		lea     word_EBC0(pc), a0
		bra.w   loc_DA4A

    ; End of function sub_EBB2

word_EBC0:      dc.w $D7
		dc.w $B01
		dc.w $C7DC
		dc.w $9F
		dc.w $E3
		dc.w $B01
		dc.w $C7DC
		dc.w $8F
		dc.w $E3
		dc.w $B01
		dc.w $C7DC
		dc.w $AF
		dc.w $EF
		dc.w $B01
		dc.w $C7DC
		dc.w $9F

; =============== S U B R O U T I N E =======================================

sub_EBE0:
		movem.l d7-a1,-(sp)
		lea     layout_ItemMenuItemNameWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$50,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bsr.w   sub_EE9A
		jsr     j_GetEntityItemsAddress
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		move.b  (a0,d0.w),d1
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		jsr     j_GetItemNameAddress
		move.w  d1,d7
		lea     ((CURRENT_SPEAKER_NAME_VDPTILES-$1000000)).w,a1
		moveq   #-20,d1
		bsr.w   WriteTilesFromAscii
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		rts

    ; End of function sub_EBE0


; =============== S U B R O U T I N E =======================================

sub_EC28:
		bsr.w   sub_F61E
		tst.b   ((byte_FFC140-$1000000)).w
		bpl.s   loc_EC3E
		clr.w   ((word_FFC1C4-$1000000)).w
		clr.w   ((word_FFC1C6-$1000000)).w
		clr.w   ((byte_FFC140-$1000000)).w
loc_EC3E:
		lea     byte_F4DE(pc), a0
		lea     ($FE00).l,a1
		move.w  #$A0,d0 
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   CreateMembersListWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$150D,d0
		move.l  #$9F30901,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		bsr.w   sub_EE9A
		jsr     j_GetPortrait
		move.w  d1,d0
		bsr.w   OpenPortraitWindow
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		bsr.w   sub_EE9A
		bsr.w   sub_BE3A
		lea     layout_F3C8(pc), a0
		move.w  #$606,d0
		move.l  #$FA0B020B,d1
		move.w  #4,d2
		bra.w   MoveWindowWithSfx

    ; End of function sub_EC28


; =============== S U B R O U T I N E =======================================

sub_ECA6:
		bsr.w   CreateMembersListWindow
		moveq   #$14,d1
loc_ECAC:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_ECE6
		move.w  ((word_FFC1C4-$1000000)).w,d0
		subq.w  #1,d0
		blt.s   loc_ECE6
		clr.w   d1
		bsr.w   sub_EDCC
		moveq   #$14,d1
		cmp.w   ((word_FFC1C6-$1000000)).w,d0
		bge.s   loc_ECDA
		subq.w  #1,((word_FFC1C6-$1000000)).w
		move.b  #1,((byte_FFB4D8-$1000000)).w
		bsr.w   sub_EEEC
loc_ECDA:
		move.w  d0,((word_FFC1C4-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		bsr.w   sub_EEAC
loc_ECE6:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_ED26
		move.w  ((word_FFC1C4-$1000000)).w,d0
		addq.w  #1,d0
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bge.s   loc_ED26
		clr.w   d1
		bsr.w   sub_EDCC
		moveq   #$14,d1
		move.w  ((word_FFC1C6-$1000000)).w,d2
		addq.w  #6,d2
		cmp.w   d2,d0
		blt.s   loc_ED1A
		addq.w  #1,((word_FFC1C6-$1000000)).w
		clr.b   ((byte_FFB4D8-$1000000)).w
		bsr.w   sub_EEEC
loc_ED1A:
		move.w  d0,((word_FFC1C4-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		bsr.w   sub_EEAC
loc_ED26:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_ED58
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   sub_EE9A
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   sub_EE9A
		bsr.w   sub_EDCC
		jsr     (j_WaitForVInt).l
		bra.w   loc_ECAC
loc_ED58:
		moveq   #-1,d0
		rts

    ; End of function sub_ECA6


; =============== S U B R O U T I N E =======================================

sub_ED5C:
		movem.w d0-d1,-(sp)
		clr.w   d1
		bsr.s   sub_EDCC
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$150D,d0
		move.l  #$90109F3,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		bsr.w   ClosePortraitWindow
		lea     layout_F3C8(pc), a0
		move.w  #$606,d0
		move.l  #$20BFA0B,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$17F,d7
loc_ED9E:
		move.l  #$DDDDDDDD,(a0)+
		dbf     d7,loc_ED9E
                
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($F800).l,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_ED5C


; =============== S U B R O U T I N E =======================================

sub_EDCC:
		move.w  d0,-(sp)
		lea     (SPRITE_01_PROPERTIES).l,a0
		lea     word_EE72(pc), a1
		cmpi.w  #7,d1
		bge.s   loc_EDE4
		move.w  #$100,d0
		bra.s   loc_EDE6
loc_EDE4:
		clr.w   d0
loc_EDE6:
		move.w  ((word_FFC1C4-$1000000)).w,d2
		sub.w   ((word_FFC1C6-$1000000)).w,d2
		lsl.w   #4,d2
		add.w   d2,d0
		moveq   #4,d7
loc_EDF4:
		move.w  (a1)+,(a0)
		add.w   d0,(a0)
		move.w  (a1)+,d2
		move.w  d2,2(a0)
		move.w  (a1)+,4(a0)
		move.w  (a1)+,6(a0)
		addq.l  #8,a0
		dbf     d7,loc_EDF4
                
		move.w  #1,(a0)
		move.w  #1,6(a0)
		tst.w   ((word_FFC1C6-$1000000)).w
		beq.s   loc_EE36
		cmpi.w  #7,d1
		blt.s   loc_EE36
		move.w  #$D0,6(a0) 
		move.w  #$90,(a0) 
		clr.b   2(a0)
		move.w  #$D084,4(a0)
loc_EE36:
		addq.l  #8,a0
		move.w  #1,(a0)
		move.w  #1,6(a0)
		move.w  ((word_FFC1C6-$1000000)).w,d0
		addq.w  #6,d0
		cmp.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d0
		bge.s   loc_EE68
		cmpi.w  #7,d1
		blt.s   loc_EE68
		move.w  #$D0,6(a0) 
		move.w  #$E0,(a0) 
		clr.b   2(a0)
		move.w  #$C084,4(a0)
loc_EE68:
		subq.w  #1,d1
		bne.s   loc_EE6E
		moveq   #$14,d1
loc_EE6E:
		move.w  (sp)+,d0
		rts

    ; End of function sub_EDCC

word_EE72:      dc.w $8C
		dc.w $D02
		dc.w $C7F0
		dc.w $D6
		dc.w $8C
		dc.w $D03
		dc.w $C7F2
		dc.w $F4
		dc.w $8C
		dc.w $D04
		dc.w $C7F2
		dc.w $114
		dc.w $8C
		dc.w $D05
		dc.w $C7F2
		dc.w $134
		dc.w $8C
		dc.w $D06
		dc.w $CFF0
		dc.w $14A

; =============== S U B R O U T I N E =======================================

sub_EE9A:
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		move.w  ((word_FFC1C4-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		bclr    #6,d0
		rts

    ; End of function sub_EE9A


; =============== S U B R O U T I N E =======================================

sub_EEAC:
		movem.w d0-d1,-(sp)
		bsr.s   sub_EE9A
		move.w  d0,-(sp)
		bsr.w   sub_BE3A
		move.w  (sp)+,d0
		jsr     j_GetPortrait
		move.w  d1,d0
		andi.w  #$FF,d0
		bsr.w   LoadPortrait    
		lea     ((byte_FFB58C-$1000000)).w,a0
		lea     (PALETTE_2_CURRENT).l,a1
		jsr     (j_CopyPalette).l
		jsr     (j_ApplyVIntCramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_EEAC


; =============== S U B R O U T I N E =======================================

sub_EEEC:
		movem.w d0-d1,-(sp)
		tst.b   ((byte_FFB4D8-$1000000)).w
		beq.s   loc_EF2C
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB804-$1000000)).w,a0
		lea     ((byte_FFB82E-$1000000)).w,a1
		move.w  #$1A4,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		movem.l d7-a1,-(sp)
		lea     layout_MembersListWindow2(pc), a0
		lea     ((byte_FFB804-$1000000)).w,a1
		move.w  #$2A,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bra.s   loc_EF60
loc_EF2C:
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB82E-$1000000)).w,a0
		lea     ((byte_FFB804-$1000000)).w,a1
		move.w  #$1A4,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		movem.l d7-a1,-(sp)
		lea     layout_MembersListWindow2(pc), a0
		lea     ((byte_FFB9A8-$1000000)).w,a1
		move.w  #$2A,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
loc_EF60:
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$150D,d0
		move.w  #$901,d1
		bsr.w   CreateWindow    
		bsr.w   sub_AF66
		jsr     (j_WaitForVInt).l
		bsr.w   CreateMembersListWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$150D,d0
		move.w  #$901,d1
		bsr.w   CreateWindow    
		bsr.w   sub_AF66
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_EEEC


; =============== S U B R O U T I N E =======================================

CreateMembersListWindow:
		
		lea     layout_MembersListWindow1(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		movem.l d7,-(sp)
		move.w  #$29,d7 
loc_EFA8:
		move.b  (a0)+,(a1)+
		dbf     d7,loc_EFA8
                
		movem.l (sp)+,d7
		moveq   #$A,d6
loc_EFB4:
		lea     layout_MembersListWindow2(pc), a0
		movem.l d7,-(sp)
		move.w  #$29,d7 
loc_EFC0:
		move.b  (a0)+,(a1)+
		dbf     d7,loc_EFC0
                
		movem.l (sp)+,d7
		dbf     d6,loc_EFB4
                
		lea     layout_MembersListWindow3(pc), a0
		movem.l d7,-(sp)
		move.w  #$29,d7 
loc_EFDA:
		move.b  (a0)+,(a1)+
		dbf     d7,loc_EFDA
                
		movem.l (sp)+,d7
		lea     ((byte_FFB80A-$1000000)).w,a1
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		move.w  ((word_FFC1C6-$1000000)).w,d0
		adda.w  d0,a0
		moveq   #5,d7
loc_EFF4:
		move.b  (a0)+,d0
		bmi.w   return_F068
		bclr    #6,d0
		beq.s   loc_F006
		move.w  ((MEMBERS_LIST_SYMBOL-$1000000)).w,-2(a1)
loc_F006:
		move.w  d7,-(sp)
		movem.l a0-a1,-(sp)
		move.w  d0,-(sp)
		move.l  a1,-(sp)
		jsr     j_GetEntityStatsAddress
		moveq   #-42,d1
		moveq   #8,d7
		bsr.w   WriteTilesFromAscii
		movea.l (sp)+,a1
		lea     $12(a1),a1
		move.w  (sp)+,d0
		move.w  d0,-(sp)
		move.l  a1,-(sp)
		jsr     j_GetClass
		jsr     j_GetClassNameAddress
		move.w  d1,d7
		moveq   #-42,d1
		bsr.w   WriteTilesFromAscii
		movea.l (sp)+,a1
		lea     $A(a1),a1
		move.w  (sp)+,d0
		move.w  #VDPTILE_ASCII_UPPERCASE_L|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,(a1)+
						; 'L'
		jsr     j_GetLevel
		move.w  d1,d0
		ext.l   d0
		moveq   #2,d7
		bsr.w   WriteTilesFromNumber
		movem.l (sp)+,a0-a1
		lea     $54(a1),a1
		move.w  (sp)+,d7
		dbf     d7,loc_EFF4
return_F068:
		rts

    ; End of function CreateMembersListWindow

dword_F06A:     dc.l $11DDDDDD
		dc.l $EE1DDDDD
		dc.l $DDD1DDDD
		dc.l $EBBBBBDD
		dc.l $BBBBBBBD
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $DBBBBBEE
		dc.l $DDEEEEED
dword_F0EA:     dc.l $BEEEEEBE
		dc.l $BEBBBEBE
		dc.l $BEBBBEBE
		dc.l $BEEEEEBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BEBBEBBE
		dc.l $BEEEEEBE
		dc.l $BEBBBBBE
		dc.l $BBBBBBBE
		dc.l $BEEEBEBE
		dc.l $BEBEBEBE
		dc.l $BEBEBEBE
		dc.l $BEBEEEBE
		dc.l $BBBBBBBE
		dc.l $BEBBBEBE
		dc.l $BEBEBEBE
		dc.l $BEBEBEBE
		dc.l $BEEEEEBE
		dc.l $BBBBBBBE
		dc.l $BBEEEEBE
		dc.l $BBEBBBBE
		dc.l $BEEEEEBE
		dc.l $BBEBBBBE
		dc.l $BBBBBBBE
		dc.l $BEBEEEBE
		dc.l $BEBEBEBE
		dc.l $BEBEBEBE
		dc.l $BEEEBEBE
		dc.l $BBBBBBBE
		dc.l $BEEEEEBE
		dc.l $BEBEBEBE
		dc.l $BEBEBEBE
		dc.l $BEEEBEBE
		dc.l $BBBBBBBE
		dc.l $BBBEEEBE
		dc.l $BBBBBEBE
		dc.l $BBBBBEBE
		dc.l $BEEEEEBE
		dc.l $BBBBBBBE
		dc.l $BEEEEEBE
		dc.l $BEBEBEBE
		dc.l $BEBEBEBE
		dc.l $BEEEEEBE
		dc.l $BBBBBBBE
		dc.l $BEBEEEBE
		dc.l $BEBEBEBE
		dc.l $BEBEBEBE
		dc.l $BEEEEEBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l $BBBBBBBE
		dc.l 0
                
