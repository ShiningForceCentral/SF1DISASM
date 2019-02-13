
; ASM FILE music23.asm :
; 0xF3A4..0xFBF6 : Music 23
Music_23:       db 0
		db 0
		db 0
		db 0CAh
		dw Music_23_Channel_0
		dw Music_23_Channel_1
		dw Music_23_Channel_2
		dw Music_23_Channel_3
		dw Music_23_Channel_4
		dw Music_23_Channel_5
		dw Music_23_Channel_6
		dw Music_23_Channel_7
		dw Music_23_Channel_9
		dw Music_23_Channel_9
Music_23_Channel_0:
		  inst 13
		  vol 0Ah
		  vibrato 03Ch
		  stereo 0C0h
		  sustain
		        noteL Fs6,96
		  setRelease 01h
		        noteL Fs6,90
		  setRelease 04h
		        noteL B4,6
		  vol 0Ah
		  setRelease 01h
		        noteL B4,24
		        wait
		        note  Cs5
		        wait
		        note  D5
		        wait
		        note  E5
		        wait
		        note  Fs5
		        wait
		        note  G5
		        wait
		        note  As5
		        wait
		        note  B5
		        wait
		        note  Cs6
		        wait
		        note  D6
		        wait
		        note  E6
		        wait
		        note  Fs6
		        wait
		        noteL G6,6
		        waitL 18
		  setRelease 09h
		        noteL As6,48
		        noteL As6,24
		  setRelease 01h
		        noteL B6,72
		        waitL 18
		  inst 26
		  vol 0Bh
		  stereo 080h
		        noteL F5,6
		        noteL F5,24
		        noteL Gs5,48
		        noteL F5,24
		        noteL Fs5,72
		        waitL 18
		        noteL F5,6
		        noteL F5,24
		        noteL Gs5,48
		  stereo 0C0h
		  inst 13
		  vol 0Ah
		  setRelease 01h
		        noteL B5,6
		        waitL 12
		        noteL D6,6
		mainLoopStart
		        noteL D6,48
		        noteL B5,6
		        waitL 18
		        noteL B5,6
		        waitL 12
		        noteL G6,6
		        noteL G6,48
		        noteL Fs6,6
		        waitL 18
		        noteL Fs6,6
		        waitL 12
		        noteL B6,6
		        noteL B6,24
		        noteL As6,48
		        noteL G6,24
		        noteL Fs6,72
		        waitL 18
		  inst 26
		  vol 0Bh
		  setRelease 01h
		  stereo 080h
		        noteL F5,6
		        noteL F5,24
		        noteL Gs5,48
		        noteL F5,24
		        noteL Fs5,72
		        waitL 18
		        noteL F5,6
		        noteL F5,24
		        noteL Gs5,48
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL B5,6
		        waitL 12
		        noteL D6,6
		        noteL D6,48
		        noteL B5,6
		        waitL 18
		        noteL B5,6
		        waitL 12
		        noteL G6,6
		        noteL G6,48
		        noteL Fs6,6
		        waitL 18
		        noteL Fs6,6
		        waitL 12
		        noteL B6,6
		        noteL B6,24
		        noteL As6,48
		        noteL Cs7,24
		        waitL 96
		  inst 26
		  vol 0Dh
		  setRelease 02h
		  stereo 080h
		        noteL Cs5,8
		        note  Cs5
		        note  Cs5
		        note  D5
		        note  Cs5
		        note  Cs5
		        note  E5
		        note  Cs5
		        note  Cs5
		        note  D5
		        note  Cs5
		        note  Cs5
		        waitL 48
		        noteL As5,8
		        note  As5
		        note  As5
		        note  B5
		        note  As5
		        note  As5
		        waitL 48
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL D6,24
		        noteL B5,48
		        noteL D6,24
		        noteL Cs6,72
		  inst 26
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        waitL 18
		        noteL D6,6
		        noteL D6,24
		        noteL B5,48
		        noteL D6,24
		        noteL F6,72
		        waitL 18
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL D6,6
		        noteL D6,24
		        noteL B5,48
		        noteL D6,24
		        note  F6
		        noteL Cs6,48
		        noteL F6,24
		  setRelease 04h
		        noteL Fs6,6
		        note  Fs6
		        note  Fs6
		        wait
		        note  Fs6
		        note  Fs6
		        note  Fs6
		        waitL 18
		        noteL Fs6,6
		        note  Fs6
		        note  Fs6
		        waitL 18
		        noteL Fs6,6
		        note  Fs6
		        note  Fs6
		        waitL 18
		        noteL Fs6,6
		        note  Fs6
		        note  Fs6
		        waitL 42
		        waitL 96
		        wait
		        wait
		        waitL 72
		  setRelease 01h
		  stereo 0C0h
		        noteL B5,6
		        waitL 12
		        noteL D6,6
		mainLoopEnd
