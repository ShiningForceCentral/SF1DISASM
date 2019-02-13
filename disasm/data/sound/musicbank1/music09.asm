
; ASM FILE music09.asm :
; 0x9BC1..0xAFC6 : Music 09
Music_9:        db 0
		db 0
		db 0
		db 0BAh
		dw Music_9_Channel_0
		dw Music_9_Channel_1
		dw Music_9_Channel_2
		dw Music_9_Channel_3
		dw Music_9_Channel_4
		dw Music_9_Channel_5
		dw Music_9_Channel_6
		dw Music_9_Channel_7
		dw Music_9_Channel_9
		dw Music_9_Channel_9
Music_9_Channel_0:
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL C6,48
		        noteL G5,35
		        waitL 7
		        noteL G5,6
		        noteL Gs5,4
		        waitL 14
		        noteL F5,6
		        noteL F5,55
		        waitL 5
		        noteL Ds5,6
		        note  F5
		        noteL G5,192
		        noteL C6,48
		        noteL G5,35
		        waitL 7
		        noteL G5,6
		        noteL Gs5,4
		        waitL 14
		        noteL F5,6
		        noteL F5,55
		        waitL 5
		        noteL Ds5,6
		        note  F5
		        noteL G5,168
		  vol 09h
		        noteL G5,24
		        noteL F5,4
		        waitL 14
		        noteL D5,6
		        noteL D5,48
		        noteL F5,24
		        noteL Ds5,6
		        note  D5
		        noteL C5,55
		        waitL 5
		        noteL Ds5,24
		        noteL F5,4
		        waitL 14
		        noteL D5,6
		        noteL D5,48
		        noteL F5,24
		        noteL Ds5,6
		        note  F5
		        noteL G5,55
		        waitL 5
		        noteL Ds6,24
		        noteL F6,4
		        waitL 14
		        noteL D6,6
		        noteL D6,48
		        noteL F6,24
		        noteL Ds6,6
		        note  F6
		        noteL G6,55
		        waitL 5
		        noteL C6,24
		        noteL Ds6,6
		        note  F6
		        noteL G6,55
		        waitL 5
		        noteL C6,24
		        noteL F6,6
		        note  G6
		        noteL Gs6,79
		        waitL 5
		  vol 0Ah
		        noteL C6,48
		        noteL G5,35
		        waitL 7
		        noteL G5,6
		        noteL Gs5,4
		        waitL 14
		        noteL F5,6
		        noteL F5,55
		        waitL 5
		        noteL Ds5,6
		        note  F5
		        noteL G5,192
		        noteL C6,48
		        noteL G5,35
		        waitL 7
		        noteL G5,6
		        note  Gs5
		        waitL 12
		        noteL F5,6
		        noteL F5,55
		        waitL 5
		        noteL Ds5,6
		        note  F5
		        noteL G5,168
		        noteL G5,24
		        noteL F5,4
		        waitL 14
		        noteL D5,6
		        noteL D5,48
		        noteL F5,24
		        noteL Ds5,6
		        note  D5
		        noteL C5,55
		        waitL 5
		        noteL Ds5,24
		        noteL F5,4
		        waitL 14
		        noteL D5,6
		        noteL D5,48
		        noteL F5,24
		        noteL Ds5,6
		        note  F5
		        noteL G5,55
		        waitL 5
		        noteL Ds6,24
		        noteL F6,6
		        waitL 12
		        noteL D6,6
		        noteL D6,48
		        noteL F6,24
		        noteL Ds6,6
		        note  F6
		        noteL G6,55
		        waitL 5
		        noteL C6,24
		        noteL Ds6,6
		        note  F6
		        noteL G6,55
		        waitL 5
		        noteL C6,24
		        noteL F6,6
		        note  G6
		        noteL Gs6,60
		        waitL 24
		  inst 6
		  vol 07h
		  setRelease 04h
		        waitL 6
		        noteL G5,24
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  F5
		        note  F5
		        note  Ds5
		        note  Ds5
		        note  Ds5
		        note  Ds5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  D5
		        note  D5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        noteL E5,18
		  inst 3
		  vol 0Ah
		  setRelease 01h
		        noteL C5,12
		        wait
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		        note  D5
		        wait
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,12
		        wait
		        note  Ds5
		        wait
		        noteL Ds5,6
		        wait
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,6
		        wait
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,12
		        wait
		        note  D5
		        wait
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,12
		        wait
		        note  C5
		        wait
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,12
		        wait
		        note  Ds5
		        wait
		        noteL Ds5,6
		        wait
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,12
		        wait
		        note  C5
		        wait
		        noteL C5,168
		  vol 0Ah
		        noteL C5,12
		        wait
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		        note  D5
		        wait
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,6
		        wait
		        noteL D5,4
		        note  D5
		        note  D5
		        noteL D5,12
		        wait
		  vol 0Bh
		        note  Ds5
		        wait
		        noteL Ds5,6
		        wait
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,6
		        wait
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,12
		        wait
		        note  F5
		        wait
		        noteL F5,6
		        wait
		        noteL F5,4
		        note  F5
		        note  F5
		        noteL F5,6
		        wait
		        noteL F5,4
		        note  F5
		        note  F5
		        noteL F5,12
		        wait
		        note  G5
		        wait
		        noteL G5,6
		        wait
		        noteL G5,4
		        note  G5
		        note  G5
		        noteL G5,6
		        wait
		        noteL G5,4
		        note  G5
		        note  G5
		        noteL G5,12
		        wait
		        note  A5
		        wait
		        noteL A5,6
		        wait
		        noteL A5,4
		        note  A5
		        note  A5
		        noteL A5,6
		        wait
		        noteL A5,4
		        note  A5
		        note  A5
		        noteL A5,12
		        wait
		  vol 0Ch
		        note  As5
		        wait
		        noteL As5,6
		        wait
		        noteL As5,4
		        note  As5
		        note  As5
		        noteL As5,6
		        wait
		        noteL As5,4
		        note  As5
		        note  As5
		        noteL As5,12
		        wait
		        note  C6
		        wait
		        noteL C6,6
		        wait
		        noteL C6,4
		        note  C6
		        note  C6
		        noteL C6,6
		        waitL 42
		  inst 15
		  vol 0Ah
		  setRelease 01h
		mainLoopEnd
