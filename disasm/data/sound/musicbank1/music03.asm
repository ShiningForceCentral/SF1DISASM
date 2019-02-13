
; ASM FILE music03.asm :
; 0xC2F1..0xCBC2 : Music 03
Music_3:        db 0
		db 0
		db 0
		db 0BAh
		dw Music_3_Channel_0
		dw Music_3_Channel_1
		dw Music_3_Channel_2
		dw Music_3_Channel_3
		dw Music_3_Channel_4
		dw Music_3_Channel_5
		dw Music_3_Channel_6
		dw Music_3_Channel_7
		dw Music_3_Channel_9
		dw Music_3_Channel_9
Music_3_Channel_0:
		  inst 21
		  vol 08h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        waitL 12
		mainLoopStart
		        waitL 12
		        noteL C6,6
		        wait
		        note  C6
		        waitL 30
		        noteL C6,6
		        wait
		        note  C6
		        wait
		        waitL 24
		        noteL C6,6
		        waitL 18
		        noteL C6,6
		        wait
		        note  B5
		        wait
		        note  B5
		        wait
		        note  B5
		        wait
		        waitL 24
		        noteL B5,6
		        wait
		        note  B5
		        waitL 30
		        noteL D6,6
		        wait
		        note  B5
		        wait
		        waitL 12
		        noteL B5,24
		        note  D6
		        noteL C6,6
		        wait
		        note  C6
		        wait
		        note  C6
		        wait
		        waitL 24
		        noteL C6,6
		        wait
		        note  C6
		        waitL 30
		        noteL C6,6
		        wait
		        note  C6
		        wait
		        waitL 24
		        noteL E6,6
		        waitL 18
		        noteL C6,6
		        wait
		        note  B5
		        wait
		        note  B5
		        wait
		        note  B5
		        wait
		        waitL 24
		        noteL B5,6
		        wait
		        note  B5
		        waitL 30
		        noteL D6,6
		        wait
		        note  B5
		        wait
		        waitL 12
		        noteL B5,24
		        note  D6
		        noteL C6,6
		        wait
		        note  C6
		        wait
		        note  C6
		        wait
		        waitL 12
		  vol 07h
		        noteL A6,18
		        noteL Gs6,6
		        note  A6
		        wait
		        noteL C7,24
		        note  B6
		        noteL A6,12
		        note  G6
		        note  F6
		        note  E6
		        note  F6
		        noteL G6,24
		  vol 08h
		        waitL 12
		        waitL 24
		        noteL C6,6
		        wait
		        note  C6
		        waitL 30
		        noteL B5,6
		        wait
		        note  B5
		        wait
		        waitL 12
		        noteL D6,24
		        note  B5
		        noteL C6,6
		        wait
		        note  C6
		        wait
		        note  C6
		        wait
		  inst 44
		  vibrato 04Ch
		  vol 0Dh
		        noteL G4,12
		        noteL E5,18
		        noteL Ds5,6
		        noteL E5,18
		        noteL Ds5,6
		        noteL E5,18
		        noteL Ds5,6
		        note  E5
		        wait
		        note  G5
		        wait
		        noteL F5,48
		        noteL D5,30
		        waitL 6
		        note  G4
		        wait
		        noteL F5,18
		        noteL E5,6
		        noteL F5,18
		        noteL E5,6
		        noteL F5,18
		        noteL E5,6
		        note  F5
		        wait
		        note  A5
		        wait
		        noteL G5,48
		        noteL E5,30
		        waitL 6
		        note  G4
		        wait
		        noteL E5,18
		        noteL Ds5,6
		        noteL E5,18
		        noteL Ds5,6
		        noteL E5,18
		        noteL Ds5,6
		        note  E5
		        wait
		        note  G5
		        wait
		        noteL F5,18
		        noteL E5,6
		        note  F5
		        wait
		        note  G5
		        wait
		        noteL A5,36
		        noteL C6,12
		        noteL B5,6
		        wait
		        note  A5
		        wait
		        note  G5
		        wait
		        note  A5
		        wait
		        note  G5
		        wait
		        note  F5
		        wait
		        note  E5
		        wait
		        note  D5
		        wait
		        note  A4
		        waitL 18
		        noteL B4,24
		        noteL C5,6
		        wait
		        note  C5
		        wait
		        note  C5
		  inst 21
		  vol 08h
		        wait
		        waitL 12
		mainLoopEnd
