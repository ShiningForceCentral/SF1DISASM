
; ROM LAYOUT FILE
;
		include "layout\sf1-01-0x000000-0x008000.asm"		; 0x000000..0x008000 : Technical layer, low level game engine, menu engine, ...
		include "layout\sf1-02-0x008000-0x010000.asm"		; 0x008000..0x010000 : 
		include "layout\sf1-03-0x010000-0x020000.asm"		; 0x010000..0x020000 : Exploration engine, ...
		include "layout\sf1-04-0x020000-0x02C000.asm"		; 0x020000..0x02C000 : Stats engine, ...
		include "layout\sf1-05-0x02C000-0x038000.asm"		; 0x02C000..0x038000 : Region check, variable width font, portraits
		include "layout\sf1-06-0x038000-0x058000.asm"		; 0x038000..0x058000 : Map sprites, misc. uncompressed graphics
		include "layout\sf1-07-0x058000-0x080000.asm"		; 0x058000..0x080000 : Map tilesets
		include "layout\sf1-08-0x080000-0x0BC000.asm"		; 0x080000..0x0BC000 : Sprite sets, map sprite scripts, map data, tile animation data
		include "layout\sf1-09-0x0BC000-0xC0000.asm"		; 0x0BC000..0x0C0000 : Sound test
		include "layout\sf1-10-0xC0000-0xCC000.asm"		; 0x0C0000..0x0CC000 : Ending, intro, title and chapter screens graphics and palettes
		include "layout\sf1-11-0xCC000-0x100000.asm"		; 0x0CC000..0x100000 : Base tiles loading and ending credits functions, battle backgrounds
		include "layout\sf1-12-0x100000-0x124000.asm"		; 0x100000..0x124000 : Enemy battlesprites and animations
		include "layout\sf1-13-0x124000-0x130000.asm"		; 0x124000..0x130000 : Spell graphics and animations
		include "layout\sf1-14-0x130000-0x144000.asm"		; 0x130000..0x144000 : Game intro, title screen, text banks
		include "layout\sf1-15-0x144000-0x164000.asm"		; 0x144000..0x164000 : Ally battlesprites and animations, weapon sprites and palettes, battle platforms
		include "layout\sf1-16-0x164000-0x168000.asm"		; 0x164000..0x168000 : 
		include "layout\sf1-17-0x168000-0x180000.asm"		; 0x168000..0x180000 : PCM banks, Music banks, Sound driver, YM instruments