Music_23_Channel_1:
		  inst 4
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		        note  C4
		countedLoopStart 5
		        waitL 18
		  setRelease 03h
		        noteL B3,6
		        noteL B3,24
		        waitL 18
		        noteL B3,6
		        noteL B3,24
		countedLoopEnd
		        waitL 24
		  setRelease 01h
		        note  B3
		        noteL Fs3,6
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		mainLoopStart
		countedLoopStart 13
		        noteL B3,24
		        note  B3
		        note  B3
		        note  B3
		countedLoopEnd
		        noteL Fs3,24
		        waitL 72
		        noteL Fs3,24
		        waitL 72
		        noteL Fs3,24
		        wait
		        note  Fs3
		        wait
		        noteL Fs3,6
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		countedLoopStart 5
		        noteL B3,24
		        note  B3
		        note  B3
		        note  B3
		countedLoopEnd
		        noteL Fs3,6
		        note  Fs3
		        noteL Fs3,12
		        noteL Fs3,6
		        note  Fs3
		        noteL Fs3,12
		        note  C4
		        noteL Fs3,6
		        note  Fs3
		        noteL Fs3,12
		        note  C4
		        noteL Fs3,6
		        note  Fs3
		        noteL Fs3,12
		        note  C4
		        noteL Fs3,6
		        note  Fs3
		        noteL Fs3,3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		mainLoopEnd
Music_23_Channel_2:
		  inst 5
		  vol 0Eh
		  sustain
		  vibrato 02Ch
		  stereo 080h
		        noteL C4,96
		  setRelease 01h
		        note  C4
		countedLoopStart 5
		        waitL 18
		  setRelease 03h
		        noteL B3,6
		        noteL B3,24
		        waitL 18
		        noteL B3,6
		        noteL B3,24
		countedLoopEnd
		        waitL 24
		  setRelease 01h
		        note  B3
		        noteL Fs3,48
		mainLoopStart
		countedLoopStart 13
		        noteL B3,12
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		countedLoopEnd
		        noteL Fs4,24
		        waitL 72
		        noteL Fs4,24
		        waitL 72
		        noteL Fs4,24
		        wait
		        note  Fs4
		        wait
		        note  Fs4
		        wait
		countedLoopStart 5
		        noteL B3,12
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		countedLoopEnd
		        noteL Fs4,12
		        wait
		        note  Fs4
		        wait
		        wait
		        note  Fs4
		        waitL 24
		        noteL Fs4,12
		        wait
		        wait
		        note  Fs4
		        waitL 48
		mainLoopEnd
