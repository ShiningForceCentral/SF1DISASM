
; ASM FILE code\common\menus\shopscreen.asm :
; 0xE49E..0xEA66 : Shop screen functions

; =============== S U B R O U T I N E =======================================

; Out: D0 = selected item index if it exists, else D0 = $FFFFFFFF

ExecuteShopScreen:
		
		clr.w   ((word_FFA940-$1000000)).w
		clr.w   ((word_FFA942-$1000000)).w
		movem.l d7-a1,-(sp)
		lea     layout_ShopInventoryWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$144,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bsr.w   sub_E71A
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1B06,d0
		move.l  #$2F70201,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		lea     tiles_ShopIconHighlight(pc), a0
		lea     ($FE00).l,a1
		move.w  #$100,d0
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		moveq   #$14,d1
		bsr.w   sub_EA04
loc_E4FA:
		move.w  ((word_FFA942-$1000000)).w,d0
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_E546
		move.w  ((word_FFA940-$1000000)).w,d2
		mulu.w  #6,d2
		add.w   d0,d2
		addq.w  #1,d2
		cmp.w   ((SHOP_INVENTORY_LENGTH-$1000000)).w,d2
		bge.s   loc_E546
		addq.w  #1,d0
		sndCom  SFX_MENU_SELECTION
		cmp.w   ((word_FFA944-$1000000)).w,d0
		blt.s   loc_E53A
		addq.w  #1,((word_FFA940-$1000000)).w
		clr.w   ((word_FFA942-$1000000)).w
		clr.b   ((byte_FFB4D8-$1000000)).w
		bsr.w   sub_E992
		bra.w   loc_E62C
loc_E53A:
		move.w  d0,((word_FFA942-$1000000)).w
		bsr.w   sub_E9F0
		bra.w   loc_E62C
loc_E546:
		move.w  ((word_FFA942-$1000000)).w,d0
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_E58C
		move.w  ((word_FFA940-$1000000)).w,d2
		mulu.w  #6,d2
		add.w   d0,d2
		ble.s   loc_E58C
		subq.w  #1,d0
		sndCom  SFX_MENU_SELECTION
		bge.s   loc_E580
		subq.w  #1,((word_FFA940-$1000000)).w
		move.w  #5,((word_FFA942-$1000000)).w
		move.b  #1,((byte_FFB4D8-$1000000)).w
		bsr.w   sub_E992
		bra.w   loc_E62C
loc_E580:
		move.w  d0,((word_FFA942-$1000000)).w
		bsr.w   sub_E9F0
		bra.w   loc_E62C
loc_E58C:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_E5AE
		tst.w   ((word_FFA940-$1000000)).w
		beq.s   loc_E5AE
		subq.w  #1,((word_FFA940-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		move.b  #1,((byte_FFB4D8-$1000000)).w
		bsr.w   sub_E992
loc_E5AE:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_E608
		move.w  ((word_FFA940-$1000000)).w,d2
		addq.w  #1,d2
		mulu.w  #6,d2
		cmp.w   ((SHOP_INVENTORY_LENGTH-$1000000)).w,d2
		bge.s   loc_E608
		addq.w  #1,((word_FFA940-$1000000)).w
		sndCom  SFX_MENU_SELECTION
		move.w  ((word_FFA942-$1000000)).w,d0
		move.w  ((word_FFA940-$1000000)).w,d2
		move.w  d2,d1
		add.w   d2,d2
		add.w   d1,d2
		add.w   d2,d2
		move.w  ((SHOP_INVENTORY_LENGTH-$1000000)).w,d1
		sub.w   d2,d1
		cmpi.w  #6,d1
		ble.s   loc_E5EE
		moveq   #6,d1
loc_E5EE:
		move.w  d1,((word_FFA944-$1000000)).w
loc_E5F2:
		cmp.w   d1,d0
		blt.w   loc_E5FC
		subq.w  #1,d0
		bne.s   loc_E5F2
loc_E5FC:
		move.w  d0,((word_FFA942-$1000000)).w
		clr.b   ((byte_FFB4D8-$1000000)).w
		bsr.w   sub_E992
loc_E608:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_E63A
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_E640
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_E640
loc_E62C:
		bsr.w   sub_E67A
		jsr     (j_WaitForVInt).l
		bra.w   loc_E4FA
loc_E63A:
		moveq   #-1,d0
		bra.w   loc_E656        
loc_E640:
		move.w  ((word_FFA940-$1000000)).w,d0
		mulu.w  #6,d0
		add.w   ((word_FFA942-$1000000)).w,d0
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
						; shop inventory
		add.w   d0,d0
		move.w  (a0,d0.w),d0
loc_E656:
		move.w  d0,-(sp)        ; save selected item index
		clr.w   d1
		bsr.s   sub_E67A
		bsr.w   sub_AF84
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1B06,d0
		move.l  #$20102F7,d1
		move.w  #4,d2
		bsr.w   MoveWindowWithSfx
		move.w  (sp)+,d0        ; restore selected item index -> D0
		rts

    ; End of function ExecuteShopScreen


; =============== S U B R O U T I N E =======================================

