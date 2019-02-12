
; ASM FILE music02.asm :
; 0x9528..0x9788 : Music 02
Music_2:        db 0
		db 0
		db 0
		db 0C8h
		dw Music_2_Channel_0
		dw Music_2_Channel_1
		dw Music_2_Channel_2
		dw Music_2_Channel_3
		dw Music_2_Channel_4
		dw Music_2_Channel_5
		dw Music_2_Channel_6
		dw Music_2_Channel_7
		dw Music_2_Channel_9
		dw Music_2_Channel_9
Music_2_Channel_0:
		        waitL 12
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		        waitL 72
		  inst 27
		  vol 09h
		        noteL D6,12
		        note  D6
		        noteL D6,48
		        note  G6
		        noteL F6,72
		        noteL E6,24
		        note  F6
		        note  E6
		        note  F6
		        note  E6
		        noteL D6,8
		        waitL 16
		        noteL D6,12
		        note  C6
		  sustain
		        noteL D6,144
		  vibrato 020h
		  setRelease 01h
		        noteL D6,168
		        waitL 24
		  vibrato 02Ch
		        waitL 72
		        noteL D6,12
		        note  D6
		        noteL D6,48
		        note  G6
		        noteL F6,72
		        noteL E6,24
		        note  F6
		        note  E6
		        note  F6
		        note  E6
		        noteL D6,8
		        waitL 16
		        noteL D6,12
		        note  C6
		  sustain
		        noteL D6,144
		  vibrato 020h
		  setRelease 01h
		        noteL D6,168
		        waitL 24
		mainLoopEnd
Music_2_Channel_1:
		  inst 26
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL Fs4,4
		        note  G4
		        note  Gs4
		mainLoopStart
		        noteL A4,192
		        note  G4
		        noteL Fs4,4
		        note  G4
		        note  Gs4
		        noteL A4,168
		        noteL Fs4,4
		        note  G4
		        note  Gs4
		        noteL A4,192
		        note  A4
		        note  G4
		        noteL D4,4
		        note  Ds4
		        note  E4
		        noteL F4,168
		        noteL D4,4
		        note  Ds4
		        note  E4
		        noteL F4,180
		        noteL Fs4,4
		        note  G4
		        note  Gs4
		mainLoopEnd
Music_2_Channel_2:
		  inst 25
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL E3,4
		        note  F3
		        note  Fs3
		mainLoopStart
		        noteL G3,192
		        note  G3
		        noteL E3,4
		        note  F3
		        note  Fs3
		        noteL G3,168
		        noteL E3,4
		        note  F3
		        note  Fs3
		        noteL G3,192
		        note  G3
		        note  G3
		        noteL C3,4
		        note  Cs3
		        note  D3
		        noteL Ds3,168
		        noteL C3,4
		        note  Cs3
		        note  D3
		        noteL Ds3,180
		        noteL E3,4
		        note  F3
		        note  Fs3
		mainLoopEnd
Music_2_Channel_3:
		        waitL 12
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		        waitL 72
		  inst 27
		  vol 09h
		        noteL A5,12
		        note  A5
		        noteL A5,48
		        note  D6
		        noteL C6,72
		        noteL C6,24
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        noteL A5,8
		        waitL 16
		        noteL A5,12
		        note  G5
		  sustain
		        noteL A5,144
		  vibrato 020h
		  setRelease 01h
		        noteL A5,168
		        waitL 24
		        waitL 72
		  vibrato 02Ch
		        noteL A5,12
		        note  A5
		        noteL A5,48
		        note  D6
		        noteL C6,72
		        noteL C6,24
		        note  C6
		        note  C6
		        note  C6
		        note  C6
		        noteL G5,8
		        waitL 16
		        noteL G5,12
		        note  G5
		  sustain
		        noteL G5,144
		  vibrato 020h
		  setRelease 01h
		        noteL G5,168
		        waitL 24
		mainLoopEnd
