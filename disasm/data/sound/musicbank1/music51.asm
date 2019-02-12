
; ASM FILE music51.asm :
; 0xEB18..0xF1FB : Music 51
Music_51:       db 0
		db 0
		db 0
		db 0C2h
		dw Music_51_Channel_0
		dw Music_51_Channel_1
		dw Music_51_Channel_2
		dw Music_51_Channel_3
		dw Music_51_Channel_4
		dw Music_51_Channel_5
		dw Music_51_Channel_6
		dw Music_51_Channel_7
		dw Music_51_Channel_9
		dw Music_51_Channel_9
Music_51_Channel_0:
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        noteL B5,5
		        waitL 11
		        noteL B5,5
		        waitL 3
		mainLoopStart
		        noteL B6,72
		        noteL A6,8
		        note  Gs6
		        note  E6
		        noteL Fs6,72
		        noteL B5,5
		        waitL 11
		        noteL B5,5
		        waitL 3
		        noteL B6,72
		        noteL B6,8
		        note  A6
		        note  B6
		        noteL Cs7,24
		        noteL A6,48
		        noteL B5,5
		        waitL 11
		        noteL B5,5
		        waitL 3
		        noteL B6,72
		        noteL B6,8
		        note  A6
		        note  G6
		        note  Cs7
		        note  B6
		        note  A6
		        noteL D7,40
		        waitL 8
		        noteL B6,5
		        waitL 11
		        noteL D7,5
		        waitL 3
		        noteL Cs7,72
		        noteL Cs7,5
		        waitL 3
		        noteL Cs7,5
		        waitL 3
		        noteL Cs7,5
		        waitL 3
		        noteL Cs7,72
		        noteL B5,5
		        waitL 11
		        noteL B5,5
		        waitL 3
		mainLoopEnd
Music_51_Channel_1:
		        waitL 16
		  inst 4
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        noteL B4,4
		        note  B4
		mainLoopStart
		        noteL B4,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 88
		        noteL G4,4
		        note  G4
		        noteL G4,24
		        waitL 72
		        waitL 96
		        wait
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
		        wait
		        noteL B4,4
		        note  B4
		mainLoopEnd
Music_51_Channel_2:
		        waitL 24
		  inst 5
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL B3,5
		        waitL 11
		        noteL B3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL A3,5
		        waitL 11
		        noteL A3,5
		        waitL 3
		        noteL G3,5
		        waitL 11
		        noteL G3,5
		        waitL 3
		        noteL Fs3,5
		        waitL 11
		        noteL Fs3,5
		        waitL 3
		        noteL Fs3,5
		        waitL 11
		        noteL Fs3,5
		        waitL 3
		        noteL Fs3,5
		        waitL 11
		        noteL Fs3,5
		        waitL 3
		        noteL Fs3,5
		        waitL 11
		        noteL Fs3,5
		        waitL 3
		mainLoopEnd
Music_51_Channel_3:
		        waitL 24
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		mainLoopStart
		        noteL Fs6,72
		        noteL E6,5
		        waitL 3
		        noteL E6,5
		        waitL 3
		        noteL B5,5
		        waitL 3
		        noteL Cs6,72
		        waitL 24
		        noteL G6,72
		        noteL G6,5
		        waitL 3
		        noteL G6,5
		        waitL 3
		        noteL G6,5
		        waitL 3
		        noteL G6,24
		        noteL E6,40
		        waitL 32
		        noteL D6,72
		        noteL E6,24
		        note  Fs6
		        noteL G6,48
		        waitL 24
		        noteL A6,72
		        noteL A6,5
		        waitL 3
		        noteL A6,5
		        waitL 3
		        noteL A6,5
		        waitL 3
		        noteL B6,24
		        noteL As6,48
		        waitL 24
		mainLoopEnd
Music_51_Channel_4:
		        waitL 24
		  inst 15
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		mainLoopStart
		        noteL Cs5,4
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  E5
		        waitL 12
		        noteL E5,4
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		        note  E5
		        waitL 12
		        noteL E5,4
		        wait
		        note  E5
		        waitL 12
		        noteL E5,4
		        wait
		        note  E5
		        waitL 12
		        noteL E5,4
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		        note  E5
		        waitL 12
		        noteL E5,4
		        wait
		        note  E5
		        waitL 12
		        noteL E5,4
		        wait
		        note  B4
		        waitL 12
		        noteL B4,4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        waitL 12
		        noteL B4,4
		        wait
		        note  B4
		        waitL 12
		        noteL B4,4
		        wait
		        note  B4
		        waitL 12
		        noteL B4,4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        waitL 12
		        noteL B4,4
		        wait
		        note  B4
		        waitL 12
		        noteL B4,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        waitL 12
		        noteL Cs5,4
		        wait
		mainLoopEnd
Music_51_Channel_5:
		        waitL 24
		mainLoopStart
		        sampleL 1,18
		        sampleL 2,2
		        sample  2
		        sample  3
		        sampleL 1,8
		        sample  1
		        sample  2
		        sampleL 1,16
		        sampleL 2,8
		        sampleL 1,16
		        sampleL 2,8
		mainLoopEnd
Music_51_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL 24
		mainLoopStart
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        waitL 12
		  psgInst 0Bh
		        psgNoteL B4,1
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  A5
		        psgNoteL B5,6
		  psgInst 00h
		        waitL 3
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  B2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL B2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        waitL 12
		  psgInst 0Bh
		        psgNoteL B4,1
		        psgNote  Cs5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  A5
		        psgNoteL B5,6
		  psgInst 00h
		        waitL 3
		  psgInst 0Dh
		        psgNoteL Cs3,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Cs3,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Cs3,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Cs3,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Cs3,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Cs3
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Cs3,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  A2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL A2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  A2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  A2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  A2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  A2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL A2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  A2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL A2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  As2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL As2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  As2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL As2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  As2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL As2,4
		  psgInst 00h
		        wait
		mainLoopEnd
Music_51_Channel_7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL 24
		mainLoopStart
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  Fs2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL Fs2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  G2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL G2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL D2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL D2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL D2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL D2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL D2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  D2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL D2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL E2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL E2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL E2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL E2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL E2,4
		  psgInst 00h
		        wait
		  psgInst 0Dh
		        psgNote  E2
		  psgInst 00h
		        waitL 12
		  psgInst 0Dh
		        psgNoteL E2,4
		  psgInst 00h
		        wait
		mainLoopEnd
Music_51_Channel_9:
		channel_end