Music_9_Channel_1:
		  inst 3
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL C5,12
		        wait
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		        note  Cs5
		        wait
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,12
		        wait
		countedLoopStart 2
		        noteL C5,12
		        wait
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		countedLoopEnd
		        noteL Cs5,12
		        wait
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,12
		        wait
		countedLoopStart 1
		        noteL Ds5,12
		        wait
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,12
		        wait
		countedLoopEnd
		countedLoopStart 1
		        noteL F5,12
		        wait
		        noteL F5,5
		        waitL 7
		        noteL F5,4
		        note  F5
		        note  F5
		        noteL F5,5
		        waitL 7
		        noteL F5,4
		        note  F5
		        note  F5
		        noteL F5,12
		        wait
		        note  Ds5
		        wait
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,12
		        wait
		countedLoopEnd
		        noteL As5,12
		        wait
		        noteL As5,5
		        waitL 7
		        noteL As5,4
		        note  As5
		        note  As5
		        noteL As5,5
		        waitL 7
		        noteL As5,4
		        note  As5
		        note  As5
		        noteL As5,12
		        wait
		countedLoopStart 1
		        noteL C6,12
		        wait
		        noteL C6,5
		        waitL 7
		        noteL C6,4
		        note  C6
		        note  C6
		        noteL C6,5
		        waitL 7
		        noteL C6,4
		        note  C6
		        note  C6
		        noteL C6,12
		        wait
		countedLoopEnd
		        noteL C6,12
		        wait
		        noteL C6,5
		        waitL 7
		        noteL C6,4
		        note  C6
		        note  C6
		        noteL D6,5
		        waitL 7
		        noteL D6,4
		        note  D6
		        note  D6
		        noteL D6,12
		        wait
		        note  C5
		        wait
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		        note  Cs5
		        wait
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,12
		        wait
		countedLoopStart 2
		        noteL C5,12
		        wait
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,5
		        waitL 7
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		countedLoopEnd
		        noteL Cs5,12
		        wait
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,5
		        waitL 7
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,12
		        wait
		countedLoopStart 1
		        noteL Ds5,12
		        wait
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,12
		        wait
		countedLoopEnd
		countedLoopStart 1
		        noteL F5,12
		        wait
		        noteL F5,5
		        waitL 7
		        noteL F5,4
		        note  F5
		        note  F5
		        noteL F5,5
		        waitL 7
		        noteL F5,4
		        note  F5
		        note  F5
		        noteL F5,12
		        wait
		        note  Ds5
		        wait
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,5
		        waitL 7
		        noteL Ds5,4
		        note  Ds5
		        note  Ds5
		        noteL Ds5,12
		        wait
		countedLoopEnd
		        noteL As5,12
		        wait
		        noteL As5,5
		        waitL 7
		        noteL As5,4
		        note  As5
		        note  As5
		        noteL As5,5
		        waitL 7
		        noteL As5,4
		        note  As5
		        note  As5
		        noteL As5,12
		        wait
		countedLoopStart 1
		        noteL C6,12
		        wait
		        noteL C6,5
		        waitL 7
		        noteL C6,4
		        note  C6
		        note  C6
		        noteL C6,5
		        waitL 7
		        noteL C6,4
		        note  C6
		        note  C6
		        noteL C6,12
		        wait
		countedLoopEnd
		        noteL D6,12
		        wait
		        noteL D6,5
		        waitL 7
		        noteL D6,4
		        note  D6
		        note  D6
		        noteL D6,5
		        waitL 43
		  inst 7
		  vol 0Ah
		  setRelease 08h
		        noteL G5,192
		        note  G5
		        noteL F5,48
		        note  Ds5
		        note  Ds5
		        note  D5
		        note  D5
		        note  C5
		        note  C5
		        note  B4
		        noteL E5,180
		  inst 7
		  vol 0Ch
		  setRelease 01h
		        noteL Ds6,6
		        note  F6
		        noteL G6,48
		        note  C6
		        noteL F6,4
		        waitL 14
		        noteL D6,6
		        noteL D6,55
		        waitL 5
		        noteL Ds6,6
		        note  F6
		        noteL G6,48
		        note  C6
		        noteL D7,4
		        waitL 14
		        noteL As6,6
		        noteL As6,55
		        waitL 5
		        noteL C7,6
		        note  D7
		        noteL Ds7,48
		        noteL D7,24
		        note  As6
		        noteL C7,48
		        noteL As6,24
		        note  G6
		        noteL F6,6
		        note  G6
		        noteL Gs6,168
		        noteL G6,6
		        note  F6
		        noteL G6,192
		        wait
		countedLoopStart 3
		        waitL 96
		countedLoopEnd
		mainLoopEnd
