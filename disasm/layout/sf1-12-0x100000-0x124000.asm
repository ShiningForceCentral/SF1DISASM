
; GAME SECTION 12 :
; 0x100000..0x124000 : Enemy battlesprites and animations
; FREE SPACE : 6312 bytes.


p_pt_EnemyBattlesprites:
		dc.l pt_EnemyBattlesprites
p_pt_EnemyAnimations:
		dc.l pt_EnemyAnimations
		include "data\graphics\battles\battlesprites\enemies\entries.asm"		; Enemy battlesprites
		include "data\graphics\battles\battlesprites\enemies\animations\entries.asm"		; Enemy battle animations
		align $4000
