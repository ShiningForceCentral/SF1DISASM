
; GAME SECTION 15 :
; Ally battle sprites and animations, weapon sprites and palettes, battle platforms
; FREE SPACE : 6 bytes.


p_pt_AllyBattleSprites:
		dc.l pt_AllyBattleSprites
p_pt_AllyAnimations:
		dc.l pt_AllyAnimations
p_pt_WeaponSprites:
		dc.l pt_WeaponSprites
p_WeaponPalettes:
		dc.l WeaponPalettes
p_pt_Platforms: dc.l pt_Platforms
        include "data\graphics\battles\battlesprites\allies\entries.asm"
        include "data\graphics\battles\weapons\entries.asm
WeaponPalettes: incbin "data/graphics/battles/weapons/palettes/weaponpalettes.bin"
        include "data\graphics\battles\battlesprites\allies\animations\entries.asm"
        include "data\graphics\battles\platforms\entries.asm"
		align $4000
