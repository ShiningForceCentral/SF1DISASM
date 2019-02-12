
; ASM FILE music50.asm :
; 0xE38C..0xEB18 : Music 50
Music_45_Channel_9:
		channel_end
Music_50:       db 0
		db 0
		db 0
		db 0BBh
		dw Music_50_Channel_0
		dw Music_50_Channel_1
		dw Music_50_Channel_2
		dw Music_50_Channel_3
		dw Music_50_Channel_4
		dw Music_50_Channel_5
		dw Music_50_Channel_6
		dw Music_50_Channel_7
		dw Music_50_Channel_9
		dw Music_50_Channel_9
Music_50_Channel_0:
		        waitL 192
		        wait
		  inst 8
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		mainLoopStart
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL C5,6
		        waitL 18
		        noteL C5,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL C5,6
		        waitL 18
		        noteL C5,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL E5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL D5,6
		        waitL 18
		        noteL C5,6
		        waitL 18
		        noteL C5,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,66
		        waitL 6
		        note  Cs5
		        waitL 18
		        noteL Cs5,66
		        waitL 6
		        note  D5
		        waitL 90
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_1:
		        waitL 192
		        waitL 168
		  inst 4
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        noteL A3,8
		        note  A3
		        note  A3
		mainLoopStart
		        noteL D4,12
		        waitL 84
		        waitL 96
		        wait
		        waitL 72
		        noteL A3,8
		        note  A3
		        note  A3
		        noteL D4,12
		        waitL 84
		        waitL 96
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL 72
		        noteL A3,8
		        note  A3
		        note  A3
		        noteL D4,12
		        waitL 84
		        waitL 96
		        noteL G4,12
		        wait
		        noteL G4,3
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        note  G4
		        waitL 24
		        noteL A4,12
		        wait
		        noteL A4,3
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        waitL 24
		        noteL D4,12
		        waitL 84
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_2:
		        waitL 192
		        waitL 168
		  inst 27
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL A3,8
		        note  A3
		        note  A3
		mainLoopStart
		        noteL D3,12
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        noteL A3,8
		        note  A3
		        note  A3
		        noteL D3,12
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        note  D3
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
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
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
		        noteL G3,48
		        waitL 24
		        noteL A3,12
		        wait
		        noteL A3,48
		        waitL 24
		        noteL D3,12
		        waitL 84
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_3:
		        waitL 192
		        wait
		  inst 8
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL B4,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL Cs5,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,66
		        waitL 6
		        note  A4
		        waitL 18
		        noteL A4,66
		        waitL 6
		        note  A4
		        waitL 90
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_4:
		        waitL 192
		        wait
		  inst 8
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		mainLoopStart
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        waitL 18
		        noteL A4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL Fs4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL E4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,6
		        waitL 18
		        noteL D4,66
		        waitL 6
		        note  E4
		        waitL 18
		        noteL E4,66
		        waitL 6
		        note  Fs4
		        waitL 90
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_5:
		mainLoopStart
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,8
		        sample  2
		        sample  2
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,8
		        sample  2
		        sample  2
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,48
		countedLoopStart 6
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,8
		        sample  1
		        sample  1
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,23
		        sampleL 3,1
		        sampleL 1,24
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		countedLoopEnd
		        sampleL 1,12
		        sampleL 1,6
		        sample  2
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,12
		        sample  1
		        sample  1
		        wait
		        sample  1
		        sampleL 1,6
		        sample  2
		        sampleL 1,3
		        sample  2
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,6
		        sample  1
		        sampleL 1,12
		        sample  1
		        wait
		mainLoopEnd
