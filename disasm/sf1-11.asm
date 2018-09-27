
; GAME SECTION 11 :
; Base tiles loading and ending credits functions, battle backgrounds
; FREE SPACE : 707 bytes.


p_pt_Backgrounds:
		dc.l pt_Backgrounds

; =============== S U B R O U T I N E =======================================

j_LoadBaseTilesAndPalette:
		
		jmp     LoadBaseTilesAndPalette(pc)

	; End of function j_LoadBaseTilesAndPalette

p_MenuTiles_Options:
		dc.l MenuTiles_Options
p_MenuTiles_Main:
		dc.l MenuTiles_Main
p_MenuTiles_Item:
		dc.l MenuTiles_Item
p_MenuTiles_Shop:
		dc.l MenuTiles_Shop
p_MenuTiles_HQ: dc.l MenuTiles_HQ
p_MenuTiles_Church:
		dc.l MenuTiles_Church
p_SpellIcons:   dc.l SpellIcons
p_ItemIcons:    dc.l ItemIcons
p_CursorTiles:  dc.l CursorTiles

; =============== S U B R O U T I N E =======================================

sub_CC02C:
		jmp     sub_D2EA4(pc)

	; End of function sub_CC02C


; =============== S U B R O U T I N E =======================================

LoadBaseTilesAndPalette:
		
		jsr     (j_DisableDisplayAndInterrupts).l
		lea     BaseTiles(pc), a0
		lea     (0).w,a1
		move.w  #$2000,d0
		jsr     (sub_294).l
		lea     BasePalette(pc), a0
		lea     (PALETTE_3_BIS).l,a1
		jsr     (j_CopyPalette).l
		jmp     (j_EnableDisplayAndInterrupts).l

	; End of function LoadBaseTilesAndPalette

BaseTiles:      incbin "data/graphics/tech/basetiles.bin"
MenuTiles_Options:
		incbin "data/graphics/tech/menus/menutiles-battleoptions.bin"
MenuTiles_Main: incbin "data/graphics/tech/menus/menutiles-main.bin"
MenuTiles_Item: incbin "data/graphics/tech/menus/menutiles-item.bin"
MenuTiles_Shop: incbin "data/graphics/tech/menus/menutiles-shop.bin"
MenuTiles_HQ:   incbin "data/graphics/tech/menus/menutiles-hq.bin"
MenuTiles_Church:
		incbin "data/graphics/tech/menus/menutiles-church.bin"
SpellIcons:     incbin "data/graphics/icons/spellicons.bin"
ItemIcons:      incbin "data/graphics/icons/itemicons.bin"
CursorTiles:    incbin "data/graphics/tech/cursortiles.bin"
BasePalette:    incbin "data/graphics/tech/basepalette.bin"

; =============== S U B R O U T I N E =======================================

sub_D2EA4:
		move.l  a3,-(sp)
		jsr     (j_FadeOutToWhite).l
		jsr     sub_12401C
		clr.l   (dword_FF0EF6).l
		jsr     (j_WaitForVInt).l
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   sub_D2EE4
		bsr.w   sub_D2EEE
		movea.l (sp)+,a3
		bsr.w   sub_D2F02
		bsr.w   sub_D2FDA
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_FadeInFromWhite).l
		rts

	; End of function sub_D2EA4


; =============== S U B R O U T I N E =======================================

sub_D2EE4:
		lea     EndingCreditsFont(pc), a0
		jmp     (j_DecompressGraphics).l

	; End of function sub_D2EE4


; =============== S U B R O U T I N E =======================================

sub_D2EEE:
		moveq   #0,d0
		move.w  #$AFF,d7
		lea     (MAP_SPRITE_POSITION).l,a1
loc_D2EFA:
		move.l  d0,(a1)+
		dbf     d7,loc_D2EFA
		rts

	; End of function sub_D2EEE


; =============== S U B R O U T I N E =======================================

sub_D2F02:
		clr.w   d4
		clr.w   d5
loc_D2F06:
		clr.w   d0
		move.b  (a3)+,d0
		cmpi.b  #$FF,d0
		beq.s   locret_D2F4E
		cmpi.b  #$FE,d0
		bne.s   loc_D2F1E
		addi.w  #$12,d5
		clr.w   d4
		bra.s   loc_D2F06
loc_D2F1E:
		cmpi.b  #$FD,d0
		bne.s   loc_D2F48
		move.l  a3,-(sp)
loc_D2F26:
		lea     byte_D32DA(pc), a0
		clr.w   d0
		move.b  (a3)+,d0
		bmi.s   loc_D2F3A
		clr.w   d6
		move.b  (a0,d0.w),d6
		add.w   d6,d4
		bra.s   loc_D2F26
