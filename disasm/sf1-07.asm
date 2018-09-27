
; GAME SECTION 07 :
; Map tilesets
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
p_SpecialSprite_BurningShip:
		dc.l SpecialSprite_BurningShip
p_SpecialSprite_Jogurt2:
		dc.l SpecialSprite_Jogurt2
pt_MapTilesets: dc.l MapTileset00
		dc.l MapTileset01
		dc.l MapTileset02
		dc.l MapTileset03
		dc.l MapTileset04
		dc.l MapTileset05
off_58034:      dc.l off_5804C
		dc.l off_58074
		dc.l off_5807C
		dc.l off_58084
		dc.l off_580AC
		dc.l off_580B0
off_5804C:      dc.l MapTileset12
		dc.l MapTileset13
		dc.l MapTileset14
		dc.l MapTileset15
		dc.l MapTileset16
		dc.l MapTileset17
		dc.l MapTileset18
		dc.l MapTileset19
		dc.l MapTileset20
		dc.l MapTileset21
off_58074:      dc.l MapTileset22
		dc.l MapTileset23
off_5807C:      dc.l MapTileset24
		dc.l MapTileset25
off_58084:      dc.l MapTileset26
		dc.l MapTileset27
		dc.l MapTileset28
		dc.l MapTileset29
		dc.l MapTileset30
		dc.l MapTileset31
		dc.l MapTileset32
		dc.l MapTileset33
		dc.l MapTileset34
		dc.l MapTileset35
off_580AC:      dc.l MapTileset36
off_580B0:      dc.l MapTileset37
		dc.l MapTileset38
MapTileset00:   incbin "data/graphics/maps/maptilesets/maptileset00.bin"
MapTileset01:   incbin "data/graphics/maps/maptilesets/maptileset01.bin"
MapTileset02:   incbin "data/graphics/maps/maptilesets/maptileset02.bin"
MapTileset03:   incbin "data/graphics/maps/maptilesets/maptileset03.bin"
MapTileset04:   incbin "data/graphics/maps/maptilesets/maptileset04.bin"
MapTileset05:   incbin "data/graphics/maps/maptilesets/maptileset05.bin"
MapTileset12:   incbin "data/graphics/maps/maptilesets/maptileset12.bin"
MapTileset13:   incbin "data/graphics/maps/maptilesets/maptileset13.bin"
MapTileset14:   incbin "data/graphics/maps/maptilesets/maptileset14.bin"
MapTileset15:   incbin "data/graphics/maps/maptilesets/maptileset15.bin"
MapTileset16:   incbin "data/graphics/maps/maptilesets/maptileset16.bin"
MapTileset17:   incbin "data/graphics/maps/maptilesets/maptileset17.bin"
MapTileset18:   incbin "data/graphics/maps/maptilesets/maptileset18.bin"
MapTileset19:   incbin "data/graphics/maps/maptilesets/maptileset19.bin"
MapTileset20:   incbin "data/graphics/maps/maptilesets/maptileset20.bin"
MapTileset21:   incbin "data/graphics/maps/maptilesets/maptileset21.bin"
MapTileset22:   incbin "data/graphics/maps/maptilesets/maptileset22.bin"
MapTileset23:   incbin "data/graphics/maps/maptilesets/maptileset23.bin"
MapTileset24:   incbin "data/graphics/maps/maptilesets/maptileset24.bin"
MapTileset25:   incbin "data/graphics/maps/maptilesets/maptileset25.bin"
MapTileset26:   incbin "data/graphics/maps/maptilesets/maptileset26.bin"
MapTileset27:   incbin "data/graphics/maps/maptilesets/maptileset27.bin"
MapTileset28:   incbin "data/graphics/maps/maptilesets/maptileset28.bin"
MapTileset29:   incbin "data/graphics/maps/maptilesets/maptileset29.bin"
MapTileset30:   incbin "data/graphics/maps/maptilesets/maptileset30.bin"
MapTileset31:   incbin "data/graphics/maps/maptilesets/maptileset31.bin"
MapTileset32:   incbin "data/graphics/maps/maptilesets/maptileset32.bin"
MapTileset33:   incbin "data/graphics/maps/maptilesets/maptileset33.bin"
MapTileset34:   incbin "data/graphics/maps/maptilesets/maptileset34.bin"
MapTileset35:   incbin "data/graphics/maps/maptilesets/maptileset35.bin"
MapTileset36:   incbin "data/graphics/maps/maptilesets/maptileset36.bin"
MapTileset37:   incbin "data/graphics/maps/maptilesets/maptileset37.bin"
MapTileset38:   incbin "data/graphics/maps/maptilesets/maptileset38.bin"
SpecialSprite_BurningShip:
		incbin "data/graphics/specialsprites/specialsprite-burningship.bin"
SpecialSprite_Jogurt2:
		incbin "data/graphics/specialsprites/specialsprite-jogurt2.bin"
		align $8000