Music_50_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 05Ch
		        waitL 96
		        wait
		        wait
		        wait
		mainLoopStart
		  psgInst 07Ch
		        psgNoteL D6,24
		        psgNoteL A5,4
		  psgInst 00h
		        waitL 12
		  psgInst 07Ch
		        psgNoteL D6,8
		        psgNoteL C6,24
		        psgNoteL G5,4
		  psgInst 00h
		        waitL 12
		  psgInst 07Ch
		        psgNoteL C6,8
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 07Ch
		        psgNoteL G5,6
		        psgNote  G5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 07Ch
		        psgNoteL A5,18
		  psgInst 00h
		        waitL 6
		  psgInst 07Ch
		        psgNoteL D5,12
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  D5
		        psgNote  D5
		        psgNote  D5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNoteL Fs5,24
		        psgNoteL Cs5,12
		        psgNoteL D5,6
		        psgNote  E5
		        psgNoteL Fs5,12
		        psgNoteL Fs5,6
		        psgNote  G5
		        psgNoteL A5,48
		  psgInst 00h
		        waitL 24
		  psgInst 07Ch
		        psgNote  D6
		        psgNoteL A5,4
		  psgInst 00h
		        waitL 12
		  psgInst 07Ch
		        psgNoteL D6,8
		        psgNoteL C6,24
		        psgNoteL G5,4
		  psgInst 00h
		        waitL 12
		  psgInst 07Ch
		        psgNoteL C6,8
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 07Ch
		        psgNoteL G5,6
		        psgNote  G5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 07Ch
		        psgNoteL A5,18
		  psgInst 00h
		        waitL 6
		  psgInst 07Ch
		        psgNoteL D5,12
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  D5
		        psgNote  D5
		        psgNote  D5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNoteL Fs5,24
		        psgNoteL Cs5,12
		        psgNoteL D5,6
		        psgNote  E5
		        psgNoteL Fs5,12
		        psgNoteL Fs5,6
		        psgNote  G5
		        psgNoteL A5,48
		  psgInst 00h
		        waitL 24
		  psgInst 07Ch
		        psgNoteL B5,18
		        psgNoteL D5,6
		        psgNoteL D5,36
		        psgNoteL B5,12
		        psgNote  A5
		        psgNote  B5
		        psgNote  Cs6
		        psgNoteL Cs6,6
		        psgNote  D6
		        psgNoteL E6,48
		        psgNoteL Cs6,24
		        psgNoteL D6,18
		        psgNoteL B5,6
		        psgNoteL B5,36
		        psgNoteL D6,12
		        psgNote  Cs6
		        psgNote  B5
		        psgNote  Cs6
		        psgNoteL Cs6,6
		        psgNote  D6
		        psgNoteL E6,48
		        psgNoteL A5,24
		        psgNote  D6
		        psgNoteL A5,6
		  psgInst 00h
		        waitL 12
		  psgInst 07Ch
		        psgNoteL D6,6
		        psgNoteL C6,24
		        psgNoteL G5,6
		  psgInst 00h
		        waitL 12
		  psgInst 07Ch
		        psgNoteL C6,6
		        psgNote  B5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  G5
		        psgNote  G5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  B5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNoteL A5,24
		        psgNoteL D5,12
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  G5
		        psgNote  A5
		        psgNoteL B5,48
		  psgInst 00h
		        waitL 24
		  psgInst 07Ch
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 07Ch
		        psgNote  A5
		        psgNote  B5
		        psgNoteL Cs6,48
		        psgNoteL A5,24
		        psgNoteL D6,6
		  psgInst 00h
		        waitL 90
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_7:
		  psgInst 00h
		        waitL 6
		  setRelease 01h
		  vibrato 05Ch
		        waitL 96
		        wait
		        wait
		        wait
		mainLoopStart
		  psgInst 078h
		        psgNoteL D6,24
		        psgNoteL A5,4
		  psgInst 00h
		        waitL 12
		  psgInst 078h
		        psgNoteL D6,8
		        psgNoteL C6,24
		        psgNoteL G5,4
		  psgInst 00h
		        waitL 12
		  psgInst 078h
		        psgNoteL C6,8
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 078h
		        psgNoteL G5,6
		        psgNote  G5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 078h
		        psgNoteL A5,18
		  psgInst 00h
		        waitL 6
		  psgInst 078h
		        psgNoteL D5,12
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  D5
		        psgNote  D5
		        psgNote  D5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNoteL Fs5,24
		        psgNoteL Cs5,12
		        psgNoteL D5,6
		        psgNote  E5
		        psgNoteL Fs5,12
		        psgNoteL Fs5,6
		        psgNote  G5
		        psgNoteL A5,48
		  psgInst 00h
		        waitL 24
		  psgInst 078h
		        psgNote  D6
		        psgNoteL A5,4
		  psgInst 00h
		        waitL 12
		  psgInst 078h
		        psgNoteL D6,8
		        psgNoteL C6,24
		        psgNoteL G5,4
		  psgInst 00h
		        waitL 12
		  psgInst 078h
		        psgNoteL C6,8
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 078h
		        psgNoteL G5,6
		        psgNote  G5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNoteL B5,4
		  psgInst 00h
		        waitL 8
		  psgInst 078h
		        psgNoteL A5,18
		  psgInst 00h
		        waitL 6
		  psgInst 078h
		        psgNoteL D5,12
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  D5
		        psgNote  D5
		        psgNote  D5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNoteL Fs5,24
		        psgNoteL Cs5,12
		        psgNoteL D5,6
		        psgNote  E5
		        psgNoteL Fs5,12
		        psgNoteL Fs5,6
		        psgNote  G5
		        psgNoteL A5,48
		  psgInst 00h
		        waitL 24
		  psgInst 078h
		        psgNoteL B5,18
		        psgNoteL D5,6
		        psgNoteL D5,36
		        psgNoteL B5,12
		        psgNote  A5
		        psgNote  B5
		        psgNote  Cs6
		        psgNoteL Cs6,6
		        psgNote  D6
		        psgNoteL E6,48
		        psgNoteL Cs6,24
		        psgNoteL D6,18
		        psgNoteL B5,6
		        psgNoteL B5,36
		        psgNoteL D6,12
		        psgNote  Cs6
		        psgNote  B5
		        psgNote  Cs6
		        psgNoteL Cs6,6
		        psgNote  D6
		        psgNoteL E6,48
		        psgNoteL A5,24
		        psgNote  D6
		        psgNoteL A5,6
		  psgInst 00h
		        waitL 12
		  psgInst 078h
		        psgNoteL D6,6
		        psgNoteL C6,24
		        psgNoteL G5,6
		  psgInst 00h
		        waitL 12
		  psgInst 078h
		        psgNoteL C6,6
		        psgNote  B5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  G5
		        psgNote  G5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  B5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNoteL A5,24
		        psgNoteL D5,12
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNote  G5
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  G5
		        psgNote  A5
		        psgNoteL B5,48
		  psgInst 00h
		        waitL 24
		  psgInst 078h
		        psgNoteL A5,6
		  psgInst 00h
		        wait
		  psgInst 078h
		        psgNote  A5
		        psgNote  B5
		        psgNoteL Cs6,48
		        psgNoteL A5,24
		        psgNoteL D6,6
		  psgInst 00h
		        waitL 90
		        waitL 96
		        wait
		        wait
		mainLoopEnd
Music_50_Channel_9:
		channel_end