loc_D2F3A:
		move.w  #$100,d0
		sub.w   d4,d0
		lsr.l   #1,d0
		move.w  d0,d4
		movea.l (sp)+,a3
		bra.s   loc_D2F06
loc_D2F48:
		bsr.w   sub_D2F50
		bra.s   loc_D2F06
locret_D2F4E:
		rts

	; End of function sub_D2F02


; =============== S U B R O U T I N E =======================================

sub_D2F50:
		lea     byte_D32DA(pc), a0
		clr.w   d6
		move.b  (a0,d0.w),d6
		move.w  d6,-(sp)
		lea     (FF3000_LOADING_SPACE).l,a0
		lsl.l   #7,d0
		adda.w  d0,a0
		lea     (MAP_SPRITE_POSITION).l,a2
		move.w  d5,d3
		lsl.w   #7,d3
		andi.w  #$7C00,d3
		adda.w  d3,a2
		move.w  d5,d3
		andi.w  #7,d3
		lsl.w   #2,d3
		adda.w  d3,a2
		move.w  d4,d3
		lsr.w   #3,d3
		lsl.w   #5,d3
		adda.w  d3,a2
		move.w  d4,d3
		andi.w  #7,d3
		movem.l d4-d5/a2,-(sp)
		moveq   #$F,d7
loc_D2F94:
		move.l  $40(a0),d2
		move.l  (a0)+,d1
		move.w  d3,d0
		move.w  d3,-(sp)
		lsl.w   #2,d0
		move.l  d2,d3
		move.l  d1,d6
		lsr.l   d0,d2
		ror.l   d0,d3
		eor.l   d2,d3
		lsr.l   d0,d1
		ror.l   d0,d6
		eor.l   d1,d6
		or.l    d6,d2
		or.l    d3,$40(a2)
		move.w  (sp)+,d3
		or.l    d2,$20(a2)
		or.l    d1,(a2)+
		addq.w  #1,d5
		move.w  d5,d0
		andi.w  #7,d0
		bne.s   loc_D2FCC
		adda.w  #$3E0,a2
loc_D2FCC:
		dbf     d7,loc_D2F94
		movem.l (sp)+,d4-d5/a2
		move.w  (sp)+,d6
		add.w   d6,d4
		rts

	; End of function sub_D2F50


; =============== S U B R O U T I N E =======================================

sub_D2FDA:
		lea     (MAP_SPRITE_POSITION).l,a0
		lea     (0).w,a1
		move.w  #$1000,d0
		moveq   #2,d1
		jsr     (j_DMAFromRAMToVRAM).l
		lea     ($D000).l,a1
		move.w  #$600,d0
		moveq   #2,d1
		jsr     (j_DMAFromRAMToVRAM).l
		lea     wl_TextInput(pc), a0
		lea     ($E580).l,a1
		move.w  #$160,d0
		moveq   #2,d1
		jsr     (j_DMAFromRAMToVRAM).l
		rts

	; End of function sub_D2FDA

wl_TextInput:   incbin "data/graphics/tech/windowlayouts/wl-textinput.bin"
byte_D32DA:     dc.b 8
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b   9
		dc.b  $A
		dc.b  $A
		dc.b   6
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $D
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b   5
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b  $A
		dc.b   8
		dc.b   8
		dc.b  $A
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b  $F
		dc.b $FF
EndingCreditsFont:
		incbin "data/graphics/tech/fonts/endingcreditsfont"
pt_Backgrounds: dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background00
		dc.l Background01
		dc.l Background02
		dc.l Background03
		dc.l Background04
		dc.l Background05
		dc.l Background06
		dc.l Background07
		dc.l Background08
		dc.l Background09
		dc.l Background10
		dc.l Background11
		dc.l Background12
		dc.l Background13
		dc.l Background14
		dc.l Background15
		dc.l Background16
		dc.l Background17
		dc.l Background18
		dc.l Background19
		dc.l Background20
		dc.l Background21
		dc.l Background20
		dc.l Background21
		dc.l Background22
		dc.l Background23
		dc.l Background24
		dc.l Background25
		dc.l Background26
		dc.l Background27
		dc.l Background28
		dc.l Background29
		dc.l Background30
		dc.l Background31
		dc.l Background32
		dc.l Background33
		dc.l Background34
		dc.l Background35
		dc.l Background36
		dc.l Background37
		dc.l Background38
		dc.l Background39
		dc.l Background40
		dc.l Background41
		dc.l Background42
		dc.l Background43
		dc.l Background44
		dc.l Background45
		dc.l Background46
		dc.l Background47
		dc.l Background48
		dc.l Background49
		dc.l Background48
		dc.l Background49
		dc.l Background50
		dc.l Background51
		dc.l Background52
		dc.l Background53
		dc.l Background54
		dc.l Background55
		dc.l Background56
		dc.l Background57
		dc.l Background58
		dc.l Background59
