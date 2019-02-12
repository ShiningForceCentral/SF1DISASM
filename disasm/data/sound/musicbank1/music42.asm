
; ASM FILE music42.asm :
; 0xCBC2..0xD1AD : Music 42
Music_42:       db 0
		db 0
		db 0
		db 0BAh
		dw Music_42_Channel_0
		dw Music_42_Channel_1
		dw Music_42_Channel_2
		dw Music_42_Channel_3
		dw Music_42_Channel_4
		dw Music_42_Channel_5
		dw Music_42_Channel_6
		dw Music_42_Channel_7
		dw Music_42_Channel_9
		dw Music_42_Channel_9
Music_42_Channel_0:
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL B6,64
		        waitL 8
		        noteL Fs6,16
		        noteL B6,8
		        noteL A6,20
		        waitL 4
		        noteL E6,16
		        noteL A6,8
		        noteL G6,20
		        waitL 4
		        noteL D6,16
		        noteL G6,8
		        noteL Fs6,192
		        noteL B6,64
		        waitL 8
		        noteL Fs6,16
		        noteL B6,8
		        noteL A6,20
		        waitL 4
		        noteL E6,16
		        noteL A6,8
		        noteL G6,20
		        waitL 4
		        noteL G6,16
		        noteL A6,8
		        noteL B6,168
		        noteL B5,24
		        noteL B6,48
		        noteL A6,72
		        noteL G6,12
		        note  A6
		        noteL B6,24
		        note  G6
		        noteL Fs6,36
		        noteL G6,4
		        note  Fs6
		        note  E6
		        noteL Fs6,120
		        noteL B5,24
		        noteL B6,48
		        noteL A6,72
		        noteL G6,12
		        note  A6
		        noteL B6,24
		        note  Cs7
		        noteL Cs7,36
		        noteL D7,4
		        note  Cs7
		        note  B6
		        noteL Fs6,144
		        noteL Fs6,48
		        noteL B5,72
		        noteL B5,12
		        note  Cs6
		        noteL D6,24
		        note  Fs6
		        noteL Fs6,48
		        noteL G6,72
		        noteL Cs6,12
		        note  D6
		        noteL E6,24
		        note  G6
		        noteL G6,48
		        noteL A6,36
		        waitL 12
		        noteL A6,48
		        noteL B6,36
		        waitL 12
		        noteL B6,48
		        noteL Cs7,24
		        note  D7
		        noteL Cs7,192
		mainLoopEnd
Music_42_Channel_1:
		  inst 4
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL B3,96
		        wait
		        waitL 16
		  inst 8
		  vol 08h
		  setRelease 02h
		        noteL Cs6,4
		        note  Cs6
		        noteL Cs6,6
		        wait
		        note  Cs6
		        wait
		        noteL Cs6,16
		        noteL B5,4
		        note  Cs6
		        noteL D6,6
		        wait
		        note  Cs6
		        wait
		        noteL E6,12
		        waitL 8
		        noteL Cs6,4
		        noteL Cs6,48
		  inst 4
		  vol 0Eh
		  setRelease 01h
		        noteL Fs3,8
		        note  Fs3
		        note  Fs3
		        noteL B3,96
		        wait
		        waitL 16
		  inst 8
		  vol 08h
		  setRelease 02h
		        noteL Fs6,4
		        note  Fs6
		        noteL Fs6,6
		        wait
		        note  Fs6
		        wait
		        noteL Fs6,16
		        noteL Fs6,4
		        note  E6
		        noteL Fs6,6
		        wait
		        note  G6
		        wait
		        noteL A6,12
		        waitL 8
		        noteL Fs6,4
		        noteL Fs6,48
		  inst 4
		  vol 0Eh
		  setRelease 01h
		        noteL B3,8
		        note  B3
		        note  B3
		        waitL 92
		  inst 5
		  vol 0Ah
		        noteL Cs6,4
		        noteL Cs6,96
		        waitL 48
		        waitL 44
		        noteL D6,4
		        noteL D6,24
		        waitL 20
		        noteL D6,4
		        noteL D6,48
		        waitL 92
		        noteL E6,4
		        noteL E6,92
		        waitL 4
		        waitL 92
		        noteL D6,4
		        noteL D6,24
		        waitL 20
		        noteL D6,4
		        noteL D6,48
		        waitL 92
		        noteL D6,4
		        noteL D6,92
		        waitL 4
		        waitL 92
		        noteL E6,4
		        noteL E6,92
		        waitL 4
		        waitL 44
		        noteL D6,4
		        noteL D6,48
		        waitL 44
		        noteL D6,4
		        noteL D6,48
		        waitL 44
		        noteL D6,4
		        noteL D6,48
		        noteL Cs6,4
		        wait
		        note  Cs6
		        wait
		        note  Cs6
		        wait
		        note  Cs6
		        waitL 44
		        noteL Cs6,4
		        wait
		        note  Cs6
		        wait
		        note  Cs6
		        wait
		        note  As5
		        wait
		        note  As5
		        wait
		        note  As5
		        wait
		        note  As5
		        waitL 44
		  inst 4
		  vol 0Eh
		  setRelease 01h
		        noteL Fs3,8
		        note  Fs3
		        note  Fs3
		mainLoopEnd
