

;
;
; Input	MD5   :	AE17DC5D8FB566C32DBC3A5D0C361B87


; Processor	  : z80	[]
; Target assembler: Zilog Macro	Assembler

; ===========================================================================


	cpu z80
	listing off
	phase	0

STACK_START equ 1FF0h	
NEW_SAMPLE_TO_LOAD equ 1FF8h	
YM_TIMER_VALUE equ 1FF9h	
FADE_IN_PARAMETERS equ 1FFCh	
MUSIC_LEVEL equ 1FFDh
SFX_USELESS_BYTE_1 equ 1FFEh
NEW_OPERATION equ 1FFFh	
YM1_REGISTER equ 4000h
YM1_DATA equ 4001h
YM2_REGISTER equ 4002h
YM2_DATA equ 4003h
BANK_REGISTER equ 6000h
PSG_PORT equ 7F11h


; =============== S U B	R O U T	I N E =======================================


init:
		di			; disable interrupts : synchronisation is just based on	YM Timer
		ld	sp, STACK_START	; initialize stack pointer
		xor	a		; apparently the smart way to clear 8-bit accumulator a
		ld	(SFX_USELESS_BYTE_1), a	; init at 0, never changes, just has an	influence on byte 0x14AE, but no actual	effect.	So, don't care about it !
		dec	a		; I've no idea of the initial purpose of those two bytes, but they absolutely have no influence on the driver's execution with this initialization
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ld	a, 0Fh
		ld	(MUSIC_LEVEL), a ; init	music level at max
		ld	a, 0FFh
		ld	(YM_TIMER_VALUE), a ; init timer value without sending it to YM
		ld	a, 0Fh
		ld	(FADE_IN_PARAMETERS), a	; init fade in parameters : no fade in
		ld	a, 20h ; ' '    ; load music $20, which is void
		call	Main		; process new operation	$20 to initialize YM and PSG with void data
		call	LoadBank	; init loaded bank, and	enter the driver's main loop !
; End of function init

; START	OF FUNCTION CHUNK FOR Mute_Sound

Main_Loop:				; CODE XREF: Mute_Sound-19j
					; Mute_Sound-3j ...
		ld	a, (YM1_REGISTER) ; get	YM status
		and	2		; check	YM Timer. Docs say it's Timer A, but the rest of the code uses Timer B. Error in docs, I assume.
		jr	z, Dac_Loop	; jump as long as there	is no timer overflow
		call	UpdateSound	; call this subroutine at YM Timer overflow to update the sound	data for everything else than DAC
		jp	loc_34
; ---------------------------------------------------------------------------

Dac_Loop:				; CODE XREF: Mute_Sound-35j
					; DATA XREF: LoadDacSound+19w
		ld	b, 5		; loop parameter is dynamically	changed	to adjust time period of a DAC sound

loc_32:					; CODE XREF: Mute_Sound:loc_32j
		djnz	$		; loop b times before checking things to do

loc_34:					; CODE XREF: Mute_Sound-30j
		ld	a, (NEW_OPERATION) ; new operation to process (play music/sfx, fade out	...), sent from	68k
		or	a		; check	first if there is a new	operation to process
		call	nz, Main
		ld	a, (NEW_SAMPLE_TO_LOAD)	; stores the index of a	new DAC	sample to play
		or	a		; check	if there is a new DAC sample to	play
		call	nz, LoadDacSound
		ld	a, d		; check	remaining sound	length
		or	e
		jr	z, Main_Loop	; if remaining length =	0, then	it's end of DAC sample, or it's because sample $FE has been loaded at initialization
		ld	b, 2Ah ; '*'    ; YM Register : DAC data
		ld	c, (hl)		; get next DAC sample byte. It's 8-bit PCM
		inc	hl

loc_4A:					; CODE XREF: Mute_Sound-Ej
		ld	a, (YM1_REGISTER)
		and	80h ; 'Ä'
		jr	nz, loc_4A	; loop as long as YM busy
		ld	a, b
		ld	(YM1_REGISTER),	a
		ld	a, c
		ld	(YM1_DATA), a	; transmit DAC Data
		dec	de		; decrement remaining sound length to play
		jp	Main_Loop	; End of the driver's main loop !
; END OF FUNCTION CHUNK	FOR Mute_Sound

; =============== S U B	R O U T	I N E =======================================


Mute_Sound:				; CODE XREF: Main+8j

; FUNCTION CHUNK AT 0023 SIZE 0000003A BYTES
; FUNCTION CHUNK AT 00B2 SIZE 00000009 BYTES

		push	hl		; mutes	sound at reception of operation	$FF
		push	de
		xor	a
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a ; clear
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		ld	bc, 407Fh	; set Total Level to smallest amplitude
		ld	d, 4		; 4 loops, one for each	operator of the	3 channels

loc_6B:					; CODE XREF: Mute_Sound+1Cj
		call	YM_Input
		inc	b
		call	YM_Input
		inc	b
		call	YM_Input
		inc	b
		inc	b
		dec	d
		jr	nz, loc_6B
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		ld	bc, 407Fh	; set Total Level to smallest amplitude
		ld	d, 4		; 4 loops, one for each	operator of 3 channels

loc_85:					; CODE XREF: Mute_Sound+36j
		call	YM2_Input
		inc	b
		call	YM2_Input
		inc	b
		call	YM2_Input
		inc	b
		inc	b
		dec	d
		jr	nz, loc_85
		ld	hl, PSG_PORT
		ld	a, 9Fh ; 'ü'
		ld	(hl), a		; set PSG channel 1 volume to 0
		ld	a, 0BFh	; 'ø'
		ld	(hl), a		; set PSG channel 2 volume to 0
		ld	a, 0DFh	; 'ﬂ'
		ld	(hl), a		; set PSG channel 3 volume to 0
		ld	a, 0FFh
		ld	(hl), a		; set PSG noise	channel	volume to 0

loc_A4:					; CODE XREF: Mute_Sound+4Bj
		ld	a, (NEW_OPERATION) ; new operation to process (play music/sfx, fade out	...), sent from	68k
		or	a
		jr	z, loc_A4	; loop as long as there	is no new operation to process
		cp	0FFh
		jr	nz, Update_YM_Instruments ; if next sent operation is not to mute the sound, go	process	it in the main loop
		xor	a		; if next sent operation is to mute the	sound, then ignore it, and also	go back	to main	loop !
		ld	(NEW_OPERATION), a ; new operation to process (play music/sfx, fade out	...), sent from	68k
; End of function Mute_Sound

; START	OF FUNCTION CHUNK FOR Mute_Sound

Update_YM_Instruments:			; CODE XREF: Mute_Sound+4Fj Main-7Dj
		call	YM_UpdateInstrumentsLevels
		pop	de
		pop	hl
		pop	af
		jp	Main_Loop	; go back to main loop
; END OF FUNCTION CHUNK	FOR Mute_Sound

; =============== S U B	R O U T	I N E =======================================


YM_UpdateInstrumentsLevels:		; CODE XREF: Mute_Sound:Update_YM_Instrumentsp
					; UpdateSound+1Ep
		ld	iy, 14A2h
		xor	a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		ld	(iy+0),	a
		ld	ix, YM_CHANNEL_DATA_1 ;	get channel data area
		ld	a, (ix+4)	; get channel level
		call	YM1_LoadInstrument ; reload instrument to load the new level
		inc	(iy+0)
		ld	ix, YM_CHANNEL_DATA_2
		ld	a, (ix+4)
		call	YM1_LoadInstrument
		inc	(iy+0)
		ld	ix, YM_CHANNEL_DATA_3
		ld	a, (ix+4)
		call	YM1_LoadInstrument
		xor	a
		ld	(iy+0),	a
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		ld	ix, YM_CHANNEL_DATA_4
		ld	a, (ix+4)
		call	YM2_LoadInstrument
		inc	(iy+0)
		ld	ix, YM_CHANNEL_DATA_5
		ld	a, (ix+4)
		call	YM2_LoadInstrument
		xor	a
		ld	(iy+0),	a
		ld	a, 1
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		ld	ix, SFX_TYPE_2_CHANNEL_DATA_1
		ld	a, (ix+3)
		or	a
		jr	nz, loc_123
		ld	a, (ix+4)
		call	YM2_LoadInstrument

loc_123:				; CODE XREF: YM_UpdateInstrumentsLevels+60j
		inc	(iy+0)
		ld	ix, SFX_TYPE_2_CHANNEL_DATA_2
		ld	a, (ix+3)
		or	a
		jr	nz, locret_136
		ld	a, (ix+4)
		call	YM2_LoadInstrument

locret_136:				; CODE XREF: YM_UpdateInstrumentsLevels+73j
		ret
; End of function YM_UpdateInstrumentsLevels

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Main

Update_YM_Level:			; CODE XREF: Main+17j
		push	hl
		push	de
		ld	hl, MUSIC_LEVEL	; general output level for music and SFX type 1, sent from 68k
		ld	a, (hl)
		and	0Fh
		ld	(hl), a
		jp	Update_YM_Instruments
; END OF FUNCTION CHUNK	FOR Main

; =============== S U B	R O U T	I N E =======================================


LoadBank:				; CODE XREF: init+20p LoadDacSound+2Ep ...
		ld	bc, 100h	; b = 1, c = 0
		push	hl		; save register
		push	de		; save register
		ld	hl, BANK_TO_LOAD ; get offset containing bank index to use stored on 2 bits -> 4 different banks available
		ld	a, (hl)		; load bank value
		and	1		; keep only bit	0
		ld	d, (hl)		; load bank value again
		srl	d		; keep only bit	1
		ld	hl, BANK_REGISTER ; load bank address register
		ld	(hl), a
		ld	(hl), d
		ld	(hl), b
		ld	(hl), b
		ld	(hl), c
		ld	(hl), b
		ld	(hl), c
		ld	(hl), c
		ld	(hl), c
		pop	de		; load saved register
		pop	hl		; load saved register
		ret
; End of function LoadBank


; =============== S U B	R O U T	I N E =======================================


LoadMusicBank:				; CODE XREF: Main+2Bp Main+39p ...
		push	bc
		push	hl
		ld	bc, 100h
		ld	hl, BANK_REGISTER
		ld	a, (MUSIC_BANK_TO_LOAD)
		ld	(hl), a
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), c
		ld	(hl), b
		ld	(hl), c
		ld	(hl), c
		ld	(hl), c
		pop	hl
		pop	bc
		ret
; End of function LoadMusicBank


; =============== S U B	R O U T	I N E =======================================


LoadInstrumentsBank:			; CODE XREF: YM1_LoadInstrumentp
					; YM2_LoadInstrumentp
		push	bc
		push	hl
		ld	bc, 100h	; b = 1, c = 0
		ld	hl, BANK_REGISTER ; load bank address register
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), c
		ld	(hl), b
		ld	(hl), c
		ld	(hl), c
		ld	(hl), c
		pop	hl
		pop	bc
		ret
; End of function LoadInstrumentsBank


; =============== S U B	R O U T	I N E =======================================


LoadDacSound:				; CODE XREF: Mute_Sound-1Ep
		cp	0FEh ; '˛'
		jr	nz, loc_196	; if a != FE
		ld	hl, 0C000h	; if a = FE, play nothing
		ld	de, 0		; 0 remaining length, so just stay in the main loop
		ret
; ---------------------------------------------------------------------------

loc_196:				; CODE XREF: LoadDacSound+2j
		dec	a		; a is DAC sound index,	starting at 1, so decrement it
		ld	h, 0
		ld	l, a
		add	hl, hl
		add	hl, hl
		add	hl, hl		; hl = 8 * a, so each DAC sound	entry uses 8 bytes
		ld	bc, t_SAMPLE_LOAD_DATA
		add	hl, bc		; hl now points	to the right entry
		ld	a, (hl)		; get byte 0 : time period used
		inc	hl		; ignore byte 1	!
		inc	hl		; point	to byte	2 : bank to load
		ld	(Dac_Loop+1), a	; change loop number to	change DAC play	time period
		ld	a, (hl)		; get byte 2
		ld	(BANK_TO_LOAD),	a ; save byte 2
		inc	hl		; ignore byte 3	!
		inc	hl
		ld	e, (hl)
		inc	hl
		ld	d, (hl)		; de = bytes 5-4 : sound length
		inc	hl
		ld	a, (hl)		; 7th byte
		inc	hl
		ld	h, (hl)		; 8th byte
		ld	l, a		; hl = bytes 7-6 : sound data pointer
		xor	a
		ld	(NEW_SAMPLE_TO_LOAD), a	; clear	to say that DAC	sound is now loaded
		call	LoadBank
		ret
; End of function LoadDacSound


; =============== S U B	R O U T	I N E =======================================


Main:					; CODE XREF: init+1Dp Mute_Sound-25p

; FUNCTION CHUNK AT 0137 SIZE 0000000C BYTES

		push	af		; main handles any new operation sent by 68K (or Z80 itself)
		xor	a
		ld	(NEW_OPERATION), a ; clear 0x1FFF (its value is	already	in pushed a)
		pop	af
		cp	0FFh
		jp	z, Mute_Sound	; if a = FFh : mute sound
		cp	0FEh ; '˛'
		jp	z, StopMusic	; if a = FEh : stop music by muting PSG	and releasing YM keys
		cp	0FDh ; '˝'
		jp	z, Fade_Out	; if a = FDh : fade out
		cp	0F0h ; ''
		jp	z, Update_YM_Level ; if	a = F0h
		cp	41h ; 'A'
		jp	nc, Load_SFX	; if a > 41h, then play	an SFX (already	stored in ram along with the code)
		push	hl		; else,	play a music !
		push	de
		push	af
		cp	21h ; '!'
		jr	nc, loc_1F2	; if a > 21h, then play	music from chunk 0x1F0000
		ld	a, 1		; otherwise play music from 0x1F8000
		ld	(MUSIC_BANK_TO_LOAD), a	; load 01h to 0x14AD
		call	LoadMusicBank
		pop	af
		ld	de, 8AE0h
		jp	Load_Music	; decrement music/sound	index (no $00 entry)
; ---------------------------------------------------------------------------

loc_1F2:				; CODE XREF: Main+24j
		xor	a		; clear	a
		ld	(MUSIC_BANK_TO_LOAD), a
		call	LoadMusicBank
		pop	af
		ld	de, 8000h
		sub	20h ; ' '

Load_Music:				; CODE XREF: Main+32j
		dec	a		; decrement music/sound	index (no $00 entry)
		add	a, a		; double index because the pointer table to reach has 2	bytes per entry
		ld	h, 0
		ld	l, a
		add	hl, de
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	l, a		; now hl contains pointer to music/sound data
		ld	a, (hl)		; get byte 0
		or	a		; check	if a = 0 with z	flag
		jp	nz, Load_SFX	; if byte 0 of music data != 0,	actually load it as an SFX instead
		ld	a, (FADE_IN_PARAMETERS)	; fade in parameter applied from 68k when a music is loaded.
					; nibble 1 : fade in speed.
					; nibble 2 : fade in start level.
		and	0Fh
		ld	(MUSIC_LEVEL), a ; general output level	for music and SFX type 1, sent from 68k
		xor	a
		ld	(FADE_IN_TIMER), a ; reset fade	in timer
		ld	(USELESS_BYTE),	a ; clear that useless byte ...	no kidding ! that thing	is really used nowhere
		call	StopMusic	; stop currently playing music if there	was one
		inc	hl
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	(word_14AA), de
		ld	bc, 2B80h
		call	YM1_Input
		ld	b, 26h ; '&'
		ld	c, (hl)
		inc	c
		inc	c
		inc	c
		call	YM1_Input
		xor	a
		ld	(CURRENTLY_FADING_OUT),	a ; clear fade out bytes
		ld	(FADE_OUT_COUNTER), a ;	Counts how many	times the fade out timer reached 0. Fade out stops at value $0C.
		ld	a, 63h ; 'c'
		ld	(FADE_OUT_TIMER), a ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		inc	hl		; hl now points	to the first of	the ten	pointers
		ld	b, 0Ah		; number of loops
		ld	ix, 1300h	; start	of the data to store

Load_Music_Channels:			; CODE XREF: Main+D0j
		ld	e, (hl)		; this part initializes	each channel ram data
		inc	hl
		ld	d, (hl)		; de = channel data pointer
		inc	hl		; point	to first byte of next pointer
		ld	(ix+0),	e
		ld	(ix+1),	d	; init data pointer
		ld	a, 0C0h	; '¿'
		ld	(ix+1Eh), a
		xor	a		; and let me present to	you ...
		ld	(ix+2),	a	; time counter for note/sample length
		ld	(ix+3),	a	; "channel not in use" indicator
		ld	(ix+8),	a	; set to $80 when there	is no key release
		ld	(ix+13h), a
		ld	(ix+14h), a	; loop A start pointer
		ld	(ix+1Ch), a	; note shift value
		ld	(ix+1Dh), a	; frequency shift value
		ld	(ix+1Fh), a	; slide	speed
		ld	a, 1
		ld	(ix+1Eh), a	; stereo setting
		ld	d, (ix+1)
		ld	e, (ix+0)
		ld	a, (de)		; get first pointed data byte
		cp	0FFh
		jr	nz, loc_288
		ld	a, 1		; if first byte	of channel data	= FF, then there is no data for	this channel
		ld	(ix+3),	a	; "channel not in use"

loc_288:				; CODE XREF: Main+C4j
		ld	de, 20h	; ' '
		add	ix, de
		djnz	Load_Music_Channels ; actual loop instruction based on register	b
		ld	b, 2		; loop two times

Activate_Stereo_Outputs:		; CODE XREF: Main+E9j
		push	bc
		ld	a, b
		dec	a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		ld	bc, 0B4C0h	; activate left	and right sound	outputs	for each channel
		call	YM_Input	; first	channel	of called YM part
		inc	b
		call	YM_Input	; second channel
		inc	b
		call	YM_Input	; third	channel
		pop	bc
		djnz	Activate_Stereo_Outputs
		ld	a, 0C0h	; '¿'   ; set C0h for byte 1E of YM channels 4,5,6
		ld	(YM_CHANNEL_4_STEREO), a
		ld	(YM_CHANNEL_5_STEREO), a
		ld	a, 0FEh	; '˛'   ; put value FE as DAC Sound sample to load ... which loads nothing. Why such a thing then ?
		ld	(NEW_SAMPLE_TO_LOAD), a	; stores the index of a	new DAC	sample to play
		call	YM_LoadTimerB

Load_End:				; CODE XREF: Main+12Fj	Main+139j ...
		pop	de		; end of the loadSFX and loadMusic chunks
		pop	hl
		jp	LoadBank
; ---------------------------------------------------------------------------

Load_SFX:				; CODE XREF: Main+1Cj Main+4Ej
		push	hl		; looks	like the part to play SFX
		push	de
		sub	41h ; 'A'
		ld	h, 0
		ld	l, a
		add	hl, hl		; a is an index, and you double	it to access to	a pointer table
		ld	de, pt_SFX	; SFX are actually already stored in RAM
		add	hl, de
		ld	a, (hl)
		inc	hl
		ld	h, (hl)		; get the proper pointer
		ld	l, a
		ld	a, (hl)		; get pointed byte 0
		inc	hl		; hl points to byte 1 of sfx data
		cp	1
		jr	nz, Load_SFX_Type_2 ; if a != 1	(then a	= 2, which means the sound just	concerns 3 channels)
		ld	b, 0Ah		; loop 10 times
		ld	ix, YM_CHANNEL_DATA_1

