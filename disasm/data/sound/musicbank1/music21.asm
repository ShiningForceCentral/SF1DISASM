
; ASM FILE music21.asm :
; 0xF2E7..0xF3A4 : Music 21
Music_21:       db 0
		db 0
		db 0
		db 0CEh
		dw Music_21_Channel_0
		dw Music_21_Channel_1
		dw Music_21_Channel_2
		dw Music_21_Channel_3
		dw Music_21_Channel_4
		dw Music_21_Channel_5
		dw Music_21_Channel_6
		dw Music_21_Channel_7
		dw Music_21_Channel_9
		dw Music_21_Channel_9
Music_21_Channel_0:
		  inst 6
		  vol 08h
		  setRelease 0Eh
		  vibrato 02Ch
		  stereo 0C0h
		        noteL Cs6,24
		        note  Gs6
		        note  Ds6
		        note  F6
		        note  Cs7
		        note  As6
		        note  A6
		        note  E7
		        note  B6
		        note  Cs7
		        note  A7
		        noteL Fs7,26
		        noteL Ds6,4
		        noteL Gs7,40
		        waitL 96
		channel_end
Music_21_Channel_1:
		  inst 17
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL Cs4,144
		        note  A3
		        note  Gs3
		channel_end
Music_21_Channel_2:
		  inst 21
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL Cs3,144
		        note  A2
		        note  Gs2
		channel_end
Music_21_Channel_3:
		  inst 17
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        noteL Gs4,144
		        note  E4
		        note  Ds4
		channel_end
Music_21_Channel_4:
		  inst 17
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        noteL Ds5,144
		        note  B4
		        note  As4
		channel_end
Music_21_Channel_5:
		channel_end
Music_21_Channel_6:
		  psgInst 01Bh
		  setRelease 01h
		  vibrato 02Ch
		        psgNoteL Gs3,24
		        psgNote  Ds3
		        psgNote  F3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  Cs4
		        psgNote  E4
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  Fs4
		        psgNote  E4
		        psgNote  A4
		        psgNoteL Gs3,4
		        psgNoteL C5,42
		        waitL    96
		channel_end
Music_21_Channel_7:
		        waitL    12
		  psgInst 017h
		  setRelease 01h
		  vibrato 02Ch
		        psgNoteL Gs3,24
		        psgNote  Ds3
		        psgNote  F3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  Cs4
		        psgNote  E4
		        psgNote  B3
		        psgNote  Cs4
		        psgNote  Fs4
		        psgNote  E4
		        psgNote  A4
		        psgNoteL Gs3,4
		        psgNoteL C5,42
		        waitL    96
		channel_end
Music_21_Channel_9:
		channel_end
