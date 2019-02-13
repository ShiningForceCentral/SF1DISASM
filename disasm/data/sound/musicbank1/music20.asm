
; ASM FILE music20.asm :
; 0xF1FB..0xF2E7 : Music 20
Music_20:       db 0
		db 0B0h
		db 1
		db 0C6h
		dw Music_20_Channel_0
		dw Music_20_Channel_1
		dw Music_20_Channel_2
		dw Music_20_Channel_3
		dw Music_20_Channel_4
		dw Music_20_Channel_5
		dw Music_20_Channel_6
		dw Music_20_Channel_7
		dw Music_20_Channel_9
		dw Music_20_Channel_9
Music_20_Channel_0:
		  inst 6
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        waitL 144
		        wait
		        noteL Fs6,10
		        note  D6
		        note  Cs6
		        note  B5
		        note  Fs5
		        note  D5
		        note  Cs5
		        note  B4
		        noteL G4,64
		channel_end
Music_20_Channel_1:
		  inst 15
		  vol 00h
		  sustain
		  vibrato 038h
		  stereo 080h
		        noteL Fs3,144
		  setRelease 01h
		        note  Fs3
		  sustain
		        note  B3
		  setRelease 01h
		        note  B3
		channel_end
Music_20_Channel_2:
		  inst 5
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		        noteL B3,144
		        note  A3
		  sustain
		        note  G3
		  setRelease 01h
		        note  G3
		channel_end
Music_20_Channel_3:
		  inst 16
		  vol 0Ch
		  setRelease 01h
		  stereo 0C0h
		  vibrato 036h
		        noteL Cs4,144
		        note  E4
		  sustain
		        note  Fs4
		  setRelease 01h
		        note  Fs4
		channel_end
Music_20_Channel_4:
		  stereo 040h
		  inst 16
		  vol 0Ch
		  sustain
		  vibrato 037h
		        noteL B3,144
		  setRelease 01h
		        note  B3
		  sustain
		        note  Cs4
		  setRelease 01h
		        note  Cs4
		channel_end
Music_20_Channel_5:
		channel_end
Music_20_Channel_6:
		  setRelease 01h
		  vibrato 05Ch
		  psgInst 0Bh
		        psgNoteL Fs4,24
		        psgNoteL B4,8
		        psgNote  Cs5
		        psgNote  D5
		  setRelease 080h
		        psgNoteL Cs5,96
		  setRelease 01h
		        psgNoteL Cs5,72
		        psgNoteL B4,24
		        psgNote  Cs5
		        psgNote  D5
		  setRelease 080h
		        psgNoteL Fs5,144
		  setRelease 01h
		        psgNote  Fs5
		  psgInst 00h
		channel_end
Music_20_Channel_7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    144
		        wait
		  psgInst 0Bh
		        psgNoteL Fs3,8
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		        psgNote  Fs3
		        psgNote  G3
		  psgInst 00h
		channel_end
Music_20_Channel_9:
		channel_end