Load_SFX_Channels:			; CODE XREF: Main+12Dj
		ld	e, (hl)		; part to get next channel data
		inc	hl
		ld	d, (hl)		; de = bytes 2-3 of sound data = pointer
		inc	hl
		ld	a, (de)		; a = first byte of current channel
		cp	0FFh		; if first byte	= FF, there is no data to setup, so skip subroutine call
		jr	z, loc_2E5
		call	InitChannelDataForSFX

loc_2E5:				; CODE XREF: Main+123j
		ld	de, 20h	; ' '
		add	ix, de		; go to	next channel data
		djnz	Load_SFX_Channels ; loop
		jr	Load_End	; end of the loadSFX and loadMusic chunks
; ---------------------------------------------------------------------------

Load_SFX_Type_2:			; CODE XREF: Main+114j
		ld	a, (SFX_USELESS_BYTE_1)	; init at 0, never changes, just has an	influence on byte 0x14AE, but no actual	effect.	So, don't care about it !
		ld	d, a		; This is the only place where those two bytes could be	used
		ld	a, (SFX_USELESS_BYTE_2)	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		sub	d
		jp	c, Load_End	; if (0x1FFE) >	(0x14AE), don't load the sound
		ld	a, d
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ld	bc, 304h	; loop 3 times
		ld	ix, SFX_TYPE_2_CHANNEL_DATA_1 ;	the 3 channel SFX are stored in	dedicated temp channel data, in	order not to overwrite current music data

loc_304:				; CODE XREF: Main+169j
		push	bc
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl		; hl points to next pointer
		ld	a, (de)		; a = first byte of current channel
		cp	0FFh
		jr	z, loc_31F	; if a = FF, ignore this channel
		call	InitChannelDataForSFX ;	otherwise, init	channel	data
		ld	b, 28h ; '('    ; YM register : Key on/off
		call	YM1_Input	; input	"key off" for YM channel 4, 5, 6 respectively for channel 1,2,3 of the sound
		ld	c, a		; a = c	= current YM channel to	use
		add	a, 0B0h	; '∞'   ; a = YM register to activate left and right stereo outputs
		ld	b, a
		ld	c, 0C0h	; '¿'   ; sets stereo left and right on
		call	YM2_Input

loc_31F:				; CODE XREF: Main+14Fj
		ld	de, 20h	; ' '
		add	ix, de		; point	next channel destination slot
		pop	bc
		inc	c		; next channel number
		djnz	loc_304		; loop
		jp	Load_End	; end of the loadSFX and loadMusic chunks
; End of function Main


; =============== S U B	R O U T	I N E =======================================


InitChannelDataForSFX:			; CODE XREF: Main+125p	Main+151p
		ld	(ix+0),	e
		ld	(ix+1),	d	; bytes	0-1 = ed = offset of channel data source
		ld	a, 0C0h	; '¿'
		ld	(ix+1Eh), a	; byte 1E = C0
		xor	a		; clear	a
		ld	(ix+2),	a	; clear	all those bytes
		ld	(ix+3),	a
		ld	(ix+8),	a
		ld	(ix+13h), a
		ld	(ix+14h), a
		ld	(ix+1Ch), a
		ld	(ix+1Dh), a
		ld	(ix+1Fh), a
		ld	a, 1
		ld	(ix+1Eh), a	; byte 1E = 1 ... er ... why is	it set to $CO first and	then to	1 at the end ?
		ret
; End of function InitChannelDataForSFX


; =============== S U B	R O U T	I N E =======================================


StopMusic:				; CODE XREF: Main+Dj Main+60p	...
		push	hl		; the subroutine sets key off /	mutes channels playing music
		ld	iy, CURRENT_CHANNEL ; indicates	the channel to process,	from a relative	point of view :	YM1, YM2, PSG or SFX channels
		xor	a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		ld	(iy+0),	a
		ld	ix, YM_CHANNEL_DATA_1
		call	YM1_LoadInstrument
		ld	bc, 2800h	; YM register :	Key on/off
		call	YM1_Input	; set Key OFF
		inc	(iy+0)
		xor	a
		ld	ix, YM_CHANNEL_DATA_2
		call	YM1_LoadInstrument
		ld	bc, 2801h	; YM register :	Key on/off
		call	YM1_Input	; set Key OFF
		inc	(iy+0)
		xor	a
		ld	ix, YM_CHANNEL_DATA_3
		call	YM1_LoadInstrument
		ld	bc, 2802h	; YM register :	Key on/off
		call	YM1_Input	; set Key OFF
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		xor	a
		ld	(iy+0),	a
		ld	a, (SFX_TYPE_2_CHANNEL_1_NOT_IN_USE)
		or	a
		jr	z, loc_3AD
		xor	a
		ld	ix, YM_CHANNEL_DATA_4
		call	YM2_LoadInstrument
		ld	bc, 2804h	; YM register :	Key on/off
		call	YM1_Input

loc_3AD:				; CODE XREF: StopMusic+48j
		inc	(iy+0)
		ld	a, (SFX_TYPE_2_CHANNEL_2_NOT_IN_USE)
		or	a
		jr	z, loc_3C4
		xor	a
		ld	ix, YM_CHANNEL_DATA_5
		call	YM2_LoadInstrument
		ld	bc, 2805h	; YM register :	Key on/off
		call	YM1_Input

loc_3C4:				; CODE XREF: StopMusic+5Fj
		ld	hl, PSG_PORT
		ld	a, 9Fh ; 'ü'
		ld	(hl), a		; set PSG channel 1 volume to 0
		ld	a, 0BFh	; 'ø'
		ld	(hl), a		; set PSG channel 2 volume to 0
		ld	a, 0DFh	; 'ﬂ'
		ld	(hl), a		; set PSG channel 3 volume to 0
		ld	a, 0FFh
		ld	(hl), a		; set PSG noise	channel	volume to 0
		ld	hl, YM_CHANNEL_1_NOT_IN_USE ; also pointed once	from 68k, to know if music/sfx is currently being played, I guess
		ld	de, 20h	; ' '   ; value to add to pointer to go to next channel in ram
		ld	b, 0Ah		; loop ten times
		ld	a, 1

loc_3DD:				; CODE XREF: StopMusic+8Aj
		ld	(hl), a		; set "Channel not in use" byte
		add	hl, de		; go to	next channel
		djnz	loc_3DD		; loop until PSG Noise Channel.	SFX extra channels are not concerned.
		pop	hl
		ld	de, 0
		xor	a
		ld	(CURRENTLY_FADING_OUT),	a ; set	to 01 when a fade out operation	is being executed
		ld	(FADE_OUT_COUNTER), a ;	Counts how many	times the fade out timer reached 0. Fade out stops at value $0C.
		ld	a, 63h ; 'c'
		ld	(FADE_OUT_TIMER), a ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		ld	a, 0FFh
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ret
; End of function StopMusic


; =============== S U B	R O U T	I N E =======================================


UpdateSound:				; CODE XREF: Mute_Sound-33p
		push	bc		; this is THE subroutine that updates every channel at each YM Timer overflow. Quite important !
		push	de
		push	hl
		ld	hl, 14B3h
		inc	(hl)		; increment counter
		ld	a, (FADE_IN_PARAMETERS)	; fade in parameter applied from 68k when a music is loaded.
					; nibble 1 : fade in speed.
					; nibble 2 : fade in start level.
		rrca			; two circular right rotates
		rrca
		and	3Ch ; '<'       ; just keep nibble 1 * 4
		jr	z, loc_418
		cp	(hl)
		jr	nz, loc_418
		xor	a		; if MusicCounter = Nibble 1 * 4 and !=	0
		ld	(hl), a		; clear	MusicCounter
		ld	hl, MUSIC_LEVEL	; general output level for music and SFX type 1, sent from 68k
		ld	a, (hl)
		cp	0Fh
		jr	z, loc_418
		inc	(hl)		; if music level not 0F, increment it and update YM instruments	levels
		call	YM_UpdateInstrumentsLevels

loc_418:				; CODE XREF: UpdateSound+Ej
					; UpdateSound+11j ...
		call	LoadMusicBank
		ld	hl, (word_14AA)
		ld	a, h
		or	l
		jr	z, loc_42B
		dec	hl
		ld	(word_14AA), hl
		ld	a, h
		or	l
		call	z, Fade_Out

loc_42B:				; CODE XREF: UpdateSound+29j
		ld	a, (CURRENTLY_FADING_OUT) ; set	to 01 when a fade out operation	is being executed
		or	a
		jr	z, loc_451	; jump unless currently	executing a fade out
		ld	a, (FADE_OUT_TIMER) ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		or	a
		jr	nz, loc_44D
		ld	a, (FADE_OUT_LENGTH) ; number of YM Timer overflows to handle before incrementing the fade out counter
		ld	(FADE_OUT_TIMER), a ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		ld	a, (FADE_OUT_COUNTER) ;	Counts how many	times the fade out timer reached 0. Fade out stops at value $0C.
		inc	a
		ld	(FADE_OUT_COUNTER), a ;	increment fade out counter if fade out timer has reached 0
		cp	0Ch
		jr	nz, loc_451	; reload timer B
		call	StopMusic	; if FadeOutCounter = 0Ch, then	stop music because it's the end of a fade out operation
		jr	loc_4BA
; ---------------------------------------------------------------------------

loc_44D:				; CODE XREF: UpdateSound+3Ej
		dec	a
		ld	(FADE_OUT_TIMER), a ; decrement	fade out timer

loc_451:				; CODE XREF: UpdateSound+38j
					; UpdateSound+4Fj
		call	YM_LoadTimerB	; reload timer B
		ld	iy, CURRENT_CHANNEL ; indicates	the channel to process,	from a relative	point of view :	YM1, YM2, PSG or SFX channels
		xor	a
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a ; taking care of the	music channel data
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; taking care of YM 1,2,3
		ld	(iy+0),	a
		call	YM1_ParseData
		inc	(iy+0)
		call	YM1_ParseData
		inc	(iy+0)
		call	YM1_ParseData
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a ; taking care of YM 4,5,6
		xor	a
		ld	(iy+0),	a
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseChannel6Data
		xor	a
		ld	(iy+0),	a
		call	PSG_ParseToneData
		inc	(iy+0)
		call	PSG_ParseToneData
		inc	(iy+0)
		call	PSG_ParseToneData
		inc	(iy+0)
		call	PSG_ParseNoiseData
		ld	a, 1
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a ; taking care of SFX	channel	data
		xor	a		; when a 3-channel SFX is played, it has priority over music on	YM4,5,6
		ld	(iy+0),	a
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseChannel6Data

loc_4BA:				; CODE XREF: UpdateSound+54j
		call	LoadBank
		pop	hl
		pop	de
		pop	bc
		ret
; End of function UpdateSound


; =============== S U B	R O U T	I N E =======================================


YM_LoadTimerB:				; CODE XREF: Main+F8p
					; UpdateSound:loc_451p
		ld	bc, 273Ah	; reset	timers A and B,	enable and load	B
		jr	YM1_Input
; End of function YM_LoadTimerB


; =============== S U B	R O U T	I N E =======================================


YM1_ConditionnalInput:			; CODE XREF: YM2_ParseData+45p
					; YM2_ParseData+154p
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	nz, YM1_Input	; if currently managing	SFX channel data, then just send data to YM1
		exx
		push	ix		; otherwise, check if an SFX is	being played on	YM4,5,6
		pop	hl
		ld	bc, 0E3h ; '„'
		add	hl, bc
		ld	a, (hl)		; get "channel not in use" byte for SFX Channel 1
		exx
		or	a
		jr	nz, YM1_Input	; don't send data to YM if an SFX is being played, as it has priority over music
		ret
; End of function YM1_ConditionnalInput


; =============== S U B	R O U T	I N E =======================================


YM_Input:				; CODE XREF: Mute_Sound:loc_6Bp
					; Mute_Sound+12p ...
		ld	a, (CALL_YM2_INSTEAD_OF_YM1) ; set to $01 when managing	YM4,5,6	channels, to call part 2 of YM
		or	a
		jr	nz, YM2_ConditionalInput ; if CallYm2InsteadOfYm1 set
; End of function YM_Input


; =============== S U B	R O U T	I N E =======================================


YM1_Input:				; CODE XREF: Main+6Fp Main+78p ...
		ld	a, (YM1_REGISTER) ; the	subroutine sends value c in register b of YM1
		and	80h ; 'Ä'
		jr	nz, YM1_Input	; loop as long as YM2612 busy
		ld	a, b
		ld	(YM1_REGISTER),	a ; write address to part I
		ld	a, c
		ld	(YM1_DATA), a	; write	data to	part I
		ret
; End of function YM1_Input


; =============== S U B	R O U T	I N E =======================================


YM2_ConditionalInput:			; CODE XREF: YM_Input+4j
					; YM2_ParseData:loc_89Cp ...
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	nz, YM2_Input	; if currently managing	SFX channel ram	data, just send	byte to	YM
		exx
		push	ix		; otherwise, first check if an SFX is being played with	YM4,5,6	channels
		pop	hl
		ld	bc, 0E3h ; '„'
		add	hl, bc
		ld	a, (hl)		; get "channel not in use" byte of SFX channel 1
		exx
		or	a		; if SFX currently being played, then don't send data to YM2, as SFX has priority
		ret	z
; End of function YM2_ConditionalInput


; =============== S U B	R O U T	I N E =======================================


YM2_Input:				; CODE XREF: Mute_Sound:loc_85p
					; Mute_Sound+2Cp ...
		ld	a, (YM2_REGISTER)
		and	80h ; 'Ä'
		jr	nz, YM2_Input	; loop as long as YM2612 busy
		ld	a, b
		ld	(YM2_REGISTER),	a ; write address to YM2
		ld	a, c
		ld	(YM2_DATA), a	; write	data to	YM2
		ret
; End of function YM2_Input

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR PSG_ParseToneData

PSG_SetChannelAttenuation:		; CODE XREF: PSG_ParseToneData+4Fj
					; PSG_ParseNoiseData+41j
		and	0Fh		; just keep attenuation	parameter
		ld	h, a		; save it
		ld	a, (CURRENT_PSG_CHANNEL) ; get concerned channel
		or	h		; load attenuation value
		or	90h ; 'ê'       ; load attenuation command bits
		ld	(PSG_PORT), a	; send message
		ret
; END OF FUNCTION CHUNK	FOR PSG_ParseToneData

; =============== S U B	R O U T	I N E =======================================


DAC_SetNewSample:			; CODE XREF: YM2_ParseChannel6Data+24p
					; YM2_ParseChannel6Data+85p
		ld	b, a
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	nz, loc_53E	; if currently managing	SFX channel ram	data, just set new sample to load
		exx
		push	ix		; otherwise, check if an SFX is	being played, since it has priority
		pop	hl
		ld	bc, 0E3h ; '„'
		add	hl, bc
		ld	a, (hl)		; get "channel not in use" byte for SFX Channel 1
		exx
		or	a
		ret	z		; if SFX Channel 1 in use, return
		ld	a, (FADE_OUT_COUNTER) ;	Counts how many	times the fade out timer reached 0. Fade out stops at value $0C.
		cp	3		; if fade out counter >	3, don't play sample, it would be too loud compared to the other channels
		ret	nc
		ld	a, (MUSIC_LEVEL) ; general output level	for music and SFX type 1, sent from 68k
		cp	0Fh		; if general sound level not at	its max, then don't play sample
		ret	nz

loc_53E:				; CODE XREF: DAC_SetNewSample+5j
		ld	a, b
		ld	(NEW_SAMPLE_TO_LOAD), a	; stores the index of a	new DAC	sample to play
		ret
; End of function DAC_SetNewSample


; =============== S U B	R O U T	I N E =======================================


YM1_ParseData:				; CODE XREF: UpdateSound+6Bp
					; UpdateSound+71p ...
		ld	a, (iy+0)	; iy : channel to process
		ld	ix, YM_CHANNEL_DATA_1
		push	af
		add	a, a		; THIS PART just inits iy, ix, and frequency registers
		add	a, a
		add	a, a
		add	a, a
		add	a, a		; a = 20h * a
		ld	d, 0
		ld	e, a
		add	ix, de		; point	to appropriate channel ram data
		pop	af
		ld	c, 0A0h	; '†'
		add	a, c		; A0 + channel number :	first input address of frequency  register
		ld	(byte_75A), a	; parameter directly moved to code in ram !
		ld	c, 4
		add	a, c		; (0x75A) + 4 :	second input address of	frequency register
		ld	(byte_751), a	; parameter directly moved to code in ram !

loc_562:				; CODE XREF: YM1_ParseData+140j
		ld	a, (ix+3)	; THIS PART checks if the channel actually has to be used or not
		or	a
		ret	nz		; if byte 3 = 1, do nothing with this channel
		ld	a, (ix+6)	; THIS PART seems to check if it's time to release key or not yet
		cp	(ix+2)
		jr	nz, loc_57E	; if bytes 2 !=	byte 6,	then it's not yet the end of note
		ld	a, (ix+8)	; if byte 2 = byte 6, end of note counter, check byte 8
		or	a
		jr	nz, loc_57E	; if byte 8 != 0
		ld	b, 28h ; '('    ; so if (byte 2 = byte 6) and (byte 8 = 0), set key off
		ld	a, (iy+0)	; concerned channel
		ld	c, a
		call	YM1_Input	; set key OFF

loc_57E:				; CODE XREF: YM1_ParseData+2Aj
					; YM1_ParseData+30j
		ld	a, (ix+2)	; THIS PART checks if it's time to parse new music data or not yet (I think)
		or	a
		jp	nz, loc_686	; if byte 2 != 0
		ld	d, (ix+1)
		ld	e, (ix+0)	; get ROM offset of next byte to parse

Parsing_Start:				; CODE XREF: YM1_ParseData+7Aj
					; YM1_ParseData+86j ...
		xor	a		; THIS PART checks if parsed byte is a command or a parameter
		ld	(ix+0Dh), a	; clear	vibrato	relative pointer
		ld	a, (ix+9)
		ld	(ix+0Ah), a	; load time counter before vibrato
		ld	a, (de)		; get pointed byte in rom
		and	0F8h ; '¯'      ; keep only bits 7-3
		cp	0F8h ; '¯'
		jp	nz, loc_612	; if kept bits of pointed byte != F8, so if data byte is not a command
		ld	a, (de)		; else,	value of pointed rom byte is a command
		cp	0FFh
		jp	nz, Set_Instrument ; if	pointed	byte !=	FF, go test other possible command values
		inc	de		; if pointed rom byte =	FF, then get next two bytes
		ld	a, (de)		; THIS PART handles an FF command
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	a
		jr	nz, YM1_Parse_At_New_Offset ; if second	byte !=	0, we have FF xx xx, so	go parse from new offset xxxx
		ld	a, l
		or	a
		jr	z, loc_5B3	; if we	have FF	00 00, then mute channel because there is nothing else to do
		ld	(NEW_OPERATION), a ; else, we have FF xx 00, so	put first byte in 0x1FFF to process operation xx

