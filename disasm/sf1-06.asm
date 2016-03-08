
; GAME SECTION 06 :
; 

; FREE SPACE : 2305 bytes.


										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
										dc.b   0
off_5800C:          dc.l off_5801C          ; Tilesets
off_58010:          dc.l off_58034
pt_MapTilesets:     dc.l MapTileset00
off_58018:          dc.l MapTileset01
off_5801C:          dc.l MapTileset02
										dc.l MapTileset03
										dc.l MapTileset04
										dc.l MapTileset05
										dc.l MapTileset06
										dc.l MapTileset07
off_58034:          dc.l off_5804C
										dc.l off_58074
										dc.l off_5807C
										dc.l off_58084
										dc.l off_580AC
										dc.l off_580B0
off_5804C:          dc.l MapTileset14
										dc.l MapTileset15
										dc.l MapTileset16
										dc.l MapTileset17
										dc.l MapTileset18
										dc.l MapTileset19
										dc.l MapTileset20
										dc.l MapTileset21
										dc.l MapTileset22
										dc.l MapTileset23
off_58074:          dc.l MapTileset24
										dc.l MapTileset25
off_5807C:          dc.l MapTileset26
										dc.l MapTileset27
off_58084:          dc.l MapTileset28
										dc.l MapTileset29
										dc.l MapTileset30
										dc.l MapTileset31
										dc.l MapTileset32
										dc.l MapTileset33
										dc.l MapTileset34
										dc.l MapTileset35
										dc.l MapTileset36
										dc.l MapTileset37
off_580AC:          dc.l MapTileset38
off_580B0:          dc.l MapTileset39
										dc.l MapTileset40
MapTileset02:       incbin "graphics/maps/maptilesets/maptileset02.bin"
MapTileset03:       incbin "graphics/maps/maptilesets/maptileset03.bin"
MapTileset04:       incbin "graphics/maps/maptilesets/maptileset04.bin"
MapTileset05:       incbin "graphics/maps/maptilesets/maptileset05.bin"
MapTileset06:       incbin "graphics/maps/maptilesets/maptileset06.bin"
MapTileset07:       incbin "graphics/maps/maptilesets/maptileset07.bin"
MapTileset14:       incbin "graphics/maps/maptilesets/maptileset14.bin"
MapTileset15:       incbin "graphics/maps/maptilesets/maptileset15.bin"
MapTileset16:       incbin "graphics/maps/maptilesets/maptileset16.bin"
MapTileset17:       incbin "graphics/maps/maptilesets/maptileset17.bin"
MapTileset18:       incbin "graphics/maps/maptilesets/maptileset18.bin"
MapTileset19:       incbin "graphics/maps/maptilesets/maptileset19.bin"
MapTileset20:       incbin "graphics/maps/maptilesets/maptileset20.bin"
MapTileset21:       incbin "graphics/maps/maptilesets/maptileset21.bin"
MapTileset22:       incbin "graphics/maps/maptilesets/maptileset22.bin"
MapTileset23:       incbin "graphics/maps/maptilesets/maptileset23.bin"
MapTileset24:       incbin "graphics/maps/maptilesets/maptileset24.bin"
MapTileset25:       incbin "graphics/maps/maptilesets/maptileset25.bin"
MapTileset26:       incbin "graphics/maps/maptilesets/maptileset26.bin"
MapTileset27:       incbin "graphics/maps/maptilesets/maptileset27.bin"
MapTileset28:       incbin "graphics/maps/maptilesets/maptileset28.bin"
MapTileset29:       incbin "graphics/maps/maptilesets/maptileset29.bin"
MapTileset30:       incbin "graphics/maps/maptilesets/maptileset30.bin"
MapTileset31:       incbin "graphics/maps/maptilesets/maptileset31.bin"
MapTileset32:       incbin "graphics/maps/maptilesets/maptileset32.bin"
MapTileset33:       incbin "graphics/maps/maptilesets/maptileset33.bin"
MapTileset34:       incbin "graphics/maps/maptilesets/maptileset34.bin"
MapTileset35:       incbin "graphics/maps/maptilesets/maptileset35.bin"
MapTileset36:       incbin "graphics/maps/maptilesets/maptileset36.bin"
MapTileset37:       incbin "graphics/maps/maptilesets/maptileset37.bin"
MapTileset38:       incbin "graphics/maps/maptilesets/maptileset38.bin"
MapTileset39:       incbin "graphics/maps/maptilesets/maptileset39.bin"
MapTileset40:       incbin "graphics/maps/maptilesets/maptileset40.bin"
MapTileset00:       incbin "graphics/maps/maptilesets/maptileset00.bin"
MapTileset01:       incbin "graphics/maps/maptilesets/maptileset01.bin"
										align $8000
