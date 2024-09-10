
; GAME SECTION 08 :
; 0x080000..0x0BC000 : Sprite sets, map sprite scripts, map data, tile animation data
; FREE SPACE : 7187 bytes.


p_pt_MapTileAnimations:
		dc.l pt_MapTileAnimations
p_pt_Maps:      dc.l pt_Maps
p_pt_MapSpritesets:
		dc.l pt_MapSpritesets

; =============== S U B R O U T I N E =======================================

j_GetMapspriteScriptAddress:
		
		jmp     GetMapspriteScriptAddress(pc)

    ; End of function j_GetMapspriteScriptAddress

		include "data\maps\spritesets\entries.asm"		; Sprite sets
		include "code\common\scripting\getmapspritescriptaddress.asm"		; Mapsprite script address getter function
		include "data\scripting\mapspritescripts\entries.asm"		; Map sprite scripts
		include "data\maps\entries.asm"		; Map data
		include "data\maps\tileanimations\entries.asm"		; Tile animation data
		align $4000