Music_9_Channel_2:
		  inst 5
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		countedLoopStart 5
		  vol 0Ch
		        noteL C4,12
		        wait
		        note  C4
		        wait
		        note  C4
		        wait
		        note  C4
		        wait
		countedLoopEnd
		countedLoopStart 1
		        noteL Gs3,12
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		countedLoopEnd
		countedLoopStart 2
		        noteL G3,12
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		countedLoopEnd
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        note  B3
		        wait
		        note  G3
		        wait
		countedLoopStart 5
		        noteL C4,12
		        wait
		        note  C4
		        wait
		        note  C4
		        wait
		        note  C4
		        wait
		countedLoopEnd
		countedLoopStart 1
		        noteL Gs3,12
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		countedLoopEnd
		countedLoopStart 2
		        noteL G3,12
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		        note  Gs3
		        wait
		countedLoopEnd
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  B3
		        wait
		        note  G3
		        wait
		        note  G3
		        waitL 36
		  inst 7
		  vol 09h
		  setRelease 01h
		countedLoopStart 1
		        noteL Ds5,96
		        note  D5
		countedLoopEnd
		        noteL As4,96
		        note  Gs4
		        note  G4
		        note  F4
		        noteL G4,192
		  inst 5
		  vol 0Ch
		  setRelease 01h
		countedLoopStart 5
		        noteL F4,12
		        wait
		        note  F4
		        wait
		        note  F4
		        wait
		        note  F4
		        wait
		countedLoopEnd
		        noteL Cs4,12
		        wait
		        noteL Cs4,168
		countedLoopStart 6
		        noteL C4,12
		        wait
		        note  C4
		        wait
		        note  C4
		        wait
		        note  C4
		        wait
		countedLoopEnd
		        noteL C4,12
		        wait
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL C4,12
		        waitL 36
		mainLoopEnd
