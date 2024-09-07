
; ASM FILE data\battles\global\exits\entries.asm :
; 0x1D3B2..0x1D3D2 : Battle exits table
pt_BattleExits: dc.l table_BattleExits0
		dc.l table_BattleExits1
		dc.l table_BattleExits2
		dc.l table_BattleExits3
		dc.l table_BattleExits4
		dc.l table_BattleExits5
		dc.l table_BattleExits6
		dc.l table_BattleExits7
		include "data\battles\global\exits\battleexits0.asm"		; Battle exits table 0
		include "data\battles\global\exits\battleexits1.asm"		; Battle exits table 1
		include "data\battles\global\exits\battleexits2.asm"		; Battle exits table 2
		include "data\battles\global\exits\battleexits3.asm"		; Battle exits table 3
		include "data\battles\global\exits\battleexits4.asm"		; Battle exits table 4
		include "data\battles\global\exits\battleexits5.asm"		; Battle exits table 5
		include "data\battles\global\exits\battleexits6.asm"		; Battle exits table 6
		include "data\battles\global\exits\battleexits7.asm"		; Battle exits table 7