Music_42_Channel_2:
		  inst 27
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL B3,12
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  Fs3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  B3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        note  E3
		        wait
		        noteL A3,8
		        note  A3
		        note  A3
		        noteL A3,7
		        waitL 41
		        noteL A3,8
		        note  A3
		        note  A3
		        note  Fs3
		        note  Fs3
		        note  Fs3
		        noteL Fs3,7
		        waitL 41
		        noteL Fs3,8
		        note  Fs3
		        note  Fs3
		mainLoopEnd
Music_42_Channel_3:
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL Fs6,64
		        waitL 8
		        noteL Cs6,16
		        noteL Fs6,8
		        noteL E6,20
		        waitL 4
		        noteL B5,16
		        noteL E6,8
		        noteL D6,20
		        waitL 4
		        noteL B5,16
		        noteL D6,8
		        noteL Cs6,192
		        noteL Fs6,64
		        waitL 8
		        noteL Cs6,16
		        noteL Fs6,8
		        noteL E6,20
		        waitL 4
		        noteL B5,16
		        noteL E6,8
		        noteL D6,20
		        waitL 4
		        noteL D6,16
		        noteL E6,8
		        noteL Fs6,168
		        noteL B4,24
		        noteL B5,48
		        noteL A5,72
		        noteL G5,12
		        note  A5
		        noteL B5,24
		        note  G5
		        noteL Fs5,36
		        noteL G5,4
		        note  Fs5
		        note  E5
		        noteL Fs5,120
		        noteL B4,24
		        noteL B5,48
		        noteL A5,72
		        noteL G5,12
		        note  A5
		        noteL B5,24
		        note  Cs6
		        noteL Cs6,36
		        noteL D6,4
		        note  Cs6
		        note  B5
		        noteL Fs5,144
		        noteL Fs5,48
		        noteL B4,72
		        noteL B4,12
		        note  Cs5
		        noteL D5,24
		        note  Fs5
		        noteL Fs5,48
		        note  G5
		        noteL G5,24
		        noteL Cs5,12
		        note  D5
		        noteL E5,24
		        note  G5
		        noteL G5,48
		        noteL A5,36
		        waitL 12
		        noteL A5,48
		        noteL B5,36
		        waitL 12
		        noteL B5,48
		        noteL Cs6,24
		        note  D6
		        noteL A6,4
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  A6
		        waitL 44
		        noteL A6,4
		        wait
		        note  A6
		        wait
		        note  A6
		        wait
		        note  As6
		        wait
		        note  As6
		        wait
		        note  As6
		        wait
		        note  As6
		        waitL 44
		        noteL As6,4
		        wait
		        note  As6
		        wait
		        note  As6
		        wait
		mainLoopEnd
Music_42_Channel_4:
		mainLoopStart
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL Cs6,64
		        waitL 8
		        noteL B5,16
		        noteL Cs6,8
		        noteL D6,20
		        waitL 4
		        noteL A5,16
		        noteL D6,8
		        noteL B5,20
		        waitL 4
		        noteL G5,16
		        noteL B5,8
		        noteL B5,192
		        noteL Cs6,64
		        waitL 8
		        noteL B5,16
		        noteL Cs6,8
		        noteL D6,20
		        waitL 4
		        noteL A5,16
		        noteL D6,8
		        noteL B5,20
		        waitL 4
		        noteL B5,16
		        noteL D6,8
		        noteL E6,192
		        waitL 92
		  inst 5
		  vol 0Bh
		  setRelease 02h
		        noteL E5,4
		        noteL E5,92
		        waitL 4
		        waitL 92
		        noteL B5,4
		        noteL B5,24
		        waitL 20
		        noteL B5,4
		        noteL B5,48
		        waitL 92
		        noteL Cs6,4
		        noteL Cs6,92
		        waitL 4
		        waitL 92
		        noteL Fs5,4
		        noteL Fs5,24
		        waitL 20
		        noteL Fs5,4
		        noteL Fs5,48
		        waitL 92
		        noteL G5,4
		        noteL G5,92
		        waitL 4
		        waitL 92
		        noteL Cs6,4
		        noteL Cs6,92
		        waitL 4
		        waitL 44
		        noteL Fs5,4
		        noteL Fs5,48
		        waitL 44
		        noteL B5,4
		        noteL B5,48
		        waitL 44
		        noteL G5,4
		        noteL G5,48
		  inst 15
		  vol 09h
		  setRelease 01h
		        noteL E6,4
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        note  E6
		        waitL 44
		        noteL E6,4
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		        note  E6
		        waitL 44
		        noteL E6,4
		        wait
		        note  E6
		        wait
		        note  E6
		        wait
		mainLoopEnd