Music_9_Channel_3:
		  inst 4
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL C4,48
		  inst 14
		  vol 09h
		  setRelease 01h
		        noteL Ds5,35
		        waitL 7
		        noteL Ds5,6
		        noteL F5,4
		        waitL 14
		        noteL Cs5,6
		        noteL Cs5,55
		        waitL 5
		        noteL Cs5,6
		        note  Cs5
		        noteL Ds5,168
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        noteL C4,24
		        wait
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL Ds5,35
		        waitL 7
		        noteL Ds5,6
		        noteL F5,4
		        waitL 14
		        noteL Cs5,6
		        noteL Cs5,55
		        waitL 5
		        noteL Cs5,6
		        note  Cs5
		        noteL Ds5,180
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        noteL G3,24
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 8
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        noteL G3,24
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 8
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        noteL G3,24
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL F5,4
		        waitL 20
		        noteL F5,4
		        waitL 20
		        noteL F5,4
		        waitL 20
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        noteL C4,24
		        wait
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL Ds5,35
		        waitL 7
		        noteL Ds5,6
		        noteL F5,4
		        waitL 14
		        noteL Cs5,6
		        noteL Cs5,55
		        waitL 5
		        noteL Cs5,6
		        note  Cs5
		        noteL Ds5,168
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        noteL C4,48
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL Ds5,35
		        waitL 7
		        noteL Ds5,6
		        noteL F5,4
		        waitL 14
		        noteL Cs5,6
		        noteL Cs5,55
		        waitL 5
		        noteL Cs5,6
		        note  Cs5
		        noteL Ds5,180
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        noteL G3,24
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 8
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        noteL G3,24
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 8
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        noteL G3,24
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL Ds5,4
		        waitL 20
		        noteL F5,4
		        waitL 20
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL G3,4
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        noteL G3,48
		  inst 6
		  vol 07h
		  setRelease 04h
		        waitL 3
		countedLoopStart 1
		        noteL Ds5,24
		        note  Ds5
		        note  Ds5
		        note  Ds5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		countedLoopEnd
		        noteL As4,24
		        note  As4
		        note  As4
		        note  As4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  Gs4
		        note  Gs4
		        note  B4
		        note  B4
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        noteL C5,9
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL F3,4
		        note  F3
		        note  F3
		        noteL F3,24
		  inst 3
		  vol 0Ch
		  setRelease 01h
		        noteL F4,6
		        wait
		        noteL F4,4
		        note  F4
		        note  F4
		        noteL F4,6
		        wait
		        noteL F4,4
		        note  F4
		        note  F4
		        noteL F4,12
		        wait
		        note  G4
		        wait
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,12
		        wait
		        note  Gs4
		        wait
		        noteL Gs4,6
		        wait
		        noteL Gs4,4
		        note  Gs4
		        note  Gs4
		        noteL Gs4,6
		        wait
		        noteL Gs4,4
		        note  Gs4
		        note  Gs4
		        noteL Gs4,12
		        wait
		        note  G4
		        wait
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,12
		        wait
		        note  F4
		        wait
		        noteL F4,6
		        wait
		        noteL F4,4
		        note  F4
		        note  F4
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,12
		        wait
		        note  Gs4
		        wait
		        noteL Gs4,6
		        wait
		        noteL Gs4,4
		        note  Gs4
		        note  Gs4
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,12
		        wait
		        note  Cs4
		        wait
		        noteL Cs4,156
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL C4,4
		        note  C4
		        note  C4
		        noteL C4,24
		  inst 3
		  vol 0Ah
		        noteL Ds4,6
		        wait
		        noteL Ds4,4
		        note  Ds4
		        note  Ds4
		        noteL Ds4,6
		        wait
		        noteL Ds4,4
		        note  Ds4
		        note  Ds4
		        noteL Ds4,12
		        wait
		        note  F4
		        wait
		        noteL F4,6
		        wait
		        noteL F4,4
		        note  F4
		        note  F4
		        noteL F4,6
		        wait
		        noteL F4,4
		        note  F4
		        note  F4
		        noteL F4,12
		        wait
		        note  G4
		        wait
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,6
		        wait
		        noteL G4,4
		        note  G4
		        note  G4
		        noteL G4,12
		        wait
		        note  A4
		        wait
		        noteL A4,6
		        wait
		        noteL A4,4
		        note  A4
		        note  A4
		        noteL A4,6
		        wait
		        noteL A4,4
		        note  A4
		        note  A4
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        noteL C4,24
		  inst 1
		  vol 0Bh
		  setRelease 01h
		        noteL As4,6
		        wait
		        noteL As4,4
		        note  As4
		        note  As4
		        noteL As4,6
		        wait
		        noteL As4,4
		        note  As4
		        note  As4
		        noteL As4,12
		        wait
		        note  C5
		        wait
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,6
		        wait
		        noteL C5,4
		        note  C5
		        note  C5
		        noteL C5,12
		        wait
		  vol 0Ch
		        note  Cs5
		        wait
		        noteL Cs5,6
		        wait
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,6
		        wait
		        noteL Cs5,4
		        note  Cs5
		        note  Cs5
		        noteL Cs5,12
		        wait
		  inst 4
		  vol 0Ch
		  setRelease 01h
		        noteL C4,4
		        waitL 20
		        noteL C4,4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        noteL C4,24
		        waitL 12
		        noteL G3,4
		        note  G3
		        note  G3
		mainLoopEnd