Music_3_Channel_1:
		  inst 21
		  vol 08h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        waitL 12
		mainLoopStart
		        waitL 12
		        noteL G4,6
		        wait
		        note  G4
		        waitL 30
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,6
		        waitL 18
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,6
		        wait
		        note  G4
		        waitL 30
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        waitL 12
		        noteL G4,24
		        note  G4
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,6
		        wait
		        note  G4
		        waitL 30
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,18
		        waitL 6
		        note  G4
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,6
		        wait
		        note  G4
		        waitL 30
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,18
		        waitL 6
		        note  G4
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        waitL 12
		  vol 0Ah
		        note  F3
		        note  C4
		        note  A4
		        note  C4
		        note  F3
		        note  C4
		        note  A4
		        note  C4
		        note  C4
		        note  G4
		        note  C5
		        note  G4
		        noteL D4,6
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		  vol 08h
		        waitL 24
		        noteL G4,6
		        wait
		        note  G4
		        waitL 30
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        waitL 24
		        note  F4
		        noteL F4,6
		        wait
		        note  E4
		        wait
		        note  E4
		        wait
		        note  E4
		        wait
		        waitL 24
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  G4
		        waitL 18
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  E4
		        waitL 18
		        noteL F4,6
		        wait
		        note  F4
		        wait
		        note  A4
		        waitL 18
		        noteL F4,6
		        wait
		        note  F4
		        wait
		        note  F4
		        waitL 18
		        noteL F4,6
		        wait
		        note  F4
		        wait
		        note  F4
		        waitL 18
		        noteL F4,6
		        wait
		        note  F4
		        wait
		        note  D4
		        waitL 18
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  G4
		        waitL 18
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  E4
		        waitL 18
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  G4
		        waitL 18
		        noteL G4,6
		        wait
		        note  E4
		        wait
		        note  E4
		        waitL 18
		        noteL F4,6
		        wait
		        note  F4
		        wait
		        note  A4
		        waitL 18
		        noteL Fs4,6
		        wait
		        note  Fs4
		        wait
		        note  Fs4
		        wait
		        note  G4
		        waitL 78
		        waitL 36
		        noteL F4,24
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  E4
		        wait
		        waitL 12
		mainLoopEnd
Music_3_Channel_2:
		  inst 22
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 12
		mainLoopStart
		        noteL C3,24
		        wait
		        note  C3
		        waitL 12
		        wait
		        noteL C3,24
		        wait
		        noteL G2,6
		        wait
		        note  G2
		        wait
		        note  G2
		        wait
		        waitL 12
		        noteL G2,24
		        wait
		        note  G2
		        waitL 12
		        wait
		        noteL G2,24
		        note  B2
		        noteL C3,6
		        wait
		        note  C3
		        wait
		        note  C3
		        wait
		        waitL 12
		        noteL C3,24
		        wait
		        note  C3
		        waitL 12
		        wait
		        noteL C3,24
		        wait
		        noteL G2,6
		        wait
		        note  G2
		        wait
		        note  G2
		        wait
		        waitL 12
		        noteL G2,24
		        wait
		        note  G2
		        waitL 12
		        wait
		        noteL G2,24
		        note  G2
		        noteL C3,6
		        wait
		        note  C3
		        wait
		        note  C3
		        wait
		        waitL 12
		        noteL F2,24
		        wait
		        note  F2
		        waitL 12
		        wait
		        noteL C3,24
		        wait
		        noteL G2,6
		        wait
		        note  G2
		        wait
		        note  G2
		        wait
		        waitL 12
		        noteL C3,24
		        wait
		        note  G2
		        waitL 12
		        wait
		        noteL G2,24
		        note  G2
		        noteL C3,6
		        wait
		        note  C3
		        wait
		        note  C3
		        wait
		        waitL 12
		        noteL C3,24
		        wait
		        note  Cs3
		        waitL 12
		        wait
		        noteL D3,24
		        wait
		        note  G2
		        waitL 12
		        wait
		        noteL D3,24
		        wait
		        note  G2
		        waitL 12
		        wait
		        noteL C3,24
		        wait
		        note  C3
		        waitL 12
		        wait
		        noteL C3,24
		        wait
		        note  Cs3
		        waitL 12
		        wait
		        noteL D3,24
		        wait
		        note  Ds3
		        waitL 12
		        wait
		        noteL G2,6
		        waitL 78
		        waitL 36
		        noteL G2,24
		        noteL C3,6
		        wait
		        note  C3
		        wait
		        note  C3
		        wait
		        waitL 12
		mainLoopEnd
