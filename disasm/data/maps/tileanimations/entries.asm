
; ASM FILE data\maps\tileanimations\entries.asm :
; 0xB97F4..0xBA3EC : Tile animation data
pt_MapTileAnimations:
		dc.l table_MapTileAnimation0
		dc.l table_MapTileAnimation1
		dc.l table_MapTileAnimation2
		dc.l table_MapTileAnimation3
		dc.l table_MapTileAnimation4
		dc.l table_MapTileAnimation5
table_MapTileAnimation0:
		incbin "data/maps/tileanimations/tileanimation0.bin"
table_MapTileAnimation1:
		incbin "data/maps/tileanimations/tileanimation1.bin"
table_MapTileAnimation2:
		incbin "data/maps/tileanimations/tileanimation2.bin"
table_MapTileAnimation3:
		incbin "data/maps/tileanimations/tileanimation3.bin"
table_MapTileAnimation4:
		incbin "data/maps/tileanimations/tileanimation4.bin"
table_MapTileAnimation5:
		incbin "data/maps/tileanimations/tileanimation5.bin"
