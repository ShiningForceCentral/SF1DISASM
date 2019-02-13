
; ASM FILE music16.asm :
; 0xAFC6..0xC2F1 : Music 16
Music_16:       db 0
		db 0
		db 0
		db 0C6h
		dw Music_16_Channel_0
		dw Music_16_Channel_1
		dw Music_16_Channel_2
		dw Music_16_Channel_3
		dw Music_16_Channel_4
		dw Music_16_Channel_5
		dw Music_16_Channel_6
		dw Music_16_Channel_7
		dw Music_16_Channel_9
		dw Music_16_Channel_9
Music_16_Channel_0:
		  inst 4
		  vol 05h
		  setRelease 01h
		  vibrato 02Ch
		        waitL 12
		  stereo 040h
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		  vol 06h
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 07h
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 08h
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 09h
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 0Ah
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 0Bh
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 0Ch
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		  vol 0Dh
		        noteL A3,24
		        waitL 72
		        waitL 48
		        noteL A3,6
		        wait
		        note  A3
		        waitL 18
		        noteL A3,4
		        note  A3
		        note  A3
		mainLoopStart
		        noteL A3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 84
		        noteL A3,4
		        note  A3
		        note  A3
		        noteL A3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 84
		        noteL F3,4
		        note  F3
		        note  F3
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        wait
		        wait
		        wait
		        wait
		  vol 04h
		        noteL E3,3
		        note  E3
		  vol 05h
		        note  E3
		        note  E3
		        note  E3
		  vol 06h
		        note  E3
		        note  E3
		        note  E3
		  vol 07h
		        note  E3
		        note  E3
		        note  E3
		  vol 08h
		        note  E3
		        note  E3
		        note  E3
		  vol 09h
		        note  E3
		        note  E3
		        note  E3
		        note  E3
		  vol 0Ah
		        note  E3
		        note  E3
		        note  E3
		  vol 0Bh
		        note  E3
		        note  E3
		        note  E3
		  vol 0Ch
		        note  E3
		        note  E3
		        note  E3
		  vol 0Dh
		        note  E3
		        noteL A3,4
		        note  A3
		        note  A3
		        noteL A3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 84
		        noteL A3,4
		        note  A3
		        note  A3
		        noteL A3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 48
		        noteL E3,6
		        note  E3
		        noteL E3,12
		        noteL E3,6
		        note  E3
		        note  E3
		        note  E3
		countedLoopStart 2
		        waitL 48
		        noteL A3,6
		        note  A3
		        noteL A3,12
		        waitL 48
		        noteL A3,6
		        note  A3
		        noteL A3,12
		        waitL 48
		countedLoopEnd
		        waitL 48
		        noteL E3,6
		        note  E3
		        noteL E3,12
		        waitL 48
		        noteL E3,6
		        note  E3
		        noteL E3,12
		        waitL 48
		countedLoopStart 2
		        waitL 48
		        noteL A3,6
		        note  A3
		        noteL A3,12
		        waitL 48
		        noteL A3,6
		        note  A3
		        noteL A3,12
		        waitL 48
		countedLoopEnd
		        waitL 24
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        note  E3
		        note  E3
		mainLoopEnd