Music_3_Channel_3:
		  inst 21
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        waitL 12
		mainLoopStart
		        waitL 12
		        noteL E5,6
		        wait
		        note  E5
		        waitL 30
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        waitL 24
		        noteL E5,12
		        note  F5
		        note  Fs5
		        noteL G5,6
		        wait
		        note  D5
		        wait
		        note  G5
		        wait
		        waitL 24
		        noteL F5,6
		        wait
		        note  F5
		        waitL 30
		        noteL F5,6
		        wait
		        note  F5
		        wait
		        waitL 12
		        noteL F5,24
		        note  F5
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		        waitL 24
		        noteL E5,6
		        wait
		        note  E5
		        waitL 30
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        waitL 24
		        noteL E5,12
		        note  F5
		        note  Fs5
		        noteL G5,6
		        wait
		        note  D5
		        wait
		        note  G5
		        wait
		        waitL 24
		        noteL F5,6
		        wait
		        note  F5
		        waitL 30
		        noteL F5,6
		        wait
		        note  F5
		        wait
		        waitL 12
		        noteL F5,24
		        note  F5
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		        waitL 12
		  vol 06h
		        noteL F6,18
		        noteL E6,6
		        note  F6
		        wait
		        noteL A6,24
		        note  G6
		        noteL F6,12
		        note  E6
		        note  D6
		        note  C6
		        note  D6
		        noteL B5,24
		  vol 07h
		        waitL 12
		        waitL 24
		        noteL E5,6
		        wait
		        note  E5
		        waitL 30
		        noteL F5,6
		        wait
		        note  F5
		        wait
		        waitL 12
		        noteL G5,24
		        note  F5
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        note  E5
		        wait
		  inst 44
		  vol 0Dh
		  vibrato 04Dh
		        noteL E4,12
		        noteL C5,18
		        noteL B4,6
		        noteL C5,18
		        noteL B4,6
		        noteL As4,18
		        noteL A4,6
		        note  As4
		        wait
		        note  As4
		        wait
		        noteL A4,48
		        noteL B4,30
		        waitL 6
		        note  D4
		        wait
		        noteL B4,18
		        noteL As4,6
		        noteL B4,18
		        noteL As4,6
		        noteL A4,18
		        noteL Gs4,6
		        note  A4
		        wait
		        note  D5
		        wait
		        noteL E5,48
		        noteL C5,30
		        waitL 6
		        note  E4
		        wait
		        noteL C5,18
		        noteL B4,6
		        noteL C5,18
		        noteL B4,6
		        noteL As4,18
		        noteL A4,6
		        note  As4
		        wait
		        note  Cs5
		        wait
		        noteL D5,18
		        noteL Cs5,6
		        note  D5
		        wait
		        note  E5
		        wait
		        noteL Ds5,36
		        noteL Fs5,12
		        noteL G5,6
		        wait
		        note  F5
		        wait
		        note  D5
		        wait
		        note  C5
		        wait
		        note  B4
		        wait
		        note  A4
		        wait
		        note  G4
		        wait
		        note  F4
		        wait
		        note  D4
		        waitL 18
		        noteL F4,24
		        noteL E4,6
		        wait
		        note  E4
		        wait
		        note  E4
		        wait
		  inst 21
		  vol 09h
		        waitL 12
		mainLoopEnd
