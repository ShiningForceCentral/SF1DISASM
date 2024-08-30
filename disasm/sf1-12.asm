
; GAME SECTION 12 :
; Enemy battle sprites and animations
; FREE SPACE : 6312 bytes.


p_pt_EnemyBattleSprites:
		dc.l pt_EnemyBattleSprites
p_pt_EnemyAnimations:
		dc.l pt_EnemyAnimations
                include "data\graphics\battles\battlesprites\enemies\entries.asm"
                include "data\graphics\battles\battlesprites\enemies\animations\entries.asm"
		align $4000