Music_42_Channel_5:
		mainLoopStart
		countedLoopStart 10
		        sampleL 1,24
		        sampleL 1,8
		        sample  1
		        sample  2
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,24
		        sample  1
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
		        sampleL 1,24
		        sampleL 1,8
		        sample  1
		        sample  2
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopStart 1
		        sampleL 1,8
		        sample  1
		        sample  1
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,8
		        sample  1
		        sample  1
		countedLoopEnd
		mainLoopEnd
Music_42_Channel_6:
		  psgInst 00h
		  setRelease 00h
		  vibrato 04Ch
		mainLoopStart
		        waitL 96
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL 72
		  psgInst 09h
		        psgNoteL A3,3
		        psgNote  D4
		        psgNote  E4
		        psgNote  Fs4
		        psgNote  A4
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Fs5
		  psgInst 00h
		        waitL 69
		  psgInst 09h
		        psgNoteL G3,3
		        psgNote  A3
		        psgNote  B3
		        psgNote  D4
		        psgNote  G4
		        psgNote  A4
		        psgNote  B4
		        psgNote  D5
		        psgNote  D5
		  psgInst 00h
		        waitL 69
		  psgInst 09h
		        psgNoteL E3,2
		        psgNote  G3
		        psgNote  A3
		        psgNote  B3
		        psgNote  D4
		        psgNote  E4
		        psgNote  G4
		        psgNote  A4
		        psgNote  B4
		        psgNoteL D5,6
		  psgInst 00h
		        waitL 96
		        waitL 50
		  psgInst 09h
		        psgNoteL Fs3,3
		        psgNote  Gs3
		        psgNote  As3
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  E4
		        psgNote  Fs4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNoteL Fs5,4
		  psgInst 00h
		mainLoopEnd
Music_42_Channel_7:
		  psgInst 00h
		  setRelease 00h
		  vibrato 04Ch
		mainLoopStart
		        waitL 96
		        wait
		        wait
		        waitL 48
		  psgInst 0Ah
		        psgNoteL Fs4,4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		  psgInst 00h
		        waitL 96
		        wait
		        wait
		        waitL 48
		  psgInst 0Ah
		        psgNoteL Fs4,3
		        psgNoteL Gs4,2
		        psgNoteL As4,3
		        psgNoteL B4,2
		        psgNoteL Cs5,3
		        psgNoteL D5,2
		        psgNoteL E5,3
		        psgNoteL Fs5,2
		        psgNoteL Gs5,3
		        psgNoteL As5,2
		        psgNoteL B5,6
		  psgInst 00h
		        waitL 17
		        waitL 96
		        wait
		  setRelease 02h
		  psgInst 0Ah
		        psgNoteL B4,72
		        psgNoteL Fs4,16
		        psgNoteL B4,8
		        psgNoteL A4,24
		        psgNoteL E4,16
		        psgNoteL A4,8
		        psgNoteL G4,24
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		  setRelease 00h
		        psgNote  G4
		        psgNote  A4
		        psgNote  G4
		        psgNote  A4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  E4
		        psgNoteL Fs4,48
		  psgInst 00h
		        wait
		        waitL 96
		        waitL 72
		  psgInst 0Ah
		        psgNoteL Fs4,2
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNoteL As5,6
		        psgNote  B5
		  psgInst 00h
		        waitL 18
		  psgInst 0Ah
		        psgNoteL B4,3
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  B5
		        psgNoteL Cs6,6
		  psgInst 00h
		        waitL 18
		  psgInst 0Ah
		        psgNoteL B4,2
		        psgNote  Cs5
		        psgNote  D5
		        psgNoteL E5,3
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  B5
		        psgNote  Cs6
		  psgInst 00h
		        waitL 96
		        wait
		        wait
		        wait
		        waitL 48
		  psgInst 0Ah
		        psgNoteL A4,3
		        psgNote  B4
		        psgNote  A4
		        psgNote  B4
		        psgNote  A4
		        psgNote  B4
		        psgNote  A4
		        psgNote  B4
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        waitL 48
		  psgInst 0Ah
		        psgNoteL D5,3
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        waitL 48
		  psgInst 0Ah
		        psgNoteL Fs3,4
		        psgNote  G3
		        psgNote  A3
		        psgNote  B3
		        psgNote  A3
		        psgNote  G3
		        psgNoteL Fs3,2
		        psgNote  G3
		        psgNote  A3
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  E4
		        psgNote  Fs4
		        psgNote  G4
		        psgNoteL A4,3
		        psgNote  B4
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 43
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 3
		  psgInst 0Ah
		        psgNoteL Cs5,5
		  psgInst 00h
		        waitL 19
		  psgInst 0Ah
		        psgNoteL Cs4,2
		        psgNote  D4
		        psgNoteL E4,3
		        psgNoteL Fs4,2
		        psgNoteL Gs4,3
		        psgNoteL As4,2
		        psgNoteL B4,3
		        psgNoteL Cs5,2
		        psgNoteL D5,3
		        psgNoteL E5,2
		        psgNoteL Fs5,6
		  psgInst 00h
		        waitL 18
		mainLoopEnd
Music_42_Channel_9:
		channel_end