Music_16_Channel_1:
		  inst 25
		  vol 0Bh
		  setRelease 02h
		  vibrato 02Ch
		  stereo 040h
		        waitL 12
		        noteL E4,6
		        note  E4
		        note  E4
		        note  E4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  E5
		        waitL 90
		        waitL 48
		        noteL B5,4
		        waitL 8
		        noteL Gs5,4
		        waitL 32
		mainLoopStart
		countedLoopStart 2
		        noteL E4,6
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		countedLoopEnd
		        noteL E4,6
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  D5
		        wait
		        note  Gs5
		        waitL 30
		        noteL A4,6
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  B5
		        wait
		        note  E6
		        wait
		        noteL Gs4,2
		        noteL A4,3
		        noteL B4,2
		        noteL C5,3
		        noteL D5,2
		        noteL E5,3
		        noteL Fs5,2
		        noteL Gs5,3
		        noteL A5,2
		        note  B5
		        noteL C6,18
		        noteL B5,6
		        note  C6
		        wait
		        noteL E6,24
		        note  D6
		        noteL C6,12
		        noteL D6,18
		        noteL Cs6,6
		        note  D6
		        wait
		        noteL F6,24
		        note  E6
		        noteL D6,12
		        noteL E6,18
		        noteL D6,6
		        note  E6
		        wait
		        noteL G6,24
		        note  F6
		        noteL G6,12
		        wait
		        note  E7
		        note  D7
		        note  C7
		        note  B6
		        note  A6
		        note  Gs6
		        note  B6
		        noteL G6,18
		        noteL Fs6,6
		        note  G6
		        wait
		        noteL B6,24
		        note  A6
		        noteL G6,12
		        noteL A6,18
		        noteL A6,6
		        note  A6
		        wait
		        noteL Gs6,24
		        note  Gs6
		        noteL Gs6,12
		        noteL A6,18
		        noteL Gs6,6
		        note  G6
		        wait
		        noteL Fs6,24
		        note  F6
		        noteL F6,12
		        noteL E6,84
		        waitL 12
		countedLoopStart 2
		        noteL E4,6
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		        note  F4
		countedLoopEnd
		        noteL E4,6
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  E4
		        note  D5
		        wait
		        note  Gs5
		        wait
		        noteL Gs4,2
		        note  A4
		        noteL B4,3
		        noteL C5,2
		        noteL D5,3
		        noteL E5,2
		        noteL Fs5,3
		        noteL Gs5,2
		        noteL A5,3
		        noteL B5,2
		        noteL E6,6
		        note  E6
		        note  E6
		        note  E6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  C7
		        note  C7
		        note  C7
		        note  C7
		        note  D7
		        note  D7
		        note  D7
		        note  D7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  D7
		        note  D7
		        note  D7
		        note  D7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  D7
		        note  D7
		        note  D7
		        note  D7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  C7
		        note  C7
		        note  C7
		        note  C7
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        note  F6
		        wait
		        note  F6
		        wait
		        noteL G4,6
		        note  G4
		        note  G4
		        wait
		        noteL F6,12
		        wait
		        note  F6
		        wait
		        noteL G4,6
		        note  G4
		        note  G4
		        wait
		        noteL F6,12
		        wait
		        note  F6
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        noteL F4,6
		        note  F4
		        note  F4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL F4,6
		        note  F4
		        note  F4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        note  Gs6
		        wait
		        note  Gs6
		        wait
		        noteL B4,6
		        note  B4
		        note  B4
		        wait
		        noteL Gs6,12
		        wait
		        note  Gs6
		        wait
		        noteL B4,6
		        note  B4
		        note  B4
		        wait
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        note  F6
		        wait
		        note  F6
		        wait
		        noteL G4,6
		        note  G4
		        note  G4
		        wait
		        noteL F6,12
		        wait
		        note  F6
		        wait
		        noteL G4,6
		        note  G4
		        note  G4
		        wait
		        noteL F6,12
		        wait
		        note  F6
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        noteL F4,6
		        note  F4
		        note  F4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL F4,6
		        note  F4
		        note  F4
		        wait
		        noteL E6,12
		        wait
		        note  E6
		        wait
		        noteL A6,6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  E6
		        note  E6
		        note  E6
		        note  E6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		mainLoopEnd