loc_5B3:				; CODE XREF: YM1_ParseData+6Bj
		ld	a, 1		; THIS PART mutes the channel because it has nothing to	play
		ld	(ix+3),	a	; channel data byte 3 =	1
		xor	a
		jp	YM1_LoadInstrument ; set channel level to minimum and leave subroutine
; ---------------------------------------------------------------------------

YM1_Parse_At_New_Offset:		; CODE XREF: YM1_ParseData+67j
		ex	de, hl		; THIS PART puts in de the new offset from which to parse data
		jr	Parsing_Start
; ---------------------------------------------------------------------------

Set_Instrument:				; CODE XREF: YM1_ParseData+5Dj
		cp	0FEh ; '˛'      ; FE xx : set new instrument xx
		jr	nz, Load_Note	; FD xx	: play note at level xx. It's followed by other parameters handled at next parsing loop
		inc	de
		ld	a, (de)
		call	YM1_SetChannelInstrument
		inc	de
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Load_Note:				; CODE XREF: YM1_ParseData+7Ej
		cp	0FDh ; '˝'      ; FD xx : play note at level xx. It's followed by other parameters handled at next parsing loop
		jr	nz, Set_Slide_Or_Key_Release
		inc	de
		ld	a, (de)		; get note level
		and	0Fh
		call	YM1_LoadInstrument
		inc	de
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Set_Slide_Or_Key_Release:		; CODE XREF: YM1_ParseData+8Bj
		cp	0FCh ; '¸'
		jr	nz, Load_Vibrato
		call	YM_SetSlideOrKeyRelease
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Load_Vibrato:				; CODE XREF: YM1_ParseData+9Aj
		cp	0FBh ; '˚'
		jr	nz, Set_Stereo
		call	LoadVibrato
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Set_Stereo:				; CODE XREF: YM1_ParseData+A4j
		cp	0FAh ; '˙'
		jr	nz, Load_Note_Shift
		call	YM1_SetStereo
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Load_Note_Shift:			; CODE XREF: YM1_ParseData+AEj
		cp	0F9h ; '˘'
		jr	nz, Loop_Command
		call	LoadNoteShift
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Loop_Command:				; CODE XREF: YM1_ParseData+B8j
		cp	0F8h ; '¯'
		jr	nz, Theoretically_Unreachable
		call	ParseLoopCommand
		jp	Parsing_Start
; ---------------------------------------------------------------------------

Theoretically_Unreachable:		; CODE XREF: YM1_ParseData+C2j
		inc	de		; if none of the commands from above are found,
		inc	de		; then ignore and start	process	again two bytes	forward. Theoretically,	it can't happen ...
		jp	Parsing_Start
; ---------------------------------------------------------------------------

loc_612:				; CODE XREF: YM1_ParseData+57j
		ld	a, (de)		; we are here because a	< F8, so a can still be	F0, 70,	or a new note frequency	to play
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_66A	; if a = F0 or 70. Else, a is a	note frequency byte
		add	a, (ix+1Ch)	; 1C affects note index	up or down. It's set by command F9
		ld	l, a
		ld	h, 0
		ld	bc, t_YM_FREQUENCIES ; load table of YM	frequencies
		add	hl, hl
		add	hl, bc		; now hl points	to the YM frequency value corresponding	to the note's frequency
		ld	a, (hl)
		dec	hl
		ld	l, (hl)		; l = byte to put in YM	Register Frequency 2
		ld	h, a		; h = byte to put in YM	Register Frequency 1
		ld	b, 0
		ld	c, (ix+1Dh)	; byte 1D affects frequency up.	It's set by command F9. Is it used ? I'll look in SF2 musics
		add	hl, bc
		ld	a, (byte_751)
		ld	b, a		; YM Register :	Frequency 2
		ld	c, h		; input	value
		ld	(ix+12h), c
		ld	a, (ix+1Fh)	; if channel byte 1F !=	0, then	pitch slide is activated
		or	a		; so keep final	value to reach in channel byte 12
		jr	nz, loc_644	; then jump
		ld	(ix+0Fh), c	; else,	put it directly	in channel byte	0F
		xor	a
		ld	(ix+12h), a

loc_644:				; CODE XREF: YM1_ParseData+F8j
		call	YM1_Input
		ld	a, (byte_75A)
		ld	b, a		; YM register :	Frequency 1
		ld	c, l		; input	value
		ld	(ix+11h), c
		ld	a, (ix+1Fh)	; if channel byte 1F !=	0, pitch slide is activated
		or	a		; so keep value	in channel byte	11
		jr	nz, loc_65C	; then jump
		ld	(ix+0Eh), c	; else,	put it directly	in channel byte	0E
		xor	a
		ld	(ix+11h), a

loc_65C:				; CODE XREF: YM1_ParseData+110j
		call	YM1_Input
		ld	b, 28h ; '('    ; YM Register : Key on/off
		ld	a, (iy+0)
		or	0F0h ; ''      ; set key ON
		ld	c, a
		call	YM1_Input

loc_66A:				; CODE XREF: YM1_ParseData+D4j
		ld	a, (de)		; get full byte	again
		bit	7, a
		jr	nz, Command_F0	; if bit 7 set,	then it's command F0 or it's new note to play needing new note length
		ld	a, (ix+7)	; else use existing time period
		jr	loc_679
; ---------------------------------------------------------------------------

Command_F0:				; CODE XREF: YM1_ParseData+12Aj
		inc	de		; if a's bit 7 is set, then it's F0
		ld	a, (de)		; set a	new time period	with next byte
		ld	(ix+7),	a

loc_679:				; CODE XREF: YM1_ParseData+12Fj
		ld	(ix+2),	a	; also put time	period in channel byte 2, which	is the time counter
		inc	de
		ld	(ix+1),	d	; point	to next	channel	rom byte
		ld	(ix+0),	e
		jp	loc_562
; ---------------------------------------------------------------------------

loc_686:				; CODE XREF: YM1_ParseData+3Fj
		dec	(ix+2)		; decrement channel time counter
		ld	b, (ix+12h)
		ld	c, (ix+11h)
		ld	a, b
		or	c
		jr	z, loc_70A	; if bc	= 0, then there	is no pitch slide
		ld	a, (ix+0Fh)	; else,	pitch slide !
		ld	h, a
		ld	a, (ix+0Eh)
		ld	l, a		; hl = current frequency ; bc =	frequency to reach
		push	bc
		push	hl
		or	a
		sbc	hl, bc		; get frequency	difference
		ld	a, h
		ld	(TEMP_FREQUENCY), a ; save first frequency byte	... why	?
		jr	nc, loc_6AE	; if bc	<= hl, so if frequency value to	reach is lower
		ld	b, 0
		ld	c, (ix+1Fh)	; frequency to reach is	higher,	so get slide up	value
		jp	loc_6B6
; ---------------------------------------------------------------------------

loc_6AE:				; CODE XREF: YM1_ParseData+161j
		ld	b, 0FFh		; frequency to reach is	lower, so get slide down value
		ld	a, (ix+1Fh)
		neg			; get negative value of	pitch slide speed in order to slide down
		ld	c, a

loc_6B6:				; CODE XREF: YM1_ParseData+168j
		pop	hl
		add	hl, bc		; apply	slide on frequency
		pop	bc
		push	hl
		or	a
		sbc	hl, bc		; get new frequency difference
		ld	a, (TEMP_FREQUENCY) ; xor old h	and new	h
		xor	h
		bit	7, a
		pop	hl
		jr	nz, loc_6FD	; jump if bit 7	of xor result =	1, go put final	pitch as current frequency, but	how can	it happen ?
		push	hl
		ld	a, h
		and	7		; leave	octave bits, just keep frequency bits
		ld	h, a
		ld	(TEMP_FREQUENCY), hl ; save new	frequency
		ld	bc, 4D4h
		or	a
		sbc	hl, bc
		jr	c, loc_6DC	; if hl	frequency (without octave) < $4D4
		ld	bc, 596h	; hl > $4D4, so	add $596
		jp	loc_6F0
; ---------------------------------------------------------------------------

loc_6DC:				; CODE XREF: YM1_ParseData+191j
		ld	hl, (TEMP_FREQUENCY) ; temp space to store frequency values when YM data is parsed
		ld	bc, 26Ah	; 2 * $26A = $4D4
		or	a
		sbc	hl, bc
		jr	nc, loc_6ED	; if hl	frequency (without octave) >= 26A
		ld	bc, 0FA6Ah	; hl < $26A, so	sub $596
		jp	loc_6F0
; ---------------------------------------------------------------------------

loc_6ED:				; CODE XREF: YM1_ParseData+1A2j
		ld	bc, 0		; hl between $26A and $4D4, so do nothing

loc_6F0:				; CODE XREF: YM1_ParseData+196j
					; YM1_ParseData+1A7j
		pop	hl
		add	hl, bc
		ld	a, h
		ld	(ix+0Fh), a	; set new frequency... but why do they have to add/sub $596 O___o ?!
		ld	a, l
		ld	(ix+0Eh), a
		jp	loc_70A
; ---------------------------------------------------------------------------

loc_6FD:				; CODE XREF: YM1_ParseData+181j
		ld	(ix+0Fh), b	; current frequency = final slide pitch
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a	; end of slide
		ld	(ix+12h), a

loc_70A:				; CODE XREF: YM1_ParseData+14Ej
					; YM1_ParseData+1B7j
		ld	a, (ix+0Ah)
		or	a
		jr	z, loc_716	; if channel byte 0A = 0 ... then start	vibrato	?
		dec	(ix+0Ah)	; decrement channel byte 0A : I	think this is a	time counter before note vibrato
		xor	a
		jr	EndPart
; ---------------------------------------------------------------------------

loc_716:				; CODE XREF: YM1_ParseData+1CBj
					; YM1_ParseData+1F9j
		ld	a, (ix+0Ch)
		ld	h, a
		ld	a, (ix+0Bh)
		ld	l, a		; hl = vibrato pointer
		ld	a, (ix+0Dh)	; get vibrato relative pointer
		ld	b, 0
		ld	c, a
		inc	(ix+0Dh)
		add	hl, bc		; point	to next	vibrato	byte
		ld	a, (hl)
		cp	81h ; 'Å'
		jr	nz, loc_733
		dec	(ix+0Dh)	; if byte = 81,	point previous byte and	do nothing ? O_o
		xor	a		; anyway, there's no $81 in the data -_- ...
		jr	EndPart
; ---------------------------------------------------------------------------

loc_733:				; CODE XREF: YM1_ParseData+1E8j
		cp	80h ; 'Ä'
		jp	nz, EndPart
		xor	a		; if byte = 80,	it's the end of vibrato data, so go back to the beginning
		ld	(ix+0Dh), a
		jp	loc_716
; ---------------------------------------------------------------------------

EndPart:				; CODE XREF: YM1_ParseData+1D1j
					; YM1_ParseData+1EEj ...
		ld	c, a		; a = vibrato value to apply
		ld	a, (ix+0Eh)
		ld	l, a
		ld	a, (ix+0Fh)
		ld	h, a		; hl = current note's frequency value
		ld	b, 0
		bit	7, c
		jr	z, loc_74F
		dec	b		; if c is a negative value, b =	FF

loc_74F:				; CODE XREF: YM1_ParseData+209j
		add	hl, bc		; after	this, up to date frequency is sent to YM
; ---------------------------------------------------------------------------
		db    6			; dynamically changed :	2nd frequency register corresponding to	current	channel
byte_751:	db 0			; DATA XREF: YM1_ParseData+1Cw
					; YM1_ParseData+ECr ...
		db  4Ch	; L
		db 0DDh	; ›
		db  71h	; q
		db  0Fh
		db 0CDh	; Õ
		db 0E0h	; ‡
		db    4
		db    6			; dynamically changed :	1st frequency register to use corresponding to current channel
byte_75A:	db 0			; DATA XREF: YM1_ParseData+16w
					; YM1_ParseData+104r ...
		db  4Dh	; M
		db 0DDh	; ›
		db  71h	; q
		db  0Eh
		db 0CDh	; Õ
		db 0E0h	; ‡
		db    4
		db  3Ah	; :
		db 0A8h	; ®
		db  14h
		db 0B7h	; ∑
		db 0C0h	; ¿
		db 0DDh	; ›		; if currently fading out, make	sure the instrument level is updated
		db  7Eh	; ~
		db    4
		db 0C3h	; √
		db 0D2h	; “
		db    9
; End of function YM1_ParseData


; =============== S U B	R O U T	I N E =======================================


YM2_ParseData:				; CODE XREF: UpdateSound+83p
					; UpdateSound+89p ...
		ld	a, (iy+0)	; exactly the same general behaviour as	YM1_ParseData, with access to YM2 instead
		ld	ix, YM_CHANNEL_DATA_4
		push	af
		add	a, a
		add	a, a
		add	a, a
		add	a, a
		add	a, a
		ld	d, 0
		ld	e, a
		add	ix, de
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	z, loc_78A
		ld	de, 0E0h ; '‡'  ; point to the right SFX channel data
		add	ix, de

loc_78A:				; CODE XREF: YM2_ParseData+16j
		pop	af
		ld	c, 0A0h	; '†'
		add	a, c
		ld	(byte_9B4), a
		ld	c, 4
		add	a, c
		ld	(byte_9AB), a

loc_797:				; CODE XREF: YM2_ParseData+170j
		ld	a, (ix+3)
		or	a
		ret	nz
		ld	a, (ix+6)
		cp	(ix+2)
		jr	nz, loc_7B5
		ld	a, (ix+8)
		or	a
		jr	nz, loc_7B5
		ld	b, 28h ; '('    ; YM register : Key on/off
		ld	a, (iy+0)
		add	a, 4
		ld	c, a
		call	YM1_ConditionnalInput

loc_7B5:				; CODE XREF: YM2_ParseData+35j
					; YM2_ParseData+3Bj
		ld	a, (ix+2)
		or	a
		jp	nz, loc_8E0
		ld	d, (ix+1)
		ld	e, (ix+0)

loc_7C2:				; CODE XREF: YM2_ParseData+A8j
					; YM2_ParseData+B4j ...
		xor	a
		ld	(ix+0Dh), a
		ld	a, (ix+9)
		ld	(ix+0Ah), a
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_86A
		ld	a, (de)
		cp	0FFh
		jp	nz, setInstrument
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, loc_814	; jump if FF xx	xx
		ld	a, 1		; else,	end of data for	this channel
		ld	(ix+3),	a
		ld	a, 0FFh
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	z, loc_810
		ld	bc, 0FF20h	; if an	SFX was	being managed, go back to corresponding	music channel
		add	ix, bc
		ld	a, 0B4h	; '¥'   ; YM Register : Stereo / LFO Sensitivity
		add	a, (iy+0)
		ld	b, a
		ld	c, (ix+1Eh)	; load corresponding music channel stereo setting
		call	YM2_Input
		ld	a, (ix+3)
		or	a
		jr	nz, loc_810
		ld	a, (ix+4)	; if corresponding music channel in use, load its instrument, and return
		jp	YM2_LoadInstrument
; ---------------------------------------------------------------------------

loc_810:				; CODE XREF: YM2_ParseData+84j
					; YM2_ParseData+9Bj
		xor	a
		jp	YM2_LoadInstrument
; ---------------------------------------------------------------------------

loc_814:				; CODE XREF: YM2_ParseData+74j
		ex	de, hl
		jr	loc_7C2
; ---------------------------------------------------------------------------

setInstrument:				; CODE XREF: YM2_ParseData+6Aj
		cp	0FEh ; '˛'
		jr	nz, loc_824
		inc	de
		ld	a, (de)
		call	YM2_setChannelInstrument
		inc	de
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_824:				; CODE XREF: YM2_ParseData+ACj
		cp	0FDh ; '˝'
		jr	nz, loc_833
		inc	de
		ld	a, (de)
		and	0Fh
		call	YM2_LoadInstrument
		inc	de
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_833:				; CODE XREF: YM2_ParseData+B9j
		cp	0FCh ; '¸'
		jr	nz, loc_83D
		call	YM_SetSlideOrKeyRelease
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_83D:				; CODE XREF: YM2_ParseData+C8j
		cp	0FBh ; '˚'
		jr	nz, loc_847
		call	LoadVibrato
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_847:				; CODE XREF: YM2_ParseData+D2j
		cp	0FAh ; '˙'
		jr	nz, loc_851
		call	YM2_SetStereo
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_851:				; CODE XREF: YM2_ParseData+DCj
		cp	0F9h ; '˘'
		jr	nz, loc_85B
		call	LoadNoteShift
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_85B:				; CODE XREF: YM2_ParseData+E6j
		cp	0F8h ; '¯'
		jr	nz, loc_865
		call	ParseLoopCommand
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_865:				; CODE XREF: YM2_ParseData+F0j
		inc	de
		inc	de
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_86A:				; CODE XREF: YM2_ParseData+64j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_8C4
		add	a, (ix+1Ch)	; index
		ld	l, a
		ld	h, 0
		ld	bc, t_YM_FREQUENCIES ; these words are not pointers, they are the two frequency	bytes to send to YM for	a given	note
		add	hl, hl
		add	hl, bc
		ld	a, (hl)
		dec	hl
		ld	l, (hl)
		ld	h, a		; hl = corresponding word
		ld	b, 0
		ld	c, (ix+1Dh)
		add	hl, bc
		ld	a, (byte_751)
		ld	b, a
		ld	c, h
		ld	(ix+12h), c
		ld	a, (ix+1Fh)
		or	a
		jr	nz, loc_89C
		ld	(ix+0Fh), c
		xor	a
		ld	(ix+12h), a

loc_89C:				; CODE XREF: YM2_ParseData+126j
		call	YM2_ConditionalInput
		ld	a, (byte_75A)
		ld	b, a
		ld	c, l
		ld	(ix+11h), c
		ld	a, (ix+1Fh)
		or	a
		jr	nz, loc_8B4
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a

loc_8B4:				; CODE XREF: YM2_ParseData+13Ej
		call	YM2_ConditionalInput
		ld	b, 28h ; '('    ; YM register : Key on/off
		ld	a, (iy+0)
		add	a, 4
		or	0F0h ; ''
		ld	c, a
		call	YM1_ConditionnalInput

loc_8C4:				; CODE XREF: YM2_ParseData+102j
		ld	a, (de)
		bit	7, a
		jr	nz, loc_8CE
		ld	a, (ix+7)
		jr	loc_8D3
; ---------------------------------------------------------------------------

loc_8CE:				; CODE XREF: YM2_ParseData+15Aj
		inc	de
		ld	a, (de)
		ld	(ix+7),	a

loc_8D3:				; CODE XREF: YM2_ParseData+15Fj
		ld	(ix+2),	a
		inc	de
		ld	(ix+1),	d
		ld	(ix+0),	e
		jp	loc_797
; ---------------------------------------------------------------------------

loc_8E0:				; CODE XREF: YM2_ParseData+4Cj
		dec	(ix+2)
		ld	b, (ix+12h)
		ld	c, (ix+11h)
		ld	a, b
		or	c
		jr	z, loc_964
		ld	a, (ix+0Fh)
		ld	h, a
		ld	a, (ix+0Eh)
		ld	l, a
		push	bc
		push	hl
		or	a
		sbc	hl, bc
		ld	a, h
		ld	(TEMP_FREQUENCY), a ; temp space to store frequency values when	YM data	is parsed
		jr	nc, loc_908
		ld	b, 0
		ld	c, (ix+1Fh)
		jp	loc_910