Music_3_Channel_4:
		  inst 21
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        waitL 12
		mainLoopStart
		        waitL 12
		        noteL C5,6
		        wait
		        note  C5
		        waitL 30
		        noteL C5,6
		        wait
		        note  C5
		        wait
		        waitL 24
		        noteL C5,6
		        waitL 18
		        noteL C5,6
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        waitL 24
		        noteL B4,6
		        wait
		        note  B4
		        waitL 30
		        noteL D5,6
		        wait
		        note  B4
		        wait
		        waitL 12
		        noteL B4,24
		        note  D5
		        noteL C5,6
		        wait
		        note  C5
		        wait
		        note  C5
		        wait
		        waitL 24
		        noteL C5,6
		        wait
		        note  C5
		        waitL 30
		        noteL C5,6
		        wait
		        note  C5
		        wait
		        waitL 24
		        noteL C5,6
		        waitL 18
		        noteL C5,6
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        note  B4
		        wait
		        waitL 24
		        noteL B4,6
		        wait
		        note  B4
		        waitL 30
		        noteL D5,6
		        wait
		        note  B4
		        wait
		        waitL 24
		        noteL D5,18
		        waitL 6
		        note  B4
		        wait
		        note  C5
		        wait
		        note  C5
		        wait
		        note  C5
		        wait
		        noteL C5,12
		  vol 07h
		        noteL A5,18
		        noteL Gs5,6
		        note  A5
		        wait
		        noteL C6,24
		        note  B5
		        noteL A5,12
		        note  G5
		        note  F5
		        note  E5
		        note  F5
		        noteL G5,24
		  vol 07h
		        waitL 12
		        waitL 24
		        noteL C5,6
		        wait
		        note  C5
		        waitL 30
		        noteL B4,6
		        wait
		        note  B4
		        wait
		        waitL 24
		        note  B4
		        noteL B4,6
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        note  G4
		        wait
		        waitL 24
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        note  C5
		        waitL 18
		        noteL As4,6
		        wait
		        note  As4
		        wait
		        note  G4
		        waitL 18
		        noteL A4,6
		        wait
		        note  A4
		        wait
		        note  C5
		        waitL 18
		        noteL B4,6
		        wait
		        note  A4
		        wait
		        note  G4
		        waitL 18
		        noteL B4,6
		        wait
		        note  B4
		        wait
		        note  B4
		        waitL 18
		        noteL A4,6
		        wait
		        note  A4
		        wait
		        note  G4
		        waitL 18
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        note  C5
		        waitL 18
		        noteL B4,6
		        wait
		        note  A4
		        wait
		        note  G4
		        waitL 18
		        noteL G4,6
		        wait
		        note  G4
		        wait
		        note  C5
		        waitL 18
		        noteL Cs5,6
		        wait
		        note  As4
		        wait
		        note  G4
		        waitL 18
		        noteL A4,6
		        wait
		        note  A4
		        wait
		        note  C5
		        waitL 18
		        noteL C5,6
		        wait
		        note  B4
		        wait
		        note  A4
		        wait
		        note  B4
		        waitL 78
		        waitL 36
		        noteL B4,24
		        noteL C5,6
		        wait
		        note  C5
		        wait
		        note  C5
		        wait
		        waitL 12
		mainLoopEnd
Music_3_Channel_5:
		channel_end