sub_E67A:
		lea     (SPRITE_19_PROPERTIES).l,a0
		cmpi.w  #7,d1
		bge.s   loc_E692
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_E6A4
loc_E692:
		move.w  ((word_FFA942-$1000000)).w,d0
		lsl.w   #5,d0
		addi.w  #$9C,d0 
		move.w  d0,6(a0)
		move.w  #$91,(a0) 
loc_E6A4:
		move.b  #$F,2(a0)
		move.w  #$C7F0,4(a0)
		addq.l  #8,a0
		move.w  #1,(a0)
		move.w  #1,6(a0)
		tst.w   ((word_FFA940-$1000000)).w
		beq.s   loc_E6DC
		cmpi.w  #7,d1
		blt.s   loc_E6DC
		move.w  #$98,6(a0) 
		move.w  #$90,(a0) 
		clr.b   2(a0)
		move.w  #$D084,4(a0)
loc_E6DC:
		addq.l  #8,a0
		move.w  #1,(a0)
		move.w  #1,6(a0)
		move.w  ((word_FFA940-$1000000)).w,d0
		addq.w  #1,d0
		mulu.w  #6,d0
		cmp.w   ((SHOP_INVENTORY_LENGTH-$1000000)).w,d0
		bge.s   loc_E712
		cmpi.w  #7,d1
		blt.s   loc_E712
		move.w  #$158,6(a0)
		move.w  #$A8,(a0) 
		clr.b   2(a0)
		move.w  #$C084,4(a0)
loc_E712:
		subq.w  #1,d1
		bne.s   return_E718
		moveq   #$14,d1
return_E718:
		rts

    ; End of function sub_E67A


; =============== S U B R O U T I N E =======================================

sub_E71A:
		lea     (byte_FF113E).l,a0
		move.w  #$63F,d7
loc_E724:
		move.l  #$DDDDDDDD,(a0)+
		dbf     d7,loc_E724
                
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a1
						; shop inventory
		move.w  ((word_FFA940-$1000000)).w,d0
		move.w  d0,d1
		add.w   d0,d0
		add.w   d1,d0
		add.w   d0,d0
		adda.w  d0,a1
		adda.w  d0,a1
		move.w  ((SHOP_INVENTORY_LENGTH-$1000000)).w,d1
		sub.w   d0,d1
		cmpi.w  #6,d1
		ble.s   loc_E750
		moveq   #6,d1
loc_E750:
		move.w  d1,((word_FFA944-$1000000)).w
		move.w  d1,d7
		subq.w  #1,d7
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     ((byte_FFB816-$1000000)).w,a2
loc_E762:
		move.w  (a1)+,d0
		move.w  d7,-(sp)
		bsr.w   sub_E802
		jsr     j_GetItemPrice
		move.w  d2,d0
		bsr.w   sub_E7A2
		move.w  #$C024,(a2)
		addq.l  #8,a2
		move.w  (sp)+,d7
		dbf     d7,loc_E762
                
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     ($B800).l,a1
		move.w  #$3C0,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		rts

    ; End of function sub_E71A


; =============== S U B R O U T I N E =======================================

sub_E7A2:
		movem.l a1-a2,-(sp)
		andi.l  #$FFFF,d0
		move.l  a0,-(sp)
		lea     dword_F06A(pc), a1
		moveq   #31,d7
loc_E7B4:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_E7B4
                
		movea.l (sp)+,a0
		adda.w  #$14,a0
		jsr     (j_WriteAsciiNumber).l
		lea     (byte_FF0E85).l,a2
		moveq   #4,d7
loc_E7CE:
		clr.w   d0
		move.b  (a2)+,d0
		cmpi.w  #$20,d0 
		beq.s   loc_E7F2
		subi.w  #$30,d0 
		mulu.w  #$14,d0
		lea     dword_F0EA(pc), a1
		adda.w  d0,a1
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		bra.s   loc_E7F6
loc_E7F2:
		adda.w  #$14,a0
loc_E7F6:
		dbf     d7,loc_E7CE
                
		addq.w  #8,a0
		movem.l (sp)+,a1-a2
		rts

    ; End of function sub_E7A2


; =============== S U B R O U T I N E =======================================

sub_E802:
		move.l  a1,-(sp)
		move.w  d0,-(sp)
		movea.l (p_icons_Item).l,a1
		move.w  d0,d1
		add.w   d0,d0
		add.w   d1,d0
		lsl.w   #6,d0
		adda.w  d0,a1
		moveq   #$2F,d7 
loc_E818:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_E818
                
		ori.w   #$D,-2(a0)
		ori.w   #$D000,-$24(a0)
		ori.w   #$D,-$9E(a0)
		ori.w   #$D000,-$C0(a0)
		move.w  (sp)+,d0
		movea.l (sp)+,a1
		rts

    ; End of function sub_E802


; =============== S U B R O U T I N E =======================================

sub_E83C:
		move.w  ((word_FFA940-$1000000)).w,d0
		move.w  d0,d1
		add.w   d0,d0
		add.w   d1,d0
		add.w   d0,d0
		move.w  ((word_FFA942-$1000000)).w,d1
		add.w   d1,d0
		add.w   d0,d0
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
		move.w  (a0,d0.w),d0
		rts

    ; End of function sub_E83C


