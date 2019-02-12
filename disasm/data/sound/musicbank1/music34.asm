
; ASM FILE music34.asm :
; 0x8B20..0x8BDA : Music 34
Music_34:       db 0
		db 0
		db 0
		db 0B5h
		dw Music_34_Channel_0
		dw Music_34_Channel_1
		dw Music_34_Channel_2
		dw Music_34_Channel_3
		dw Music_34_Channel_4
		dw Music_34_Channel_5
		dw Music_34_Channel_6
		dw Music_34_Channel_7
		dw Music_34_Channel_9
		dw Music_34_Channel_9
Music_34_Channel_0:
		  inst 32
		  vol 0Dh
		  setRelease 01h
		  vibrato 02Ah
		        waitL 24
		        noteL B4,4
		        wait
		        note  As4
		        wait
		        note  G4
		        wait
		        noteL Fs4,48
		channel_end
Music_34_Channel_1:
		  inst 31
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ah
		        noteL B7,96
		channel_end
Music_34_Channel_2:
		  inst 31
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ah
		        noteL E7,96
		channel_end
Music_34_Channel_3:
		  inst 8
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ah
		        waitL 24
		        noteL B3,4
		        wait
		        note  As3
		        wait
		        note  G3
		        wait
		        noteL Fs3,48
		channel_end
Music_34_Channel_4:
		  inst 30
		  vol 0Dh
		  setRelease 01h
		  vibrato 02Ah
		        noteL E2,96
		        waitL 17
		channel_end
Music_34_Channel_5:
		channel_end
Music_34_Channel_6:
		  psgInst 06Ch
		  setRelease 00h
		  vibrato 02Ah
		        psgNoteL G4,6
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  B4
		        psgNote  As4
		        psgNoteL Fs4,4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		        psgNote  G4
		        psgNote  Fs4
		channel_end
Music_34_Channel_7:
		  psgInst 06Ch
		  setRelease 00h
		  vibrato 02Ah
		        psgNoteL B3,6
		        psgNote  As3
		        psgNote  B3
		        psgNote  D4
		        psgNote  Cs4
		        psgNoteL As3,3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		        psgNote  As3
		        psgNote  B3
		channel_end
Music_34_Channel_9:
		channel_end
