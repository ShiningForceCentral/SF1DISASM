
; ASM FILE music05.asm :
; 0x8E18..0x9077 : Music 05
Music_5:        db 0
		db 0
		db 0
		db 0C2h
		dw Music_5_Channel_0
		dw Music_5_Channel_1
		dw Music_5_Channel_2
		dw Music_5_Channel_3
		dw Music_5_Channel_4
		dw Music_5_Channel_5
		dw Music_5_Channel_6
		dw Music_5_Channel_7
		dw Music_5_Channel_9
		dw Music_5_Channel_9
Music_5_Channel_0:
		  inst 60
		  vol 0Ah
		  setRelease 08h
		  vibrato 00h
		        noteL Ds7,18
		        note  F7
		mainLoopStart
		        noteL G7,18
		        note  As6
		        noteL As7,36
		        noteL D7,18
		        note  Ds7
		        note  F7
		        note  As6
		        noteL As7,36
		        noteL Ds7,18
		        note  F7
		        note  G7
		        note  Ds7
		        noteL Ds8,36
		        noteL D8,18
		        note  C8
		        noteL C8,36
		        note  As7
		        noteL F7,18
		        note  G7
		        note  Gs7
		        note  F7
		        noteL C8,36
		        noteL As7,18
		        note  Gs7
		        note  As7
		        note  G7
		        noteL Ds8,36
		        noteL D8,18
		        note  C8
		        note  D8
		        note  As7
		        noteL F8,36
		        noteL Ds8,18
		        note  C8
		        noteL As7,36
		        wait
		        noteL Ds7,18
		        note  F7
		        note  G7
		        note  As6
		        noteL As7,36
		        noteL D7,18
		        note  Ds7
		        note  F7
		        note  As6
		        noteL As7,36
		        noteL Ds7,18
		        note  F7
		        note  G7
		        note  Ds7
		        noteL Ds8,36
		        noteL D8,18
		        note  C8
		        noteL C8,36
		        note  As7
		        noteL F7,18
		        note  G7
		        note  Gs7
		        note  F7
		        noteL C8,36
		        noteL As7,18
		        note  Gs7
		        note  As7
		        note  G7
		        noteL Ds8,36
		        noteL D8,18
		        note  C8
		        note  Gs7
		        note  F7
		        noteL C8,36
		        noteL As7,18
		        note  D7
		        noteL F7,36
		        note  Ds7
		        noteL Ds7,18
		        note  F7
		mainLoopEnd
Music_5_Channel_1:
		  inst 0
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Fh
		        waitL 36
		mainLoopStart
		        waitL 36
		        noteL As5,72
		        waitL 36
		        note  As5
		        note  Gs5
		        wait
		        note  G5
		        note  A5
		        note  As5
		        note  As5
		        wait
		        wait
		        noteL Gs5,72
		        waitL 36
		        noteL As5,72
		        waitL 36
		        note  As5
		        note  A5
		        note  As5
		        note  As5
		        wait
		        wait
		        noteL As5,72
		        waitL 36
		        note  As5
		        note  Gs5
		        wait
		        note  G5
		        note  A5
		        note  As5
		        note  As5
		        wait
		        wait
		        noteL Gs5,72
		        waitL 36
		        noteL As5,72
		        waitL 36
		        note  Gs5
		        note  Gs5
		        note  F5
		        note  Ds5
		        wait
		mainLoopEnd
Music_5_Channel_2:
		        waitL 36
		  inst 0
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Fh
		mainLoopStart
		        waitL 36
		        noteL Ds5,72
		        waitL 36
		        noteL D5,72
		        waitL 36
		        note  Ds5
		        note  F5
		        note  Ds5
		        note  D5
		        wait
		        wait
		        note  Ds5
		        note  D5
		        wait
		        note  F5
		        note  Ds5
		        wait
		        note  F5
		        note  Ds5
		        note  Ds5
		        note  D5
		        wait
		        wait
		        noteL Ds5,72
		        waitL 36
		        noteL D5,72
		        waitL 36
		        note  Ds5
		        note  F5
		        note  Ds5
		        note  D5
		        wait
		        wait
		        note  Ds5
		        note  D5
		        wait
		        note  F5
		        note  Ds5
		        wait
		        note  Ds5
		        note  D5
		        note  Gs4
		        note  G4
		        wait
		mainLoopEnd
