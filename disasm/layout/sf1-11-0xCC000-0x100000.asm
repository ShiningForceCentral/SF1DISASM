
; GAME SECTION 11 :
; 0x0CC000..0x100000 : Base tiles loading and ending credits functions, battle backgrounds
; FREE SPACE : 707 bytes.


p_pt_Backgrounds:
		dc.l pt_Backgrounds

; =============== S U B R O U T I N E =======================================

j_LoadBaseTilesAndPalette:
		
		jmp     LoadBaseTilesAndPalette(pc)

    ; End of function j_LoadBaseTilesAndPalette

p_tiles_OptionsMenu:
		dc.l tiles_OptionsMenu
p_tiles_MainMenu:
		dc.l tiles_MainMenu
p_tiles_ItemMenu:
		dc.l tiles_ItemMenu
p_tiles_ShopMenu:
		dc.l tiles_ShopMenu
p_tiles_HqMenu: dc.l tiles_HqMenu
p_tiles_ChurchMenu:
		dc.l tiles_ChurchMenu
p_icons_Spell:  dc.l icons_Spell
p_icons_Item:   dc.l icons_Item
p_tiles_Cursor: dc.l tiles_Cursor

; =============== S U B R O U T I N E =======================================

sub_CC02C:
		jmp     sub_D2EA4(pc)

    ; End of function sub_CC02C

		include "code\gameflow\start\basetiles.asm"		; Base tiles loading
tiles_Base:     incbin "data/graphics/tech/basetiles.bin"
tiles_OptionsMenu:
		incbin "data/graphics/tech/menus/menutiles-battleoptions.bin"
tiles_MainMenu: incbin "data/graphics/tech/menus/menutiles-main.bin"
tiles_ItemMenu: incbin "data/graphics/tech/menus/menutiles-item.bin"
tiles_ShopMenu: incbin "data/graphics/tech/menus/menutiles-shop.bin"
tiles_HqMenu:   incbin "data/graphics/tech/menus/menutiles-hq.bin"
tiles_ChurchMenu:
		incbin "data/graphics/tech/menus/menutiles-church.bin"
icons_Spell:    incbin "data/graphics/icons/spellicons.bin"
icons_Item:     incbin "data/graphics/icons/itemicons.bin"
tiles_Cursor:   incbin "data/graphics/tech/cursortiles.bin"
palette_Base:   incbin "data/graphics/tech/basepalette.bin"
		include "code\gameflow\end\endingcredits.asm"		; Ending credits functions
		include "data\graphics\tech\windowlayouts\textinput.asm"		; Text input window layout
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
                
font_EndingCredits:
		incbin "data/graphics/tech/fonts/endingcreditsfont.bin"
		include "data\graphics\battles\backgrounds\entries.asm"		; Backgrounds
		align $8000