Music_16_Channel_2:
		  inst 27
		  vol 0Ch
		  stereo 080h
		  setRelease 01h
		  vibrato 02Ch
		        waitL 12
		        noteL A3,192
		        noteL A3,24
		        waitL 72
		        waitL 96
		mainLoopStart
		countedLoopStart 2
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		countedLoopEnd
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        noteL E3,6
		        wait
		        note  E4
		        waitL 30
		countedLoopStart 2
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		countedLoopEnd
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        noteL E3,6
		        wait
		        note  E4
		        waitL 30
		  inst 7
		  vol 0Dh
		        noteL F3,192
		        noteL E3,96
		        note  D3
		        note  C3
		        noteL B3,48
		        note  Gs3
		        noteL A3,24
		        note  G3
		        note  Fs3
		        note  F3
		        noteL E3,96
		  inst 27
		  vol 0Bh
		countedLoopStart 2
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		countedLoopEnd
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  E3
		        note  E4
		        waitL 24
		countedLoopStart 2
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		countedLoopEnd
		        noteL A3,12
		        wait
		        note  A3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        noteL A4,6
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL A3,6
		        note  A3
		        note  A3
		        wait
		        note  A4
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL A3,6
		        note  A3
		        note  A3
		        wait
		        note  A4
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G3,6
		        waitL 18
		        noteL G3,6
		        note  G3
		        note  G3
		        wait
		        note  G4
		        waitL 18
		        noteL G3,6
		        waitL 18
		        noteL G3,6
		        note  G3
		        note  G3
		        wait
		        note  G4
		        waitL 18
		        noteL G3,6
		        waitL 18
		        noteL F4,6
		        waitL 18
		        noteL F3,6
		        waitL 18
		        noteL F3,6
		        note  F3
		        note  F3
		        wait
		        note  F4
		        waitL 18
		        noteL F3,6
		        waitL 18
		        noteL F3,6
		        note  F3
		        note  F3
		        wait
		        note  F4
		        waitL 18
		        noteL F3,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E3,6
		        waitL 18
		        noteL E3,6
		        note  E3
		        note  E3
		        wait
		        note  E4
		        waitL 18
		        noteL E3,6
		        waitL 18
		        noteL E3,6
		        note  E3
		        note  E3
		        wait
		        note  E3
		        waitL 18
		        noteL Gs3,6
		        waitL 18
		  inst 27
		        noteL A4,6
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL A3,6
		        note  A3
		        note  A3
		        wait
		        note  A4
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL A3,6
		        note  A3
		        note  A3
		        wait
		        note  A4
		        waitL 18
		        noteL A3,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G3,6
		        waitL 18
		        noteL G3,6
		        note  G3
		        note  G3
		        wait
		        note  G4
		        waitL 18
		        noteL G3,6
		        waitL 18
		        noteL G3,6
		        note  G3
		        note  G3
		        wait
		        note  G4
		        waitL 18
		        noteL G3,6
		        waitL 18
		        noteL F4,6
		        waitL 18
		        noteL F3,6
		        waitL 18
		        noteL F3,6
		        note  F3
		        note  F3
		        wait
		        note  F4
		        waitL 18
		        noteL F3,6
		        waitL 18
		        noteL F3,6
		        note  F3
		        note  F3
		        wait
		        note  F4
		        waitL 18
		        noteL F3,6
		        waitL 18
		        waitL 24
		        note  E3
		        wait
		        note  E3
		        wait
		        noteL E3,12
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		mainLoopEnd
Music_16_Channel_3:
		  inst 25
		  vol 0Dh
		  setRelease 02h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 12
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        noteL A2,144
		        noteL A3,4
		        waitL 8
		        noteL A3,4
		        waitL 32
		mainLoopStart
		countedLoopStart 2
		  inst 25
		  vol 0Dh
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		countedLoopEnd
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  Gs4
		        wait
		        note  E4
		        waitL 30
		countedLoopStart 2
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		countedLoopEnd
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  Gs5
		        wait
		        note  E5
		        waitL 30
		  vol 0Ah
		        noteL C4,96
		        note  D4
		        note  G4
		        note  F4
		        note  G4
		        noteL A4,48
		        note  B4
		        note  E4
		        note  A4
		        noteL Gs4,96
		  vol 0Dh
		countedLoopStart 2
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		countedLoopEnd
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  Gs4
		        wait
		        note  E4
		        waitL 30
		countedLoopStart 2
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		countedLoopEnd
		        noteL A3,6
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  Gs4
		        wait
		        note  E4
		        waitL 30
		countedLoopStart 7
		        waitL 96
		countedLoopEnd
		  inst 38
		  vol 0Ch
		  setRelease 00h
		        noteL E4,120
		        noteL A4,24
		        note  B4
		        note  C5
		        noteL E5,120
		        noteL A5,24
		        note  C5
		        noteL E5,120
		        noteL A4,48
		        noteL B4,24
		        note  C5
		        noteL F5,48
		        note  E5
		        noteL F5,24
		        note  E5
		        note  B4
		        note  Gs4
		mainLoopEnd