Music_9_Channel_4:
		  inst 14
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL G5,48
		        noteL C5,35
		        waitL 7
		        noteL C5,6
		        noteL Cs5,4
		        waitL 14
		        noteL Gs4,6
		        noteL Gs4,55
		        waitL 5
		        noteL Gs4,6
		        note  Gs4
		        noteL C5,48
		        note  B4
		        note  As4
		        note  A4
		        note  G5
		        noteL C5,35
		        waitL 7
		        noteL C5,6
		        noteL Cs5,4
		        waitL 14
		        noteL Gs4,6
		        noteL Gs4,55
		        waitL 5
		        noteL Gs4,6
		        note  Gs4
		        noteL C5,192
		  inst 15
		  vol 07h
		  setRelease 01h
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		countedLoopStart 1
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		countedLoopEnd
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		  inst 14
		  vol 0Ah
		  setRelease 01h
		        noteL G5,48
		        noteL C5,35
		        waitL 7
		        noteL C5,6
		        noteL Cs5,4
		        waitL 14
		        noteL Gs4,6
		        noteL Gs4,55
		        waitL 5
		        noteL Gs4,6
		        note  Gs4
		        noteL C5,48
		        note  B4
		        note  As4
		        note  A4
		        note  G5
		        noteL C5,35
		        waitL 7
		        noteL C5,6
		        noteL Cs5,4
		        waitL 14
		        noteL Gs4,6
		        noteL Gs4,55
		        waitL 5
		        noteL Gs4,6
		        note  Gs4
		        noteL C5,192
		  inst 15
		  vol 07h
		  setRelease 01h
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL Gs4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		        noteL As4,4
		        waitL 20
		countedLoopStart 1
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		countedLoopEnd
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 20
		        noteL D5,4
		        waitL 44
		  inst 6
		  vol 07h
		  setRelease 06h
		countedLoopStart 3
		        noteL Gs4,24
		        note  Gs4
		        note  Gs4
		        note  Gs4
		countedLoopEnd
		        noteL G4,24
		        note  G4
		        note  G4
		        note  G4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  Ds4
		        note  Ds4
		        note  Ds4
		        note  Ds4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        noteL G4,12
		  inst 7
		  vol 0Ch
		  setRelease 01h
		        noteL Ds5,6
		        note  F5
		        noteL G5,48
		        note  C5
		        noteL F5,4
		        waitL 14
		        noteL D5,6
		        noteL D5,60
		        noteL Ds5,6
		        note  F5
		        noteL G5,48
		        note  C5
		        noteL D6,4
		        waitL 14
		        noteL As5,6
		        noteL As5,60
		        noteL Ds6,6
		        note  F6
		        noteL G6,48
		        noteL F6,24
		        note  D6
		        noteL Ds6,48
		        noteL D6,24
		        note  As5
		        noteL Gs5,6
		        note  As5
		        noteL C6,168
		        noteL As5,6
		        note  Gs5
		countedLoopStart 6
		        noteL C7,12
		        wait
		        noteL C7,6
		        wait
		        noteL C7,4
		        note  C7
		        note  C7
		        noteL C7,6
		        wait
		        noteL C7,4
		        note  C7
		        note  C7
		        noteL C7,12
		        wait
		countedLoopEnd
		        noteL C7,12
		        wait
		        noteL C7,6
		        wait
		        noteL C7,4
		        note  C7
		        note  C7
		        noteL C7,6
		        waitL 42
		  inst 14
		  vol 0Ah
		  setRelease 01h
		mainLoopEnd