Music_23_Channel_3:
		  inst 13
		  vol 0Ah
		  sustain
		  vibrato 03Ah
		  stereo 0C0h
		        noteL C6,96
		  setRelease 01h
		        noteL C6,90
		  setRelease 04h
		        noteL Fs4,6
		  vol 0Ah
		  setRelease 01h
		        noteL Fs4,24
		        wait
		        note  As4
		        wait
		        note  B4
		        wait
		        note  Cs5
		        wait
		        note  D5
		        wait
		        note  E5
		        wait
		        note  G5
		        wait
		        note  Fs5
		        wait
		        note  As5
		        wait
		        note  B5
		        wait
		        note  Cs6
		        wait
		        note  D6
		        wait
		        noteL E6,6
		        waitL 18
		  setRelease 09h
		        noteL G6,48
		        noteL G6,24
		  setRelease 01h
		        noteL Fs6,72
		  inst 26
		  vol 0Bh
		  stereo 080h
		        waitL 18
		        noteL Cs5,6
		        noteL Cs5,24
		        noteL F5,48
		        noteL Cs5,24
		        noteL D5,72
		        waitL 18
		        noteL Cs5,6
		        noteL Cs5,24
		        noteL F5,48
		        waitL 24
		  inst 13
		  vol 0Ah
		  stereo 0C0h
		mainLoopStart
		        noteL G5,48
		        noteL Fs5,6
		        waitL 42
		        noteL Cs6,48
		        noteL D6,6
		        waitL 42
		        noteL G6,24
		        noteL G6,48
		        noteL E6,24
		        noteL D6,72
		  inst 26
		  vol 0Bh
		  setRelease 01h
		  stereo 080h
		        waitL 18
		        noteL Cs5,6
		        noteL Cs5,24
		        noteL F5,48
		        noteL Cs5,24
		        noteL D5,72
		        waitL 18
		        noteL Cs5,6
		        noteL Cs5,24
		        noteL F5,48
		        waitL 24
		  inst 13
		  setRelease 01h
		  vol 0Ah
		  stereo 0C0h
		        noteL G5,48
		        noteL Fs5,6
		        waitL 42
		        noteL Cs6,48
		        noteL D6,6
		        waitL 42
		        noteL G6,24
		        noteL G6,48
		        noteL As6,24
		        waitL 96
		  inst 26
		  vol 0Dh
		  setRelease 02h
		  stereo 080h
		        noteL As4,8
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        note  As4
		        waitL 48
		        noteL Fs5,8
		        note  Fs5
		        note  Fs5
		        note  Fs5
		        note  Fs5
		        note  Fs5
		        waitL 48
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL B5,24
		        noteL Fs5,48
		        noteL B5,24
		        noteL Gs5,72
		  inst 26
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        waitL 18
		        noteL B5,6
		        noteL B5,24
		        noteL Fs5,48
		        noteL B5,24
		        noteL Cs6,72
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        waitL 18
		        noteL B6,6
		        noteL B5,24
		        noteL Fs5,48
		        noteL B5,24
		        note  Cs6
		        noteL Gs5,48
		        noteL Cs6,24
		  setRelease 04h
		        noteL C6,6
		        note  C6
		        note  C6
		        wait
		        note  C6
		        note  C6
		        note  C6
		        waitL 18
		        noteL C6,6
		        note  C6
		        note  C6
		        waitL 18
		        noteL C6,6
		        note  C6
		        note  C6
		        waitL 18
		        noteL C6,6
		        note  C6
		        note  C6
		        waitL 42
		        waitL 96
		        wait
		        wait
		  setRelease 01h
		        wait
		  stereo 0C0h
		mainLoopEnd
Music_23_Channel_4:
		  inst 13
		  vol 0Ah
		  sustain
		  vibrato 02Ch
		  stereo 0C0h
		        noteL As5,96
		  setRelease 01h
		        noteL As5,90
		  setRelease 04h
		        noteL D4,6
		  vol 0Ah
		  setRelease 01h
		        noteL D4,24
		        wait
		        note  E4
		        wait
		        note  Fs4
		        wait
		        note  As4
		        wait
		        note  B4
		        wait
		        note  As4
		        wait
		        note  E5
		        wait
		        note  D5
		        wait
		        note  E5
		        wait
		        note  Fs5
		        wait
		        note  As5
		        wait
		        note  B5
		        wait
		        noteL As5,6
		        waitL 18
		  setRelease 09h
		        noteL E6,48
		        noteL E6,24
		  setRelease 01h
		        noteL D6,72
		  inst 26
		  vol 0Bh
		  stereo 080h
		        waitL 18
		        noteL Gs4,6
		        noteL Gs4,24
		        noteL Cs5,48
		        noteL Gs4,24
		        noteL A4,72
		        waitL 18
		        noteL Gs4,6
		        noteL Gs4,24
		        noteL Cs5,48
		        waitL 24
		  inst 13
		  vol 0Ah
		mainLoopStart
		  stereo 0C0h
		        noteL E5,48
		        noteL D5,6
		        waitL 42
		        noteL As5,48
		        noteL B5,6
		        waitL 42
		        noteL E6,24
		        noteL E6,48
		        noteL Cs6,24
		        noteL B5,72
		  inst 26
		  vol 0Bh
		  setRelease 01h
		  stereo 080h
		        waitL 18
		        noteL Gs4,6
		        noteL Gs4,24
		        noteL Cs5,48
		        noteL Gs4,24
		        noteL A4,72
		        waitL 18
		        noteL Gs4,6
		        noteL Gs4,24
		        noteL Cs5,48
		        waitL 24
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL E5,48
		        noteL D5,6
		        waitL 42
		        noteL As5,48
		        noteL B5,6
		        waitL 42
		        noteL E6,24
		        noteL E6,48
		        noteL G6,24
		        waitL 96
		  inst 26
		  vol 0Dh
		  setRelease 02h
		  stereo 080h
		        noteL Fs4,8
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        note  Fs4
		        waitL 48
		        noteL E5,8
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        note  E5
		        waitL 48
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL Fs5,24
		        noteL D5,48
		        noteL Fs5,24
		        noteL F5,72
		  inst 26
		  vol 0Dh
		  setRelease 01h
		  stereo 080h
		        waitL 18
		        noteL Fs5,6
		        noteL Fs5,24
		        noteL D5,48
		        noteL Fs5,24
		        noteL Gs5,72
		        waitL 18
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  stereo 0C0h
		        noteL Fs5,6
		        noteL Fs5,24
		        noteL D5,48
		        noteL Fs5,24
		        note  Gs5
		        noteL F5,48
		        noteL Gs5,24
		  setRelease 04h
		        noteL As5,6
		        note  As5
		        note  As5
		        wait
		        note  As5
		        note  As5
		        note  As5
		        waitL 18
		        noteL As5,6
		        note  As5
		        note  As5
		        waitL 18
		        noteL As5,6
		        note  As5
		        note  As5
		        waitL 18
		        noteL As5,6
		        note  As5
		        note  As5
		        waitL 42
		        waitL 96
		        wait
		        wait
		  setRelease 01h
		        wait
		mainLoopEnd