; ---------------------------------------------------------------------------

loc_908:				; CODE XREF: YM2_ParseData+191j
		ld	b, 0FFh
		ld	a, (ix+1Fh)
		neg
		ld	c, a

loc_910:				; CODE XREF: YM2_ParseData+198j
		pop	hl
		add	hl, bc
		pop	bc
		push	hl
		or	a
		sbc	hl, bc
		ld	a, (TEMP_FREQUENCY) ; temp space to store frequency values when	YM data	is parsed
		xor	h
		bit	7, a
		pop	hl
		jr	nz, loc_957
		push	hl
		ld	a, h
		and	7
		ld	h, a
		ld	(TEMP_FREQUENCY), hl ; temp space to store frequency values when YM data is parsed
		ld	bc, 4D4h
		or	a
		sbc	hl, bc
		jr	c, loc_936
		ld	bc, 596h
		jp	loc_94A
; ---------------------------------------------------------------------------

loc_936:				; CODE XREF: YM2_ParseData+1C1j
		ld	hl, (TEMP_FREQUENCY) ; temp space to store frequency values when YM data is parsed
		ld	bc, 26Ah
		or	a
		sbc	hl, bc
		jr	nc, loc_947
		ld	bc, 0FA6Ah
		jp	loc_94A
; ---------------------------------------------------------------------------

loc_947:				; CODE XREF: YM2_ParseData+1D2j
		ld	bc, 0

loc_94A:				; CODE XREF: YM2_ParseData+1C6j
					; YM2_ParseData+1D7j
		pop	hl
		add	hl, bc
		ld	a, h
		ld	(ix+0Fh), a
		ld	a, l
		ld	(ix+0Eh), a
		jp	loc_964
; ---------------------------------------------------------------------------

loc_957:				; CODE XREF: YM2_ParseData+1B1j
		ld	(ix+0Fh), b
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a
		ld	(ix+12h), a

loc_964:				; CODE XREF: YM2_ParseData+17Ej
					; YM2_ParseData+1E7j
		ld	a, (ix+0Ah)
		or	a
		jr	z, loc_970
		dec	(ix+0Ah)
		xor	a
		jr	loc_999
; ---------------------------------------------------------------------------

loc_970:				; CODE XREF: YM2_ParseData+1FBj
					; YM2_ParseData+229j
		ld	a, (ix+0Ch)
		ld	h, a
		ld	a, (ix+0Bh)
		ld	l, a
		ld	a, (ix+0Dh)
		ld	b, 0
		ld	c, a
		inc	(ix+0Dh)
		add	hl, bc
		ld	a, (hl)
		cp	81h ; 'Å'
		jr	nz, loc_98D
		dec	(ix+0Dh)
		xor	a
		jr	loc_999
; ---------------------------------------------------------------------------

loc_98D:				; CODE XREF: YM2_ParseData+218j
		cp	80h ; 'Ä'
		jp	nz, loc_999
		xor	a
		ld	(ix+0Dh), a
		jp	loc_970
; ---------------------------------------------------------------------------

loc_999:				; CODE XREF: YM2_ParseData+201j
					; YM2_ParseData+21Ej ...
		ld	c, a
		ld	a, (ix+0Eh)
		ld	l, a
		ld	a, (ix+0Fh)
		ld	h, a
		ld	b, 0
		bit	7, c
		jr	z, loc_9A9
		dec	b

loc_9A9:				; CODE XREF: YM2_ParseData+239j
		add	hl, bc
; ---------------------------------------------------------------------------
		db    6
byte_9AB:	db 0			; DATA XREF: YM2_ParseData+27w
		db  4Ch	; L
		db 0DDh	; ›
		db  71h	; q
		db  0Fh
		db 0CDh	; Õ
		db 0F0h	; 
		db    4
		db    6
byte_9B4:	db 0			; DATA XREF: YM2_ParseData+21w
		db  4Dh	; M
		db 0DDh	; ›
		db  71h	; q
		db  0Eh
		db 0CDh	; Õ
		db 0F0h	; 
		db    4
		db  3Ah	; :
		db 0A6h	; ¶
		db  14h
		db 0B7h	; ∑
		db 0C0h	; ¿
		db  3Ah	; :
		db 0A8h	; ®
		db  14h
		db 0B7h	; ∑
		db 0C0h	; ¿
		db 0DDh	; ›
		db  7Eh	; ~
		db    4
		db 0C3h	; √
		db  7Fh	; 
		db  0Ah
; End of function YM2_ParseData


; =============== S U B	R O U T	I N E =======================================


YM1_SetChannelInstrument:		; CODE XREF: YM1_ParseData+82p
		ld	(ix+10h), a
		ld	a, (ix+4)
; End of function YM1_SetChannelInstrument


; =============== S U B	R O U T	I N E =======================================


YM1_LoadInstrument:			; CODE XREF: YM_UpdateInstrumentsLevels+12p
					; YM_UpdateInstrumentsLevels+1Fp ...
		call	LoadInstrumentsBank
		ld	(ix+4),	a	; a is the total level of the instrument
		ld	a, (FADE_OUT_COUNTER) ;	Counts how many	times the fade out timer reached 0. Fade out stops at value $0C.
		add	a, 0Fh
		ld	h, a
		ld	a, (MUSIC_LEVEL) ; general output level	for music and SFX type 1, sent from 68k
		add	a, (ix+4)
		sub	h
		jr	nc, loc_9E8
		xor	a		; put level to 0

loc_9E8:				; CODE XREF: YM1_LoadInstrument+13j
		push	de
		push	af
		ld	a, (ix+10h)	; load instrument index
		ld	l, a
		ld	h, 0
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		push	hl
		add	hl, de
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		add	hl, de
		pop	de
		add	hl, de
		ld	de, 8000h
		add	hl, de		; hl now points	to the first byte of the instrument to load
		push	hl
		ld	de, 1Ch		; get algorithm	byte
		add	hl, de
		ld	a, (hl)
		and	7		; only keep algo bits
		ld	(ix+5),	a	; store	algo value
		pop	hl		; get back instrument start offset
		ld	a, (iy+0)	; get currently	managed	channel	value
		add	a, 30h ; '0'    ; register value for detune/multiple
		ld	b, 4		; loop 4 times

loc_A14:				; CODE XREF: YM1_LoadInstrument+4Ej
		push	bc
		ld	b, a		; YM Register :	detune/multiple
		ld	c, (hl)
		push	af
		call	YM1_Input
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_A14
		ld	(TEMP_REGISTER), a ; store register value : 40h
		pop	af
		push	hl
		ld	d, 0
		ld	e, a
		ld	hl, t_YM_LEVELS
		ld	b, e
		add	hl, de
		ld	c, (hl)		; put corresponding value in c
		ld	e, (ix+5)	; get Algo
		ld	hl, t_SLOTS_PER_ALGO
		add	hl, de
		ld	d, (hl)		; put corresponding value in d
		ld	a, (TEMP_REGISTER) ; temp place	to keep	a register value when an YM instrument is loaded
		pop	hl
		ld	b, 4		; loop 4 times

loc_A3E:				; CODE XREF: YM1_LoadInstrument+8Aj
		push	bc
		ld	b, a		; YM Register :	Total level
		push	af
		rr	d
		jr	nc, loc_A53	; if rotated bit = 0, then use original	instrument level
		ld	a, 7Fh ; ''    ; else, the operator is a slot, so use channel level
		sub	(hl)		; instrument's operator total level value
		add	a, c
		ld	c, a
		cp	7Fh ; ''
		jr	c, loc_A50	; if result > 7F, then put 7F, since it's the max value
		ld	c, 7Fh ; ''

loc_A50:				; CODE XREF: YM1_LoadInstrument+7Aj
		jp	loc_A54
; ---------------------------------------------------------------------------

loc_A53:				; CODE XREF: YM1_LoadInstrument+71j
		ld	c, (hl)		; get instrument's operator level

loc_A54:				; CODE XREF: YM1_LoadInstrument:loc_A50j
		call	YM1_Input
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_A3E
		ld	b, 14h		; loop 20d times, so 5 * 4 operators, so from 50h to A0h

loc_A60:				; CODE XREF: YM1_LoadInstrument+9Aj
		push	bc
		ld	b, a		; YM Register :	Rate scalling /	Attack rate, First decay rate /	Amplitude modulation ...
		ld	c, (hl)		; ... Secondary	decay rate, Secondary amplitude	/ Release rate,	SSG-EG
		push	af
		call	YM1_Input
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_A60
		add	a, 10h
		ld	b, a		; YM Register :	Feedback / Algorithm
		ld	c, (hl)
		call	YM1_Input
		pop	de
		jp	LoadMusicBank
; End of function YM1_LoadInstrument


; =============== S U B	R O U T	I N E =======================================


YM2_setChannelInstrument:		; CODE XREF: YM2_ParseData+B0p
		ld	(ix+10h), a
		ld	a, (ix+4)
; End of function YM2_setChannelInstrument


; =============== S U B	R O U T	I N E =======================================


YM2_LoadInstrument:			; CODE XREF: YM_UpdateInstrumentsLevels+3Fp
					; YM_UpdateInstrumentsLevels+4Cp ...
		call	LoadInstrumentsBank
		ld	(ix+4),	a
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	z, loc_A90
		ld	a, (ix+4)
		jr	loc_AA0
; ---------------------------------------------------------------------------

loc_A90:				; CODE XREF: YM2_LoadInstrument+Aj
		ld	a, (FADE_OUT_COUNTER) ;	Counts how many	times the fade out timer reached 0. Fade out stops at value $0C.
		add	a, 0Fh
		ld	h, a
		ld	a, (MUSIC_LEVEL) ; general output level	for music and SFX type 1, sent from 68k
		add	a, (ix+4)
		sub	h
		jr	nc, loc_AA0
		xor	a

loc_AA0:				; CODE XREF: YM2_LoadInstrument+Fj
					; YM2_LoadInstrument+1Ej
		push	de
		push	af
		ld	a, (ix+10h)	; same as in YM1 version of subroutine,	load instrument	index etc...
		ld	l, a
		ld	h, 0
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		push	hl
		add	hl, de
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		add	hl, de
		pop	de
		add	hl, de
		ld	de, 8000h
		add	hl, de
		push	hl
		ld	de, 1Ch
		add	hl, de
		ld	a, (hl)
		and	7
		ld	(ix+5),	a
		pop	hl
		ld	a, (iy+0)
		add	a, 30h ; '0'
		ld	b, 4

loc_ACC:				; CODE XREF: YM2_LoadInstrument+59j
		push	bc
		ld	b, a
		ld	c, (hl)
		push	af
		call	YM2_ConditionalInput
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_ACC
		ld	(TEMP_REGISTER), a ; temp place	to keep	a register value when an YM instrument is loaded
		pop	af
		push	hl
		ld	d, 0
		ld	e, a
		ld	hl, t_YM_LEVELS
		ld	b, e
		add	hl, de
		ld	c, (hl)
		ld	e, (ix+5)
		ld	hl, t_SLOTS_PER_ALGO
		add	hl, de
		ld	d, (hl)
		ld	a, (TEMP_REGISTER) ; temp place	to keep	a register value when an YM instrument is loaded
		pop	hl
		ld	b, 4

loc_AF6:				; CODE XREF: YM2_LoadInstrument+95j
		push	bc
		ld	b, a
		push	af
		rr	d
		jr	nc, loc_B0B
		ld	a, 7Fh ; ''
		sub	(hl)
		add	a, c
		ld	c, a
		cp	7Fh ; ''
		jr	c, loc_B08
		ld	c, 7Fh ; ''

loc_B08:				; CODE XREF: YM2_LoadInstrument+85j
		jp	loc_B0C
; ---------------------------------------------------------------------------

loc_B0B:				; CODE XREF: YM2_LoadInstrument+7Cj
		ld	c, (hl)

loc_B0C:				; CODE XREF: YM2_LoadInstrument:loc_B08j
		call	YM2_ConditionalInput
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_AF6
		ld	b, 14h

loc_B18:				; CODE XREF: YM2_LoadInstrument+A5j
		push	bc
		ld	b, a
		ld	c, (hl)
		push	af
		call	YM2_ConditionalInput
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_B18
		add	a, 10h
		ld	b, a
		ld	c, (hl)
		call	YM2_ConditionalInput
		pop	de
		jp	LoadMusicBank
; End of function YM2_LoadInstrument


; =============== S U B	R O U T	I N E =======================================


YM2_ParseChannel6Data:			; CODE XREF: UpdateSound+8Fp
					; UpdateSound+C0p
		ld	ix, YM_CHANNEL_DATA_6
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2) ; indicates if an SFX type 2	is being processed, because these ones use extra channel ram areas, to keep current music data for when	SFX is finished
		or	a
		jr	z, loc_B40
		ld	de, 0E0h ; '‡'  ; if we are currently managing an SFX using the 3 extra RAM areas, point to the right area
		add	ix, de

loc_B40:				; CODE XREF: YM2_ParseChannel6Data+8j
					; YM2_ParseChannel6Data+A1j
		ld	a, (ix+3)	; check	with byte 3 if channel 3 has something to do or	not
		or	a
		ret	nz
		ld	a, (ix+6)	; check	if time	counter	02 has reached key release value 06
		cp	(ix+2)
		jr	nz, loc_B58	; check	if it's time to parse new data or not yet
		ld	a, (ix+8)	; check	if "don't release key" byte 08 is set
		or	a
		jr	nz, loc_B58	; don't jump if byte 02 = byte 06 and byte 08 = 0
		ld	a, 0FEh	; '˛'
		call	DAC_SetNewSample ; play	nothing	!

loc_B58:				; CODE XREF: YM2_ParseChannel6Data+1Aj
					; YM2_ParseChannel6Data+20j
		ld	a, (ix+2)	; check	if it's time to parse new data or not yet
		or	a
		jp	nz, loc_BD5	; if it's not end of sample play, decrement counter and return
		ld	d, (ix+1)	; get data pointer
		ld	e, (ix+0)

parseByte:				; CODE XREF: YM2_ParseChannel6Data+57j
					; YM2_ParseChannel6Data+60j ...
		ld	a, (de)		; get data to parse
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_BAD	; jump if it's not a command
		ld	a, (de)		; else,	parse command
		cp	0FFh
		jp	nz, setKeyRelease ; jump if command is not FF
		inc	de		; if command is	FF, parse next bytes
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, parseAtNewOffset ; jump when it's FF xx xx, meaning "parse from new offset xxxx"
		ld	a, 1		; else,	you have FF 00 00, so end parsing and mute channel
		ld	(ix+3),	a
		ld	a, 0FFh
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ret
; ---------------------------------------------------------------------------

parseAtNewOffset:			; CODE XREF: YM2_ParseChannel6Data+49j
		ex	de, hl
		jr	parseByte	; get data to parse
; ---------------------------------------------------------------------------

setKeyRelease:				; CODE XREF: YM2_ParseChannel6Data+3Fj
		cp	0FCh ; '¸'
		jr	nz, setStereo
		call	SetRelease
		jp	parseByte	; get data to parse
; ---------------------------------------------------------------------------

setStereo:				; CODE XREF: YM2_ParseChannel6Data+5Bj
		cp	0FAh ; '˙'
		jr	nz, loopCommand
		call	YM2_SetStereo
		jp	parseByte	; get data to parse
; ---------------------------------------------------------------------------

loopCommand:				; CODE XREF: YM2_ParseChannel6Data+65j
		cp	0F8h ; '¯'
		jr	nz, ifCommandUnidentified
		call	ParseLoopCommand
		jp	parseByte	; get data to parse
; ---------------------------------------------------------------------------

ifCommandUnidentified:			; CODE XREF: YM2_ParseChannel6Data+6Fj
		inc	de
		inc	de
		jp	parseByte	; get data to parse
; ---------------------------------------------------------------------------

loc_BAD:				; CODE XREF: YM2_ParseChannel6Data+39j
		ld	a, (de)		; parsed byte is not a command
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_BB9	; if byte is F0	or 70
		inc	a		; else,	it's a new sample index : bits 6-0 + 1
		call	DAC_SetNewSample

loc_BB9:				; CODE XREF: YM2_ParseChannel6Data+81j
		ld	a, (de)
		bit	7, a		; if bit 7 = 1,	then next byte is sample play length
		jr	nz, loc_BC3	; get sample play length byte
		ld	a, (ix+7)	; else,	load current sample play length
		jr	loc_BC8		; restart counter with sample play length value
; ---------------------------------------------------------------------------

loc_BC3:				; CODE XREF: YM2_ParseChannel6Data+8Bj
		inc	de		; get sample play length byte
		ld	a, (de)
		ld	(ix+7),	a	; set new sample play length

loc_BC8:				; CODE XREF: YM2_ParseChannel6Data+90j
		ld	(ix+2),	a	; restart counter with sample play length value
		inc	de
		ld	(ix+1),	d	; point	to next	byte to	parse
		ld	(ix+0),	e
		jp	loc_B40		; go back to the beginning of subroutine
; ---------------------------------------------------------------------------

loc_BD5:				; CODE XREF: YM2_ParseChannel6Data+2Bj
		dec	(ix+2)		; if it's not end of sample play, decrement counter and return
		ld	a, (FADE_OUT_TIMER) ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		or	a
		ret	nz		; return in any	way !
		ret
; End of function YM2_ParseChannel6Data


; =============== S U B	R O U T	I N E =======================================


PSG_ParseToneData:			; CODE XREF: UpdateSound+96p
					; UpdateSound+9Cp ...

; FUNCTION CHUNK AT 0512 SIZE 0000000D BYTES

		ld	a, (iy+0)	; a = index of currently managed channel
		ld	ix, PSG_CHANNEL_DATA_TONE_1 ; start of PSG channel data
		ld	h, 0
		ld	l, a
		add	hl, hl
		add	hl, hl
		add	hl, hl
		add	hl, hl
		add	hl, hl		; hl = 20h * a
		ex	de, hl
		add	ix, de		; ix now points	to concerned channel
		rrca
		rrca
		rrca			; channel value	now in right place to make a PSG command
		and	60h ; '`'       ; make sure only the two interesting bits are used
		ld	(CURRENT_PSG_CHANNEL), a ; save	channel	number stored in that way

loc_BF8:				; CODE XREF: PSG_ParseToneData+106j
		ld	a, (ix+3)	; get byte 3 of	channel	data
		or	a
		ret	nz		; return if channel has	nothing	to do
		ld	a, (ix+2)	; get time counter
		or	a
		jp	nz, loc_CE7	; don't jump if it's time to parse next byte
		ld	d, (ix+1)	; if counter = 0, parse	next byte
		ld	e, (ix+0)	; load channel data pointer