Music_9_Channel_5:
		mainLoopStart
		countedLoopStart 14
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,3
		        sample  1
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,24
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,24
		        sampleL 1,3
		        sample  1
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 9
		        waitL 96
		countedLoopEnd
		countedLoopStart 2
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 24
		        sampleL 3,3
		        sample  3
		countedLoopEnd
		countedLoopStart 2
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,12
		        wait
		        sample  1
		        sampleL 1,4
		        sample  2
		        sample  1
		        sampleL 1,12
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,12
		        wait
		        sampleL 1,4
		        sample  2
		        sample  1
		        sample  1
		        sample  2
		        sample  1
		        sampleL 1,12
		        waitL 36
		mainLoopEnd
Music_9_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 059h
		mainLoopStart
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    51
		  psgInst 0Bh
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    17
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    48
		  psgInst 0Bh
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    20
		  setRelease 01h
		  psgInst 0Bh
		        psgNoteL D3,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL As2,6
		        psgNoteL As2,48
		        psgNoteL D3,24
		        psgNoteL C3,6
		        psgNote  As2
		        psgNoteL Gs2,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL D3,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL As2,6
		        psgNoteL As2,48
		        psgNoteL D3,24
		        psgNoteL C3,6
		        psgNote  D3
		        psgNoteL Ds3,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL D4,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL As3,6
		        psgNoteL As3,48
		        psgNoteL D4,24
		        psgNoteL C4,6
		        psgNote  D4
		        psgNoteL Ds4,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  setRelease 01h
		  psgInst 0Bh
		        psgNoteL C4,6
		        psgNote  D4
		        psgNoteL Ds4,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL D4,6
		        psgNote  Ds4
		        psgNoteL F4,36
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNote  G5
		        psgNoteL Gs5,6
		  psgInst 00h
		        waitL    18
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    48
		  psgInst 0Ah
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    20
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    50
		  psgInst 0Ah
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL D3,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL As2,6
		        psgNoteL As2,48
		        psgNoteL D3,24
		        psgNoteL C3,6
		        psgNote  As2
		        psgNoteL Gs2,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL D3,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL As2,6
		        psgNoteL As2,48
		        psgNoteL D3,24
		        psgNoteL C3,6
		        psgNote  D3
		        psgNoteL Ds3,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 00h
		        psgNoteL D4,6
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL As3,6
		        psgNoteL As3,48
		        psgNoteL D4,24
		        psgNoteL C4,6
		        psgNote  D4
		        psgNoteL Ds4,38
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL C4,6
		        psgNote  D4
		  setRelease 00h
		        psgNoteL Ds4,38
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL D4,6
		        psgNote  Ds4
		        psgNoteL F4,14
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    30
		  setRelease 01h
		  psgInst 07Bh
		        psgNoteL Ds4,6
		        psgNote  F4
		        psgNoteL G4,48
		        psgNoteL C4,36
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  C4
		        psgNote  F4
		  psgInst 00h
		        waitL    12
		  psgInst 07Bh
		        psgNoteL D4,6
		        psgNoteL D4,54
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  Ds4
		        psgNote  F4
		        psgNoteL G4,48
		        psgNoteL C4,36
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  C4
		        psgNote  D5
		  psgInst 00h
		        waitL    12
		  psgInst 07Bh
		        psgNoteL As4,6
		        psgNoteL As4,54
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  G4
		        psgNote  Gs4
		        psgNoteL As4,48
		        psgNoteL Ds4,36
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  Ds4
		        psgNoteL As4,12
		        psgNoteL Gs4,3
		        psgNote  As4
		        psgNote  Gs4
		        psgNote  G4
		        psgNoteL Gs4,54
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  G4
		        psgNote  F4
		        psgNoteL G4,96
		        psgNoteL F4,78
		  psgInst 00h
		        waitL    6
		  psgInst 07Bh
		        psgNote  E4
		        psgNote  D4
		        psgNote  E4
		        psgNote  F4
		        psgNoteL G4,178
		  psgInst 00h
		        waitL    96
		        waitL    50
		  psgInst 0Bh
		  setRelease 00h
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    18
		        waitL    96
		        waitL    50
		  setRelease 00h
		  psgInst 0Bh
		        psgNoteL C4,2
		        psgNote  D4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  Ds5
		        psgNote  F5
		        psgNoteL G5,6
		  psgInst 00h
		        waitL    20
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		  setRelease 00h
		  psgInst 0Bh
		        psgNoteL C4,4
		        psgNote  Cs4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNote  As4
		        psgNote  Gs4
		        psgNote  G4
		        psgNote  F4
		        psgNote  Ds4
		        psgNote  Cs4
		        psgNote  C4
		        psgNote  Cs4
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  As4
		        psgNoteL C5,12
		  psgInst 00h
		countedLoopStart 2
		        waitL    96
		countedLoopEnd
		        waitL    68
		  psgInst 0Bh
		  setRelease 00h
		        psgNoteL G4,3
		        psgNoteL Gs4,2
		        psgNoteL As4,3
		        psgNote  C5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNoteL F5,2
		        psgNoteL G5,3
		        psgNote  Gs5
		        psgNote  As5
		countedLoopStart 2
		  setRelease 01h
		        psgNoteL C6,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,4
		        psgNote  C6
		        psgNote  C6
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,4
		        psgNote  C6
		        psgNote  C6
		        psgNoteL C6,6
		  psgInst 00h
		        waitL    18
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL C6,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,4
		        psgNote  C6
		        psgNote  C6
		        psgNoteL C6,6
		  psgInst 00h
		        waitL    42
		mainLoopEnd
