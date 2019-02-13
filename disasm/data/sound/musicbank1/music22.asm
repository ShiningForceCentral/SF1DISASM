
; ASM FILE music22.asm :
; 0xDAC1..0xDB97 : Music 22
Music_22:       db 0
		db 0
		db 0
		db 0C3h
		dw Music_22_Channel_0
		dw Music_22_Channel_1
		dw Music_22_Channel_2
		dw Music_22_Channel_3
		dw Music_22_Channel_4
		dw Music_22_Channel_5
		dw Music_22_Channel_6
		dw Music_22_Channel_7
		dw Music_22_Channel_9
		dw Music_22_Channel_9
Music_22_Channel_0:
		        waitL 27
		  inst 60
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        waitL 189
		        noteL E7,14
		        note  Ds7
		        noteL E7,27
		        note  C7
		        noteL C7,162
		channel_end
Music_22_Channel_1:
		        waitL 27
		  inst 18
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		  sustain
		        noteL C4,216
		  vibrato 020h
		  setRelease 01h
		        note  C4
		channel_end
Music_22_Channel_2:
		        waitL 27
		  inst 17
		  vol 0Fh
		  setRelease 01h
		  vibrato 03Ch
		  sustain
		        noteL F3,216
		  vibrato 020h
		  setRelease 01h
		        note  F3
		channel_end
Music_22_Channel_3:
		        waitL 27
		  inst 18
		  vol 0Dh
		  setRelease 01h
		  vibrato 036h
		  stereo 080h
		        wait
		  sustain
		  vibrato 020h
		  setRelease 01h
		        noteL E5,216
		channel_end
Music_22_Channel_4:
		        waitL 27
		  inst 18
		  vol 0Dh
		  setRelease 01h
		  vibrato 037h
		  stereo 0C0h
		  sustain
		        noteL A4,216
		  vibrato 020h
		  setRelease 01h
		        note  A4
		channel_end
Music_22_Channel_5:
		        waitL 3
		        waitL 216
		        wait
		        wait
		        wait
		        waitL 138
		channel_end
Music_22_Channel_6:
		  psgInst 07Bh
		  setRelease 01h
		  vibrato 05Fh
		        psgNoteL C5,14
		        psgNote  B4
		        psgNoteL C5,27
		        psgNote  A4
		  setRelease 080h
		        psgNoteL A4,162
		  vibrato 050h
		  setRelease 01h
		        psgNoteL A4,216
		channel_end
Music_22_Channel_7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 05Fh
		        waitL    27
		        waitL    81
		  psgInst 079h
		        psgNoteL E5,14
		        psgNote  Ds5
		        psgNoteL E5,27
		        psgNote  C5
		  setRelease 080h
		        psgNoteL C5,54
		  vibrato 050h
		  setRelease 01h
		        psgNoteL C5,216
		channel_end
Music_22_Channel_9:
		channel_end
