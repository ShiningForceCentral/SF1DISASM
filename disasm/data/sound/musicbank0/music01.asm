
; ASM FILE music01.asm :
; 0x827D..0x9528 : Music 01
Music_1:        db 0
		db 0
		db 0
		db 0BFh
		dw Music_1_Channel_0
		dw Music_1_Channel_1
		dw Music_1_Channel_2
		dw Music_1_Channel_3
		dw Music_1_Channel_4
		dw Music_1_Channel_5
		dw Music_1_Channel_6
		dw Music_1_Channel_7
		dw Music_1_Channel_9
		dw Music_1_Channel_9
Music_1_Channel_0:
		  inst 13
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL C5,12
		        note  F5
		        note  Cs6
		mainLoopStart
		        noteL C6,36
		        noteL Gs5,120
		        noteL C5,12
		        note  F5
		        note  Ds6
		        noteL D6,36
		        noteL As5,132
		        noteL As5,12
		        note  C6
		        noteL Cs6,36
		        noteL As5,132
		        noteL Gs5,12
		        note  As5
		        noteL G5,156
		        noteL C6,12
		        note  F6
		        note  Cs7
		        noteL C7,36
		        noteL Gs6,120
		        noteL C6,12
		        note  F6
		        note  Ds7
		        noteL D7,36
		        noteL As6,132
		        noteL As6,12
		        note  C7
		        noteL Cs7,36
		        noteL F7,132
		        noteL E7,12
		        note  F7
		        noteL E7,168
		        noteL F7,12
		        note  G7
		        noteL Gs7,36
		        noteL F7,132
		        noteL Cs7,12
		        note  F7
		        noteL E7,36
		        noteL C7,132
		        noteL As6,12
		        note  C7
		        noteL Cs7,36
		        noteL F7,132
		        noteL F7,12
		        note  G7
		        noteL Gs7,36
		        noteL C8,132
		        noteL As6,12
		        note  C7
		        noteL Cs7,36
		        noteL As6,132
		        noteL Gs6,12
		        note  As6
		        noteL G6,168
		        noteL F6,12
		        note  G6
		        noteL Gs6,36
		        noteL C7,132
		        noteL As6,12
		        note  Gs6
		  sustain
		        noteL G6,96
		  vibrato 020h
		        note  G6
		        note  G6
		  setRelease 01h
		        note  G6
		        wait
		        wait
		        wait
		        waitL 60
		  vibrato 02Ch
		        noteL C5,12
		        note  F5
		        note  Cs6
		mainLoopEnd
Music_1_Channel_1:
		        waitL 36
		  inst 4
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		mainLoopStart
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL As3,24
		        waitL 72
		        wait
		        noteL As3,6
		        note  As3
		        note  As3
		        note  As3
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		        noteL F3,24
		        waitL 72
		        waitL 96
		        wait
		        waitL 72
		        noteL C4,6
		        note  C4
		        note  C4
		        note  C4
		mainLoopEnd
Music_1_Channel_2:
		        waitL 36
		  inst 5
		  vol 0Eh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		mainLoopStart
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,12
		        note  F3
		        wait
		        note  F3
		        waitL 60
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 60
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 60
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL C4,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 60
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 60
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 60
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL C4,24
		        noteL As3,12
		        waitL 24
		        noteL As3,12
		        waitL 36
		        noteL As3,6
		        wait
		        noteL As3,12
		        wait
		        note  As3
		        waitL 36
		        noteL As3,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL F3,24
		        noteL As3,12
		        waitL 24
		        noteL As3,12
		        waitL 36
		        noteL As3,6
		        wait
		        noteL C4,12
		        wait
		        note  C4
		        waitL 36
		        noteL C4,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL F3,24
		        noteL As3,12
		        waitL 24
		        noteL As3,12
		        waitL 36
		        noteL As3,6
		        wait
		        noteL C4,12
		        wait
		        note  C4
		        waitL 36
		        noteL C4,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL F3,24
		        noteL As3,12
		        waitL 24
		        noteL As3,12
		        waitL 36
		        noteL As3,6
		        wait
		        noteL C4,12
		        wait
		        note  C4
		        waitL 36
		        noteL C4,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL F3,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL C4,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL F3,24
		        noteL F3,12
		        waitL 24
		        noteL F3,12
		        waitL 36
		        noteL F3,6
		        wait
		        noteL F3,12
		        wait
		        note  F3
		        waitL 36
		        noteL C4,24
		mainLoopEnd
