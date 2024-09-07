
; GAME SECTION 15 :
; 0x144000..0x164000 : Ally battlesprites and animations, weapon sprites and palettes, battle platforms
; FREE SPACE : 6 bytes.


p_pt_AllyBattlesprites:
		dc.l pt_AllyBattlesprites
p_pt_AllyAnimations:
		dc.l pt_AllyAnimations
p_pt_Weaponsprites:
		dc.l pt_Weaponsprites
p_WeaponPalettes:
		dc.l WeaponPalettes
p_pt_Platforms: dc.l pt_Platforms
		include "data\graphics\battles\battlesprites\allies\entries.asm"		; Ally battlesprites
		include "data\graphics\battles\weapons\entries.asm"		; Weapon sprites
WeaponPalettes: incbin "data/graphics/battles/weapons/palettes/weaponpalettes.bin"
		include "data\graphics\battles\battlesprites\allies\animations\entries.asm"		; Ally battlesprite animations
		include "data\graphics\battles\platforms\entries.asm"		; Platform sprites
		align $4000