Music_2_Channel_4:
		        waitL 12
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		        waitL 72
		  inst 27
		  vol 09h
		        noteL G5,12
		        note  G5
		        noteL G5,48
		        note  A5
		        noteL G5,72
		        noteL G5,24
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        noteL G5,8
		        waitL 16
		        noteL G5,12
		        note  F5
		  sustain
		        noteL G5,144
		  vibrato 020h
		  setRelease 01h
		        noteL G5,168
		        waitL 24
		        waitL 72
		  vibrato 02Ch
		        noteL G5,12
		        note  G5
		        noteL G5,48
		        note  A5
		        noteL G5,72
		        noteL G5,24
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        noteL F5,8
		        waitL 16
		        noteL F5,12
		        note  F5
		  sustain
		        noteL F5,144
		  vibrato 020h
		  setRelease 01h
		        noteL F5,168
		        waitL 24
		mainLoopEnd
Music_2_Channel_5:
		        waitL 12
		mainLoopStart
		        sampleL 1,36
		        sampleL 1,12
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
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sample  2
		        sampleL 1,12
		        sample  1
		        sampleL 1,24
		        sample  1
		        sampleL 1,12
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
		        sample  2
		        sampleL 1,12
		        sample  1
		        sampleL 1,24
		        sample  1
		mainLoopEnd
Music_2_Channel_6:
		  setRelease 00h
		  vibrato 04Ah
		  psgInst 00h
		        waitL    12
		mainLoopStart
		  psgInst 00h
		        waitL    192
		        wait
		        wait
		  psgInst 07Bh
		        psgNoteL D5,12
		        wait
		        psgNote  D5
		        psgNote  C5
		        psgNoteL D5,72
		        psgNoteL D5,12
		        psgNote  Ds5
		        psgNoteL F5,24
		        psgNoteL F5,4
		        psgNote  G5
		        psgNote  F5
		        psgNoteL Ds5,12
		        psgNoteL D5,144
		        waitL    48
		  psgInst 00h
		        waitL    192
		        wait
		  psgInst 07Bh
		        psgNoteL D5,12
		        wait
		        psgNote  D5
		        psgNote  C5
		        psgNoteL D5,72
		        psgNoteL D5,12
		        psgNote  Ds5
		        psgNoteL F5,24
		        psgNoteL F5,4
		        psgNote  G5
		        psgNote  F5
		        psgNoteL Ds5,12
		mainLoopEnd
Music_2_Channel_7:
		  setRelease 00h
		  vibrato 04Ah
		  psgInst 07Ch
		        psgNoteL B1,4
		        psgNote  C2
		        psgNote  Cs2
		mainLoopStart
		        psgNoteL D2,192
		        psgNote  C2
		        psgNoteL B1,4
		        psgNote  C2
		        psgNote  Cs2
		        psgNoteL D2,168
		        psgNoteL B1,4
		        psgNote  C2
		        psgNote  Cs2
		  psgInst 07Bh
		        psgNoteL G4,12
		        wait
		        psgNote  G4
		        psgNote  F4
		        psgNoteL G4,72
		        psgNoteL G4,12
		        psgNote  Gs4
		        psgNoteL As4,24
		        psgNoteL As4,4
		        psgNote  C5
		        psgNote  As4
		        psgNoteL Gs4,12
		        psgNoteL G4,144
		        waitL    48
		        psgNoteL C2,192
		        psgNoteL G1,4
		        psgNote  Gs1
		        psgNote  A1
		        psgNoteL As1,168
		        psgNoteL G1,4
		        psgNote  Gs1
		        psgNote  A1
		        psgNoteL G4,12
		        wait
		        psgNote  G4
		        psgNote  F4
		        psgNoteL G4,72
		        psgNoteL G4,12
		        psgNote  Gs4
		        psgNoteL As4,24
		        psgNoteL As4,4
		        psgNote  C5
		        psgNote  As4
		        psgNoteL Gs4,12
		mainLoopEnd
Music_2_Channel_9:
		channel_end