Background00:   incbin "data/graphics/battles/backgrounds/background00.bin"
Background01:   incbin "data/graphics/battles/backgrounds/background01.bin"
Background02:   incbin "data/graphics/battles/backgrounds/background02.bin"
Background03:   incbin "data/graphics/battles/backgrounds/background03.bin"
Background04:   incbin "data/graphics/battles/backgrounds/background04.bin"
Background05:   incbin "data/graphics/battles/backgrounds/background05.bin"
Background06:   incbin "data/graphics/battles/backgrounds/background06.bin"
Background07:   incbin "data/graphics/battles/backgrounds/background07.bin"
Background08:   incbin "data/graphics/battles/backgrounds/background08.bin"
Background09:   incbin "data/graphics/battles/backgrounds/background09.bin"
Background10:   incbin "data/graphics/battles/backgrounds/background10.bin"
Background11:   incbin "data/graphics/battles/backgrounds/background11.bin"
Background12:   incbin "data/graphics/battles/backgrounds/background12.bin"
Background13:   incbin "data/graphics/battles/backgrounds/background13.bin"
Background14:   incbin "data/graphics/battles/backgrounds/background14.bin"
Background15:   incbin "data/graphics/battles/backgrounds/background15.bin"
Background16:   incbin "data/graphics/battles/backgrounds/background16.bin"
Background17:   incbin "data/graphics/battles/backgrounds/background17.bin"
Background18:   incbin "data/graphics/battles/backgrounds/background18.bin"
Background19:   incbin "data/graphics/battles/backgrounds/background19.bin"
Background20:   incbin "data/graphics/battles/backgrounds/background20.bin"
Background21:   incbin "data/graphics/battles/backgrounds/background21.bin"
Background22:   incbin "data/graphics/battles/backgrounds/background22.bin"
Background23:   incbin "data/graphics/battles/backgrounds/background23.bin"
Background24:   incbin "data/graphics/battles/backgrounds/background24.bin"
Background25:   incbin "data/graphics/battles/backgrounds/background25.bin"
Background26:   incbin "data/graphics/battles/backgrounds/background26.bin"
Background27:   incbin "data/graphics/battles/backgrounds/background27.bin"
Background28:   incbin "data/graphics/battles/backgrounds/background28.bin"
Background29:   incbin "data/graphics/battles/backgrounds/background29.bin"
Background30:   incbin "data/graphics/battles/backgrounds/background30.bin"
Background31:   incbin "data/graphics/battles/backgrounds/background31.bin"
Background32:   incbin "data/graphics/battles/backgrounds/background32.bin"
Background33:   incbin "data/graphics/battles/backgrounds/background33.bin"
Background34:   incbin "data/graphics/battles/backgrounds/background34.bin"
Background35:   incbin "data/graphics/battles/backgrounds/background35.bin"
Background36:   incbin "data/graphics/battles/backgrounds/background36.bin"
Background37:   incbin "data/graphics/battles/backgrounds/background37.bin"
Background38:   incbin "data/graphics/battles/backgrounds/background38.bin"
Background39:   incbin "data/graphics/battles/backgrounds/background39.bin"
Background40:   incbin "data/graphics/battles/backgrounds/background40.bin"
Background41:   incbin "data/graphics/battles/backgrounds/background41.bin"
Background42:   incbin "data/graphics/battles/backgrounds/background42.bin"
Background43:   incbin "data/graphics/battles/backgrounds/background43.bin"
Background44:   incbin "data/graphics/battles/backgrounds/background44.bin"
Background45:   incbin "data/graphics/battles/backgrounds/background45.bin"
Background46:   incbin "data/graphics/battles/backgrounds/background46.bin"
Background47:   incbin "data/graphics/battles/backgrounds/background47.bin"
Background48:   incbin "data/graphics/battles/backgrounds/background48.bin"
Background49:   incbin "data/graphics/battles/backgrounds/background49.bin"
Background50:   incbin "data/graphics/battles/backgrounds/background50.bin"
Background51:   incbin "data/graphics/battles/backgrounds/background51.bin"
Background52:   incbin "data/graphics/battles/backgrounds/background52.bin"
Background53:   incbin "data/graphics/battles/backgrounds/background53.bin"
Background54:   incbin "data/graphics/battles/backgrounds/background54.bin"
Background55:   incbin "data/graphics/battles/backgrounds/background55.bin"
Background56:   incbin "data/graphics/battles/backgrounds/background56.bin"
Background57:   incbin "data/graphics/battles/backgrounds/background57.bin"
Background58:   incbin "data/graphics/battles/backgrounds/background58.bin"
Background59:   incbin "data/graphics/battles/backgrounds/background59.bin"
		align $8000