Music_16_Channel_4:
		  inst 25
		  vol 0Bh
		  setRelease 02h
		  vibrato 02Ch
		  stereo 080h
		        waitL 12
		        noteL A4,6
		        note  A4
		        note  A4
		        note  A4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  C6
		        waitL 90
		        waitL 48
		        noteL Gs6,6
		        wait
		        note  E6
		        waitL 30
		mainLoopStart
		        noteL A4,6
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  B5
		        wait
		        note  E6
		        waitL 30
		        noteL E5,6
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  F5
		        note  F5
		        note  F5
		        note  F5
		        note  F5
		        note  F5
		        note  F5
		        note  F5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  B6
		        wait
		        note  E7
		        wait
		        noteL D5,2
		        noteL E5,3
		        noteL Fs5,2
		        noteL Gs5,3
		        noteL A5,2
		        note  B5
		        note  C6
		        note  D6
		        note  E6
		        note  Fs6
		        note  Gs6
		        noteL A6,18
		        noteL Gs6,6
		        note  A6
		        wait
		        noteL C7,24
		        note  B6
		        noteL A6,12
		        noteL B6,18
		        noteL As6,6
		        note  B6
		        wait
		        noteL D7,24
		        note  C7
		        noteL B6,12
		        noteL C7,18
		        noteL B6,6
		        note  C7
		        wait
		        noteL E7,24
		        note  D7
		        noteL E7,12
		        noteL F7,96
		        noteL E7,18
		        noteL Ds7,6
		        note  E7
		        wait
		        noteL G7,24
		        note  F7
		        noteL E7,12
		        noteL D7,18
		        noteL Cs7,6
		        note  D7
		        wait
		        noteL F7,24
		        note  E7
		        noteL D7,12
		        noteL C7,18
		        noteL B6,6
		        note  C7
		        wait
		        noteL E7,24
		        note  D7
		        noteL C7,12
		        noteL B6,84
		        waitL 12
		        noteL A4,6
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  B4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  B5
		        wait
		        note  E6
		        wait
		        noteL D5,2
		        noteL E5,3
		        noteL Fs5,2
		        noteL Gs5,3
		        noteL A5,2
		        note  B5
		        note  C6
		        note  D6
		        note  E6
		        note  Fs6
		        note  Gs6
		        noteL A6,6
		        note  A6
		        note  A6
		        note  A6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  C7
		        note  C7
		        note  C7
		        note  C7
		        note  D7
		        note  D7
		        note  D7
		        note  D7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  Gs7
		        note  Gs7
		        note  Gs7
		        note  Gs7
		        note  A7
		        note  A7
		        note  A7
		        note  A7
		        note  B7
		        note  B7
		        note  B7
		        note  B7
		        note  C8
		        note  C8
		        note  C8
		        note  C8
		        note  B7
		        note  B7
		        note  B7
		        note  B7
		        note  C8
		        note  C8
		        note  C8
		        note  C8
		        note  B7
		        note  B7
		        note  B7
		        note  B7
		        note  C8
		        note  C8
		        note  C8
		        note  C8
		        note  A7
		        note  A7
		        note  A7
		        note  A7
		        note  Gs7
		        note  Gs7
		        note  Gs7
		        note  Gs7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        noteL C7,12
		        wait
		        note  B6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL C7,12
		        wait
		        note  B6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL C7,12
		        wait
		        note  D7
		        wait
		        note  E7
		        wait
		        note  D7
		        wait
		        noteL B4,6
		        note  B4
		        note  B4
		        wait
		        noteL E7,12
		        wait
		        note  D7
		        wait
		        noteL B4,6
		        note  B4
		        note  B4
		        wait
		        noteL E7,12
		        wait
		        note  F7
		        wait
		        note  D7
		        wait
		        note  C7
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL D7,12
		        wait
		        note  C7
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL D7,12
		        wait
		        note  E7
		        wait
		        note  F7
		        wait
		        note  E7
		        wait
		        noteL D5,6
		        note  D5
		        note  D5
		        wait
		        noteL F7,12
		        wait
		        note  E7
		        wait
		        noteL D5,6
		        note  D5
		        note  D5
		        wait
		        noteL F7,12
		        note  E7
		        note  D7
		        note  B6
		        note  C7
		        wait
		        note  B6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL C7,12
		        wait
		        note  B6
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL C7,12
		        wait
		        note  D7
		        wait
		        note  E7
		        wait
		        note  D7
		        wait
		        noteL B4,6
		        note  B4
		        note  B4
		        wait
		        noteL E7,12
		        wait
		        note  D7
		        wait
		        noteL B4,6
		        note  B4
		        note  B4
		        wait
		        noteL E7,12
		        wait
		        note  F7
		        wait
		        note  D7
		        wait
		        note  C7
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL D7,12
		        wait
		        note  C7
		        wait
		        noteL A4,6
		        note  A4
		        note  A4
		        wait
		        noteL D7,12
		        wait
		        note  E7
		        wait
		        noteL F7,6
		        note  F7
		        note  F7
		        note  F7
		        note  F7
		        note  F7
		        note  F7
		        note  F7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  F7
		        note  F7
		        note  F7
		        note  F7
		        note  E7
		        note  E7
		        note  E7
		        note  E7
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		        note  Gs6
		mainLoopEnd