Music_5_Channel_3:
		        waitL 36
		  inst 2
		  vol 0Ah
		  setRelease 02h
		  vibrato 02Ah
		mainLoopStart
		        noteL Ds3,18
		        note  As3
		        noteL G4,36
		        note  Ds4
		        noteL As3,18
		        note  D4
		        noteL Gs4,36
		        note  F4
		        noteL Ds3,18
		        note  As3
		        noteL G4,36
		        note  A4
		        note  Ds4
		        note  D4
		        note  Gs4
		        noteL F3,18
		        note  C4
		        noteL Gs4,36
		        note  F4
		        noteL Ds4,18
		        note  As3
		        noteL G4,36
		        note  Ds4
		        noteL D4,18
		        note  F4
		        noteL As4,36
		        note  A4
		        note  Gs4
		        note  D4
		        note  Gs3
		        noteL Ds3,18
		        note  As3
		        noteL G4,36
		        note  Ds4
		        noteL As3,18
		        note  D4
		        noteL Gs4,36
		        note  F4
		        noteL Ds3,18
		        note  As3
		        noteL G4,36
		        note  A4
		        note  Ds4
		        note  D4
		        note  Gs4
		        noteL F3,18
		        note  C4
		        noteL F4,72
		        noteL G3,18
		        note  F4
		        noteL G4,72
		        noteL F3,18
		        note  C4
		        noteL F4,72
		        noteL Ds4,36
		        note  Ds4
		        wait
		mainLoopEnd
Music_5_Channel_4:
		        waitL 36
		  inst 45
		  vol 0Fh
		  setRelease 01h
		  vibrato 02Ah
		mainLoopStart
		        noteL Ds3,108
		        note  As3
		        noteL Ds3,72
		        noteL F3,36
		        note  As3
		        noteL As2,72
		        noteL F3,108
		        note  Ds3
		        noteL F3,72
		        noteL F3,36
		        note  As3
		        note  As2
		        wait
		        noteL Ds3,108
		        note  As3
		        noteL Ds3,72
		        noteL F3,36
		        note  As3
		        noteL As2,72
		        noteL F3,108
		        noteL G3,36
		        noteL C3,72
		        noteL F3,36
		        note  As3
		        note  As2
		        note  Ds3
		        note  Ds3
		        wait
		mainLoopEnd
Music_5_Channel_5:
		channel_end
Music_5_Channel_6:
		  psgInst 00h
		  vibrato 05Ch
		  setRelease 01h
		        waitL    36
		mainLoopStart
		        waitL    108
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL    72
		  psgInst 07Bh
		        psgNoteL Ds4,18
		        psgNote  F4
		        psgNote  G4
		        psgNote  As3
		        psgNoteL As4,36
		        psgNoteL D4,18
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  As3
		        psgNoteL As4,36
		        psgNoteL Ds4,18
		        psgNote  F4
		        psgNote  G4
		        psgNote  Ds4
		        psgNoteL Ds5,36
		        psgNoteL D5,18
		        psgNote  C5
		        psgNoteL C5,36
		        psgNote  As4
		        psgNoteL F4,18
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  F4
		        psgNoteL C5,36
		        psgNoteL As4,18
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  G4
		        psgNoteL Ds5,36
		        psgNoteL D5,18
		        psgNote  C5
		        psgNote  Gs4
		        psgNote  F4
		        psgNoteL C5,36
		        psgNoteL As4,18
		        psgNote  D4
		        psgNoteL F4,36
		        psgNote  Ds4
		  psgInst 00h
		        wait
		mainLoopEnd
Music_5_Channel_7:
		        waitL    12
		  psgInst 00h
		  vibrato 05Ch
		  setRelease 01h
		        waitL    36
		mainLoopStart
		        waitL    108
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL    72
		  psgInst 079h
		        psgNoteL Ds4,18
		        psgNote  F4
		        psgNote  G4
		        psgNote  As3
		        psgNoteL As4,36
		        psgNoteL D4,18
		        psgNote  Ds4
		        psgNote  F4
		        psgNote  As3
		        psgNoteL As4,36
		        psgNoteL Ds4,18
		        psgNote  F4
		        psgNote  G4
		        psgNote  Ds4
		        psgNoteL Ds5,36
		        psgNoteL D5,18
		        psgNote  C5
		        psgNoteL C5,36
		        psgNote  As4
		        psgNoteL F4,18
		        psgNote  G4
		        psgNote  Gs4
		        psgNote  F4
		        psgNoteL C5,36
		        psgNoteL As4,18
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  G4
		        psgNoteL Ds5,36
		        psgNoteL D5,18
		        psgNote  C5
		        psgNote  Gs4
		        psgNote  F4
		        psgNoteL C5,36
		        psgNoteL As4,18
		        psgNote  D4
		        psgNoteL F4,36
		        psgNote  Ds4
		  psgInst 00h
		        wait
		mainLoopEnd
Music_5_Channel_9:
		channel_end