; =============== S U B R O U T I N E =======================================

sub_E85A:
		bsr.w   *+4
		movem.l d7-a1,-(sp)
		lea     ((byte_FFBA0C-$1000000)).w,a0
		lea     ((byte_FFB9A0-$1000000)).w,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		movem.l d7-a1,-(sp)
		lea     layout_F30E(pc), a0
		lea     ((byte_FFBA0C-$1000000)).w,a1
		move.w  #$36,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		movem.l d7-a1,-(sp)
		lea     layout_F30E(pc), a0
		lea     ((byte_FFBA42-$1000000)).w,a1
		move.w  #$36,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
loc_E8AC:
		move.w  #$1B06,d0
		move.w  #$201,d1
		lea     ((byte_FFB96A-$1000000)).w,a0
		bsr.w   CreateWindow    
		bsr.w   sub_AF66
		jmp     (j_WaitForDmaQueueProcessing).l

    ; End of function sub_E85A


; =============== S U B R O U T I N E =======================================

sub_E8C6:
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB810-$1000000)).w,a0
		lea     ((byte_FFBA0C-$1000000)).w,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bsr.w   sub_E8FE
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB810-$1000000)).w,a0
		lea     ((byte_FFB9A0-$1000000)).w,a1
		move.w  #$D8,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1

    ; End of function sub_E8C6


; =============== S U B R O U T I N E =======================================

sub_E8FE:
		bra.s   loc_E8AC

    ; End of function sub_E8FE


; =============== S U B R O U T I N E =======================================

sub_E900:
		bsr.w   *+4
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB9A0-$1000000)).w,a0
		lea     ((byte_FFBA0C-$1000000)).w,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		movem.l d7-a1,-(sp)
		lea     layout_F30E(pc), a0
		lea     ((byte_FFB9A0-$1000000)).w,a1
		move.w  #$36,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		movem.l d7-a1,-(sp)
		lea     layout_F30E(pc), a0
		lea     ((byte_FFB9D6-$1000000)).w,a1
		move.w  #$36,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bra.w   loc_E8AC

    ; End of function sub_E900


; =============== S U B R O U T I N E =======================================

sub_E956:
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB87C-$1000000)).w,a0
		lea     ((byte_FFB9A0-$1000000)).w,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bsr.w   sub_E98E
		movem.l d7-a1,-(sp)
		lea     ((byte_FFB810-$1000000)).w,a0
		lea     ((byte_FFB9A0-$1000000)).w,a1
		move.w  #$D8,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1

    ; End of function sub_E956


; =============== S U B R O U T I N E =======================================

sub_E98E:
		bra.w   loc_E8AC

    ; End of function sub_E98E


; =============== S U B R O U T I N E =======================================

sub_E992:
		bsr.w   sub_AF84
		movem.l d7-a1,-(sp)
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		lea     ((byte_FFB96A-$1000000)).w,a1
		move.w  #$144,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		tst.b   ((byte_FFB4D8-$1000000)).w
		bne.s   loc_E9BC
		bsr.w   sub_E85A
		bra.s   loc_E9C0
loc_E9BC:
		bsr.w   sub_E900
loc_E9C0:
		movem.l d7-a1,-(sp)
		lea     layout_ShopInventoryWindow(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$144,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bsr.w   sub_E71A
		tst.b   ((byte_FFB4D8-$1000000)).w
		bne.s   loc_E9EA
		bsr.w   sub_E8C6
		bra.s   loc_E9EE
loc_E9EA:
		bsr.w   sub_E956
loc_E9EE:
		bra.s   sub_EA04

    ; End of function sub_E992


; =============== S U B R O U T I N E =======================================

sub_E9F0:
		bsr.w   sub_AF84
		lea     layout_F2D8(pc), a0
		move.w  #$1B01,d0
		move.w  #$206,d1
		bsr.w   CreateWindow    

    ; End of function sub_E9F0


; =============== S U B R O U T I N E =======================================

sub_EA04:
		movem.l d7-a1,-(sp)
		lea     layout_ShopItemNameAndPriceWindow(pc), a0
		lea     ((byte_FFB96A-$1000000)).w,a1
		move.w  #$64,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		bsr.w   sub_E83C
		move.w  d0,d1
		move.w  d1,-(sp)
		jsr     j_GetItemNameAddress
		move.w  d1,d7
		lea     ((byte_FFB980-$1000000)).w,a1
		moveq   #-20,d1
		bsr.w   WriteTilesFromAscii
		move.w  (sp)+,d1
		jsr     j_GetItemPrice
		move.l  d2,d0
		lea     ((byte_FFB9AE-$1000000)).w,a1
		moveq   #5,d7
		bsr.w   WriteTilesFromNumber
		lea     ((byte_FFB96A-$1000000)).w,a0
		move.w  #$A05,d0
		move.w  ((word_FFA942-$1000000)).w,d1
		ror.w   #6,d1
		ori.w   #$106,d1
		bsr.w   CreateWindow    
		bra.w   sub_AF66

    ; End of function sub_EA04

