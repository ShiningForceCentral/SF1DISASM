
; ASM FILE music33.asm :
; 0xD980..0xDAC1 : Music 33
Music_33:       db 0
		db 0
		db 0
		db 0BBh
		dw Music_33_Channel_0
		dw Music_33_Channel_1
		dw Music_33_Channel_2
		dw Music_33_Channel_3
		dw Music_33_Channel_4
		dw Music_33_Channel_5
		dw Music_33_Channel_6
		dw Music_33_Channel_7
		dw Music_33_Channel_9
		dw Music_33_Channel_9
Music_33_Channel_0:
		  inst 44
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL G6,6
		        note  Fs6
		        note  G6
		        wait
		        note  C6
		        wait
		        note  C6
		        wait
		        note  G5
		        wait
		        noteL A5,12
		        note  C6
		        note  C6
		        note  F6
		        noteL E6,72
		        waitL 24
		channel_end
Music_33_Channel_1:
		  inst 58
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 12
		        wait
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 20
		        noteL C5,4
		        waitL 8
		        noteL C5,72
		        waitL 24
		channel_end
Music_33_Channel_2:
		  inst 58
		  vol 0Fh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 12
		  vol 0Fh
		        noteL C3,4
		        waitL 8
		  vol 0Bh
		        noteL G3,4
		        waitL 8
		  vol 0Fh
		        noteL G2,4
		        waitL 8
		  vol 0Bh
		        noteL G3,4
		        waitL 8
		  vol 0Fh
		        noteL F2,4
		        waitL 8
		  vol 0Bh
		        noteL A3,4
		        waitL 8
		  vol 0Fh
		        noteL A2,4
		        waitL 8
		  vol 0Bh
		        noteL A3,4
		        waitL 8
		  vol 0Fh
		        noteL C3,72
		        waitL 24
		channel_end
Music_33_Channel_3:
		  inst 57
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 12
		        noteL G5,4
		        waitL 8
		        noteL C6,4
		        waitL 8
		        noteL E6,4
		        waitL 8
		        noteL G6,4
		        waitL 8
		        noteL A5,4
		        waitL 8
		        noteL C6,4
		        waitL 8
		        noteL F6,4
		        waitL 8
		        noteL A6,4
		        waitL 8
		        noteL C6,2
		        note  E6
		        noteL G6,68
		        waitL 24
		channel_end
Music_33_Channel_4:
		  inst 58
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 12
		        wait
		        noteL E5,4
		        waitL 20
		        noteL E5,4
		        waitL 20
		        noteL F5,4
		        waitL 20
		        noteL F5,4
		        waitL 8
		        noteL E5,72
		        waitL 24
		channel_end
Music_33_Channel_5:
		channel_end
Music_33_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL 12
		        waitL 48
		        wait
		        wait
		        wait
		channel_end
Music_33_Channel_7:
		  psgInst 0Ah
		  setRelease 01h
		  vibrato 04Ch
		        psgNoteL E5,6
		        psgNote  Ds5
		        psgNote  E5
		  psgInst 00h
		        wait
		  psgInst 0Ah
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 0Ah
		        psgNote  G4
		  psgInst 00h
		        wait
		  psgInst 0Ah
		        psgNote  E4
		  psgInst 00h
		        wait
		  psgInst 0Ah
		        psgNoteL F4,12
		        psgNote  A4
		        psgNote  A4
		        psgNote  A4
		        psgNoteL G4,72
		  psgInst 00h
		        waitL 24
		channel_end
Music_33_Channel_9:
		channel_end