loc_C0A:				; CODE XREF: PSG_ParseToneData+53j
					; PSG_ParseToneData+5Cj ...
		ld	a, (de)		; get pointed data
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_C7A	; if byte is not a command
		ld	a, (de)		; get byte again
		cp	0FFh
		jp	nz, loc_C33	; if a != FF check other possible command values
		inc	de		; a = FF
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, PSG_Parse_At_New_Offset ; FF xx xx,	go parse at new	offset xxxx
		ld	a, 1		; FF 00	00, end	of data, mute channel and return
		ld	(ix+3),	a	; byte 3 of channel data = 1
		ld	a, 0FFh
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ld	a, 0Fh
		jp	PSG_SetChannelAttenuation ; concerned channel volume : OFF
; ---------------------------------------------------------------------------

PSG_Parse_At_New_Offset:		; CODE XREF: PSG_ParseToneData+41j
		ex	de, hl
		jr	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

loc_C33:				; CODE XREF: PSG_ParseToneData+37j
		cp	0FDh ; '˝'
		jr	nz, loc_C3D
		call	PSG_LoadInstrument
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

loc_C3D:				; CODE XREF: PSG_ParseToneData+57j
		cp	0FCh ; '¸'
		jr	nz, loc_C47
		call	SetRelease
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

loc_C47:				; CODE XREF: PSG_ParseToneData+61j
		cp	0FBh ; '˚'
		jr	nz, Set_Timer
		call	LoadVibrato
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

Set_Timer:				; CODE XREF: PSG_ParseToneData+6Bj
		cp	0FAh ; '˙'
		jr	nz, loc_C61
		inc	de
		ld	b, 26h ; '&'    ; YM Register : Timer B value
		ld	a, (de)
		ld	c, a
		inc	de
		call	YM1_Input
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

loc_C61:				; CODE XREF: PSG_ParseToneData+75j
		cp	0F9h ; '˘'
		jr	nz, loc_C6B
		call	LoadNoteShift
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

loc_C6B:				; CODE XREF: PSG_ParseToneData+85j
		cp	0F8h ; '¯'
		jr	nz, unidentifiedCommand	; Unidentified_Command
		call	ParseLoopCommand
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

unidentifiedCommand:			; CODE XREF: PSG_ParseToneData+8Fj
		inc	de		; Unidentified_Command
		inc	de
		jp	loc_C0A		; get pointed data
; ---------------------------------------------------------------------------

loc_C7A:				; CODE XREF: PSG_ParseToneData+31j
		ld	a, (de)		; byte is not a	command
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_CC3	; jump if byte = F0 or 70
		push	af		; keep byte without bit	7 : new	note
		ld	a, (ix+1Eh)
		or	a
		jr	z, Set_New_Note	; jump if byte 1E = 0. Byte 1E is set when key has just	been released
		xor	a		; key has just been released
		ld	(ix+12h), a	; reset	instrument relative pointer
		ld	(ix+1Eh), a	; clear	byte 1E
		ld	a, (ix+9)	; reset	vibrato	counter
		ld	(ix+0Ah), a

Set_New_Note:				; CODE XREF: PSG_ParseToneData+A9j
		xor	a
		ld	(ix+0Dh), a	; reset	vibrato	relative pointer
		pop	af		; get back byte	without	bit 7
		add	a, (ix+1Ch)	; add note shift value
		sub	15h
		ld	l, a
		ld	h, 0
		ld	bc, t_PSG_FREQUENCIES ;	PSG Frequency table, same idea as YM Frequency table but for PSG Tone Channels
		add	hl, hl
		add	hl, bc
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	l, a		; hl = corresponding frequency
		ld	b, 0
		ld	c, (ix+1Dh)
		srl	c
		add	hl, bc		; add frequency	shift value
		ld	c, l
		ld	(ix+0Eh), c	; keep frequency value to play
		ld	c, h
		ld	(ix+0Fh), c
		ld	a, (ix+8)
		and	80h ; 'Ä'       ; keep only bit 7
		jr	loc_CC8
; ---------------------------------------------------------------------------

loc_CC3:				; CODE XREF: PSG_ParseToneData+A1j
		ld	a, (ix+8)	; if byte = F0 or 70
		or	1		; set bit 0

loc_CC8:				; CODE XREF: PSG_ParseToneData+E3j
		ld	(ix+8),	a
		ld	a, (de)		; get full byte	again
		bit	7, a
		jr	nz, loc_CD5	; if bit 7 = 1,	set note length
		ld	a, (ix+7)
		jr	loc_CDA		; reset	time counter
; ---------------------------------------------------------------------------

loc_CD5:				; CODE XREF: PSG_ParseToneData+F0j
		inc	de
		ld	a, (de)
		ld	(ix+7),	a	; set new note length

loc_CDA:				; CODE XREF: PSG_ParseToneData+F5j
		ld	(ix+2),	a	; reset	time counter
		inc	de
		ld	(ix+1),	d	; save offset of next byte to parse
		ld	(ix+0),	e
		jp	loc_BF8		; get byte 3 of	channel	data
; ---------------------------------------------------------------------------

loc_CE7:				; CODE XREF: PSG_ParseToneData+23j
		dec	(ix+2)		; decrement counter
		ld	a, (ix+0Ah)
		or	a
		jr	z, Apply_Vibrato ; jump	if vibrato must	be applied
		dec	(ix+0Ah)	; decrement vibrato counter
		xor	a
		jr	loc_D1E
; ---------------------------------------------------------------------------

Apply_Vibrato:				; CODE XREF: PSG_ParseToneData+110j
					; PSG_ParseToneData+13Dj
		ld	a, (ix+0Ch)
		ld	h, a
		ld	a, (ix+0Bh)
		ld	l, a
		ld	a, (ix+0Dh)
		ld	b, 0
		ld	c, a
		inc	(ix+0Dh)
		add	hl, bc
		ld	a, (hl)
		cp	81h ; 'Å'
		jr	nz, loc_D12
		dec	(ix+0Dh)
		jr	loc_D39		; THIS PART will change	the level depending on the PSG Instrument
; ---------------------------------------------------------------------------

loc_D12:				; CODE XREF: PSG_ParseToneData+12Dj
		cp	80h ; 'Ä'
		jp	nz, loc_D1E
		xor	a
		ld	(ix+0Dh), a
		jp	Apply_Vibrato
; ---------------------------------------------------------------------------

loc_D1E:				; CODE XREF: PSG_ParseToneData+116j
					; PSG_ParseToneData+136j
		neg
		ld	c, a
		ld	a, (ix+0Eh)
		ld	l, a
		ld	a, (ix+0Fh)
		ld	h, a
		ld	b, 0
		bit	7, c
		jr	z, loc_D30
		dec	b

loc_D30:				; CODE XREF: PSG_ParseToneData+14Fj
		add	hl, bc
		ld	a, h
		ld	(ix+0Fh), a
		ld	a, l
		ld	(ix+0Eh), a	; now vibrato is applied

loc_D39:				; CODE XREF: PSG_ParseToneData+132j
		call	PSG_GetInstrumentPointer ; THIS	PART will change the level depending on	the PSG	Instrument
		ld	b, (hl)		; byte b = 8x or 0x
		bit	7, b
		jr	nz, loc_D45	; if byte $8x, then it's data end, so just keep applying the same level alteration
		inc	a		; if byte 0x, point to next byte
		ld	(ix+12h), a

loc_D45:				; CODE XREF: PSG_ParseToneData+161j
		res	7, b		; keep x only
		ld	a, 0Fh
		sub	b
		ld	b, a
		ld	a, (ix+4)
		sub	b		; a = level affected by	instrument
		jr	nc, loc_D52	; make sure value is at	least 0
		xor	a

loc_D52:				; CODE XREF: PSG_ParseToneData+171j
		ld	b, a		; put level to apply in	b
		ld	a, (iy+0)
		cp	2
		jr	nz, loc_D5E	; jump if it's PSG Tone 1 or 2 Channels
		ld	a, 0Fh		; if PSG Tone 3	Channel, apply max level
		jr	loc_D61
; ---------------------------------------------------------------------------

loc_D5E:				; CODE XREF: PSG_ParseToneData+17Aj
		ld	a, (MUSIC_LEVEL) ; general output level	for music and SFX type 1, sent from 68k

loc_D61:				; CODE XREF: PSG_ParseToneData+17Ej
		add	a, b
		sub	0Fh
		jr	nc, loc_D67	; make sure level is at	least 0
		xor	a

loc_D67:				; CODE XREF: PSG_ParseToneData+186j
		ld	(ix+5),	a	; store	level to apply in byte 05
		ld	b, (ix+8)
		ld	a, (ix+2)
		or	a
		jr	z, PSG_Release_Key ; if	counter	= 0, jump to release key part
		bit	7, b
		jr	nz, loc_D9A	; jump if byte 08 bit 7	= 1
		cp	(ix+6)
		jr	nz, loc_D9A	; or if	byte 02	!= byte	06

PSG_Release_Key:			; CODE XREF: PSG_ParseToneData+193j
		ld	a, b
		or	a
		jr	nz, loc_D9A	; leave	if byte	08 != 0
		ld	c, 1
		ld	(ix+1Eh), c	; set byte 1E to "release key" before next note
		or	2
		ld	(ix+8),	a	; byte 08 = $03

loc_D8A:				; CODE XREF: PSG_ParseToneData+1B7j
		call	PSG_GetInstrumentPointer
		ld	a, (hl)
		and	80h ; 'Ä'
		jr	nz, loc_D97	; increment relative pointer until pointed byte's bit 7 = 1
		inc	(ix+12h)
		jr	loc_D8A
; ---------------------------------------------------------------------------

loc_D97:				; CODE XREF: PSG_ParseToneData+1B2j
		inc	(ix+12h)	; now byte 12 points to	instrument release data

loc_D9A:				; CODE XREF: PSG_ParseToneData+197j
					; PSG_ParseToneData+19Cj ...
		ld	a, (FADE_OUT_TIMER) ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		or	a
		jr	nz, Transmit_Data ; transmit Frequency data to PSG
		ld	a, (iy+0)
		cp	2
		jr	z, Transmit_Data ; jump	if currently managing PSG Tone 3 Channel
		ld	a, (ix+4)
		or	a
		jr	z, Transmit_Data ; transmit Frequency data to PSG
		dec	a		; decrement level if currently fading out and fade out timer = 0
		ld	(ix+4),	a

Transmit_Data:				; CODE XREF: PSG_ParseToneData+1C0j
					; PSG_ParseToneData+1C7j ...
		ld	a, (ix+0Fh)	; transmit Frequency data to PSG
		ld	b, a
		ld	a, (ix+0Eh)
		ld	c, a
		and	0Fh
		ld	h, a
		ld	a, (CURRENT_PSG_CHANNEL) ; current PSG channel to process, stored in the right bits ready to be	sent to	PSG
		or	h
		or	80h ; 'Ä'
		ld	(PSG_PORT), a	; first	byte of	tone channel frequency command
		ld	a, c
		srl	b
		rra
		srl	b
		rra
		rra
		rra
		and	3Fh ; '?'
		ld	(PSG_PORT), a	; second byte of tone channel frequency	command
		ld	a, 0Fh		; starting attenuation value
		sub	(ix+5)		; get level to apply
		ld	h, a		; save it
		ld	a, (CURRENT_PSG_CHANNEL) ; get channel number
		or	h		; load saved value
		or	90h ; 'ê'       ; load attenuation command bits
		ld	(PSG_PORT), a
		ret
; End of function PSG_ParseToneData


; =============== S U B	R O U T	I N E =======================================


PSG_GetInstrumentPointer:		; CODE XREF: PSG_ParseToneData:loc_D39p
					; PSG_ParseToneData:loc_D8Ap ...
		ld	a, (ix+11h)
		ld	h, a
		ld	a, (ix+10h)	; bytes	10-11 :	pointer
		ld	l, a
		ld	b, 0
		ld	a, (ix+12h)	; byte 12 : relative pointer to	add to 10-11 pointer
		ld	c, a
		add	hl, bc
		ret
; End of function PSG_GetInstrumentPointer


; =============== S U B	R O U T	I N E =======================================


PSG_LoadInstrument:			; CODE XREF: PSG_ParseToneData+59p
					; PSG_ParseNoiseData+4Cp
		inc	de		; load psg instrument x	at level y
		ld	a, (de)
		ld	c, a
		and	0Fh		; keep only nibble 2 : instrument level
		ld	b, a
		ld	a, (iy+0)
		cp	2		; if it's PSG Tone 3 Channel
		jr	z, loc_E06
		ld	a, (CURRENTLY_FADING_OUT) ; set	to 01 when a fade out operation	is being executed
		or	a
		jr	nz, loc_E09	; don't jump if 0, so load new level

loc_E06:				; CODE XREF: PSG_LoadInstrument+Bj
		ld	(ix+4),	b	; if it's PSG Tone 3 channel, keep nibble 2 in byte 04

loc_E09:				; CODE XREF: PSG_LoadInstrument+11j
		ld	a, c		; get back full	byte
		rra
		rra
		rra
		rra
		and	0Fh		; get psg instrument index
		inc	de
		ld	h, 0
		ld	l, a
		add	hl, hl
		ld	bc, pt_PSG_INSTRUMENTS ; The PSG instruments only affect the channel level
		add	hl, bc
		ld	c, (hl)
		inc	hl
		ld	b, (hl)
		ld	(ix+10h), c	; get instrument pointer
		ld	(ix+11h), b
		ret
; End of function PSG_LoadInstrument


; =============== S U B	R O U T	I N E =======================================


PSG_ParseNoiseData:			; CODE XREF: UpdateSound+A8p
		ld	a, (iy+0)
		ld	ix, PSG_CHANNEL_DATA_NOISE
		ld	a, 60h ; '`'
		ld	(CURRENT_PSG_CHANNEL), a ; current PSG channel to process, stored in the right bits ready to be	sent to	PSG

loc_E2F:				; CODE XREF: PSG_ParseNoiseData+B1j
		ld	a, (ix+3)
		or	a
		ret	nz		; don't parse if channel not in use
		ld	a, (ix+2)
		or	a		; check	note time counter
		jp	nz, loc_ED7	; jump if it's not the end of the note
		ld	d, (ix+1)
		ld	e, (ix+0)	; if it's the end of the note, get data pointer to parse next byte

loc_E41:				; CODE XREF: PSG_ParseNoiseData+45j
					; PSG_ParseNoiseData+4Fj ...
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_E8E	; jump if parsed byte is not a command
		ld	a, (de)
		cp	0FFh
		jp	nz, loc_E6B	; jump if command is not $FF
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, loc_E67	; jump if command is FF	xx xx
		ld	a, 1
		ld	(ix+3),	a	; else,	FF 00 00 : stop	using this channel
		ld	a, 0FFh
		ld	(SFX_USELESS_BYTE_2), a	; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		ld	a, 0Fh
		jp	PSG_SetChannelAttenuation
; ---------------------------------------------------------------------------

loc_E67:				; CODE XREF: PSG_ParseNoiseData+33j
		ex	de, hl
		jp	loc_E41
; ---------------------------------------------------------------------------

loc_E6B:				; CODE XREF: PSG_ParseNoiseData+29j
		cp	0FDh ; '˝'
		jr	nz, loc_E75
		call	PSG_LoadInstrument
		jp	loc_E41
; ---------------------------------------------------------------------------

loc_E75:				; CODE XREF: PSG_ParseNoiseData+4Aj
		cp	0FCh ; '¸'
		jr	nz, loc_E7F
		call	SetRelease
		jp	loc_E41
; ---------------------------------------------------------------------------

loc_E7F:				; CODE XREF: PSG_ParseNoiseData+54j
		cp	0F8h ; '¯'
		jr	nz, Unidentified_Command
		call	ParseLoopCommand
		jp	loc_E41
; ---------------------------------------------------------------------------

Unidentified_Command:			; CODE XREF: PSG_ParseNoiseData+5Ej
		inc	de
		inc	de
		jp	loc_E41
; ---------------------------------------------------------------------------

loc_E8E:				; CODE XREF: PSG_ParseNoiseData+23j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_EB3	; jump if byte = F0 or 70
		push	af		; keep byte without bit	7 : new	note
		ld	a, (ix+1Eh)
		or	a
		jr	z, loc_EA4	; jump if key has not just been	released
		xor	a		; key has just been released
		ld	(ix+12h), a	; reset	instrument relative pointer
		ld	(ix+1Eh), a	; clear	key release indicator

loc_EA4:				; CODE XREF: PSG_ParseNoiseData+78j
		pop	af
		and	7		; just keep bits 2-0
		or	0E0h ; '‡'
		ld	(PSG_PORT), a	; transmit feedback and	freqency
		ld	a, (ix+8)
		and	80h ; 'Ä'
		jr	loc_EB8
; ---------------------------------------------------------------------------

loc_EB3:				; CODE XREF: PSG_ParseNoiseData+70j
		ld	a, (ix+8)
		or	1

loc_EB8:				; CODE XREF: PSG_ParseNoiseData+8Ej
		ld	(ix+8),	a
		ld	a, (de)		; get full byte	again
		bit	7, a
		jr	nz, loc_EC5	; if bit 7 is set, next	byte is	note length to apply
		ld	a, (ix+7)
		jr	loc_ECA		; reset	time counter
; ---------------------------------------------------------------------------

loc_EC5:				; CODE XREF: PSG_ParseNoiseData+9Bj
		inc	de
		ld	a, (de)
		ld	(ix+7),	a	; set new note length

loc_ECA:				; CODE XREF: PSG_ParseNoiseData+A0j
		ld	(ix+2),	a	; reset	time counter
		inc	de
		ld	(ix+1),	d	; point	to next	byte to	parse
		ld	(ix+0),	e
		jp	loc_E2F
; ---------------------------------------------------------------------------

loc_ED7:				; CODE XREF: PSG_ParseNoiseData+15j
		dec	(ix+2)		; decrement time counter
		call	PSG_GetInstrumentPointer ; affect level	depending on PSG Instrument used
		ld	b, (hl)		; byte b = 8x or 0x
		bit	7, b
		jr	nz, loc_EE6	; if byte $8x, then it's data end, so just keep applying the same level alteration
		inc	a		; if byte 0x, point to next byte
		ld	(ix+12h), a

loc_EE6:				; CODE XREF: PSG_ParseNoiseData+BDj
		res	7, b		; keep x only
		ld	a, 0Fh
		sub	b
		ld	b, a
		ld	a, (ix+4)
		sub	b		; a = level affected by	instrument
		jr	nc, loc_EF3	; make sure value is at	least 0
		xor	a

loc_EF3:				; CODE XREF: PSG_ParseNoiseData+CDj
		ld	b, a
		ld	a, (MUSIC_LEVEL) ; apply music level
		add	a, b
		sub	0Fh
		jr	nc, loc_EFD	; make sure level is at	least 0
		xor	a

loc_EFD:				; CODE XREF: PSG_ParseNoiseData+D7j
		ld	(ix+5),	a	; keep level value
		ld	b, (ix+8)
		ld	a, (ix+2)
		or	a
		jr	z, Release_Key	; if counter = 0, jump to release key part
		bit	7, b
		jr	nz, loc_F30	; jump if byte 08 bit 7	= 1
		cp	(ix+6)
		jr	nz, loc_F30	; or if	byte 02	!= byte	06

Release_Key:				; CODE XREF: PSG_ParseNoiseData+E4j
		ld	a, b
		or	a
		jr	nz, loc_F30	; leave	if byte	08 != 0
		ld	c, 1
		ld	(ix+1Eh), c	; set byte 1E to "release key" before next note
		or	2
		ld	(ix+8),	a	; byte 08 = $03

