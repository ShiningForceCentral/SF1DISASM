
; ASM FILE music07.asm :
; 0x90E5..0x933F : Music 07
Music_7:        db 0
		db 0
		db 0
		db 0C0h
		dw Music_7_Channel_0
		dw Music_7_Channel_1
		dw Music_7_Channel_2
		dw Music_7_Channel_3
		dw Music_7_Channel_4
		dw Music_7_Channel_5
		dw Music_7_Channel_6
		dw Music_7_Channel_7
		dw Music_7_Channel_9
		dw Music_7_Channel_9
Music_7_Channel_0:
		  setRelease 01h
		  vibrato 02Ah
		        waitL 40
		        waitL 120
		mainLoopStart
		        waitL 40
		  inst 44
		  vol 09h
		        noteL B5,60
		        waitL 20
		countedLoopStart 1
		        waitL 120
		        waitL 40
		        noteL B5,60
		        waitL 20
		countedLoopEnd
		        waitL 120
		        waitL 40
		        note  B5
		  vol 0Ch
		        noteL B4,20
		        waitL 7
		        noteL B4,13
		        noteL B5,80
		        noteL A5,13
		        note  Gs5
		        noteL E5,14
		        noteL Fs5,80
		        noteL B4,20
		        waitL 7
		        noteL B4,13
		        noteL B5,80
		        noteL B5,13
		        note  A5
		        noteL B5,14
		        noteL Cs6,40
		        noteL A5,20
		        wait
		        note  B4
		        waitL 7
		        noteL B4,13
		        noteL B5,80
		        noteL B5,13
		        note  A5
		        noteL G5,14
		        noteL Cs6,13
		        note  B5
		        noteL A5,14
		        noteL D6,40
		        noteL B5,17
		        waitL 10
		        noteL D6,13
		        noteL Cs6,73
		        waitL 7
		        noteL Cs6,13
		        note  D6
		        noteL Ds6,14
		        noteL E6,40
		        note  C6
		  vol 09h
		        note  G5
		  vol 07h
		        noteL Fs5,120
		mainLoopEnd
Music_7_Channel_1:
		        waitL 40
		  inst 2
		  vol 08h
		  setRelease 03h
		  vibrato 02Ah
		mainLoopStart
		countedLoopStart 1
		        noteL C6,10
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		countedLoopEnd
		countedLoopStart 1
		        noteL Cs6,10
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		countedLoopEnd
		countedLoopStart 1
		        noteL D6,10
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		        note  D6
		countedLoopEnd
		        noteL Cs6,10
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		mainLoopEnd
Music_7_Channel_2:
		        waitL 40
		mainLoopStart
		        waitL 40
		  inst 6
		  vol 0Bh
		  setRelease 05h
		  vibrato 02Ah
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		mainLoopEnd
Music_7_Channel_3:
		        waitL 40
		  inst 2
		  vol 08h
		countedLoopStart 4294967107
		  vibrato 02Ah
		mainLoopStart
		countedLoopStart 1
		        noteL A6,5
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		        note  A6
		countedLoopEnd
		countedLoopStart 5
		        noteL B6,5
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		        note  B6
		countedLoopEnd
		mainLoopEnd
Music_7_Channel_4:
		        waitL 40
		  inst 2
		  vol 08h
		countedLoopStart 4294967107
		  vibrato 02Ah
		mainLoopStart
		countedLoopStart 3
		        noteL Fs6,7
		        note  Fs6
		        noteL Fs6,6
		        noteL Fs6,7
		        note  Fs6
		        noteL Fs6,6
		        noteL Fs6,7
		        note  Fs6
		        noteL Fs6,6
		        noteL Fs6,7
		        note  Fs6
		        noteL Fs6,6
		        noteL Fs6,7
		        note  Fs6
		        noteL Fs6,6
		        noteL Fs6,7
		        note  Fs6
		        noteL Fs6,6
		countedLoopEnd
		countedLoopStart 1
		        noteL G6,7
		        note  G6
		        noteL G6,6
		        noteL G6,7
		        note  G6
		        noteL G6,6
		        noteL G6,7
		        note  G6
		        noteL G6,6
		        noteL G6,7
		        note  G6
		        noteL G6,6
		        noteL G6,7
		        note  G6
		        noteL G6,6
		        noteL G6,7
		        note  G6
		        noteL G6,6
		countedLoopEnd
		        noteL F6,7
		        note  F6
		        noteL F6,6
		        noteL F6,7
		        note  F6
		        noteL F6,6
		        noteL F6,7
		        note  F6
		        noteL F6,6
		        noteL F6,7
		        note  F6
		        noteL F6,6
		        noteL F6,7
		        note  F6
		        noteL F6,6
		        noteL F6,7
		        note  F6
		        noteL F6,6
		        noteL E6,7
		        note  E6
		        noteL E6,6
		        noteL E6,7
		        note  E6
		        noteL E6,6
		        noteL E6,7
		        note  E6
		        noteL E6,6
		        noteL E6,7
		        note  E6
		        noteL E6,6
		        noteL E6,7
		        note  E6
		        noteL E6,6
		        noteL E6,7
		        note  E6
		        noteL E6,6
		mainLoopEnd
Music_7_Channel_5:
		channel_end
Music_7_Channel_6:
		  psgInst 07Dh
		  vibrato 04Ch
		  setRelease 01h
		        psgNoteL B2,20
		        waitL    7
		        psgNoteL B2,13
		mainLoopStart
		        psgNoteL B3,80
		        psgNoteL A3,13
		        psgNote  Gs3
		        psgNoteL E3,14
		        psgNoteL Fs3,80
		        psgNoteL B2,20
		        waitL    7
		        psgNoteL B2,13
		        psgNoteL B3,80
		        psgNoteL B3,13
		        psgNote  A3
		        psgNoteL B3,14
		        psgNoteL Cs4,40
		        psgNoteL A3,20
		        wait
		        psgNote  B2
		        waitL    7
		        psgNoteL B2,13
		        psgNoteL B3,80
		        psgNoteL B3,13
		        psgNote  A3
		        psgNoteL G3,14
		        psgNoteL Cs4,13
		        psgNote  B3
		        psgNoteL A3,14
		        psgNoteL D4,40
		        psgNoteL B3,17
		        waitL    10
		        psgNoteL D4,13
		        psgNoteL Cs4,73
		        waitL    7
		        psgNoteL Cs4,13
		        psgNote  D4
		        psgNoteL Ds4,14
		        psgNoteL E4,40
		        psgNote  C4
		  psgInst 09h
		        psgNote  G3
		  psgInst 08h
		        psgNoteL Fs3,120
		countedLoopStart 2
		        waitL    40
		  psgInst 0Bh
		        psgNoteL B3,60
		        waitL    20
		        waitL    120
		countedLoopEnd
		        waitL    40
		        psgNote  B3
		        psgNoteL B2,20
		        waitL    7
		        psgNoteL B2,13
		mainLoopEnd
Music_7_Channel_7:
		  psgInst 00h
		  setRelease 07h
		  vibrato 04Ch
		        waitL    40
		mainLoopStart
		  psgInst 02Bh
		        psgNoteL B4,20
		        psgNote  B3
		        wait
		        psgNote  B3
		mainLoopEnd
Music_7_Channel_9:
		channel_end