Music_9_Channel_7:
		  setRelease 01h
		  vibrato 059h
		mainLoopStart
		  psgInst 0Bh
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		countedLoopStart 2
		  psgInst 0Bh
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		countedLoopEnd
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL D3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D3,4
		        psgNote  D3
		        psgNote  D3
		        psgNoteL D3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D3,4
		        psgNote  D3
		        psgNote  D3
		        psgNoteL D3,12
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL Ds3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,4
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNoteL Ds3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,4
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNoteL Ds3,12
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL F3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,4
		        psgNote  F3
		        psgNote  F3
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,4
		        psgNote  F3
		        psgNote  F3
		        psgNoteL F3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		countedLoopStart 2
		  psgInst 0Bh
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		countedLoopEnd
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL D3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D3,4
		        psgNote  D3
		        psgNote  D3
		        psgNoteL D3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D3,4
		        psgNote  D3
		        psgNote  D3
		        psgNoteL D3,12
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL Ds3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,4
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNoteL Ds3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,4
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNoteL Ds3,12
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL F3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,4
		        psgNote  F3
		        psgNote  F3
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    34
		  shifting 010h
		  setRelease 01h
		  psgInst 078h
		        psgNoteL Ds4,6
		        psgNote  F4
		        psgNoteL G4,48
		        psgNoteL C4,36
		        waitL    6
		        psgNote  C4
		        psgNote  F4
		        waitL    12
		        psgNoteL D4,6
		        psgNoteL D4,54
		        waitL    6
		        psgNote  Ds4
		        psgNote  F4
		        psgNoteL G4,48
		        psgNoteL C4,36
		        waitL    6
		        psgNote  C4
		        psgNote  D5
		        waitL    12
		        psgNoteL As4,6
		        psgNoteL As4,54
		        waitL    6
		        psgNote  G4
		        psgNote  Gs4
		        psgNoteL As4,48
		        psgNoteL Ds4,36
		        waitL    6
		        psgNote  Ds4
		        psgNoteL As4,12
		        psgNoteL Gs4,3
		        psgNote  As4
		        psgNote  Gs4
		        psgNote  G4
		        psgNoteL Gs4,54
		        waitL    6
		        psgNote  G4
		        psgNote  F4
		        psgNoteL G4,96
		        psgNoteL F4,78
		        waitL    6
		        psgNote  E4
		        psgNote  D4
		        psgNote  E4
		        psgNote  F4
		        psgNoteL G4,176
		  shifting 00h
		  psgInst 0Bh
		  setRelease 01h
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,4
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F2,168
		  psgInst 0Bh
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G2,4
		        psgNote  G2
		        psgNote  G2
		        psgNoteL G2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL A2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL A2,4
		        psgNote  A2
		        psgNote  A2
		        psgNoteL A2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL A2,4
		        psgNote  A2
		        psgNote  A2
		        psgNoteL A2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL As2,4
		        psgNote  As2
		        psgNote  As2
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C3,4
		        psgNote  C3
		        psgNote  C3
		        psgNoteL C3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,4
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNoteL Ds3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Ds3,4
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNoteL Ds3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,4
		        psgNote  F3
		        psgNote  F3
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,4
		        psgNote  F3
		        psgNote  F3
		        psgNoteL F3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Fs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Fs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Fs3,4
		        psgNote  Fs3
		        psgNote  Fs3
		        psgNoteL Fs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Fs3,4
		        psgNote  Fs3
		        psgNote  Fs3
		        psgNoteL Fs3,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL G3,4
		        psgNote  G3
		        psgNote  G3
		        psgNoteL G3,6
		  psgInst 00h
		        waitL    42
		mainLoopEnd
Music_9_Channel_9:
		channel_end