loc_F20:				; CODE XREF: PSG_ParseNoiseData+108j
		call	PSG_GetInstrumentPointer
		ld	a, (hl)
		and	80h ; 'Ä'
		jr	nz, loc_F2D	; increment relative pointer until pointed byte's bit 7 = 1
		inc	(ix+12h)
		jr	loc_F20
; ---------------------------------------------------------------------------

loc_F2D:				; CODE XREF: PSG_ParseNoiseData+103j
		inc	(ix+12h)	; now byte 12 points to	instrument release data

loc_F30:				; CODE XREF: PSG_ParseNoiseData+E8j
					; PSG_ParseNoiseData+EDj ...
		ld	a, (FADE_OUT_TIMER) ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		or	a
		jr	nz, Transmit_Attenuation
		ld	a, (ix+4)
		or	a
		jr	z, Transmit_Attenuation
		dec	a		; decrement level if currently fading out and fade out timer = 0
		ld	(ix+4),	a

Transmit_Attenuation:			; CODE XREF: PSG_ParseNoiseData+111j
					; PSG_ParseNoiseData+117j
		ld	a, 0Fh
		sub	(ix+5)		; get sound level and invert it	to get sound attenuation
		or	0F0h ; ''      ; add attenuation command bits
		ld	(PSG_PORT), a	; transmit attenuation
		ret
; End of function PSG_ParseNoiseData


; =============== S U B	R O U T	I N E =======================================


YM_SetSlideOrKeyRelease:		; CODE XREF: YM1_ParseData+9Cp
					; YM2_ParseData+CAp
		inc	de
		ld	a, (de)		; get parameter
		cp	0FFh
		jr	nz, loc_F57	; if parameter != $FF
		xor	a		; if parameter = $FF, clear channel byte 1F
		ld	(ix+1Fh), a
		inc	de
		ret
; ---------------------------------------------------------------------------

loc_F57:				; CODE XREF: YM_SetSlideOrKeyRelease+4j
		cp	81h ; 'Å'
		jr	c, loc_F64	; jump if a < 81
		and	7Fh ; ''
		ld	(ix+1Fh), a	; else,	put bits 6-0 in	channel	ram byte 1F
		inc	de
		ret
; End of function YM_SetSlideOrKeyRelease


; =============== S U B	R O U T	I N E =======================================


SetRelease:				; CODE XREF: YM2_ParseChannel6Data+5Dp
					; PSG_ParseToneData+63p ...
		inc	de		; point	to next	byte
		ld	a, (de)		; get next byte

loc_F64:				; CODE XREF: YM_SetSlideOrKeyRelease+Ej
		ld	c, a
		and	80h ; 'Ä'
		ld	(ix+8),	a	; bit 7	goes to	channel	data byte 8
		ld	a, c
		and	7Fh ; ''
		ld	(ix+6),	a	; bits 6-0 go to channel data byte 6
		inc	de		; point	to next	byte
		ret
; End of function SetRelease


; =============== S U B	R O U T	I N E =======================================


LoadVibrato:				; CODE XREF: YM1_ParseData+A6p
					; YM2_ParseData+D4p ...
		inc	de		; affects channel ram bytes 09,	0B and 0C
		ld	a, (de)		; get next parameter : $2C
		push	af
		rra
		rra
		rra
		and	1Eh		; keep nibble 1	only, multiplied by 2 -> $04
		ld	hl, pt_PITCH_EFFECTS ; The pitch effects mostly	are vibratos, but also effects that make pitch go up or	down indefinitely
		ld	b, 0
		ld	c, a
		add	hl, bc		; point	to the corresponding pointer
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	(ix+0Bh), a
		ld	a, h
		ld	(ix+0Ch), a	; channel ram bytes B-C	= 4th pointer
		pop	af
		rla
		and	1Eh		; get nibble 2 only, multiplied	by 2 ->	$18
		jr	z, loc_F92
		dec	a		; $17

loc_F92:				; CODE XREF: LoadVibrato+1Dj
		ld	(ix+9),	a
		inc	de
		ret
; End of function LoadVibrato


; =============== S U B	R O U T	I N E =======================================


YM1_SetStereo:				; CODE XREF: YM1_ParseData+B0p
		inc	de
		ld	a, (de)
		bit	0, a
		jr	nz, UselessSubroutine ;	if bit 0 of pointed value is set to 1 :	if FMS value = 1 or 3 ?
		and	0C0h ; '¿'      ; else
		ld	c, a
		ld	b, 0B4h	; '¥'
		ld	a, (iy+0)
		add	a, b
		ld	b, a		; set proper register according	to currently processed channel
		inc	de		; point	to next	pointed	rom byte
		jp	YM1_Input
; End of function YM1_SetStereo


; =============== S U B	R O U T	I N E =======================================


YM2_SetStereo:				; CODE XREF: YM2_ParseData+DEp
					; YM2_ParseChannel6Data+67p
		inc	de
		ld	a, (de)
		and	0C0h ; '¿'
		ld	(ix+1Eh), a
		ld	c, a
		ld	b, 0B4h	; '¥'
		ld	a, (iy+0)
		add	a, b
		ld	b, a
		inc	de
		jp	YM2_ConditionalInput
; End of function YM2_SetStereo


; =============== S U B	R O U T	I N E =======================================


UselessSubroutine:			; CODE XREF: YM1_SetStereo+4j
		ld	a, (USELESS_BYTE) ; that byte is never really used !
		inc	a
		ld	(USELESS_BYTE),	a ; incremented	each time new stereo byte has bit 0 set	to 1, but actually has no effect on sound. Useless !
		inc	de
		ret
; End of function UselessSubroutine


; =============== S U B	R O U T	I N E =======================================


LoadNoteShift:				; CODE XREF: YM1_ParseData+BAp
					; YM2_ParseData+E8p ...
		inc	de
		ld	a, (de)
		and	8Fh ; 'è'
		bit	7, a
		jr	z, loc_FD1
		or	0F0h ; ''

loc_FD1:				; CODE XREF: LoadNoteShift+6j
		ld	(ix+1Ch), a	; byte 1C = 0x or Fx depending on byte 7 : value of note shift
		ld	a, (de)
		rrca
		rrca
		rrca
		and	0Eh		; just keep bytes 6-5-4	multiplied by 2
		ld	(ix+1Dh), a	; value	of frequeny shift
		inc	de
		ret
; End of function LoadNoteShift


; =============== S U B	R O U T	I N E =======================================


ParseLoopCommand:			; CODE XREF: YM1_ParseData+C4p
					; YM2_ParseData+F2p ...
		inc	de
		ld	a, (de)		; get first byte parameter
		ld	b, a
		inc	de		; point	to next	data byte
		rlca
		rlca
		rlca
		and	7		; keep bits 7-6-5. It must be a	subcommand
		jr	nz, loc_FF1
		ld	(ix+13h), e	; if bits 7-6-5	= 0, put next data byte	offset into channel bytes 13-14
		ld	(ix+14h), d	; this must be a loop start !
		ret
; ---------------------------------------------------------------------------

loc_FF1:				; CODE XREF: ParseLoopCommand+9j
		cp	1		; if bits 7-6-5	= 1 ...	beginning of a loop ?
		jr	nz, loc_1003
		ld	(ix+15h), e	; put next data	byte offset in 15-16
		ld	(ix+16h), d	; is it	also a loop start ? like there could be	a loop in another loop ? Two loops managed independently ?
		xor	a
		ld	(ix+1Ah), a	; clear	1A-1B
		ld	(ix+1Bh), a
		ret
; ---------------------------------------------------------------------------

loc_1003:				; CODE XREF: ParseLoopCommand+14j
		cp	2		; if bits 7-6-5	= 2
		jr	nz, loc_1031
		ld	a, (ix+1Ah)
		or	a
		jr	nz, loc_1013	; if (1A) != 0,	then it's not the first loop
		ld	a, 1		; if (1A) = 0, then put	1 instead. It means it's the first loop.
		ld	(ix+1Ah), a
		ret
; ---------------------------------------------------------------------------

loc_1013:				; CODE XREF: ParseLoopCommand+2Cj
					; ParseLoopCommand+45j	...
		ld	a, (de)		; a = $F0
		ld	b, a		; b = $F0
		inc	de
		ld	a, (de)		; a = $D8
		ld	c, a		; c = $D8
		inc	de		; de points to a next F8 command
		ld	a, b		; a = $F0
		cp	0FFh
		jr	z, loc_102E	; if first data	byte = FF, finish
		cp	0F8h ; '¯'
		jr	z, loc_1029	; if first data	byte = F8 (then	you have something like	F8, byte with bits 7-6-5 = 2, and F8 again ?)
		and	80h ; 'Ä'
		jr	nz, loc_1013	; if bit 7 of first data byte =	1, start process again
		dec	de		; else,	start process again but	point one byte backward	first ... wow ... o_O
		jr	loc_1013	; a = $F0
; ---------------------------------------------------------------------------

loc_1029:				; CODE XREF: ParseLoopCommand+41j
		ld	a, c
		cp	60h ; '`'
		jr	nz, loc_1013	; if a = 60, finish, else start	process	again ... so it	expects	loop command 3 to get out of here !

loc_102E:				; CODE XREF: ParseLoopCommand+3Dj
					; ParseLoopCommand+6Bj	...
		dec	de
		dec	de
		ret
; ---------------------------------------------------------------------------

loc_1031:				; CODE XREF: ParseLoopCommand+26j
		cp	3		; if bits 7-6-5	= 3
		jr	nz, loc_105E
		ld	a, (ix+1Bh)
		or	a
		jr	nz, loc_1041	; same idea as command 2
		ld	a, 1		; if (1B) = 0, then put	1 instead
		ld	(ix+1Bh), a
		ret
; ---------------------------------------------------------------------------

loc_1041:				; CODE XREF: ParseLoopCommand+5Aj
					; ParseLoopCommand+73j	...
		ld	a, (de)		; same idea as command 2
		ld	b, a
		inc	de
		ld	a, (de)
		ld	c, a
		inc	de
		ld	a, b
		cp	0FFh
		jr	z, loc_102E
		cp	0F8h ; '¯'
		jr	z, loc_1057
		and	80h ; 'Ä'
		jr	nz, loc_1041	; same idea as command 2
		dec	de
		jr	loc_1041	; same idea as command 2
; ---------------------------------------------------------------------------

loc_1057:				; CODE XREF: ParseLoopCommand+6Fj
		ld	a, c
		cp	80h ; 'Ä'
		jr	nz, loc_1041	; expects command 4 to get out of here
		jr	loc_102E
; ---------------------------------------------------------------------------

loc_105E:				; CODE XREF: ParseLoopCommand+54j
		cp	4		; if bits 7-6-5	= 4 end	of command 3
		jr	nz, loc_1063
		ret			; if command 4,	just return ! it's just here to stop command 3
; ---------------------------------------------------------------------------

loc_1063:				; CODE XREF: ParseLoopCommand+81j
		cp	5		; if bits 7-6-5	= 5 ...	go back	to the beginning of a loop ?
		jr	nz, loc_1079
		bit	0, b
		jr	nz, loc_1072	; if bit 0 = 1 (value A1)
		ld	e, (ix+15h)	; else (value A0), point back to offset	saved in 15-16
		ld	d, (ix+16h)
		ret
; ---------------------------------------------------------------------------

loc_1072:				; CODE XREF: ParseLoopCommand+8Aj
		ld	e, (ix+13h)	; point	back to	offset saved in	13-14
		ld	d, (ix+14h)
		ret
; ---------------------------------------------------------------------------

loc_1079:				; CODE XREF: ParseLoopCommand+86j
		cp	6		; if bits 7-6-5	= 6 : initiate a loop repeated x times,	x being	bits 4-0
		jr	nz, loc_108B	; else,	bits 7-6-5 = 7
		ld	(ix+17h), e	; put next data	byte offset in 17-18
		ld	(ix+18h), d
		ld	a, b
		and	1Fh		; just keep parameter
		inc	a		; increment it
		ld	(ix+19h), a	; and store it in 19
		ret
; ---------------------------------------------------------------------------

loc_108B:				; CODE XREF: ParseLoopCommand+9Cj
		dec	(ix+19h)	; decrement loop counter
		ret	z		; return if counter reached 0
		ld	e, (ix+17h)	; go back to the beginning of the loop
		ld	d, (ix+18h)
		ret
; End of function ParseLoopCommand


; =============== S U B	R O U T	I N E =======================================


Fade_Out:				; CODE XREF: Main+12j UpdateSound+31p
		ld	a, 12h		; set a	fade out period	length of $12 YM timer overflows
		ld	(FADE_OUT_LENGTH), a ; number of YM Timer overflows to handle before incrementing the fade out counter
		ld	a, 1
		ld	(CURRENTLY_FADING_OUT),	a ; set	to 01 when a fade out operation	is being executed
		ld	a, (FADE_OUT_LENGTH) ; number of YM Timer overflows to handle before incrementing the fade out counter
		ld	(FADE_OUT_TIMER), a ; Starts with fade out length value, decrements at each YM Timer overflow. set to $63 while	loading	music
		ret
; End of function Fade_Out

; ---------------------------------------------------------------------------
		db 8Ah
t_YM_FREQUENCIES:db 0Ah			; DATA XREF: YM1_ParseData+DDo
					; YM2_ParseData+10Bo
					; these	words are not pointers,	they are the two frequency bytes to send to YM for a given note
		dw 0AB1h
		dw 0ADAh
		dw 0B06h
		dw 0B33h
		dw 0B64h
		dw 0B98h
		dw 0BCEh
		dw 0C09h
		dw 0C46h
		dw 0C87h
		dw 1266h
		dw 128Ah
		dw 12B1h
		dw 12DAh
		dw 1306h
		dw 1333h
		dw 1364h
		dw 1398h
		dw 13CEh
		dw 1409h
		dw 1446h
		dw 1487h
		dw 1A66h
		dw 1A8Ah
		dw 1AB1h
		dw 1ADAh
		dw 1B06h
		dw 1B33h
		dw 1B64h
		dw 1B98h
		dw 1BCEh
		dw 1C09h
		dw 1C46h
		dw 1C87h
		dw 2266h
		dw 228Ah
		dw 22B1h
		dw 22DAh
		dw 2306h
		dw 2333h
		dw 2364h
		dw 2398h
		dw 23CEh
		dw 2409h
		dw 2446h
		dw 2487h
		dw 2A66h
		dw 2A8Ah
		dw 2AB1h
		dw 2ADAh
		dw 2B06h
		dw 2B33h
		dw 2B64h
		dw 2B98h
		dw 2BCEh
		dw 2C09h
		dw 2C46h
		dw 2C87h
		dw 3266h
		dw 328Ah
		dw 32B1h
		dw 32DAh
		dw 3306h
		dw 3333h
		dw 3364h
		dw 3398h
		dw 33CEh
		dw 3409h
		dw 3446h
		dw 3487h
		dw 3A66h
		dw 3A8Ah
		dw 3AB1h
		dw 3ADAh
		dw 3B06h
		dw 3B33h
		dw 3B64h
		dw 3B98h
		dw 3BCEh
		dw 3C09h
		dw 3C46h
		dw 3C87h
		dw 3CCBh
t_PSG_FREQUENCIES:dw 3EFh		; DATA XREF: PSG_ParseToneData+C5o
					; PSG Frequency	table, same idea as YM Frequency table but for PSG Tone	Channels
		dw 3B6h
		dw 381h
		dw 34Fh
		dw 320h
		dw 2F2h
		dw 2C8h
		dw 2A0h
		dw 27Ah
		dw 257h
		dw 235h
		dw 215h
		dw 1F7h
		dw 1DCh
		dw 1C1h
		dw 1A7h
		dw 18Fh
		dw 179h
		dw 164h
		dw 150h
		dw 13Dh
		dw 12Bh
		dw 11Ah
		dw 10Bh
		dw 0FCh
		dw 0EEh
		dw 0E1h
		dw 0D4h
		dw 0C8h
		dw 0BDh
		dw 0B2h
		dw 0A8h
		dw 9Fh
		dw 96h
		dw 8Dh
		dw 85h
		dw 7Eh
		dw 77h
		dw 70h
		dw 6Ah
		dw 64h
		dw 5Eh
		dw 59h
		dw 54h
		dw 4Fh
		dw 4Bh
		dw 47h
		dw 43h
		dw 3Fh
		dw 3Bh
		dw 38h
		dw 35h
		dw 32h
		dw 2Fh
		dw 2Ch
		dw 2Ah
		dw 28h
		dw 25h
		dw 23h
		dw 22h
		dw 1Fh
		dw 1Dh
		dw 1Ch
		dw 1Bh
t_YM_LEVELS:	db 70h			; DATA XREF: YM1_LoadInstrument+58o
					; YM2_LoadInstrument+63o
		db 60h			; this table contains the actual YM level values corresponding
		db 50h			; to the 16 possible values of the sound engine
		db 40h			; First	value being almost YM's min level,
		db 38h			; and last value being almost YM's max level
		db 30h
		db 2Ah
		db 26h
		db 20h
		db 1Ch
		db 18h
		db 14h
		db 10h
		db 0Bh
		db 8
		db 4
t_SLOTS_PER_ALGO:db 8			; DATA XREF: YM1_LoadInstrument+61o
					; YM2_LoadInstrument+6Co
		db 8
		db 8			; table	used to	know which operators have to be	affected by the	channel's level
		db 8			; bit 0	related	to operator 1, bit 1 to	operator 2 etc ...
		db 0Ch			; if 0,	then operator is not a slot, so	use the	instrument's original level value
		db 0Eh			; if 1,	then operator is a slot, so use	channel	level value
		db 0Eh
		db 0Fh
pt_PITCH_EFFECTS:dw byte_1207		; DATA XREF: LoadVibrato+8o
					; The pitch effects mostly are vibratos, but also effects that make pitch go up	or down	indefinitely
		dw byte_1209		; vibrato 1
		dw byte_120E
		dw byte_1219
		dw byte_1224
		dw byte_122F
		dw byte_123A		; from here, the pitch effects are not vibratos, they just make	the pitch constantly go	up or down
		dw byte_123C
		dw byte_123E
		dw byte_1240
		dw byte_1242
		dw byte_1244
		dw byte_1246
		dw byte_1248
		dw byte_124A
		dw byte_124C
byte_1207:	db 0			; DATA XREF: RAM:pt_PITCH_EFFECTSo
					; vibrato 0 : nothing !	used to	cancel a previous vibrato ?
		db 80h
byte_1209:	db 0F0h			; DATA XREF: RAM:11E9o
					; vibrato 1
		db 10h			; at each sound	frame, the next	data byte is added to the current frequency to slightly	affect it
		db 10h
		db 0F0h
		db 80h			; value	$80 means that it's end of data, so go back to the first byte of the pitch effect
byte_120E:	db 0FDh			; DATA XREF: RAM:11EBo
		db 0FDh
		db 0FFh
		db 1
		db 3
		db 3
		db 3
		db 1
		db 0FFh
		db 0FDh
		db 80h
