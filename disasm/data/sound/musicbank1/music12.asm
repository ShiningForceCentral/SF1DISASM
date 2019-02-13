
; ASM FILE music12.asm :
; 0xD6E5..0xD7D1 : Music 12
Music_12:       db 0
		db 0
		db 0
		db 0CCh
		dw Music_12_Channel_0
		dw Music_12_Channel_1
		dw Music_12_Channel_2
		dw Music_12_Channel_3
		dw Music_12_Channel_4
		dw Music_12_Channel_5
		dw Music_12_Channel_6
		dw Music_12_Channel_7
		dw Music_12_Channel_9
		dw Music_12_Channel_9
Music_12_Channel_0:
		  inst 21
		  vol 0Ah
		  setRelease 03h
		  vibrato 02Ch
		  stereo 080h
		        waitL 144
		        wait
		        wait
		        waitL 96
		        noteL D5,16
		        note  Cs5
		        note  A4
		        noteL B4,32
		        noteL E4,16
		        noteL E4,240
		channel_end
Music_12_Channel_1:
		  inst 11
		  vol 08h
		  vibrato 02Ch
		  stereo 0C0h
		  sustain
		        noteL E5,216
		  vibrato 020h
		        note  E5
		        note  E5
		  setRelease 01h
		        note  E5
		channel_end
Music_12_Channel_2:
		  inst 22
		  vol 0Eh
		  vibrato 02Ch
		  stereo 0C0h
		  sustain
		        noteL D2,216
		  vibrato 020h
		        note  D2
		        note  D2
		  setRelease 01h
		        note  D2
		channel_end
Music_12_Channel_3:
		  inst 11
		  vol 08h
		  vibrato 02Ch
		  stereo 0C0h
		  sustain
		        noteL B5,216
		  vibrato 020h
		        note  B5
		        note  B5
		  setRelease 01h
		        note  B5
		channel_end
Music_12_Channel_4:
		  inst 11
		  vol 08h
		  setRelease 00h
		  vibrato 02Ch
		  stereo 0C0h
		  sustain
		        noteL Gs5,216
		  vibrato 020h
		        note  Gs5
		        note  Gs5
		  setRelease 01h
		        note  Gs5
		channel_end
Music_12_Channel_5:
		channel_end
Music_12_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    144
		        wait
		        wait
		        wait
		        waitL    48
		  psgInst 0Ah
		  setRelease 01h
		        psgNoteL D3,6
		        psgNote  E3
		        psgNote  Gs3
		        psgNote  B3
		        psgNote  D4
		        psgNote  E4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  D4
		        psgNote  E4
		        psgNote  Gs4
		        psgNote  A4
		        psgNote  B4
		        psgNote  D5
		        psgNote  E5
		        psgNote  Gs5
		        psgNote  B5
		  psgInst 00h
		        waitL    138
		channel_end
Music_12_Channel_7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 05Ch
		        waitL    144
		  psgInst 00h
		        waitL    96
		  psgInst 0Bh
		        psgNoteL B4,16
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  B4
		        psgNoteL B5,96
		        psgNoteL A5,16
		        psgNote  Gs5
		        psgNote  E5
		        psgNoteL Fs5,32
		        psgNoteL B4,16
		  setRelease 080h
		        psgNoteL B4,240
		  vibrato 040h
		        psgNoteL B4,144
		  psgInst 00h
		channel_end
Music_12_Channel_9:
		channel_end