Music_23_Channel_5:
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		countedLoopStart 14
		        sampleL 3,3
		        sample  3
		        sample  3
		        sample  3
		countedLoopEnd
		countedLoopStart 11
		        waitL 18
		        sampleL 1,3
		        wait
		        sample  1
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopEnd
		        waitL 24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 3,6
		        sampleL 1,3
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
		mainLoopStart
		countedLoopStart 13
		        sampleL 1,12
		        sampleL 3,6
		        sample  2
		        sampleL 1,12
		        sampleL 3,6
		        sample  2
		        sampleL 1,12
		        sampleL 3,6
		        sample  2
		        sample  1
		        sample  2
		        sample  2
		        sample  2
		countedLoopEnd
		        sampleL 1,24
		        waitL 72
		        sampleL 1,24
		        waitL 72
		        sampleL 1,24
		        wait
		        sample  1
		        wait
		        sampleL 3,3
		        sample  3
		        sample  3
		        sample  3
		        sample  2
		        sample  3
		        sample  2
		        sample  3
		        sample  2
		        sample  3
		        sample  2
		        sample  1
		        sample  2
		        sample  1
		        sample  1
		        sample  1
		countedLoopStart 5
		        sampleL 1,12
		        sampleL 3,6
		        sample  2
		        sampleL 1,12
		        sampleL 3,6
		        sample  2
		        sampleL 1,12
		        sampleL 3,6
		        sample  2
		        sample  1
		        sample  2
		        sample  2
		        sample  2
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sample  2
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sample  2
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sample  2
		        sampleL 1,6
		        sample  1
		        sampleL 1,3
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
		mainLoopEnd