byte_1219:	db 0FEh			; DATA XREF: RAM:11EDo
		db 0FEh
		db 0FFh
		db 1
		db 2
		db 2
		db 2
		db 1
		db 0FFh
		db 0FEh
		db 80h
byte_1224:	db 0FFh			; DATA XREF: RAM:11EFo
		db 0FFh
		db 0
		db 1
		db 1
		db 1
		db 1
		db 0
		db 0FFh
		db 0FFh
		db 80h
byte_122F:	db 0FFh			; DATA XREF: RAM:11F1o
		db 0
		db 0
		db 1
		db 0
		db 1
		db 0
		db 0
		db 0FFh
		db 0
		db 80h
byte_123A:	db 2			; DATA XREF: RAM:11F3o
					; from here, the pitch effects are not vibratos, they just make	the pitch constantly go	up or down
		db 80h
byte_123C:	db 0FEh			; DATA XREF: RAM:11F5o
		db 80h
byte_123E:	db 4			; DATA XREF: RAM:11F7o
		db 80h
byte_1240:	db 0FCh			; DATA XREF: RAM:11F9o
		db 80h
byte_1242:	db 8			; DATA XREF: RAM:11FBo
		db 80h
byte_1244:	db 0F8h			; DATA XREF: RAM:11FDo
		db 80h
byte_1246:	db 10h			; DATA XREF: RAM:11FFo
		db 80h
byte_1248:	db 0F0h			; DATA XREF: RAM:1201o
		db 80h
byte_124A:	db 20h			; DATA XREF: RAM:1203o
		db 80h
byte_124C:	db 0E0h			; DATA XREF: RAM:1205o
		db 80h
pt_PSG_INSTRUMENTS:dw byte_126E		; DATA XREF: PSG_LoadInstrument+22o
					; The PSG instruments only affect the channel level
		dw byte_1270		; more details about the data layout in	psg-intruments.txt
		dw byte_1282		; instrument 2
		dw byte_1290		; instrument 3
		dw byte_12A7		; instrument 4
		dw byte_12AE		; instrument 5
		dw byte_12B9		; instrument 6
		dw byte_12C1		; instrument 7
		dw byte_12C6		; instrument 8
		dw byte_12D4		; instrument 9
		dw byte_12DA		; instrument A
		dw byte_12E5		; instrument B
		dw byte_12E7		; instrument C
		dw byte_12EB		; instrument D
		dw byte_12F1		; instrument E
		dw byte_12F9		; instrument F
byte_126E:	db 8Fh			; DATA XREF: RAM:pt_PSG_INSTRUMENTSo
					; start	of data	: instrument 0
		db 8Bh
byte_1270:	db 0Fh			; DATA XREF: RAM:1250o
					; instrument 1
		db 0Fh
		db 0Eh
		db 0Dh
		db 0Ch
		db 0Bh
		db 0Ah
		db 9
		db 8
		db 7
		db 6
		db 5
		db 4
		db 3
		db 2
		db 1
		db 80h
		db 80h
byte_1282:	db 0Fh			; DATA XREF: RAM:1252o
					; instrument 2
		db 0Eh
		db 0Eh
		db 0Dh
		db 0Dh
		db 0Dh
		db 0Ch
		db 0Ch
		db 0Ch
		db 0Ch
		db 8Bh
		db 0Ah
		db 0Ah
		db 89h
byte_1290:	db 0Fh			; DATA XREF: RAM:1254o
					; instrument 3
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 8Dh
		db 0Bh
		db 0Bh
		db 0Bh
		db 8Ah
byte_12A7:	db 0Fh			; DATA XREF: RAM:1256o
					; instrument 4
		db 0Fh
		db 8Eh
		db 0Bh
		db 0Bh
		db 0Bh
		db 8Ah
byte_12AE:	db 0Fh			; DATA XREF: RAM:1258o
					; instrument 5
		db 0Eh
		db 8Dh
		db 0Bh
		db 9
		db 7
		db 5
		db 3
		db 2
		db 1
		db 80h
byte_12B9:	db 0Dh			; DATA XREF: RAM:125Ao
					; instrument 6
		db 0Eh
		db 0Fh
		db 8Eh
		db 4
		db 2
		db 1
		db 80h
byte_12C1:	db 0Dh			; DATA XREF: RAM:125Co
					; instrument 7
		db 0Eh
		db 0Fh
		db 8Eh
		db 8Bh
byte_12C6:	db 0Fh			; DATA XREF: RAM:125Eo
					; instrument 8
		db 0Fh
		db 0Eh
		db 0Eh
		db 0Dh
		db 0Ch
		db 0Fh
		db 0Fh
		db 0Eh
		db 0Eh
		db 0Dh
		db 0Dh
		db 8Ch
		db 8Ah
byte_12D4:	db 0Bh			; DATA XREF: RAM:1260o
					; instrument 9
		db 0Ch
		db 0Dh
		db 0Eh
		db 8Fh
		db 88h
byte_12DA:	db 0Bh			; DATA XREF: RAM:1262o
					; instrument A
		db 0Dh
		db 0Fh
		db 0Eh
		db 0Dh
		db 8Ch
		db 0Ah
		db 0Ah
		db 9
		db 9
		db 88h
byte_12E5:	db 8Fh			; DATA XREF: RAM:1264o
					; instrument B
		db 8Fh
byte_12E7:	db 0Fh			; DATA XREF: RAM:1266o
					; instrument C
		db 0Ah
		db 86h
		db 83h
byte_12EB:	db 0Fh			; DATA XREF: RAM:1268o
					; instrument D
		db 0Ch
		db 0Ah
		db 8
		db 86h
		db 83h
byte_12F1:	db 0Fh			; DATA XREF: RAM:126Ao
					; instrument E
		db 0Dh
		db 0Bh
		db 9
		db 8
		db 7
		db 86h
		db 83h
byte_12F9:	db 8Fh			; DATA XREF: RAM:126Co
					; instrument F
		db 80h			; end of data
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_DATA_1:db 0			; DATA XREF: YM_UpdateInstrumentsLevels+Bo
					; Main+118o ...
		db 0			; from this point starts the several RAM areas dedicated to temporary channel data, like note timers, data pointers ...
		db 0			; more details in channel-ram-data.txt
YM_CHANNEL_1_NOT_IN_USE:db 1		; DATA XREF: StopMusic+7Eo
					; also pointed once from 68k, to know if music/sfx is currently	being played, I	guess
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_DATA_2:db 0			; DATA XREF: YM_UpdateInstrumentsLevels+18o
					; StopMusic+1Do
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_DATA_3:db 0			; DATA XREF: YM_UpdateInstrumentsLevels+25o
					; StopMusic+2Eo
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_DATA_4:db 0			; DATA XREF: YM_UpdateInstrumentsLevels+38o
					; StopMusic+4Bo ...
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_4_STEREO:db 0		; DATA XREF: Main+EDw
		db 0
YM_CHANNEL_DATA_5:db 0			; DATA XREF: YM_UpdateInstrumentsLevels+45o
					; StopMusic+62o
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_5_STEREO:db 0		; DATA XREF: Main+F0w
		db 0
YM_CHANNEL_DATA_6:db 0			; DATA XREF: YM2_ParseChannel6Datao
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 0
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
PSG_CHANNEL_DATA_TONE_1:db 0		; DATA XREF: PSG_ParseToneData+3o
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
PSG_CHANNEL_DATA_NOISE:db 0		; DATA XREF: PSG_ParseNoiseData+3o
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
SFX_TYPE_2_CHANNEL_DATA_1:db 0		; DATA XREF: YM_UpdateInstrumentsLevels+58o
					; Main+143o
		db 0
		db 0
SFX_TYPE_2_CHANNEL_1_NOT_IN_USE:db 1	; DATA XREF: StopMusic+44r
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
SFX_TYPE_2_CHANNEL_DATA_2:db 0		; DATA XREF: YM_UpdateInstrumentsLevels+6Bo
		db 0
		db 0
SFX_TYPE_2_CHANNEL_2_NOT_IN_USE:db 1	; DATA XREF: StopMusic+5Br
		db 0Eh
		db 0
		db 1
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 1
		db 0Eh
		db 0
		db 0
		db 18h
		db 0
		db 0
		db 0
		db 7
		db 12h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
USELESS_BYTE:	db 0			; DATA XREF: Main+5Dw
					; UselessSubroutiner ...
					; incremented each time	new stereo byte	has bit	0 set to 1, but	actually has no	effect on sound. Useless !
CURRENT_PSG_CHANNEL:db 0		; DATA XREF: PSG_ParseToneData-6C9r
					; PSG_ParseToneData+17w ...
					; current PSG channel to process, stored in the	right bits ready to be sent to PSG
CURRENT_CHANNEL:db 0			; DATA XREF: StopMusic+1o
					; UpdateSound+5Do
					; indicates the	channel	to process, from a relative point of view : YM1, YM2, PSG or SFX channels
CURRENTLY_FADING_OUT:db	0		; DATA XREF: Main+7Cw StopMusic+91w ...
					; set to 01 when a fade	out operation is being executed
		db 0
CALL_YM2_INSTEAD_OF_YM1:db 0		; DATA XREF: Mute_Sound+6w
					; Mute_Sound+20w ...
					; set to $01 when managing YM4,5,6 channels, to	call part 2 of YM
CURRENTLY_MANAGING_SFX_TYPE_2:db 0	; DATA XREF: Mute_Sound+3w
					; YM_UpdateInstrumentsLevels+55w ...
					; indicates if an SFX type 2 is	being processed, because these ones use	extra channel ram areas, to keep current music data for	when SFX is finished
FADE_OUT_LENGTH:db 1			; DATA XREF: UpdateSound+40r
					; Fade_Out+2w ...
					; number of YM Timer overflows to handle before	incrementing the fade out counter
FADE_OUT_TIMER:	db 63h			; DATA XREF: Main+84w StopMusic+99w ...
					; Starts with fade out length value, decrements	at each	YM Timer overflow. set to $63 while loading music
FADE_OUT_COUNTER:db 0			; DATA XREF: Main+7Fw StopMusic+94w ...
					; Counts how many times	the fade out timer reached 0. Fade out stops at	value $0C.
word_14AA:	dw 0			; DATA XREF: Main+68w UpdateSound+24r	...
BANK_TO_LOAD:	db 0			; DATA XREF: LoadBank+5o
					; LoadDacSound+1Dw
MUSIC_BANK_TO_LOAD:db 0			; DATA XREF: LoadMusicBank+8r Main+28w ...
SFX_USELESS_BYTE_2:db 0FFh		; DATA XREF: init+9w Main+135r ...
					; 3-Channel SFX	are not	loaded if this byte is less than byte 0x1FFE. Which can't happen at all ! So don't care about it.
		db 0
TEMP_FREQUENCY:	dw 0			; DATA XREF: YM1_ParseData+15Ew
					; YM1_ParseData+17Ar ...
					; temp space to	store frequency	values when YM data is parsed
TEMP_REGISTER:	db 0			; DATA XREF: YM1_LoadInstrument+50w
					; YM1_LoadInstrument+66r ...
					; temp place to	keep a register	value when an YM instrument is loaded
FADE_IN_TIMER:	db 0			; DATA XREF: Main+5Aw
					; incremented at each YM Timer overflow. When it corresponds to	fade in	parameter, increment YM	instruments level until	max level
t_SAMPLE_LOAD_DATA:db 1, 0, 1, 0, 55h, 10h, 0Eh, 80h, 1, 0, 1, 0, 0CAh,	0Eh
					; DATA XREF: LoadDacSound+12o
		db 63h,	90h, 1,	0, 1, 0, 1Eh, 0Eh, 2Dh,	9Fh, 1,	0, 1, 0	; Data layout of the 8-byte entries :
		db 3Ah,	0Dh, 4Bh, 0ADh,	9, 0, 1, 0, 61h, 20h, 85h, 0BAh	; byte 0 : PCM frame period parameter
		db 5, 0, 1, 0, 7Dh, 1Dh, 0E6h, 0DAh, 9,	0, 1, 0, 7Dh, 1Dh ; byte 1 : always 0 (ignored when data is parsed)
		db 0E6h, 0DAh, 14h, 0, 1, 0, 7Dh, 1Dh, 0E6h, 0DAh ; byte 2 : bank to load
					; byte 3 : always 0 (ignored when data is parsed)
					; bytes	5-4 : sample length
					; bytes	7-6 : pointer to sound PCM Data	once bank is loaded
					;
					; With this table, the same sound sample can be	played at different rates,
					; resulting with quick high-pitched, or	slow low-pitched sounds,
					; which	is quite appropriate for drums or attack hits or explosions !
pt_SFX:		dw sfx_01		; DATA XREF: Main+108o
					; SFX pointer table
					;
					; more details about them in sfx.txt
		db 70h
		db 15h
		db 98h
		db 15h
		db 0CCh
		db 15h
		db 0EEh
		db 15h
		db 3
		db 16h
		db 18h
		db 16h
		db 2Dh
		db 16h
		db 42h
		db 16h
		db 57h
		db 16h
		db 6Ch
		db 16h
		db 81h
		db 16h
		db 0EEh
		db 16h
		db 19h
		db 17h
		db 0D6h
		db 1Ah
		db 0D6h
		db 1Ah
		db 49h
		db 17h
		db 25h
		db 17h
		db 31h
		db 17h
		db 3Dh
		db 17h
		db 81h
		db 17h
		db 0A1h
		db 17h
		db 0C5h
		db 17h
		db 0FFh
		db 17h
		db 0A3h
		db 19h
		db 24h
		db 18h
		db 55h
		db 18h
		db 81h
		db 18h
		db 0A5h
		db 18h
		db 0BFh
		db 18h
		db 0D9h
		db 18h
		db 5
		db 19h
		db 25h
		db 19h
		db 3Fh
		db 19h
		db 68h
		db 19h
		db 82h
		db 19h
		db 0C4h
		db 19h
		db 2
		db 1Ah
		db 31h
		db 1Ah
		db 9Fh
		db 1Ah
		db 6Bh
		db 1Ah
		db 0D6h
		db 1Ah
		db 0D6h
		db 1Ah
		db 0D6h
		db 1Ah
		db 0D6h
		db 1Ah
		db 0D6h
		db 1Ah
sfx_01:		db 2			; DATA XREF: RAM:pt_SFXo
					; sound	1 data
		dw byte_156D
		dw byte_1557
		dw byte_156D
byte_1557:	db 0FEh, 40h, 0FDh, 0Bh, 0FBh, 0, 0FCh,	0, 9Dh,	1, 0FCh
					; DATA XREF: RAM:1553o
		db 80h,	0FBh, 10h, 2Ah,	39h, 0FCh, 1, 0FBh, 0F0h, 0D3h
		db 0Ch
byte_156D:	db 0FFh			; DATA XREF: RAM:1551o	RAM:1555o
		db 0
		db 0
sfx_02:		db 1			; sound	2
		dw byte_1595
		dw byte_1595
		dw byte_1595
		dw byte_1595
		dw byte_1595
		dw byte_1595
		dw byte_1595
		dw byte_1595
		dw byte_1585
		dw byte_1595
byte_1585:	db 0FDh, 2Ch, 0FCh, 0, 0FBh, 0,	0BBh, 2, 0C0h, 6, 0FDh
					; DATA XREF: RAM:1581o
		db 28h,	0BBh, 2, 0C0h, 6
byte_1595:	db 0FFh			; DATA XREF: RAM:1571o	RAM:1573o ...
		db 0
		db 0
sfx_03:		db 1			; sound	3
		dw byte_15C9
		dw byte_15C9
		dw byte_15C9
		dw byte_15C9
		dw byte_15C9
		dw byte_15C9
		dw byte_15C9
		dw byte_15C9
		dw byte_15AD
		dw byte_15C9
byte_15AD:	db 0FDh, 2Eh, 0FCh, 0, 0FBh, 0,	0C7h, 2, 0CCh, 6, 0FDh
					; DATA XREF: RAM:15A9o
		db 2Ah,	0C7h, 2, 0CCh, 6, 0FDh,	27h, 0C7h, 2, 0CCh, 6
		db 0FDh, 24h, 0C7h, 2, 0CCh, 6
byte_15C9:	db 0FFh			; DATA XREF: RAM:1599o	RAM:159Bo ...
		db 0
		db 0
sfx_04:		db 2			; sound	4
		dw byte_15EB
		dw byte_15D3
		dw byte_15EB
byte_15D3:	db 0FEh, 41h, 0FDh, 0Fh, 0FCh, 0, 0FBh,	0, 0F8h, 0C2h ;	DATA XREF: RAM:15CFo
		db 82h,	1, 70h,	0F8h, 0E0h, 0F0h, 4, 0F8h, 0CAh, 82h, 1
		db 70h,	0F8h, 0E0h
byte_15EB:	db 0FFh			; DATA XREF: RAM:15CDo	RAM:15D1o
		db 0
		db 0
sfx_05:		db 1			; sound	5
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_1696
		dw byte_169E
sfx_06:		db 1			; sound	6
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16A1
		dw byte_169E
sfx_07:		db 1			; sound	7
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16AC
		dw byte_169E
sfx_08:		db 1			; sound	8
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16B7
		dw byte_169E
sfx_09:		db 1			; sound	9
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16C2
		dw byte_169E
sfx_0A:		db 1			; sound	A
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16CD
		dw byte_169E
sfx_0B:		db 1			; sound	B
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16D8
		dw byte_169E
sfx_0C:		db 1			; sound	C
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_169E
		dw byte_16E3
		dw byte_169E
byte_1696:	db 0FDh, 0Fh, 0FCh, 0, 0FBh, 0C1h, 0C0h, 4 ; DATA XREF:	RAM:15FFo
byte_169E:	db 0FFh			; DATA XREF: RAM:15EFo	RAM:15F1o ...
		db 0
		db 0
byte_16A1:	db 0FDh			; DATA XREF: RAM:1614o
		db 0Eh
		db 0FCh
		db 0
		db 0FBh
		db 0C1h
		db 0B8h
		db 4
		db 0FFh
		db 0
		db 0
byte_16AC:	db 0FDh			; DATA XREF: RAM:1629o
		db 0Eh
		db 0FCh
		db 0
		db 0FBh
		db 0C1h
		db 0ACh
		db 4
		db 0FFh
		db 0
		db 0
byte_16B7:	db 0FDh			; DATA XREF: RAM:163Eo
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 0E1h
		db 0A8h
		db 4
		db 0FFh
		db 0
		db 0
byte_16C2:	db 0FDh			; DATA XREF: RAM:1653o
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 0D1h
		db 0A2h
		db 4
		db 0FFh
		db 0
		db 0
byte_16CD:	db 0FDh			; DATA XREF: RAM:1668o
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 0D1h
		db 9Fh
		db 4
		db 0FFh
		db 0
		db 0
byte_16D8:	db 0FDh			; DATA XREF: RAM:167Do
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 0D1h
		db 9Ah
		db 4
		db 0FFh
		db 0
		db 0
byte_16E3:	db 0FDh			; DATA XREF: RAM:1692o
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 0D1h
		db 97h
		db 4
		db 0FFh
		db 0
		db 0
sfx_0D:		db 2			; sound	D
		dw byte_16F5
		dw byte_1716
		dw byte_1716
