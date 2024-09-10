
; GAME SECTION 07 :
; 0x058000..0x080000 : Map tilesets
; FREE SPACE : 2305 bytes.


		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
p_pt_MapTilesets:
		dc.l pt_MapTilesets     ; Tilesets
off_58010:      dc.l off_58034
		include "data\graphics\maps\maptilesets\entries.asm"		; Map tilesets
SpecialSprite_BurningShip:
		incbin "data/graphics/specialsprites/specialsprite-burningship.bin"
SpecialSprite_Jogurt2:
		incbin "data/graphics/specialsprites/specialsprite-jogurt2.bin"
		align $8000