Music_1_Channel_3:
		        waitL 36
		  inst 13
		  vol 0Bh
		  setRelease 00h
		  vibrato 02Ch
		  stereo 040h
		mainLoopStart
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL D5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL E5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL Ds5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL Gs5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL G5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		        noteL F5,3
		        waitL 9
		mainLoopEnd
Music_1_Channel_4:
		        waitL 36
		  inst 13
		  vol 0Bh
		  setRelease 00h
		  vibrato 02Ch
		  stereo 080h
		mainLoopStart
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL Ds4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL C5,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL G4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL F4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL As4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		        noteL Gs4,3
		        waitL 9
		mainLoopEnd
Music_1_Channel_5:
		        waitL 34
		        sampleL 3,2
		mainLoopStart
		        sampleL 1,12
		        sample  3
		        sampleL 3,10
		        sampleL 3,2
		        sampleL 1,12
		        sample  3
		        sample  3
		        sampleL 3,10
		        sampleL 3,2
		        sampleL 1,12
		        sample  1
		        sampleL 3,10
		        sampleL 3,2
		        sampleL 1,12
		        sample  3
		        sample  3
		        sample  3
		        sampleL 1,3
		        sample  2
		        sample  3
		        sample  3
		        sample  3
		        sample  3
		        sampleL 3,4
		        sampleL 3,2
		mainLoopEnd
Music_1_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    36
		mainLoopStart
		        waitL    96
		        wait
		        wait
		        wait
		        wait
		        wait
		        wait
		        waitL    60
		  psgInst 07Ch
		        psgNoteL C3,12
		        psgNote  F3
		        psgNote  Cs4
		        psgNoteL C4,36
		  setRelease 080h
		        psgNoteL Gs3,60
		  setRelease 01h
		        psgNote  Gs3
		        psgNoteL C3,12
		        psgNote  F3
		        psgNote  C4
		        psgNoteL F4,36
		  setRelease 080h
		        psgNoteL D4,60
		  setRelease 01h
		        psgNoteL D4,72
		        psgNoteL D4,12
		        psgNote  Ds4
		        psgNoteL F4,36
		        psgNoteL Gs4,60
		        psgNoteL As4,72
		        psgNoteL G4,12
		        psgNote  Gs4
		  setRelease 080h
		        psgNoteL G4,96
		  setRelease 01h
		        psgNoteL G4,72
		        psgNoteL F4,12
		        psgNote  G4
		        psgNoteL Gs4,36
		  setRelease 080h
		        psgNoteL F4,60
		  setRelease 01h
		        psgNoteL F4,72
		        psgNoteL Cs4,12
		        psgNote  F4
		        psgNoteL E4,36
		  setRelease 080h
		        psgNoteL C4,60
		  setRelease 01h
		        psgNoteL C4,72
		        psgNoteL Cs4,12
		        psgNote  Ds4
		        psgNoteL F4,36
		        psgNoteL Gs4,60
		        psgNoteL As4,72
		        psgNoteL Gs4,12
		        psgNote  As4
		        psgNoteL C5,36
		  setRelease 080h
		        psgNoteL F5,60
		  setRelease 01h
		        psgNoteL F5,72
		        psgNoteL Cs4,12
		        psgNote  Ds4
		        psgNoteL F4,36
		        psgNoteL Cs4,60
		        psgNoteL E4,72
		        psgNoteL E4,24
		  setRelease 080h
		        psgNoteL Ds4,96
		  setRelease 01h
		        psgNoteL Ds4,72
		        psgNoteL Cs4,12
		        psgNote  Ds4
		        psgNoteL Cs4,36
		        psgNoteL F4,60
		        psgNoteL E4,96
		        psgNote  C4
		        psgNote  Cs4
		        psgNote  Ds4
		        psgNote  Cs4
		  psgInst 00h
		        wait
		        wait
		        wait
		        wait
		mainLoopEnd
Music_1_Channel_7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    36
		mainLoopStart
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		countedLoopEnd
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Cs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL Gs2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Gs2
		  psgInst 00h
		        wait
		countedLoopEnd
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Cs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL E3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Cs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL C3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Cs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		countedLoopStart 1
		  psgInst 0Bh
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  F3
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Cs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		countedLoopStart 2
		  psgInst 0Bh
		        psgNoteL As2,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  As2
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 0Bh
		        psgNoteL Cs3,6
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  C3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		  psgInst 0Bh
		        psgNote  Cs3
		  psgInst 00h
		        wait
		mainLoopEnd
Music_1_Channel_9:
		channel_end