byte_16F5:	db 0FEh			; DATA XREF: RAM:16EFo
		db 40h
		db 0FCh
		db 0
		db 0FBh
		db 0A0h
		db 0FDh
		db 0Ah
		db 0A9h
		db 3
		db 0FDh
		db 0Bh
		db 29h
		db 0FDh
		db 0Ch
		db 2Ah
		db 0FDh
		db 0Dh
		db 2Dh
		db 0FDh
		db 0Eh
		db 2Eh
		db 0FDh
		db 0Fh
		db 2Fh
		db 30h
		db 31h
		db 32h
		db 33h
		db 33h
		db 33h
		db 0B4h
		db 30h
byte_1716:	db 0FFh			; DATA XREF: RAM:16F1o	RAM:16F3o
		db 0
		db 0
sfx_0E:		db 2			; sound	E
		dw byte_1722
		dw byte_1722
		dw byte_1720
byte_1720:	db 84h,	3Ch		; DATA XREF: RAM:171Eo
byte_1722:	db 0FFh			; DATA XREF: RAM:171Ao	RAM:171Co
		db 0
		db 0
sfx_12:		db 2			; sound	12
		dw byte_172E
		dw byte_172E
		dw byte_172C
byte_172C:	db 85h,	3Ch		; DATA XREF: RAM:172Ao
byte_172E:	db 0FFh			; DATA XREF: RAM:1726o	RAM:1728o
		db 0
		db 0
sfx_13:		db 2			; sound	13
		dw byte_173A
		dw byte_173A
		dw byte_1738
byte_1738:	db 86h,	46h		; DATA XREF: RAM:1736o
byte_173A:	db 0FFh			; DATA XREF: RAM:1732o	RAM:1734o
		db 0
		db 0
sfx_14:		db 2			; sound	14
		dw byte_1746
		dw byte_1746
		dw byte_1744
byte_1744:	db 87h,	5Ah		; DATA XREF: RAM:1742o
byte_1746:	db 0FFh			; DATA XREF: RAM:173Eo	RAM:1740o
		db 0
		db 0
sfx_11:		db 1			; sound	11
		dw byte_177E
		dw byte_177E
		dw byte_177E
		dw byte_177E
		dw byte_177E
		dw byte_177E
		dw byte_177E
		dw byte_177E
		dw byte_175E
		dw byte_177E
byte_175E:	db 0FDh, 1Fh, 0FCh, 0, 0FBh, 0,	0CCh, 2, 4Fh, 0D3h, 3 ;	DATA XREF: RAM:175Ao
		db 0FDh, 1Ch, 0CCh, 2, 4Fh, 0D3h, 3, 0FDh, 18h,	0CCh, 2
		db 4Fh,	0D3h, 3, 0FDh, 16h, 0CCh, 2, 4Fh, 0D3h,	3
byte_177E:	db 0FFh			; DATA XREF: RAM:174Ao	RAM:174Co ...
		db 0
		db 0
sfx_15:		db 1			; sound	15
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_179E
		dw byte_1796
byte_1796:	db 0FDh			; DATA XREF: RAM:1794o
		db 1Eh
		db 0FCh
		db 0Bh
		db 85h
		db 0Dh
		db 5
		db 5
byte_179E:	db 0FFh			; DATA XREF: RAM:1782o	RAM:1784o ...
		db 0
		db 0
sfx_16:		db 2			; sound	16
		dw byte_17A8
		dw word_17B5
		dw byte_17C2
byte_17A8:	db 0FEh			; DATA XREF: RAM:17A2o
		db 4Ah
		db 0FDh
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 0F0h
		db 89h
		db 6
		db 0FFh
		db 0
		db 0
word_17B5:	dw 46FEh		; DATA XREF: RAM:17A4o
		db 0FDh
		db 0Bh
		db 0FCh
		db 0
		db 0FBh
		db 0F0h
		db 89h
		db 6
		db 0FFh
		db 0
		db 0
byte_17C2:	db 0FFh			; DATA XREF: RAM:17A6o
		db 0
		db 0
sfx_17:		db 2			; sound	17
		dw byte_17CC
		dw byte_17CF
		dw byte_17FC
byte_17CC:	db 0FFh			; DATA XREF: RAM:17C6o
		db 0
		db 0
byte_17CF:	db 0FEh			; DATA XREF: RAM:17C8o
		db 44h
		db 0FDh
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 2
		db 0F8h
		db 0C0h
		db 97h
		db 2
		db 0Fh
		db 13h
		db 0Eh
		db 11h
		db 0Ch
		db 12h
		db 0F8h
		db 0E0h
		db 0FDh
		db 0Eh
		db 97h
		db 2
		db 0FDh
		db 0Dh
		db 0Fh
		db 0FDh
		db 0Ch
		db 13h
		db 0FDh
		db 0Bh
		db 0Eh
		db 0FDh
		db 0Ah
		db 11h
		db 0FDh
		db 9
		db 0Ch
		db 0FDh
		db 8
		db 12h
		db 0FFh
		db 0
		db 0
byte_17FC:	db 0FFh			; DATA XREF: RAM:17CAo
		db 0
		db 0
sfx_18:		db 2			; sound	18
		dw byte_1806
		dw byte_1815
		dw byte_1821
byte_1806:	db 0FEh			; DATA XREF: RAM:1800o
		db 4Ah
		db 0FDh
		db 0Fh
		db 0FCh
		db 1
		db 0FBh
		db 0F0h
		db 85h
		db 4
		db 85h
		db 6
		db 0FFh
		db 0
		db 0
byte_1815:	db 0FEh, 46h, 0FDh, 0Dh, 0FCh, 1, 0FBh,	0F0h, 82h, 2, 82h
					; DATA XREF: RAM:1802o
		db 6
byte_1821:	db 0FFh			; DATA XREF: RAM:1804o
		db 0
		db 0
sfx_1A:		db 2			; sound	1A
		dw byte_1852
		dw byte_182B
		dw byte_1852
byte_182B:	db 0FEh, 4Bh, 0FDh, 0Fh, 0FBh, 0, 0FCh,	0, 9Bh,	1, 0FCh
					; DATA XREF: RAM:1827o
		db 80h,	0FBh, 10h, 28h,	37h, 0FCh, 1, 0FBh, 0F0h, 51h
		db 0FCh, 80h, 1Bh, 0FCh, 1, 0D1h, 6, 0FCh, 80h,	9Bh, 1
		db 29h,	39h, 3Ah, 0FCh,	1, 0D1h, 4
byte_1852:	db 0FFh			; DATA XREF: RAM:1825o	RAM:1829o
		db 0
		db 0
sfx_1B:		db 2			; sound	1B
		dw byte_185C
		dw byte_185F
		dw byte_187E
byte_185C:	db 0FFh			; DATA XREF: RAM:1856o
		db 0
		db 0
byte_185F:	db 0FEh			; DATA XREF: RAM:1858o
		db 47h
		db 0FDh
		db 0Fh
		db 0FBh
		db 0
		db 0FCh
		db 0
		db 0A9h
		db 2
		db 0FCh
		db 80h
		db 0FBh
		db 10h
		db 36h
		db 45h
		db 0FCh
		db 1
		db 0FBh
		db 0F0h
		db 53h
		db 0FCh
		db 80h
		db 29h
		db 0FCh
		db 1
		db 0D3h
		db 0Ch
		db 0FFh
		db 0
		db 0
byte_187E:	db 0FFh			; DATA XREF: RAM:185Ao
		db 0
		db 0
sfx_1C:		db 2			; sound	1C
		dw byte_1888
		dw byte_188B
		dw byte_18A2
byte_1888:	db 0FFh			; DATA XREF: RAM:1882o
		db 0
		db 0
byte_188B:	db 0FEh			; DATA XREF: RAM:1884o
		db 48h
		db 0FDh
		db 0Dh
		db 0FCh
		db 80h
		db 0FCh
		db 0FFh
		db 0FBh
		db 0
		db 0B7h
		db 6
		db 0FCh
		db 89h
		db 0FCh
		db 1
		db 0B8h
		db 48h
		db 0F0h
		db 18h
		db 0FFh
		db 0
		db 0
byte_18A2:	db 0FFh			; DATA XREF: RAM:1886o
		db 0
		db 0
sfx_1D:		db 2			; sound	1D
		dw byte_18AC
		dw byte_18AF
		dw byte_18BC
byte_18AC:	db 0FFh			; DATA XREF: RAM:18A6o
		db 0
		db 0
byte_18AF:	db 0FEh			; DATA XREF: RAM:18A8o
		db 41h
		db 0FDh
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 10h
		db 0C3h
		db 1Ah
		db 0FFh
		db 0
		db 0
byte_18BC:	db 0FFh			; DATA XREF: RAM:18AAo
		db 0
		db 0
sfx_1E:		db 2			; sound	1E
		dw byte_18C6
		dw byte_18D3
		dw byte_18D6
byte_18C6:	db 0FEh			; DATA XREF: RAM:18C0o
		db 45h
		db 0FDh
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 10h
		db 0D3h
		db 10h
		db 0FFh
		db 0
		db 0
byte_18D3:	db 0FFh			; DATA XREF: RAM:18C2o
		db 0
		db 0
byte_18D6:	db 0FFh			; DATA XREF: RAM:18C4o
		db 0
		db 0
sfx_1F:		db 2			; sound	1F
		dw byte_18E0
		dw byte_18F1
		dw byte_1902
byte_18E0:	db 0FEh			; DATA XREF: RAM:18DAo
		db 43h
		db 0FDh
		db 0Fh
		db 0FCh
		db 2
		db 0FBh
		db 0
		db 0F8h
		db 0D0h
		db 83h
		db 7
		db 0F8h
		db 0E0h
		db 0FFh
		db 0
		db 0
byte_18F1:	db 0FEh			; DATA XREF: RAM:18DCo
		db 43h
		db 0FDh
		db 0Fh
		db 0FCh
		db 2
		db 0FBh
		db 0
		db 0F8h
		db 0CEh
		db 84h
		db 8
		db 0F8h
		db 0E0h
		db 0FFh
		db 0
		db 0
byte_1902:	db 0FFh			; DATA XREF: RAM:18DEo
		db 0
		db 0
sfx_20:		db 2			; sound	20
		dw byte_190C
		dw byte_191F
		dw byte_1922
byte_190C:	db 0FEh			; DATA XREF: RAM:1906o
		db 46h
		db 0FDh
		db 0Fh
		db 0FCh
		db 1
		db 0FBh
		db 0
		db 0F8h
		db 0CEh
		db 93h
		db 4
		db 0F8h
		db 0E0h
		db 0FDh
		db 0
		db 0FFh
		db 0
		db 0
byte_191F:	db 0FFh			; DATA XREF: RAM:1908o
		db 0
		db 0
byte_1922:	db 0FFh			; DATA XREF: RAM:190Ao
		db 0
		db 0
sfx_21:		db 2			; sound	21
		dw byte_192C
		dw byte_192F
		dw byte_193C
byte_192C:	db 0FFh			; DATA XREF: RAM:1926o
		db 0
		db 0
byte_192F:	db 0FEh			; DATA XREF: RAM:1928o
		db 46h
		db 0FDh
		db 0Dh
		db 0FCh
		db 0
		db 0FBh
		db 0F0h
		db 89h
		db 6
		db 0FFh
		db 0
		db 0
byte_193C:	db 0FFh			; DATA XREF: RAM:192Ao
		db 0
		db 0
sfx_22:		db 1			; sound	22
		dw byte_1965
		dw byte_1965
		dw byte_1965
		dw byte_1965
		dw byte_1965
		dw byte_1965
		dw byte_1965
		dw byte_1965
		dw byte_1954
		dw byte_1965
byte_1954:	db 0FDh, 2Fh, 0FCh, 4, 0FBh, 0,	9Ah, 5,	26h, 0FDh, 2Bh
					; DATA XREF: RAM:1950o
		db 1Ah,	26h, 0FDh, 28h,	1Ah, 26h
byte_1965:	db 0FFh			; DATA XREF: RAM:1940o	RAM:1942o ...
		db 0
		db 0
sfx_23:		db 2			; sound	23
		dw byte_196F
		dw byte_1972
		dw byte_197F
byte_196F:	db 0FFh			; DATA XREF: RAM:1969o
		db 0
		db 0
byte_1972:	db 0FEh			; DATA XREF: RAM:196Bo
		db 49h
		db 0FDh
		db 0Ch
		db 0FCh
		db 0
		db 0FBh
		db 90h
		db 0C5h
		db 48h
		db 0FFh
		db 0
		db 0
byte_197F:	db 0FFh			; DATA XREF: RAM:196Do
		db 0
		db 0
sfx_24:		db 2			; sound	24
		dw byte_1989
		dw byte_198C
		dw byte_19A0
byte_1989:	db 0FFh			; DATA XREF: RAM:1983o
		db 0
		db 0
byte_198C:	db 0FEh			; DATA XREF: RAM:1985o
		db 4Bh
		db 0FDh
		db 0Bh
		db 0FBh
		db 0
		db 0FCh
		db 0
		db 8Fh
		db 1
		db 0FDh
		db 0Dh
		db 11h
		db 0FDh
		db 0Fh
		db 91h
		db 2
		db 0FFh
		db 0
		db 0
byte_19A0:	db 0FFh			; DATA XREF: RAM:1987o
		db 0
		db 0
sfx_19:		db 2			; sound	19
		dw byte_19C1
		dw byte_19AA
		dw byte_19C1
byte_19AA:	db 0FEh			; DATA XREF: RAM:19A6o
		db 1Bh
		db 0FDh
		db 0Ch
		db 0FCh
		db 80h
		db 0FBh
		db 10h
		db 0FCh
		db 0FFh
		db 99h
		db 0
		db 0FCh
		db 0A0h
		db 0A0h
		db 24h
		db 9Fh
		db 6
		db 1Eh
		db 0FCh
		db 1
		db 94h
		db 5
byte_19C1:	db 0FFh			; DATA XREF: RAM:19A4o	RAM:19A8o
		db 0
		db 0
sfx_25:		db 1			; sound	25
		dw byte_19FF
		dw byte_19FF
		dw byte_19FF
		dw byte_19FF
		dw byte_19FF
		dw byte_19FF
		dw byte_19FF
		dw byte_19FF
		dw byte_19D9
		dw byte_19FF
byte_19D9:	db 0FBh, 0, 0FDh, 0Eh, 0FCh, 0,	0BFh, 3, 43h, 0C6h, 5 ;	DATA XREF: RAM:19D5o
		db 0FDh, 0Ch, 0BFh, 3, 43h, 0C6h, 5, 0FDh, 9, 0BFh, 3
		db 43h,	0C6h, 5, 0FDh, 7, 0BFh,	3, 43h,	0C6h, 5, 0FDh
		db 5, 0BFh, 3, 43h, 46h
byte_19FF:	db 0FFh			; DATA XREF: RAM:19C5o	RAM:19C7o ...
		db 0
		db 0
sfx_26:		db 1			; sound	26
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A2E
		dw byte_1A17
byte_1A17:	db 0FDh, 1Fh, 0FCh, 0, 84h, 3, 5, 6, 0FDh, 1Bh,	4, 5, 6
					; DATA XREF: RAM:1A15o
		db 0FDh, 19h, 4, 5, 6, 0FDh, 15h, 4, 5,	6
byte_1A2E:	db 0FFh			; DATA XREF: RAM:1A03o	RAM:1A05o ...
		db 0
		db 0
sfx_27:		db 2			; sound	27
		dw byte_1A38
		dw byte_1A3B
		dw byte_1A68
byte_1A38:	db 0FFh			; DATA XREF: RAM:1A32o
		db 0
		db 0
byte_1A3B:	db 0FEh			; DATA XREF: RAM:1A34o
		db 40h
		db 0FDh
		db 0Fh
		db 0FCh
		db 0
		db 0FBh
		db 2
		db 0F8h
		db 0C2h
		db 0A3h
		db 2
		db 1Bh
		db 1Fh
		db 1Ah
		db 1Dh
		db 18h
		db 1Eh
		db 0F8h
		db 0E0h
		db 0FDh
		db 0Eh
		db 0A3h
		db 2
		db 0FDh
		db 0Dh
		db 1Bh
		db 0FDh
		db 0Ch
		db 1Fh
		db 0FDh
		db 0Bh
		db 1Ah
		db 0FDh
		db 0Ah
		db 1Dh
		db 0FDh
		db 9
		db 18h
		db 0FDh
		db 8
		db 1Eh
		db 0FFh
		db 0
		db 0
byte_1A68:	db 0FFh			; DATA XREF: RAM:1A36o
		db 0
		db 0
sfx_29:		db 2			; sound	29
		dw byte_1A72
		dw byte_1A75
		dw byte_1A9C
byte_1A72:	db 0FFh			; DATA XREF: RAM:1A6Co
		db 0
		db 0
byte_1A75:	db 0FEh			; DATA XREF: RAM:1A6Eo
		db 48h
		db 0FDh
		db 0Fh
		db 0FCh
		db 1
		db 0FBh
		db 0F0h
		db 81h
		db 3
		db 0FCh
		db 80h
		db 0FDh
		db 0Eh
		db 1
		db 0FDh
		db 0Dh
		db 1
		db 0FDh
		db 0Ch
		db 1
		db 0F8h
		db 0C5h
		db 0FDh
		db 0Bh
		db 81h
		db 2
		db 0FDh
		db 0Bh
		db 1
		db 0F8h
		db 0E0h
		db 0FCh
		db 0
		db 0F0h
		db 6
		db 0FFh
		db 0
		db 0
byte_1A9C:	db 0FFh			; DATA XREF: RAM:1A70o
		db 0
		db 0
sfx_28:		db 2			; sound	28
		dw byte_1AA6
		dw byte_1ACE
		dw byte_1ACE
byte_1AA6:	db 0FEh, 40h, 0FDh, 0Fh, 0FCh, 0, 0FBh,	0, 0B5h, 2, 70h
					; DATA XREF: RAM:1AA0o
		db 0FCh, 80h, 0B5h, 5, 0FDh, 0Eh, 0B5h,	3, 0FDh, 0Dh, 35h
		db 0FDh, 0Ch, 35h, 0FDh, 0Bh, 35h, 0FDh, 0Ah, 35h, 0FDh
		db 9, 35h, 0FCh, 0, 0FDh, 8, 0B5h, 1
byte_1ACE:	db 0FFh			; DATA XREF: RAM:1AA2o	RAM:1AA4o
		db 0
		db 0
byte_1AD1:	db 0F0h			; DATA XREF: RAM:1AD7o	RAM:1AD9o ...
		db 0
		db 0FFh
		db 0
		db 0
sfx_0F:		db 2			; sound	F
		dw byte_1AD1
		dw byte_1AD1
		dw byte_1AD1
		db 0
		db 0
		db 0
		db 0C8h
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
		dw byte_1AF5
byte_1AF5:	db 0FFh			; DATA XREF: RAM:1AE1o	RAM:1AE3o ...
		db 0
		db 0
END_OF_DRIVER:
	if MOMPASS==2
		if $ > 1F80h
			fatal "Driver too big to fit in Z80 Ram ; the last offset must be < 1F80h. It is currently \{END_OF_DRIVER}h"
		else
			message "Last offset: \{END_OF_DRIVER}h"
		endif
	endif

		end