Music_16_Channel_5:
		        waitL 12
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        waitL 93
		        waitL 48
		        sampleL 1,12
		        sample  1
		        wait
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		mainLoopStart
		countedLoopStart 2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		countedLoopEnd
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sample  1
		        waitL 24
		countedLoopStart 2
		        sampleL 1,12
		        sampleL 1,3
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  1
		        sample  1
		        sample  1
		countedLoopEnd
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sample  1
		        waitL 24
		        waitL 96
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        sampleL 3,3
		        sample  2
		        sample  3
		        sample  2
		        sample  3
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		countedLoopStart 6
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		countedLoopEnd
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,12
		        sampleL 3,3
		        sample  3
		        sample  2
		        sample  2
		        sampleL 1,6
		        sample  1
		        sample  1
		        wait
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sample  1
		        wait
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sample  1
		        wait
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,24
		        sample  1
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sampleL 3,9
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,6
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		        waitL 18
		mainLoopEnd
Music_16_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    12
		        waitL    96
		        waitL    24
		  psgInst 0Bh
		        psgNoteL Gs5,6
		        psgNote  Gs5
		        psgNote  Gs5
		        psgNote  Gs5
		        psgNote  A5
		        psgNote  A5
		        psgNote  A5
		        psgNote  A5
		        psgNote  B5
		        psgNote  B5
		        psgNote  B5
		        psgNote  B5
		        psgNote  C6
		  psgInst 00h
		        waitL    90
		        waitL    84
		  psgInst 0Bh
		        psgNoteL C6,6
		        psgNote  B5
		mainLoopStart
		  psgInst 0Bh
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D6
		        psgNote  Cs6
		        psgNote  D6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		        psgNote  Ds6
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E6,12
		        psgNoteL D6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F5,12
		        psgNoteL Gs5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D6,12
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,12
		        psgNoteL B5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C6,6
		        psgNote  B5
		        psgNote  C6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D6
		        psgNote  Cs6
		        psgNote  D6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		        psgNote  Ds6
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E6,12
		        psgNoteL D6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F5,12
		        psgNoteL Gs5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D6,12
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,12
		        psgNoteL B5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        waitL    30
		        waitL    96
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL    84
		  psgInst 0Bh
		        psgNoteL C6,6
		        psgNote  B5
		        psgNote  C6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D6
		        psgNote  Cs6
		        psgNote  D6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		        psgNote  Ds6
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E6,12
		        psgNoteL D6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F5,12
		        psgNoteL Gs5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D6,12
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,12
		        psgNoteL B5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C6,6
		        psgNote  B5
		        psgNote  C6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D6
		        psgNote  Cs6
		        psgNote  D6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		        psgNote  Ds6
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E6,12
		        psgNoteL D6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F5,12
		        psgNoteL Gs5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D6,12
		        psgNoteL C6,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E5,12
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C6,12
		        psgNoteL B5,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs5
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL Gs5,2
		        psgNoteL A5,1
		        psgNoteL B5,2
		        psgNoteL C6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL Fs5,2
		        psgNoteL Gs5,1
		        psgNoteL A5,2
		        psgNoteL B5,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL Gs5,2
		        psgNoteL A5,1
		        psgNoteL B5,2
		        psgNoteL C6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL A5,2
		        psgNoteL B5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    14
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL B5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNoteL E6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL A5,2
		        psgNoteL B5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL B5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNote  E6
		  psgInst 00h
		        waitL    16
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL C6,2
		        psgNoteL D6,1
		        psgNoteL E6,2
		        psgNoteL F6,4
		  psgInst 00h
		        waitL    14
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL A5,2
		        psgNoteL As5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL G5,2
		        psgNoteL A5,1
		        psgNoteL As5,2
		        psgNoteL C6,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL A5,2
		        psgNoteL As5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL As5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNoteL Ds6,4
		  psgInst 00h
		        waitL    14
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL Gs5,1
		        psgNoteL C6,2
		        psgNoteL D6,1
		        psgNoteL E6,2
		        psgNoteL F6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL Gs5,1
		        psgNoteL B5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNoteL E6,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL F6,6
		        psgNote  F6
		        psgNote  E6
		        psgNote  E6
		        psgNote  D6
		        psgNote  D6
		        psgNote  B5
		        psgNote  B5
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL Gs5,2
		        psgNoteL A5,1
		        psgNoteL B5,2
		        psgNoteL C6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL Fs5,2
		        psgNoteL Gs5,1
		        psgNoteL A5,2
		        psgNoteL B5,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL Gs5,2
		        psgNoteL A5,1
		        psgNoteL B5,2
		        psgNoteL C6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL E5,1
		        psgNoteL A5,2
		        psgNoteL B5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    14
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL B5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNoteL E6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL A5,2
		        psgNoteL B5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL B5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNoteL E6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL G5,1
		        psgNoteL C6,2
		        psgNoteL D6,1
		        psgNoteL E6,2
		        psgNoteL F6,4
		  psgInst 00h
		        waitL    14
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL A5,2
		        psgNoteL As5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL G5,2
		        psgNoteL A5,1
		        psgNoteL As5,2
		        psgNoteL C6,4
		  psgInst 00h
		        waitL    38
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL A5,2
		        psgNoteL As5,1
		        psgNoteL C6,2
		        psgNoteL D6,4
		  psgInst 00h
		        waitL    14
		  psgInst 0Bh
		        psgNoteL F5,1
		        psgNoteL As5,2
		        psgNoteL C6,1
		        psgNoteL D6,2
		        psgNoteL Ds6,4
		  psgInst 00h
		        waitL    14
		        waitL    24
		  psgInst 0Bh
		        psgNoteL E2,156
		  psgInst 00h
		  psgInst 0Bh
		        psgNoteL C6,6
		        psgNote  B5
		mainLoopEnd