Music_23_Channel_6:
		  psgInst 0Bh
		  setRelease 01h
		  vibrato 04Ch
		countedLoopStart 15
		        psgNoteL Fs5,3
		        psgNote  G5
		        psgNote  Fs5
		        psgNote  G5
		countedLoopEnd
		  psgInst 00h
		        waitL    24
		  psgInst 0Bh
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Fs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  D3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Fs3
		  psgInst 00h
		        waitL    48
		  psgInst 0Bh
		        psgNote  As3
		mainLoopStart
		countedLoopStart 15
		  setRelease 01h
		        psgNoteL B1,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		countedLoopEnd
		countedLoopStart 1
		        psgNoteL B1,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNoteL B1,9
		        psgNoteL B4,3
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNoteL B5,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		countedLoopEnd
		countedLoopStart 19
		        psgNoteL B1,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		countedLoopEnd
		countedLoopStart 1
		        psgNoteL B1,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		        psgNoteL B1,9
		        psgNoteL B4,3
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNoteL B5,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B1,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		countedLoopEnd
		  setRelease 04h
		        psgNoteL Fs4,8
		        psgNote  Fs4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  Fs4
		        psgNote  As4
		        psgNote  Fs4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  Fs4
		  psgInst 00h
		        waitL    96
		  psgInst 0Bh
		        psgNoteL Fs3,8
		        psgNote  Fs3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  Fs3
		  psgInst 00h
		        waitL    48
		  psgInst 0Bh
		        psgNoteL Cs5,8
		        psgNote  Cs5
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  Cs5
		        psgNote  Cs5
		countedLoopStart 23
		  setRelease 01h
		        psgNoteL B1,6
		        psgNote  B1
		        psgNote  B1
		        psgNote  B1
		countedLoopEnd
		  setRelease 03h
		        psgNoteL Fs5,6
		        psgNote  Fs5
		        psgNote  Fs5
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Fs5
		        psgNote  Fs5
		        psgNote  Fs5
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL Fs5,6
		        psgNote  Fs5
		        psgNote  Fs5
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL Fs5,6
		        psgNote  Fs5
		        psgNote  Fs5
		  psgInst 00h
		        waitL    18
		  psgInst 0Bh
		        psgNoteL Fs5,6
		        psgNote  Fs5
		        psgNote  Fs5
		  psgInst 00h
		        waitL    42
		  psgInst 0Bh
		mainLoopEnd
Music_23_Channel_7:
		  psgInst 0Ch
		  setRelease 080h
		  vibrato 055h
		        psgNoteL E4,96
		  setRelease 01h
		        psgNote  E4
		  psgInst 00h
		        waitL    24
		  psgInst 0Ch
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  D3
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  Fs3
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  D3
		  psgInst 00h
		        waitL    48
		  psgInst 0Ch
		        psgNote  G3
		mainLoopStart
		countedLoopStart 1
		  setRelease 01h
		  psgInst 0Ch
		        psgNoteL B2,6
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B2,6
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		countedLoopEnd
		        psgNoteL Cs3,6
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		countedLoopStart 1
		        psgNoteL B2,6
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		countedLoopEnd
		        psgNoteL B2,6
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  E3
		  setRelease 04h
		  psgInst 0Bh
		        psgNoteL E4,8
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		        psgNote  E4
		  psgInst 00h
		        waitL    96
		  psgInst 0Ch
		        psgNoteL E3,8
		        psgNote  E3
		        psgNote  E3
		        psgNote  E3
		        psgNote  E3
		        psgNote  E3
		  psgInst 00h
		        waitL    48
		  psgInst 0Ch
		        psgNoteL As4,8
		        psgNote  As4
		        psgNote  As4
		        psgNote  As4
		        psgNote  As4
		        psgNote  As4
		countedLoopStart 1
		  psgInst 0Ch
		  setRelease 01h
		        psgNoteL B2,6
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		        psgNote  Cs3
		        psgNote  As2
		        psgNote  B2
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  B2
		        psgNote  As2
		countedLoopEnd
		        psgNoteL B3,6
		        psgNote  As3
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  B3
		        psgNote  As3
		        psgNote  Cs4
		        psgNote  As3
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  Cs4
		        psgNote  B3
		        psgNote  As3
		        psgNote  Cs4
		        psgNote  As3
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  Cs4
		        psgNote  B3
		        psgNote  As3
		  setRelease 04h
		        psgNote  C5
		        psgNote  C5
		        psgNote  C5
		  psgInst 00h
		        wait
		  psgInst 0Ch
		        psgNote  C5
		        psgNote  C5
		        psgNote  C5
		  psgInst 00h
		        waitL    18
		  psgInst 0Ch
		        psgNoteL C5,6
		        psgNote  C5
		        psgNote  C5
		  psgInst 00h
		        waitL    18
		  psgInst 0Ch
		        psgNoteL C5,6
		        psgNote  C5
		        psgNote  C5
		  psgInst 00h
		        waitL    18
		  psgInst 0Ch
		        psgNoteL C5,6
		        psgNote  C5
		        psgNote  C5
		  psgInst 00h
		        waitL    42
		mainLoopEnd
Music_23_Channel_9:
		channel_end