Music_3_Channel_6:
		  psgInst 09h
		  setRelease 01h
		  vibrato 04Ch
		        psgNoteL G4,6
		        psgNote  Fs4
		mainLoopStart
		        psgNoteL G4,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL C4,12
		        psgNote  D4
		        psgNote  E4
		        psgNoteL D4,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNoteL F4,6
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL F4,12
		        psgNote  E4
		        psgNote  D4
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL C4,12
		        psgNote  D4
		        psgNote  E4
		        psgNoteL D4,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNoteL F4,6
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  F4
		        psgNote  E4
		        psgNoteL B4,12
		        psgNote  A4
		        psgNoteL G4,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL B3,12
		        psgNoteL C4,23
		  psgInst 00h
		        waitL    13
		  psgInst 09h
		        psgNoteL C4,12
		        psgNoteL A4,18
		        psgNoteL Gs4,6
		        psgNote  A4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL C5,24
		        psgNote  B4
		        psgNoteL A4,12
		        psgNote  G4
		        psgNote  F4
		        psgNote  E4
		        psgNote  F4
		        psgNoteL G4,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNoteL G4,6
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G4
		        psgNote  F4
		        psgNoteL B4,12
		        psgNote  A4
		        psgNoteL G4,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL B3,12
		        psgNoteL C4,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  C4
		  psgInst 00h
		        waitL    18
		  psgInst 07h
		        psgNoteL E3,48
		        psgNoteL E3,36
		        psgNoteL E3,12
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  F3
		        psgNote  E3
		        psgNote  F3
		        psgNoteL D3,48
		        psgNote  F3
		        psgNoteL F3,36
		        psgNoteL F3,12
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNoteL E3,48
		        psgNote  E3
		        psgNote  E3
		        psgNote  F3
		        psgNote  Fs3
		        psgNoteL G3,12
		  psgInst 00h
		        waitL    36
		        waitL    48
		        waitL    24
		  psgInst 07h
		        psgNote  F3
		        psgNoteL E3,6
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 08h
		        psgNote  G4
		        psgNote  Fs4
		mainLoopEnd
Music_3_Channel_7:
		  psgInst 09h
		  setRelease 01h
		  vibrato 04Ch
		        psgNoteL E4,6
		        psgNote  Ds4
		mainLoopStart
		        psgNoteL E4,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E4
		        psgNote  Ds4
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E4
		        psgNote  Ds4
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL G3,12
		        psgNote  B3
		        psgNote  C4
		        psgNoteL B3,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNoteL D4,6
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL D4,12
		        psgNote  C4
		        psgNote  G3
		        psgNoteL E3,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E4
		        psgNote  Ds4
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E4
		        psgNote  Ds4
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E4
		        psgNote  Ds4
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL E3,12
		        psgNote  G3
		        psgNote  C4
		        psgNoteL B3,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNoteL D4,6
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  D4
		        psgNote  Cs4
		        psgNoteL G4,12
		        psgNote  D4
		        psgNoteL B3,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL F3,12
		        psgNoteL E3,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNote  G3
		        psgNoteL F4,18
		        psgNoteL E4,6
		        psgNote  F4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL A4,24
		        psgNote  G4
		        psgNoteL F4,12
		        psgNote  E4
		        psgNote  D4
		        psgNote  C4
		        psgNote  D4
		        psgNoteL B3,24
		  psgInst 00h
		        waitL    12
		  psgInst 09h
		        psgNoteL E4,6
		        psgNote  Ds4
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  D4
		        psgNote  Cs4
		        psgNote  D4
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  G3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  D4
		        psgNote  C4
		        psgNoteL G4,12
		        psgNote  D4
		        psgNoteL B3,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNoteL F3,12
		        psgNoteL E3,6
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 09h
		        psgNote  E3
		  psgInst 00h
		        wait
		        waitL    12
		  psgInst 07h
		        psgNoteL G2,48
		        psgNoteL As2,36
		        psgNoteL As2,12
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  D3
		        psgNoteL B2,24
		        psgNoteL A2,12
		        psgNote  G2
		        psgNoteL G2,48
		        psgNoteL B2,36
		        psgNoteL B2,12
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  E3
		        psgNote  Ds3
		        psgNote  E3
		        psgNote  C3
		        psgNote  B2
		        psgNote  A2
		        psgNote  G2
		        psgNoteL G2,48
		        psgNote  As2
		        psgNote  A2
		        psgNote  C3
		        psgNoteL B2,12
		  psgInst 00h
		        waitL    36
		        waitL    48
		        waitL    24
		  psgInst 07h
		        psgNote  B2
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 07h
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 08h
		        psgNote  E4
		        psgNote  Ds4
		mainLoopEnd
Music_3_Channel_9:
		channel_end