Music_16_Channel_7:
		  psgInst 0Bh
		  setRelease 01h
		  vibrato 04Ch
		        psgNoteL C4,6
		        psgNote  B3
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		        psgNote  Ds4
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E4,12
		        psgNoteL D4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,12
		        psgNoteL Gs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D4,12
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C4,12
		        psgNote  B3
		        psgNoteL Gs3,6
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C4,6
		        psgNote  B3
		mainLoopStart
		  psgInst 0Bh
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		        psgNote  Ds4
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E4,12
		        psgNoteL D4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,12
		        psgNoteL Gs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D4,12
		  psgInst 0Bh
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C4,12
		        psgNoteL B3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C4,6
		        psgNote  B3
		  psgInst 0Bh
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		        psgNote  Ds4
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E4,12
		        psgNoteL D4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,12
		        psgNoteL Gs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D4,12
		  psgInst 0Bh
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C4,12
		        psgNoteL B3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        waitL    30
		  psgInst 09h
		        psgNoteL A2,96
		        psgNote  B2
		        psgNote  C3
		        psgNote  D3
		        psgNote  E3
		        psgNoteL F3,48
		        psgNote  F3
		        psgNote  C3
		        psgNote  D3
		        psgNoteL E3,72
		  psgInst 00h
		        waitL    12
		  psgInst 0Bh
		        psgNoteL C4,6
		        psgNote  B3
		  psgInst 0Bh
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		        psgNote  Ds4
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E4,12
		        psgNoteL D4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,12
		        psgNoteL Gs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D4,12
		  psgInst 0Bh
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C4,12
		        psgNoteL B3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL C4,6
		        psgNote  B3
		  psgInst 0Bh
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		        psgNote  Ds4
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E4,12
		        psgNoteL D4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL F3,12
		        psgNoteL Gs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D4,12
		  psgInst 0Bh
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E3,12
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C4,12
		        psgNoteL B3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs4
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E2,6
		        psgNote  E2
		        psgNote  E2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A4
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL B4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D2,6
		        psgNote  D2
		        psgNote  D2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL B4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C2,6
		        psgNote  C2
		        psgNote  C2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A4
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL C5,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL Gs2,6
		        psgNote  Gs2
		        psgNote  Gs2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL A4,12
		        psgNote  Gs4
		        psgNote  F4
		        psgNote  E4
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL E2,6
		        psgNote  E2
		        psgNote  E2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A4
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL B4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL D2,6
		        psgNote  D2
		        psgNote  D2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL B4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A4
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNoteL C2,6
		        psgNote  C2
		        psgNote  C2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL A4,12
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  A4
		  psgInst 00h
		        wait
		  psgInst 00h
		        waitL    24
		  psgInst 0Bh
		        psgNoteL B1,156
		        psgNoteL C4,6
		        psgNote  B3
		mainLoopEnd
Music_16_Channel_9:
		channel_end
