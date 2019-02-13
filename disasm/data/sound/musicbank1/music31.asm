
; ASM FILE music31.asm :
; 0x9077..0x90E5 : Music 31
Music_31:       db 0
		db 0
		db 0
		db 0C6h
		dw Music_31_Channel_0
		dw Music_31_Channel_1
		dw Music_31_Channel_2
		dw Music_31_Channel_3
		dw Music_31_Channel_4
		dw Music_31_Channel_5
		dw Music_31_Channel_6
		dw Music_31_Channel_7
		dw Music_31_Channel_9
		dw Music_31_Channel_9
Music_31_Channel_0:
		  inst 3
		  vol 0Fh
		  setRelease 02h
		  vibrato 00h
		mainLoopStart
		        noteL C2,7
		mainLoopEnd
Music_31_Channel_1:
		  inst 3
		  vol 0Fh
		  setRelease 02h
		  vibrato 00h
		mainLoopStart
		        noteL Cs2,8
		mainLoopEnd
Music_31_Channel_2:
		  inst 3
		  vol 0Fh
		  setRelease 02h
		  vibrato 00h
		mainLoopStart
		        noteL D2,9
		mainLoopEnd
Music_31_Channel_3:
		  stereo 080h
		  inst 3
		  vol 0Fh
		  setRelease 02h
		  vibrato 00h
		mainLoopStart
		        noteL D2,7
		mainLoopEnd
Music_31_Channel_4:
		  stereo 040h
		  inst 3
		  vol 0Fh
		  setRelease 02h
		  vibrato 00h
		mainLoopStart
		        noteL E2,8
		mainLoopEnd
Music_31_Channel_5:
		channel_end
Music_31_Channel_6:
		channel_end
Music_31_Channel_7:
		channel_end
Music_31_Channel_9:
		channel_end
