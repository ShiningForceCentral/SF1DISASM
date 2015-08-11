
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
pt_Tilesets:        dc.l Tileset00
off_58018:          dc.l Tileset01
off_5801C:          dc.l Tileset02
										dc.l Tileset03
										dc.l Tileset04
										dc.l Tileset05
										dc.l Tileset06
										dc.l Tileset07
off_58034:          dc.l off_5804C
										dc.l off_58074
										dc.l off_5807C
										dc.l off_58084
										dc.l off_580AC
										dc.l off_580B0
off_5804C:          dc.l Tileset14
										dc.l Tileset15
										dc.l Tileset16
										dc.l Tileset17
										dc.l Tileset18
										dc.l Tileset19
										dc.l Tileset20
										dc.l Tileset21
										dc.l Tileset22
										dc.l Tileset23
off_58074:          dc.l Tileset24
										dc.l Tileset25
off_5807C:          dc.l Tileset26
										dc.l Tileset27
off_58084:          dc.l Tileset28
										dc.l Tileset29
										dc.l Tileset30
										dc.l Tileset31
										dc.l Tileset32
										dc.l Tileset33
										dc.l Tileset34
										dc.l Tileset35
										dc.l Tileset36
										dc.l Tileset37
off_580AC:          dc.l Tileset38
off_580B0:          dc.l Tileset39
										dc.l Tileset40
Tileset02:          incbin "graphics/compressed/tilesets/tileset02.bin"
Tileset03:          incbin "graphics/compressed/tilesets/tileset03.bin"
Tileset04:          incbin "graphics/compressed/tilesets/tileset04.bin"
Tileset05:          incbin "graphics/compressed/tilesets/tileset05.bin"
Tileset06:          incbin "graphics/compressed/tilesets/tileset06.bin"
Tileset07:          incbin "graphics/compressed/tilesets/tileset07.bin"
Tileset14:          incbin "graphics/compressed/tilesets/tileset14.bin"
Tileset15:          incbin "graphics/compressed/tilesets/tileset15.bin"
Tileset16:          incbin "graphics/compressed/tilesets/tileset16.bin"
Tileset17:          incbin "graphics/compressed/tilesets/tileset17.bin"
Tileset18:          incbin "graphics/compressed/tilesets/tileset18.bin"
Tileset19:          incbin "graphics/compressed/tilesets/tileset19.bin"
Tileset20:          incbin "graphics/compressed/tilesets/tileset20.bin"
Tileset21:          incbin "graphics/compressed/tilesets/tileset21.bin"
Tileset22:          incbin "graphics/compressed/tilesets/tileset22.bin"
Tileset23:          incbin "graphics/compressed/tilesets/tileset23.bin"
Tileset24:          incbin "graphics/compressed/tilesets/tileset24.bin"
Tileset25:          incbin "graphics/compressed/tilesets/tileset25.bin"
Tileset26:          incbin "graphics/compressed/tilesets/tileset26.bin"
Tileset27:          incbin "graphics/compressed/tilesets/tileset27.bin"
Tileset28:          incbin "graphics/compressed/tilesets/tileset28.bin"
Tileset29:          incbin "graphics/compressed/tilesets/tileset29.bin"
Tileset30:          incbin "graphics/compressed/tilesets/tileset30.bin"
Tileset31:          incbin "graphics/compressed/tilesets/tileset31.bin"
Tileset32:          incbin "graphics/compressed/tilesets/tileset32.bin"
Tileset33:          incbin "graphics/compressed/tilesets/tileset33.bin"
Tileset34:          incbin "graphics/compressed/tilesets/tileset34.bin"
Tileset35:          incbin "graphics/compressed/tilesets/tileset35.bin"
Tileset36:          incbin "graphics/compressed/tilesets/tileset36.bin"
Tileset37:          incbin "graphics/compressed/tilesets/tileset37.bin"
Tileset38:          incbin "graphics/compressed/tilesets/tileset38.bin"
Tileset39:          incbin "graphics/compressed/tilesets/tileset39.bin"
Tileset40:          incbin "graphics/compressed/tilesets/tileset40.bin"
Tileset00:          incbin "graphics/compressed/tilesets/tileset00.bin"
Tileset01:          incbin "graphics/compressed/tilesets/tileset01.bin"
										align $8000
