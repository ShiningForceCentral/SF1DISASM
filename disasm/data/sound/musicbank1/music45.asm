
; ASM FILE music45.asm :
; 0xE2F7..0xE38C : Music 45
Music_45:       db 0
		db 0
		db 0
		db 0B0h
		dw Music_45_Channel_0
		dw Music_45_Channel_1
		dw Music_45_Channel_2
		dw Music_45_Channel_3
		dw Music_45_Channel_4
		dw Music_45_Channel_5
		dw Music_45_Channel_6
		dw Music_45_Channel_7
		dw Music_45_Channel_9
		dw Music_45_Channel_9
Music_45_Channel_0:
		  inst 60
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        waitL 48
		        noteL A6,8
		        note  Gs6
		        note  E6
		        noteL B5,3
		        note  Ds6
		        noteL Fs6,66
		channel_end
Music_45_Channel_1:
		  inst 1
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL Cs6,4
		        waitL 12
		        noteL B3,8
		        noteL B3,120
		        waitL 0
		channel_end
Music_45_Channel_2:
		  inst 1
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL B5,4
		        waitL 12
		        noteL B2,8
		        noteL B2,120
		        waitL 0
		channel_end
Music_45_Channel_3:
		  inst 1
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL B6,4
		        waitL 12
		        noteL B4,8
		        noteL B4,120
		        waitL 0
		channel_end
Music_45_Channel_4:
		  inst 1
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		        noteL Fs6,4
		        waitL 12
		        noteL Fs4,8
		        noteL Fs4,120
		        waitL 0
		channel_end
Music_45_Channel_5:
		channel_end
Music_45_Channel_6:
		channel_end
Music_45_Channel_7:
		channel_end
