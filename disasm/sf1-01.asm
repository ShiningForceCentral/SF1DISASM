
; GAME SECTION 01 :
; Technical layer, low level game engine, ...
; FREE SPACE : 478 bytes.


InitStack:      ; File Name   : E:\SEGADEV\IDB\SF1\sf1.bin
		dc.l 0                  ; Initial stack pointer value
p_Start:        dc.l Start              ; Start of program
		dc.l int_OtherError     ; Bus error
		dc.l int_AdressError    ; Address error
		dc.l int_IllegalInstruction; Illegal instruction
		dc.l int_ZeroDivide     ; Division by zero
		dc.l int_OtherError     ; CHK exception
		dc.l int_OtherError     ; TRAPV exception
		dc.l int_OtherError     ; Privilege violation
		dc.l int_OtherError     ; TRACE exception
		dc.l int_OtherError     ; Line-A emulator
		dc.l int_OtherError     ; Line-F emulator
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Spurious exception
		dc.l int_ExternalInterrupt; IRQ level 1
		dc.l int_ExternalInterrupt; IRQ level 2
		dc.l int_ExternalInterrupt; IRQ level 3
		dc.l HInt               ; IRQ level 4 - HBlank interrupt
		dc.l int_ExternalInterrupt; IRQ level 5
		dc.l VInt               ; IRQ level 6 - VBlank interrupt
		dc.l IntLv17            ; IRQ level 7
		dc.l Trap0_SoundCommand ; TRAP #00 - Sound command
		dc.l Trap1_             ; TRAP #01
		dc.l Trap2_             ; TRAP #02
		dc.l Trap3_             ; TRAP #03
		dc.l Trap4_             ; TRAP #04
		dc.l Trap5_             ; TRAP #05
		dc.l Trap6_             ; TRAP #06
		dc.l Trap7_             ; TRAP #07
		dc.l Trap8_             ; TRAP #08
		dc.l int_ExternalInterrupt; TRAP #09 exception
		dc.l int_ExternalInterrupt; TRAP #10 exception
		dc.l int_ExternalInterrupt; TRAP #11 exception
		dc.l int_ExternalInterrupt; TRAP #12 exception
		dc.l int_ExternalInterrupt; TRAP #13 exception
		dc.l int_ExternalInterrupt; TRAP #14 exception
		dc.l int_ExternalInterrupt; TRAP #15 exception
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
		dc.l int_OtherError     ; Unused (reserved)
aSegaGenesis:   dc.b 'SEGA GENESIS    ' ; Hardware system ID
aCSega1993_apr: dc.b '(C)SEGA 1993.APR' ; Release date
aShiningForce:  dc.b 'SHINING FORCE   ' ; Domestic name
		dc.b '                '
		dc.b '                '
aShiningForce_0:dc.b 'SHINING FORCE   ' ; Overseas name
		dc.b '                '
		dc.b '                '
aGmMk131200:    dc.b 'GM MK-1312 -00'   ; Product code and serial/version number
		dc.w $E975              ; Checksum
aJ:             dc.b 'J               ' ; I/O support
		dc.l 0                  ; ROM start address
RomEndAddress:  dc.l $17FFFF            ; ROM end address
		dc.l $FF0000            ; RAM start address
		dc.l $FFFFFF            ; RAM end address
aRa:            dc.b 'RA'               ; SRAM data
		dc.b %11111000          ; %1x1yy000
														; x = 1 if used for backup (?)
														; yy = 11 if odd bytes addressing, 10 if even only, 00 if both
		dc.b %100000
		dc.l $200001            ; SRAM start address
		dc.l $203FFF            ; SRAM end address
		dc.b '            '     ; Modem data
		dc.b '                    '; Memo
		dc.b '                    '
aU:             dc.b 'U               ' ; Region codes

; =============== S U B R O U T I N E =======================================

j_EnableDisplay:
		
		bra.w   EnableDisplay

	; End of function j_EnableDisplay


; =============== S U B R O U T I N E =======================================

j_DisableDisplay:
		
		bra.w   DisableDisplay

	; End of function j_DisableDisplay


; =============== S U B R O U T I N E =======================================

j_EnableInterrupts:
		
		bra.w   EnableInterrupts

	; End of function j_EnableInterrupts


; =============== S U B R O U T I N E =======================================

j_DisableInterrupts:
		
		bra.w   DisableInterrupts

	; End of function j_DisableInterrupts


; =============== S U B R O U T I N E =======================================

j_EnableDisplayAndInterrupts:
		
		bra.w   EnableDisplayAndInterrupts

	; End of function j_EnableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

j_DisableDisplayAndInterrupts:
		
		bra.w   DisableDisplayAndInterrupts

	; End of function j_DisableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

j_ClearVIntParam1:
		
		bra.w   ClearVIntParam1

	; End of function j_ClearVIntParam1


; =============== S U B R O U T I N E =======================================

j_SetVIntParam1:
		
		bra.w   SetVIntParam1

	; End of function j_SetVIntParam1


; =============== S U B R O U T I N E =======================================

j_DuplicatePalettes:
		
		bra.w   DuplicatePalettes

	; End of function j_DuplicatePalettes


; =============== S U B R O U T I N E =======================================

j_StoreVDPCommandster:
		
		bra.w   StoreVDPCommandster

	; End of function j_StoreVDPCommandster


; =============== S U B R O U T I N E =======================================

j_FadeInFromBlack:
		
		bra.w   FadeInFromBlack

	; End of function j_FadeInFromBlack


; =============== S U B R O U T I N E =======================================

j_FadeOutToBlack:
		
		bra.w   FadeOutToBlack

	; End of function j_FadeOutToBlack


; =============== S U B R O U T I N E =======================================

j_ClearScrollAndSpriteTables:
		
		bra.w   ClearScrollAndSpriteTables

	; End of function j_ClearScrollAndSpriteTables


; =============== S U B R O U T I N E =======================================

j_ClearScrollTable:
		
		bra.w   ClearScrollTable

	; End of function j_ClearScrollTable


; =============== S U B R O U T I N E =======================================

j_ClearSpriteTable:
		
		bra.w   ClearSpriteTable

	; End of function j_ClearSpriteTable


; =============== S U B R O U T I N E =======================================

j_DMASpriteTable:
		
		bra.w   DMASpriteTable

	; End of function j_DMASpriteTable


; =============== S U B R O U T I N E =======================================

j_WaitForVInt:
		
		bra.w   WaitForVInt     

	; End of function j_WaitForVInt


; =============== S U B R O U T I N E =======================================

j_Sleep:
		bra.w   Sleep           

	; End of function j_Sleep


; =============== S U B R O U T I N E =======================================

sub_248:
		bra.w   sub_EB6

	; End of function sub_248


; =============== S U B R O U T I N E =======================================

sub_24C:
		bra.w   sub_EF0

	; End of function sub_24C


; =============== S U B R O U T I N E =======================================

sub_250:
		bra.w   sub_F0A

	; End of function sub_250


; =============== S U B R O U T I N E =======================================

sub_254:
		bra.w   sub_115A

	; End of function sub_254


; START OF FUNCTION CHUNK FOR sub_E0B4

loc_258:
		bra.w   SetVIntParam0   

; END OF FUNCTION CHUNK FOR sub_E0B4


; =============== S U B R O U T I N E =======================================

j_SetVIntParam0AndWait:
		
		bra.w   SetVIntParam0AndWait

	; End of function j_SetVIntParam0AndWait


; =============== S U B R O U T I N E =======================================

j_SetVIntParam3:
		
		bra.w   SetVIntParam3

	; End of function j_SetVIntParam3


; =============== S U B R O U T I N E =======================================

j_SetVIntParam3AndWait:
		
		bra.w   SetVIntParam3AndWait

	; End of function j_SetVIntParam3AndWait


; =============== S U B R O U T I N E =======================================

sub_268:
		bra.w   sub_F52

	; End of function sub_268


; =============== S U B R O U T I N E =======================================

sub_26C:
		bra.w   sub_FE8

	; End of function sub_26C


; =============== S U B R O U T I N E =======================================

sub_270:
		bra.w   loc_F5C

	; End of function sub_270


; =============== S U B R O U T I N E =======================================

j_DMAFromRAMToVRAM:
		
		bra.w   DMAFromRAMToVRAM

	; End of function j_DMAFromRAMToVRAM


; =============== S U B R O U T I N E =======================================

sub_278:
		bra.w   sub_10D2

	; End of function sub_278


; =============== S U B R O U T I N E =======================================

sub_27C:
		bra.w   sub_1180

	; End of function sub_27C


; =============== S U B R O U T I N E =======================================

sub_280:
		bra.w   sub_11D0

	; End of function sub_280


; =============== S U B R O U T I N E =======================================

sub_284:
		bra.w   sub_11EC

	; End of function sub_284


; =============== S U B R O U T I N E =======================================

sub_288:
		bra.w   sub_11F8

	; End of function sub_288


; =============== S U B R O U T I N E =======================================

sub_28C:
		bra.w   sub_1234

	; End of function sub_28C


; =============== S U B R O U T I N E =======================================

sub_290:
		bra.w   sub_1250

	; End of function sub_290


; =============== S U B R O U T I N E =======================================

sub_294:
		bra.w   sub_125C

	; End of function sub_294


; =============== S U B R O U T I N E =======================================

sub_298:
		bra.w   sub_1284

	; End of function sub_298


; =============== S U B R O U T I N E =======================================

sub_29C:
		bra.w   sub_1294

	; End of function sub_29C


; =============== S U B R O U T I N E =======================================

sub_2A0:
		bra.w   sub_12E0

	; End of function sub_2A0


; =============== S U B R O U T I N E =======================================

j_GetVDPRegStatus:
		
		bra.w   GetVDPRegStatus 

	; End of function j_GetVDPRegStatus


; =============== S U B R O U T I N E =======================================

j_SetVDPRegStatus:
		
		bra.w   SetVDPRegStatus

	; End of function j_SetVDPRegStatus


; =============== S U B R O U T I N E =======================================

j_VDP_EnableDisplay:
		
		bra.w   VDP_EnableDisplay

	; End of function j_VDP_EnableDisplay


; =============== S U B R O U T I N E =======================================

j_VDP_DisableDisplay:
		
		bra.w   VDP_DisableDisplay

	; End of function j_VDP_DisableDisplay


; =============== S U B R O U T I N E =======================================

j_DMAVramFill:
		
		bra.w   DMAVramFill     

	; End of function j_DMAVramFill


; =============== S U B R O U T I N E =======================================

j_CopyPalette1:
		
		bra.w   CopyPalette1

	; End of function j_CopyPalette1


; =============== S U B R O U T I N E =======================================

j_CopyPalette:
		
		bra.w   CopyPalette

	; End of function j_CopyPalette


; START OF FUNCTION CHUNK FOR sub_99FC

loc_2C0:
		bra.w   loc_CD8

; END OF FUNCTION CHUNK FOR sub_99FC


; =============== S U B R O U T I N E =======================================

j_WriteAsciiNumber:
		
		bra.w   WriteAsciiNumber

	; End of function j_WriteAsciiNumber


; =============== S U B R O U T I N E =======================================

j_nullsub_1:
		bra.w   nullsub_1

	; End of function j_nullsub_1


; =============== S U B R O U T I N E =======================================

j_WaitForPlayerInput:
		
		bra.w   WaitForPlayerInput

	; End of function j_WaitForPlayerInput


; =============== S U B R O U T I N E =======================================

j_WaitForPlayer1NewButtonPush:
		
		bra.w   WaitForPlayer1NewButtonPush

	; End of function j_WaitForPlayer1NewButtonPush


; =============== S U B R O U T I N E =======================================

sub_2D4:
		bra.w   sub_1482

	; End of function sub_2D4


; =============== S U B R O U T I N E =======================================

j_WaitForInputFor1Second:
		
		bra.w   WaitForInputFor1Second

	; End of function j_WaitForInputFor1Second


; =============== S U B R O U T I N E =======================================

j_WaitForInputFor3Seconds:
		
		bra.w   WaitForInputFor3Seconds

	; End of function j_WaitForInputFor3Seconds


; =============== S U B R O U T I N E =======================================

j_UpdateRandomSeed:
		
		bra.w   UpdateRandomSeed

	; End of function j_UpdateRandomSeed


; =============== S U B R O U T I N E =======================================

j_PlayMusicAfterCurrentOne:
		
		bra.w   PlayMusicAfterCurrentOne

	; End of function j_PlayMusicAfterCurrentOne


; =============== S U B R O U T I N E =======================================

sub_2E8:
		bra.w   sub_D36

	; End of function sub_2E8


; =============== S U B R O U T I N E =======================================

j_DecompressGraphics:
		
		bra.w   DecompressGraphics

	; End of function j_DecompressGraphics


; =============== S U B R O U T I N E =======================================

sub_2F0:
		bra.w   sub_12BA

	; End of function sub_2F0


; =============== S U B R O U T I N E =======================================

j_FadeInFromWhite:
		
		bra.w   FadeInFromWhite

	; End of function j_FadeInFromWhite


; =============== S U B R O U T I N E =======================================

j_FadeOutToWhite:
		
		bra.w   FadeOutToWhite

	; End of function j_FadeOutToWhite


; =============== S U B R O U T I N E =======================================

j_CopyBytes:
		bra.w   CopyBytes       

	; End of function j_CopyBytes


; =============== S U B R O U T I N E =======================================

sub_300:
		bra.w   sub_29F8

	; End of function sub_300


; =============== S U B R O U T I N E =======================================

sub_304:
		bra.w   sub_18DC

	; End of function sub_304


; =============== S U B R O U T I N E =======================================

j_LoadText:
		bra.w   LoadText        

	; End of function j_LoadText


; =============== S U B R O U T I N E =======================================

sub_30C:
		bra.w   sub_1A92

	; End of function sub_30C


; =============== S U B R O U T I N E =======================================

j_InitSprites:
		
		bra.w   InitSprites     

	; End of function j_InitSprites


; =============== S U B R O U T I N E =======================================

sub_314:
		bra.w   sub_157C

	; End of function sub_314


; =============== S U B R O U T I N E =======================================

sub_318:
		bra.w   sub_1794

	; End of function sub_318


; =============== S U B R O U T I N E =======================================

sub_31C:
		bra.w   sub_17C0

	; End of function sub_31C


; =============== S U B R O U T I N E =======================================

sub_320:
		bra.w   sub_1856        

	; End of function sub_320


; =============== S U B R O U T I N E =======================================

sub_324:
		bra.w   sub_18C4

	; End of function sub_324


; =============== S U B R O U T I N E =======================================

sub_328:
		bra.w   sub_18EC

	; End of function sub_328


; =============== S U B R O U T I N E =======================================

sub_32C:
		bra.w   sub_37EE

	; End of function sub_32C


; =============== S U B R O U T I N E =======================================

sub_330:
		bra.w   sub_3826

	; End of function sub_330


; =============== S U B R O U T I N E =======================================

j_YesNoChoiceBox:
		
		bra.w   YesNoChoiceBox

	; End of function j_YesNoChoiceBox


; =============== S U B R O U T I N E =======================================

sub_338:
		bra.w   sub_5FF8

	; End of function sub_338


; =============== S U B R O U T I N E =======================================

sub_33C:
		bra.w   sub_5A18

	; End of function sub_33C


; =============== S U B R O U T I N E =======================================

sub_340:
		bra.w   sub_6706

	; End of function sub_340


; START OF FUNCTION CHUNK FOR sub_5A88

loc_344:
		bra.w   loc_6B38

; END OF FUNCTION CHUNK FOR sub_5A88


; =============== S U B R O U T I N E =======================================

j_YesNoPrompt:
		
		bra.w   YesNoPrompt

	; End of function j_YesNoPrompt


; =============== S U B R O U T I N E =======================================

sub_34C:
		bra.w   sub_77A4

	; End of function sub_34C


; =============== S U B R O U T I N E =======================================

sub_350:
		bra.w   sub_5532

	; End of function sub_350


; =============== S U B R O U T I N E =======================================

sub_354:
		bra.w   sub_5544

	; End of function sub_354


; =============== S U B R O U T I N E =======================================

sub_358:
		bra.w   sub_557A

	; End of function sub_358


; =============== S U B R O U T I N E =======================================

sub_35C:
		bra.w   sub_550C

	; End of function sub_35C


; =============== S U B R O U T I N E =======================================

sub_360:
		bra.w   sub_5B54

	; End of function sub_360


; =============== S U B R O U T I N E =======================================

sub_364:
		bra.w   sub_790A

	; End of function sub_364


; =============== S U B R O U T I N E =======================================

sub_368:
		bra.w   sub_79D6

	; End of function sub_368


; =============== S U B R O U T I N E =======================================

sub_36C:
		bra.w   sub_7AA6

	; End of function sub_36C


; =============== S U B R O U T I N E =======================================

sub_370:
		bra.w   sub_3284

	; End of function sub_370


; =============== S U B R O U T I N E =======================================

sub_374:
		bra.w   sub_32EC

	; End of function sub_374


; =============== S U B R O U T I N E =======================================

sub_378:
		bra.w   sub_6A2E

	; End of function sub_378


; =============== S U B R O U T I N E =======================================

sub_37C:
		bra.w   sub_2FFA

	; End of function sub_37C


; =============== S U B R O U T I N E =======================================

sub_380:
		bra.w   sub_300A

	; End of function sub_380


; =============== S U B R O U T I N E =======================================

sub_384:
		bra.w   sub_3018

	; End of function sub_384


; =============== S U B R O U T I N E =======================================

sub_388:
		bra.w   sub_3028

	; End of function sub_388


; =============== S U B R O U T I N E =======================================

j_SetEventFlag:
		
		bra.w   SetEventFlag

	; End of function j_SetEventFlag


; =============== S U B R O U T I N E =======================================

j_ClearEventFlag:
		
		bra.w   ClearEventFlag

	; End of function j_ClearEventFlag


; =============== S U B R O U T I N E =======================================

j_CheckEventFlag:
		
		bra.w   CheckEventFlag

	; End of function j_CheckEventFlag


; =============== S U B R O U T I N E =======================================

InitSystem:
		bsr.s   InitVDP
		bsr.w   InitZ80
		bsr.s   InitRamVdpData
		jmp     (loc_309A).l

	; End of function InitSystem


; =============== S U B R O U T I N E =======================================

InitVDP:
		move.w  #$3FFE,d0
		lea     (RAM_START).l,a0
loc_3B0:
		clr.l   (a0)+           ; clear all RAM
		dbf     d0,loc_3B0
		move.b  #3,(FADING_COUNTER_MAX).l
		clr.b   (FADING_SETTING).l
		lea     vdp_init_params(pc), a0
		moveq   #$12,d1
loc_3CA:
		move.w  (a0)+,d0
		bsr.w   SetVDPRegStatus
		dbf     d1,loc_3CA
		clr.w   d0
		clr.w   d1
		clr.w   d2
		bsr.w   DMAVramFill     
		rts

	; End of function InitVDP


; =============== S U B R O U T I N E =======================================

InitRamVdpData:
		
		move.l  #byte_FF0780,(dword_FF0EEE).l
		move.l  #byte_FF0550,(VDP_REG_COMMANDS).l
		moveq   #$40,d0 ; PD2 output mode ?
		move.b  d0,(CTRL1+1).l  
		move.b  d0,(CTRL2+1).l
		move.b  d0,(CTRL3+1).l
		lea     (dword_FF0100).l,a0
		move.w  #$FF,d0
loc_412:
		move.w  #0,(a0)+        ; clear from FFD100 to FFD500
		move.w  #0,(a0)+
		dbf     d0,loc_412
		lea     (dword_FF0500).l,a0
		move.w  #$13,d0
loc_428:
		move.w  #0,(a0)+        ; clear next 80d bytes
		move.w  #0,(a0)+
		dbf     d0,loc_428
		lea     (PALETTE_1_BIS).l,a0
		moveq   #$7F,d1 
loc_43C:
		clr.w   (a0)+           ; clear palette replicas ?
		dbf     d1,loc_43C
		bsr.w   ClearSpriteTable
		bsr.w   sub_1180
		bsr.w   sub_11F8
		bsr.w   SetVIntParam3
		rts

	; End of function InitRamVdpData

vdp_init_params:dc.w $8004              ; disable H int, enable read H V counter
		dc.w $8124              ; disable display, enable V int, disable DMA, V28 cell mode
		dc.w $8230              ; scroll A table VRAM address : C000
		dc.w $8338              ; window table VRAM address : E000 ?
		dc.w $8407              ; scroll B table VRAM address : E000
		dc.w $8578              ; sprite attribute table VRAM address : ?
		dc.w $8600              ; always 0
		dc.w $8700              ; background color : plt 0, clr 0
		dc.w $8800              ; always 0
		dc.w $8900              ; always 0
		dc.w $8A00              ; Hint timing : 0
		dc.w $8B00              ; disable external interrupt, full scrolls
		dc.w $8C81              ; H40 cell mode, no interlace
		dc.w $8D3D              ; H Scroll table VRAM address : EC00
		dc.w $8E00              ; always 0
		dc.w $8F02              ; auto increment bias number : 2
		dc.w $9001              ; scroll size : ?
		dc.w $9194              ; window is 20 cells from right
		dc.w $929C              ; window is 28 cells from bottom

; =============== S U B R O U T I N E =======================================

Start:
		tst.l   (CTRL1).l       
		bne.s   loc_488
		tst.w   (CTRL3).l
loc_488:
		bne.s   loc_506
		lea     StartParams(pc), a5
		movem.w (a5)+,d5-d7     ; copy parameters
		movem.l (a5)+,a0-a4     ; copy adresses
		move.b  -$10FF(a1),d0   ; get HW Info at 0xA10001
		andi.b  #$F,d0
		beq.s   loc_4A8         
		move.l  #'SEGA',$2F00(a1)
loc_4A8:
		move.w  (a4),d0         ; just read vdp control, why ?
		moveq   #0,d0
		movea.l d0,a6
		move.l  a6,usp          ; reset user stack pointer ?
		moveq   #$17,d1         ; loop for each of the 24 vdp registers
loc_4B2:
		move.b  (a5)+,d5        ; set each vdp register with initial parameters
		move.w  d5,(a4)
		add.w   d7,d5
		dbf     d1,loc_4B2      
		move.l  (a5)+,(a4)
		move.w  d0,(a3)         ; move 0 to vdp data port
		move.w  d7,(a1)         ; Z80 busreq cancel ?
		move.w  d7,(a2)         ; Z80 bus reset request ?
loc_4C4:
		btst    d0,(a1)
		bne.s   loc_4C4         ; wait for availability
		moveq   #$25,d2 ; loop 37 times
loc_4CA:
		move.b  (a5)+,(a0)+     ; copy 37 bytes to Z80 ram
		dbf     d2,loc_4CA      
		move.w  d0,(a2)         ; Z80 reset request ?
		move.w  d0,(a1)         ; Z80 busreq cancel ?
		move.w  d7,(a2)         ; Z80 reset cancel ?
loc_4D6:
		move.l  d0,-(a6)        ; clear RAM
		dbf     d6,loc_4D6      
		move.l  (a5)+,(a4)      ; disable DMA, increment data bias number : 2
		move.l  (a5)+,(a4)      ; address set : CRAM write ?
		moveq   #$1F,d3         ; loop 31 times
loc_4E2:
		move.l  d0,(a3)         ; clear CRAM ?
		dbf     d3,loc_4E2      
		move.l  (a5)+,(a4)      ; VSRAM write
		moveq   #$13,d4         ; loop 19 times
loc_4EC:
		move.l  d0,(a3)         ; clear VSRAM
		dbf     d4,loc_4EC      
		moveq   #3,d5           ; loop 3 times
loc_4F4:
		move.b  (a5)+,$11(a3)   ; set PSG volume to 0
		dbf     d5,loc_4F4      
		move.w  d0,(a2)         ; bus reset cancel ?
		movem.l (a6),d0-a6      ; clear registers
		move    #$2700,sr       ; Move 0x2700 into Status Register, which now has these set: no trace, A7 is Interupt Stack Pointer, no interrupts, clear condition code bits
loc_506:
		bra.s   loc_574
StartParams:
		dc.w $8000              ; vdp register set base word
		dc.w $3FFF
		dc.w $100               ; vdp register set word to add for next register
		dc.l Z80_Memory
		dc.l Z80BusReq          ; Z80 bus request
		dc.l Z80BusReset        ; Z80 bus reset
		dc.l VDP_Data           ; vdp data port
		dc.l VDP_Control        ; vdp control port
		dc.b 4                  ; vdp reg 00 : disable H interupt, enable read H V counter
		dc.b $14                ; vdp reg 01 : disable display, disable Vint, enable DMA, V28 cell mode
		dc.b $30                ; vdp reg 02 : scroll A table vram address : C000
		dc.b $3C                ; vdp reg 03 : window table vram address : F000 ?
		dc.b 7                  ; vdp reg 04 : scroll B table vram address : E000
		dc.b $6C                ; vdp reg 05 : sprite attribute table vram address : D800
		dc.b 0                  ; vdp reg 06 : always 0
		dc.b 0                  ; vdp reg 07 : background color : plt 0 color 0
		dc.b 0                  ; vdp reg 08 : always 0
		dc.b 0                  ; vdp reg 09 : always 0
		dc.b $FF                ; vdp reg 10 : Hint timing value
		dc.b 0                  ; vdp reg 11 : disable external interrupt, full V/H scrolls
		dc.b $81                ; vdp reg 12 : H40 cell mode, disable shadow/highlight, no interlace
		dc.b $37                ; vdp reg 13 : H Scroll table vram address : FC00
		dc.b 0                  ; vdp reg 14 : always 0
		dc.b 1                  ; vdp reg 15 : auto-increment bias number : 1
		dc.b 1                  ; vdp reg 16 : scroll size : V32 cell, H64 cell
		dc.b 0                  ; vdp reg 17 : window H position : from left side
		dc.b 0                  ; vdp reg 18 : window V position : from upper side
		dc.b $FF                ; vdp reg 19 : DMA length counter low
		dc.b $FF                ; vdp reg 20 : DMA length counter high
		dc.b 0                  ; vdp reg 21 : DMA source address low
		dc.b 0                  ; vdp reg 22 : DMA source address mid
		dc.b $80                ; vdp reg 23 : DMA source address high, VRAM fill
		dc.l $40000080          ; ?
		dc.b $AF                ; Z80 start code ... what's the use O_o ?
		dc.b 1
		dc.b $D9
		dc.b $1F
		dc.b $11
		dc.b $27
		dc.b 0
		dc.b $21
		dc.b $26
		dc.b 0
		dc.b $F9
		dc.b $77
		dc.b $ED
		dc.b $B0
		dc.b $DD
		dc.b $E1
		dc.b $FD
		dc.b $E1
		dc.b $ED
		dc.b $47
		dc.b $ED
		dc.b $4F
		dc.b $D1
		dc.b $E1
		dc.b $F1
		dc.b 8
		dc.b $D9
		dc.b $C1
		dc.b $D1
		dc.b $E1
		dc.b $F1
		dc.b $F9
		dc.b $F3
		dc.b $ED
		dc.b $56
		dc.b $36
		dc.b $E9
		dc.b $E9                ; Z80 start code end
		dc.l $81048F02          ; disable DMA, increment data bias number : 2
		dc.l $C0000000          ; CRAM write
		dc.l $40000010          ; VSRAM write
		dc.b $9F                ; PSG bytes
		dc.b $BF
		dc.b $DF
		dc.b $FF                ; end of PSG bytes
loc_574:
		tst.w   (VDP_Control).l
loc_57A:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0           ; wait for free DMA
		bne.s   loc_57A
		bra.w   InitSystem

	; End of function Start

		dc.b $F3                ; unused Z80 code
		dc.b $31                ; loc_0:         di
		dc.b $F0                ;                ld      sp, 1FF0h
		dc.b $1F                ;                jp      loc_0
		dc.b $C3
		dc.b 0
		dc.b 0
		dc.b 0

; =============== S U B R O U T I N E =======================================

InitZ80:
		movem.l d0-a1,-(sp)
		move.w  #$100,(Z80BusReq).l
		move.w  #$100,(Z80BusReset).l
		lea     (Z80_Memory).l,a0
		move.w  #$1F80,d7
		lea     (SoundDriver).l,a1
loc_5B6:
		move.b  (a1)+,d0
		bsr.w   CopyByteToZ80
		dbf     d7,loc_5B6
		move.w  #0,(Z80BusReset).l
		moveq   #$10,d7
loc_5CA:
		dbf     d7,loc_5CA
		move.w  #$100,(Z80BusReset).l
		move.w  #0,(Z80BusReq).l
		lea     (MUSIC_STACK_LENGTH).l,a0
		movem.l (sp)+,d0-a1
		rts

	; End of function InitZ80


; =============== S U B R O U T I N E =======================================

CopyWordToZ80:
		
		bsr.w   CopyByteToZ80
		lsr.w   #8,d0

	; End of function CopyWordToZ80


; =============== S U B R O U T I N E =======================================

CopyByteToZ80:
		
		move.b  d0,(a0)
		cmp.b   (a0),d0
		bne.s   CopyByteToZ80
		addq.l  #1,a0
		rts

	; End of function CopyByteToZ80


; =============== S U B R O U T I N E =======================================

; if xxxx = $FFFF, then get d0.w

Trap0_SoundCommand:
		
		movem.l d0-d1/a0,-(sp)
		movea.l $E(sp),a0
		move.w  (a0),d1         ; get interrupt param
		addq.l  #2,$E(sp)
		cmpi.w  #$FFFF,d1
		bne.s   loc_610
		move.w  d0,d1           ; if param = FFFF, then get param from d0
loc_610:
		tst.b   ((DONT_SEND_SOUND_COMMANDS-$1000000)).w
		bne.s   loc_628
		lea     (SOUND_COMMAND_QUEUE).l,a0
		moveq   #3,d0
loc_61E:
		tst.w   (a0)+
		dbeq    d0,loc_61E
		move.w  d1,-2(a0)       ; add new sound command to send
loc_628:
		movem.l (sp)+,d0-d1/a0
		rte

	; End of function Trap0_SoundCommand


; =============== S U B R O U T I N E =======================================

int_AdressError:
		
		move.l  #'ADDR',(ERRCODE_DWORD0).l
		move.l  $A(sp),(ERRCODE_DWORD1).l
		jmp     loc_8010

	; End of function int_AdressError


; =============== S U B R O U T I N E =======================================

int_IllegalInstruction:
		
		move.l  #'BAD ',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     loc_8010

	; End of function int_IllegalInstruction


; =============== S U B R O U T I N E =======================================

int_ZeroDivide:
		
		move.l  #'ZERO',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     loc_8010

	; End of function int_ZeroDivide


; =============== S U B R O U T I N E =======================================

int_OtherError:
		
		move.l  #'OTHR',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     loc_8010

	; End of function int_OtherError


; =============== S U B R O U T I N E =======================================

int_ExternalInterrupt:
		
		nop
		nop
		bra.s   int_ExternalInterrupt

	; End of function int_ExternalInterrupt


; =============== S U B R O U T I N E =======================================

IntLv17:
		nop
		bra.s   IntLv17

	; End of function IntLv17


; =============== S U B R O U T I N E =======================================

Trap5_:
		movem.l d0-a6,-(sp)
		jsr     (sub_304).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap5_


; =============== S U B R O U T I N E =======================================

Trap6_:
		movem.l d0-a6,-(sp)
		jsr     (sub_30C).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap6_


; =============== S U B R O U T I N E =======================================

Trap7_:
		movem.l d0-a6,-(sp)
		jsr     (sub_328).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap7_


; =============== S U B R O U T I N E =======================================

Trap8_:
		movem.l d0-a6,-(sp)
		jsr     (j_LoadText).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap8_


; =============== S U B R O U T I N E =======================================

VInt:
		movem.l d0-a6,-(sp)
		bclr    #7,(VINT_PARAMS).l
		beq.s   loc_70C
		bsr.w   sub_760
		bsr.w   sub_7EC         
		bsr.w   ParseFadingFX
		bsr.w   UpdateSoundAndInput
		bsr.w   sub_728
		clr.b   (VINT_WAIT_TOGGLE).l
		move.b  (VINT_ENABLED).l,d0
		or.b    d0,(VINT_PARAMS).l
loc_70C:
		addq.b  #1,(byte_FF0E9C).l
		clr.b   (byte_FF0E9D).l
		move.w  (VDP_REG00_STATUS).l,(VDP_Control).l
		movem.l (sp)+,d0-a6
		rte

	; End of function VInt


; =============== S U B R O U T I N E =======================================

sub_728:
		move.b  (byte_FF0EB6).l,d0
		addq.b  #1,d0
		cmpi.b  #$3C,d0 
		bne.s   loc_738
		clr.b   d0
loc_738:
		move.b  d0,(byte_FF0EB6).l
		movea.l (dword_FF0EF6).l,a0
		move.l  a0,d0
		bne.s   loc_74A
		rts
loc_74A:
		jmp     (a0)

	; End of function sub_728


; =============== S U B R O U T I N E =======================================

sub_74C:
		andi.b  #$BF,(byte_FF0ECB).l
		move.w  (VDP_REG01_STATUS).l,(VDP_Control).l
		rts

	; End of function sub_74C


; =============== S U B R O U T I N E =======================================

sub_760:
		bsr.s   sub_768         
		bsr.w   sub_82C         
		rts

	; End of function sub_760


; =============== S U B R O U T I N E =======================================

; executes if VINT_PARAMS bit 0 set

sub_768:
		bclr    #0,(VINT_PARAMS).l
		beq.w   locret_7EA
		tst.b   (byte_FF0E95).l
		beq.w   locret_7EA
		lea     (byte_FF0780).l,a0
loc_784:
		move.w  (a0)+,d0
		move.w  #$8F02,d1
		bclr    #$F,d0
		beq.s   loc_79E
		move.w  #$8F40,d1
		bclr    #$E,d0
		beq.s   loc_79E
		move.w  #$8F80,d1
loc_79E:
		move.w  d1,(VDP_Control).l
		move.w  (a0)+,d2
		move.w  d2,d1
		andi.w  #$3FFF,d2
		ori.w   #$4000,d2
		move.w  d2,(VDP_Control).l
		clr.w   d2
		add.w   d1,d1
		addx.w  d2,d2
		add.w   d1,d1
		addx.w  d2,d2
		move.w  d2,(VDP_Control).l
loc_7C6:
		move.w  (a0)+,(VDP_Data).l
		dbf     d0,loc_7C6
		subq.b  #1,(byte_FF0E95).l
		bne.s   loc_784
		move.w  #$8F02,(VDP_Control).l
		move.l  #byte_FF0780,(dword_FF0EEE).l
locret_7EA:
		rts

	; End of function sub_768


; =============== S U B R O U T I N E =======================================

; related to VINT_PARAMS bit 4

sub_7EC:
		bclr    #4,(VINT_PARAMS).l
		beq.s   locret_82A
		lea     (byte_FF0780).l,a0
		move.w  #$8F02,(VDP_Control).l
		move.w  (a0),d7
		andi.w  #$3FFF,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
		rol.w   #2,d7
		andi.w  #3,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
loc_820:
		move.w  (VDP_Data).l,(a0)+
		dbf     d7,loc_820
locret_82A:
		rts

	; End of function sub_7EC


; =============== S U B R O U T I N E =======================================

; executes if VINT_PARAMS bit 3 set or bit 1 clear

sub_82C:
		bclr    #3,(VINT_PARAMS).l
		bne.s   loc_840
		btst    #1,(VINT_PARAMS).l
		bne.s   locret_8B8
loc_840:
		move.w  #$100,(Z80BusReq).l
loc_848:
		btst    #0,(Z80BusReq).l
		bne.s   loc_848
		btst    #1,(VINT_PARAMS).l
		bne.s   locret_8B8
		bsr.w   DMASpriteTable
		tst.b   (byte_FF0E96).l
		beq.s   loc_8A6
		lea     (byte_FF0550).l,a0
		lea     (VDP_Control).l,a6
		move.w  (VDP_REG01_STATUS).l,d7
		ori.b   #$10,d7
		move.w  d7,(a6)
loc_880:
		move.w  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.w  (a0)+,(TEMP_DMA_VALUE).l
		move.w  (TEMP_DMA_VALUE).l,(a6)
		subq.b  #1,(byte_FF0E96).l
		bne.s   loc_880
		move.w  (VDP_REG01_STATUS).l,(a6)
		move.w  #$8F02,(a6)
loc_8A6:
		move.w  #0,(Z80BusReq).l
		move.l  #byte_FF0550,(VDP_REG_COMMANDS).l
locret_8B8:
		rts

	; End of function sub_82C


; =============== S U B R O U T I N E =======================================

UpdateSoundAndInput:
		
		move.w  #$100,(Z80BusReq).l
loc_8C2:
		btst    #0,(Z80BusReq).l
		bne.s   loc_8C2         ; wait for Z80 bus available
		tst.b   (WAIT_FOR_MUSIC_END).l
		beq.w   loc_8E6
		tst.b   (Z80_CHANNEL_1_NOT_IN_USE).l
		beq.w   loc_9EA
		clr.b   (WAIT_FOR_MUSIC_END).l
loc_8E6:
		lea     (SOUND_COMMAND_QUEUE).l,a0
		move.l  4(a0),d0
		or.l    (a0),d0         ; if stack void, do nothing
		beq.w   loc_9EA
		move.b  (a0),d1         ; contains music volume parameter when command is FC
														; or fade in parameter when 7F < command < F0
		move.b  1(a0),d0        ; stores first command in d1 and d0 and pushes the rest forward
		move.w  2(a0),(a0)+
		move.w  2(a0),(a0)+
		move.w  2(a0),(a0)+
		clr.w   (a0)
		cmpi.b  #$FB,d0
		bne.s   loc_944         ; if command FB, play back previous music
														; NOTE : for future cube save/resume feature,
														; send proper resume command instead of previous music index !
														; Cube should save current music at every new music index !
		tst.b   (MUSIC_STACK_LENGTH).l
		beq.s   loc_936
		movem.l d7-a0,-(sp)
		lea     (MUSIC_STACK).l,a0
		moveq   #8,d7
loc_924:
		move.b  1(a0),(a0)+
		dbf     d7,loc_924
		movem.l (sp)+,d7-a0
		subq.b  #1,(MUSIC_STACK_LENGTH).l
loc_936:
		move.b  (MUSIC_STACK).l,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_944:
		cmpi.b  #$FD,d0
		bcs.s   loc_954
		move.b  d0,(Z80_SoundDriverCommand).l
						; if command >= FD, then send it to Z80
		bra.w   loc_9EA
loc_954:
		cmpi.b  #$F0,d0
		bne.s   loc_966
		move.b  #1,(WAIT_FOR_MUSIC_END).l
						; if F0, then wait for current music to end before sending commands to Z80
		bra.w   loc_9EA
loc_966:
		cmpi.b  #$FC,d0
		bne.s   loc_980         ; if FC, then update music level
		andi.b  #$F,d1
		move.b  d1,(Z80_SoundDriverMusicLevel).l
		move.b  d0,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_980:
		movem.l d0,-(sp)
		andi.b  #$7F,d0 ; a music/sfx index mask that must be changed to allow indexes above $80
														; also change stuff at 9AA then !
		cmp.b   (MUSIC_STACK).l,d0; compare with last played music
		movem.l (sp)+,d0
		bne.s   loc_998
		bra.w   loc_9EA         ; if same to last played music, let current music play
														; (might play nothing if last played music has ended !)
loc_998:
		bclr    #7,d0           ; if command > 7F, then send Fade In parameter
		beq.s   loc_9A6         ; branch if bit was 1 before bclr
		move.b  d1,(Z80_SoundDriverFadeInData).l
		bra.s   loc_9B4
loc_9A6:
		cmpi.b  #$40,d0 
		bgt.s   loc_9B4
		move.b  #$F,(Z80_SoundDriverFadeInData).l
						; if music, put this fade in parameter : no fade in
loc_9B4:
		move.b  d0,(Z80_SoundDriverCommand).l
						; send music/sfx command to Z80
		cmpi.b  #$40,d0 
		bge.s   loc_9EA
		movem.l d7-a0,-(sp)
		lea     (WAIT_FOR_MUSIC_END).l,a0
		moveq   #8,d7
loc_9CC:
		move.b  -2(a0),-(a0)    ; add music index to music stack
		dbf     d7,loc_9CC
		move.b  d0,-(a0)
		movem.l (sp)+,d7-a0
		cmpi.b  #$A,(MUSIC_STACK_LENGTH).l
		bge.s   loc_9EA
		addq.b  #1,(MUSIC_STACK_LENGTH).l
loc_9EA:
		bsr.w   UpdatePlayerInputs
		tst.b   (byte_FF0F03).l
		bne.s   loc_A38
		moveq   #2,d0
		move.b  (P1_INPUT).l,d1 
		lsr.w   #1,d1
		dbcc    d0,*+4
		lsr.w   #1,d1
		dbcc    d0,*+4
		lsr.w   #1,d1
		dbcc    d0,*+4
		lsr.w   #1,d1
		dbcc    d0,*+4
		tst.w   d0
		bne.s   loc_A28         
		move.b  (PRIMARY_WALKING_DIRECTION).l,d0
						; get current walking direction
		eor.b   d0,(P1_INPUT).l ; get new direction
		bra.s   loc_A38
loc_A28:
		move.b  (P1_INPUT).l,d1 ; if only one direction pushed, set it as primary
		andi.w  #$F,d1
		move.b  d1,(PRIMARY_WALKING_DIRECTION).l
loc_A38:
		move.b  (P1_INPUT).l,d0 
		move.b  d0,(CURRENT_PLAYER_INPUT).l
						; overwrite P2 6-button data with P1 state with walking direction
		cmp.b   (LAST_PLAYER_INPUT).l,d0
		bne.s   loc_A6C         
		addq.b  #1,(INPUT_REPEAT_DELAYER).l
						; if input is the same then increment counter and ignore input
		cmpi.b  #$18,(INPUT_REPEAT_DELAYER).l
		bcc.s   loc_A64
		clr.b   (CURRENT_PLAYER_INPUT).l; keep current input only when counter reaches $18
		bra.s   loc_A6A
loc_A64:
		subq.b  #6,(INPUT_REPEAT_DELAYER).l
loc_A6A:
		bra.s   loc_A9A
loc_A6C:
		clr.w   d2              ; if input is new
		move.b  (LAST_PLAYER_INPUT).l,d1
		andi.b  #$F,d1
		beq.s   loc_A7C
		moveq   #1,d2           ; was pushing a direction
loc_A7C:
		move.b  (CURRENT_PLAYER_INPUT).l,(LAST_PLAYER_INPUT).l
		andi.b  #$F,d0
		beq.w   loc_A94
		tst.b   d2
		bne.w   loc_A9A
loc_A94:
		clr.b   (INPUT_REPEAT_DELAYER).l
loc_A9A:
		move.w  #0,(Z80BusReq).l
		rts

	; End of function UpdateSoundAndInput


; =============== S U B R O U T I N E =======================================

nullsub_AA4:
		rts

	; End of function nullsub_AA4


; =============== S U B R O U T I N E =======================================

nullsub_AA6:
		rts

	; End of function nullsub_AA6


; =============== S U B R O U T I N E =======================================

sub_AA8:
		movem.l d0-d1/a0,-(sp)
		movea.l $E(sp),a0
		move.w  (a0),d1
		addq.l  #2,$E(sp)
		cmpi.w  #$FFFF,d1
		bne.s   loc_ABE
		move.w  d0,d1
loc_ABE:
		lea     (SOUND_COMMAND_QUEUE).l,a0
		moveq   #3,d0
loc_AC6:
		tst.w   (a0)+
		dbeq    d0,loc_AC6
		move.w  d1,-2(a0)
		movem.l (sp)+,d0-d1/a0
		rte

	; End of function sub_AA8


; =============== S U B R O U T I N E =======================================

ParseFadingFX:
		
		move.b  (FADING_SETTING).l,d0
		beq.w   locret_B4A
		subq.b  #1,(FADING_COUNTER).l
		bne.w   locret_B4A
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		subq.b  #1,d0
		ext.w   d0
		lsl.w   #3,d0           ; *8 ? so 8 bytes per entry ?
		move.b  (FADING_POINTER).l,d1
		ext.w   d1
		add.w   d1,d0
		move.b  FadingData(pc,d0.w),d1
		cmpi.w  #$80,d1 
		bne.s   loc_B14
		clr.b   (FADING_SETTING).l; end of palette fx ?
loc_B14:
		movem.l d1,-(sp)
		andi.w  #$F0,d1 
		cmpi.w  #$80,d1 
		movem.l (sp)+,d1
		bne.s   loc_B34
		andi.w  #$F,d1          ; go x backwards
		sub.b   d1,(FADING_POINTER).l
		bra.w   ParseFadingFX
loc_B34:
		ext.w   d1
		move.w  d1,d0
		move.b  (FADING_PALETTE_FLAGS).l,d1
		ext.w   d1
		bsr.w   sub_D36
		addq.b  #1,(FADING_POINTER).l
locret_B4A:
		rts

	; End of function ParseFadingFX

FadingData:     incbin "data/graphics/tech/fadingdata.bin"

; =============== S U B R O U T I N E =======================================

HInt:
		rte

	; End of function HInt


; =============== S U B R O U T I N E =======================================

; waits for 0xc00004 (VDP DMA register) to be cleared

WaitForDMAFree:
		
		movem.w d0,-(sp)
loc_BA2:
		move.w  (VDP_Control).l,d0
		btst    #1,d0           ; control if DMA in progress
		bne.s   loc_BA2         ; loop if DMA in progress
		move.w  (sp)+,d0
		rts

	; End of function WaitForDMAFree


; =============== S U B R O U T I N E =======================================

; d0 : vdp reg number

GetVDPRegStatus:
		
		movem.l a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		move.w  (a0,d0.w),d0
		movem.l (sp)+,a0
		rts

	; End of function GetVDPRegStatus


; =============== S U B R O U T I N E =======================================

SetVDPRegStatus:
		
		bsr.s   WaitForDMAFree  
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		move.w  d0,(VDP_Control).l
		move.w  d0,d1
		andi.w  #$7F00,d0
		lsr.w   #7,d0
		move.w  d1,(a0,d0.w)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function SetVDPRegStatus


; =============== S U B R O U T I N E =======================================

VDP_EnableDisplay:
		
		bsr.s   WaitForDMAFree  
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		or.b    d1,1(a0,d0.w)   ; enable display
		bra.s   SendVDPCommand
VDP_DisableDisplay:
		
		bsr.s   WaitForDMAFree  
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		and.b   d1,1(a0,d0.w)   ; disable display
SendVDPCommand:
		
		move.w  (a0,d0.w),d1
		move.w  d1,(VDP_Control).l
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function VDP_EnableDisplay


; =============== S U B R O U T I N E =======================================

EnableDisplay:
		
		move.w  #1,d0           ; get vdp reg 01
		move.w  #$40,d1 
		bra.s   VDP_EnableDisplay

	; End of function EnableDisplay


; =============== S U B R O U T I N E =======================================

DisableDisplay:
		
		move.w  #1,d0
		move.w  #$BF,d1 
		bra.s   VDP_DisableDisplay

	; End of function DisableDisplay


; =============== S U B R O U T I N E =======================================

EnableInterrupts:
		
		move.b  #$80,(VINT_ENABLED).l
		move    #$2300,sr       ; set interrupt mask to level 3
		rts

	; End of function EnableInterrupts


; =============== S U B R O U T I N E =======================================

DisableInterrupts:
		
		clr.b   (VINT_ENABLED).l
		move    #$2700,sr       ; set interrupt mask to level 7 : no more HInt/VInt !
		rts

	; End of function DisableInterrupts


; =============== S U B R O U T I N E =======================================

EnableDisplayAndInterrupts:
		
		bsr.s   EnableDisplay
		bra.s   EnableInterrupts

	; End of function EnableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

DisableDisplayAndInterrupts:
		
		bsr.s   DisableInterrupts
		bra.s   DisableDisplay

	; End of function DisableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

ClearVIntParam1:
		
		bclr    #1,(VINT_PARAMS).l
		rts

	; End of function ClearVIntParam1


; =============== S U B R O U T I N E =======================================

SetVIntParam1:
		
		bset    #1,(VINT_PARAMS).l
		rts

	; End of function SetVIntParam1


; =============== S U B R O U T I N E =======================================

; Palette transfer ?

DuplicatePalettes:
		
		movem.l d7/a5-a6,-(sp)
		lea     (PALETTE_1_BIS).l,a5
		lea     (RAM_START).l,a6
		move.w  #$3F,d7 
loc_C80:
		move.w  (a5)+,(a6)+
		dbf     d7,loc_C80
		movem.l (sp)+,d7/a5-a6
StoreVDPCommandster:
		
		move    sr,-(sp)
		move    #$2700,sr       ; disable interrupts
		movem.l a6,-(sp)
		movea.l (VDP_REG_COMMANDS).l,a6
		move.w  #$8F02,(a6)+    ; auto increment : 2
		move.w  #$9400,(a6)+    ; DMA length
		move.w  #$9340,(a6)+
		move.w  #$9680,(a6)+
		move.w  #$9500,(a6)+
		move.w  #$977F,(a6)+    ; RAM to VRAM, address : ?
		move.w  #$C000,(a6)+
		move.w  #$80,(a6)+ ; data port stuff ?
		move.l  a6,(VDP_REG_COMMANDS).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,a6
		move    (sp)+,sr
		rts

	; End of function DuplicatePalettes


; =============== S U B R O U T I N E =======================================

CopyPalette1:
		lea     (PALETTE_1_BIS).l,a1

	; End of function CopyPalette1


; =============== S U B R O U T I N E =======================================

CopyPalette:
		move.w  #$F,d0
loc_CD8:
		move.w  (a0)+,(a1)+
		dbf     d0,loc_CD8
		rts

	; End of function CopyPalette


; =============== S U B R O U T I N E =======================================

FadeInFromBlack:
		
		move.b  #1,(FADING_SETTING).l
		bra.w   ExecuteFading
FadeOutToBlack:
		
		move.b  #2,(FADING_SETTING).l
		bra.w   ExecuteFading
FadeInFromWhite:
		
		move.b  #3,(FADING_SETTING).l
		bra.w   ExecuteFading
FadeOutToWhite:
		
		move.b  #4,(FADING_SETTING).l
ExecuteFading:
		
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$F,(FADING_PALETTE_FLAGS).l
loc_D24:
		bsr.w   WaitForVInt     
		tst.b   (FADING_SETTING).l
		bne.s   loc_D24
		bsr.w   WaitForVInt     
		rts

	; End of function FadeInFromBlack


; =============== S U B R O U T I N E =======================================

sub_D36:
		movem.l d2-a2,-(sp)
		lea     (PALETTE_1_BIS).l,a0
		lea     (RAM_START).l,a1
		moveq   #3,d6
loc_D48:
		moveq   #3,d5
		sub.w   d6,d5
		btst    d5,d1
		bne.s   loc_D5C
		adda.w  #$20,a0 
		adda.w  #$20,a1 
		bra.w   loc_DC0
loc_D5C:
		moveq   #$F,d7
loc_D5E:
		movem.l d0,-(sp)
		move.w  (a0)+,d2
		add.w   d0,d0
		move.w  d2,d3
		andi.w  #$F,d3
		add.w   d0,d3
		bpl.s   loc_D74
		clr.w   d3
		bra.s   loc_D7E
loc_D74:
		cmpi.w  #$F,d3
		ble.s   loc_D7E
		move.w  #$F,d3
loc_D7E:
		asl.w   #4,d0
		move.w  d2,d4
		andi.w  #$F0,d4 
		add.w   d0,d4
		bpl.s   loc_D8E
		clr.w   d4
		bra.s   loc_D98
loc_D8E:
		cmpi.w  #$F0,d4 
		ble.s   loc_D98
		move.w  #$F0,d4 
loc_D98:
		or.w    d4,d3
		asl.w   #4,d0
		move.w  d2,d4
		andi.w  #$F00,d4
		add.w   d0,d4
		bpl.s   loc_DAA
		clr.w   d4
		bra.s   loc_DB4
loc_DAA:
		cmpi.w  #$F00,d4
		ble.s   loc_DB4
		move.w  #$F00,d4
loc_DB4:
		or.w    d4,d3
		move.w  d3,(a1)+
		movem.l (sp)+,d0
		dbf     d7,loc_D5E
loc_DC0:
		dbf     d6,loc_D48
		bsr.w   StoreVDPCommandster
		bsr.w   SetVIntParam3
		movem.l (sp)+,d2-a2
		rts

	; End of function sub_D36


; =============== S U B R O U T I N E =======================================

ClearScrollAndSpriteTables:
		
		bsr.s   ClearScrollTable
		bsr.s   ClearSpriteTable
DMASpriteTable:
		
		lea     (VDP_Control).l,a6
		move.w  #$8134,(a6)     ; disable display, enable Vint, enable DMA
		move.l  #$94019300,(a6) ; DMA Length : $100
		move.l  #$96869540,(a6) ; from RAM 0xFF8640 ?
		move.w  #$977F,(a6)
		move.w  #$7000,(a6)     ; to VRAM 0xF000 ?
		move.w  #$83,(TEMP_DMA_VALUE).l 
		move.w  (TEMP_DMA_VALUE).l,(a6)
		move.w  (VDP_REG01_STATUS).l,(a6)
						; Shouldn't it go to reg 01 with value 81 instead of 83 ??
		rts

	; End of function ClearScrollAndSpriteTables


; =============== S U B R O U T I N E =======================================

ClearSpriteTable:
		
		movem.l d0-d1/a0,-(sp)
		lea     (SPRITE_Y).l,a0 
		moveq   #$3F,d1 
		moveq   #1,d0
loc_E18:
		move.l  d0,(a0)
		clr.l   4(a0)
		addq.w  #8,a0
		addq.b  #1,d0
		dbf     d1,loc_E18
		clr.b   -5(a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function ClearSpriteTable


; =============== S U B R O U T I N E =======================================

ClearScrollTable:
		
		movem.l d7/a6,-(sp)
		move.w  #$C000,d0       ; clear scroll A table
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   DMAVramFill     
		move.w  #$E000,d0       ; clear scroll B table
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   DMAVramFill     
		move.w  #$7FF,d7
		lea     (unk_FFD000).l,a6
loc_E5A:
		clr.l   (a6)+
		dbf     d7,loc_E5A
		movem.l (sp)+,d7/a6
		rts

	; End of function ClearScrollTable


; =============== S U B R O U T I N E =======================================

; Wait until VInt func is called, i.e. next frame

WaitForVInt:
		bset    #7,(VINT_PARAMS).l
		move.b  #1,(VINT_WAIT_TOGGLE).l
loc_E76:
		tst.b   (VINT_WAIT_TOGGLE).l; wait until toggle clear
		bne.s   loc_E76
		rts

	; End of function WaitForVInt


; =============== S U B R O U T I N E =======================================

; wait for D0 Vints/frames

Sleep:
		movem.w d0,-(sp)
		subq.w  #1,d0
		bcs.w   loc_E90
loc_E8A:
		bsr.s   WaitForVInt     
		dbf     d0,loc_E8A
loc_E90:
		movem.w (sp)+,d0
		rts

	; End of function Sleep


; =============== S U B R O U T I N E =======================================

; used to execute sub_768

SetVIntParam0:
		
		bset    #0,(VINT_PARAMS).l
		rts

	; End of function SetVIntParam0


; =============== S U B R O U T I N E =======================================

SetVIntParam0AndWait:
		
		bsr.s   SetVIntParam0   
		bra.w   WaitForVInt     

	; End of function SetVIntParam0AndWait


; =============== S U B R O U T I N E =======================================

SetVIntParam3:
		
		bset    #3,(VINT_PARAMS).l
		rts

	; End of function SetVIntParam3


; =============== S U B R O U T I N E =======================================

SetVIntParam3AndWait:
		
		bsr.s   SetVIntParam3
		bra.w   WaitForVInt     

	; End of function SetVIntParam3AndWait


; =============== S U B R O U T I N E =======================================

sub_EB6:
		bsr.w   DisableInterrupts
		movem.l d7/a4-a5,-(sp)
		movea.l (dword_FF0EEE).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		move.w  a6,(a4)+
loc_ECC:
		move.w  d0,(a4)+
		move.l  a4,(dword_FF0EEE).l
		addq.b  #1,(byte_FF0E95).l
		clr.l   d7
		move.w  a6,d7
		ori.l   #RAM_START,d7   
		movea.l d7,a6
		movem.l (sp)+,d7/a4-a5
		bsr.w   EnableInterrupts
locret_EEE:
		rts

	; End of function sub_EB6


; =============== S U B R O U T I N E =======================================

sub_EF0:
		bsr.w   DisableInterrupts
		movem.l d7/a4-a5,-(sp)
		movea.l (dword_FF0EEE).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		bsr.s   sub_F42
		move.w  a6,(a4)+
		bra.s   loc_ECC

	; End of function sub_EF0


; =============== S U B R O U T I N E =======================================

sub_F0A:
		movem.l d5-d7,-(sp)
		lea     ($E000).l,a6
		lsl.w   #1,d5
		lsl.w   #7,d6
		or.w    d6,d5
		adda.w  d5,a6
		bsr.s   sub_F42
		movem.l (sp)+,d5-d6
		movem.l d5-d6,-(sp)
		adda.l  #$C000,a6
		lsl.w   #1,d5
		lsl.w   #7,d6
		or.w    d6,d5
		adda.w  d5,a6
		movem.l (sp)+,d5-d7
		andi.w  #$7E,d5 
		andi.w  #$F80,d6
		rts

	; End of function sub_F0A


; =============== S U B R O U T I N E =======================================

sub_F42:
		movem.l d7,-(sp)
		move.l  a6,d7
		swap    d7
		movea.l d7,a6
		movem.l (sp)+,d7
		rts

	; End of function sub_F42


; =============== S U B R O U T I N E =======================================

sub_F52:
		bsr.w   DisableInterrupts
		lea     (unk_FF0B80).l,a4
loc_F5C:
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.s   sub_F0A
		movem.l (sp)+,d5-d6

	; End of function sub_F52


; START OF FUNCTION CHUNK FOR sub_FE8

loc_F78:
		movem.l d3-d4/a3-a6,-(sp)
		clr.l   d3
		move.w  a6,d3
		cmpi.w  #$E000,d3
		bcc.s   loc_F8A
		addi.w  #$1000,d3
loc_F8A:
		ori.l   #RAM_START,d3   
		movea.l d3,a3
		movea.l (dword_FF0EEE).l,a5
		move.w  (word_FF0EC6).l,d3
		andi.l  #$FF,d3
		move.b  d3,(byte_FF0E95).l
		subq.w  #1,d3
loc_FAC:
		movem.l a3,-(sp)
		move.w  (word_FF0EC6).l,d4
		andi.l  #$FF00,d4
		lsr.w   #8,d4
		subq.w  #1,d4
		move.w  d4,(a5)+
		move.w  a6,(a5)+
loc_FC4:
		move.w  (a4),(a5)+
		move.w  (a4)+,(a3)+
		dbf     d4,loc_FC4
		adda.w  #$80,a6 
		movem.l (sp)+,a3
		adda.w  #$80,a3 
		dbf     d3,loc_FAC
		movem.l (sp)+,d3-d4/a3-a6
		bsr.w   EnableInterrupts
		bra.w   SetVIntParam0AndWait

; END OF FUNCTION CHUNK FOR sub_FE8


; =============== S U B R O U T I N E =======================================

sub_FE8:
		bsr.w   DisableInterrupts
		lea     (unk_FF0B80).l,a4
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.w   sub_F0A
		movem.l (sp)+,d5-d6
		bsr.w   sub_F42
		bra.w   loc_F78

	; End of function sub_FE8


; =============== S U B R O U T I N E =======================================

DMAFromRAMToVRAM:
		
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		lea     (VDP_Control).l,a6
		cmpi.w  #2,d1
		beq.s   loc_1036
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)
		move.l  d2,d1
loc_1036:
		moveq   #$10,d2
		or.w    (VDP_REG01_STATUS).l,d2
		move.w  d2,(a6)
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)
		move.l  #$96009500,d2
		move.l  a0,d0
		lsr.l   #1,d0
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d2
		move.b  d0,d2
		swap    d2
		move.l  d2,(a6)
		swap    d0
		ori.w   #$9700,d0
		move.w  d0,(a6)
		move.w  #$100,(Z80BusReq).l
loc_1078:
		btst    #0,(Z80BusReq).l
		bne.s   loc_1078
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(TEMP_DMA_VALUE).l
		move.w  (TEMP_DMA_VALUE).l,(a6)
		move.w  (VDP_REG01_STATUS).l,(a6)
		move.w  #0,(Z80BusReq).l
		cmpi.w  #2,d1
		beq.s   loc_10BE
		move.w  #$8F02,(a6)
loc_10BE:
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		rts

	; End of function DMAFromRAMToVRAM


; =============== S U B R O U T I N E =======================================

sub_10D2:
		bsr.w   DisableInterrupts
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		movea.l (VDP_REG_COMMANDS).l,a6
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)+
		move.l  d2,d1
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)+
		move.l  #$96009500,d2
		move.l  a0,d0
		lsr.l   #1,d0
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d2
		move.b  d0,d2
		swap    d2
		move.l  d2,(a6)+
		swap    d0
		ori.w   #$9700,d0
		move.w  d0,(a6)+
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)+
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(a6)+
		move.l  a6,(VDP_REG_COMMANDS).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		bra.w   EnableInterrupts

	; End of function sub_10D2


; =============== S U B R O U T I N E =======================================

sub_115A:
		movem.w d7,-(sp)
		move.w  a6,d7
		andi.w  #$3FFF,d7
		ori.w   #$4000,d7
		move.w  d7,(VDP_Control).l
		move.w  a6,d7
		lsr.w   #8,d7
		lsr.w   #6,d7
		move.w  d7,(VDP_Control).l
		movem.w (sp)+,d7
		rts

	; End of function sub_115A


; =============== S U B R O U T I N E =======================================

sub_1180:
		movem.l a6,-(sp)
		movea.l (VDP_REG_COMMANDS).l,a6
		move.w  #$8F02,(a6)+
		btst    #1,(byte_FF0EDF).l
		bne.s   loc_11A2
		move.w  #$9400,(a6)+
		move.w  #$9302,(a6)+
		bra.s   loc_11AA
loc_11A2:
		move.w  #$9402,(a6)+
		move.w  #$9300,(a6)+
loc_11AA:
		move.w  #$9680,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$7400,(a6)+
		move.w  #$83,(a6)+ 
		move.l  a6,(VDP_REG_COMMANDS).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,a6
		rts

	; End of function sub_1180


; =============== S U B R O U T I N E =======================================

sub_11D0:
		movem.l d7/a6,-(sp)
		lea     (dword_FF0100).l,a6

	; End of function sub_11D0


; START OF FUNCTION CHUNK FOR sub_11EC

loc_11DA:
		move.w  #$FF,d7
loc_11DE:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_11DE
		movem.l (sp)+,d7/a6
		bra.s   sub_1180

; END OF FUNCTION CHUNK FOR sub_11EC


; =============== S U B R O U T I N E =======================================

sub_11EC:
		movem.l d7/a6,-(sp)
		lea     ($FF0102).l,a6
		bra.s   loc_11DA

	; End of function sub_11EC


; =============== S U B R O U T I N E =======================================

sub_11F8:
		movem.l a6,-(sp)
		movea.l (VDP_REG_COMMANDS).l,a6
		move.w  #$8F02,(a6)+
		move.w  #$9400,(a6)+
		move.w  #$9328,(a6)+
		move.w  #$9682,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$4000,(a6)+
		move.w  #$90,(a6)+ 
		move.l  a6,(VDP_REG_COMMANDS).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,a6
		rts

	; End of function sub_11F8


; =============== S U B R O U T I N E =======================================

sub_1234:
		movem.l d7/a6,-(sp)
		lea     (dword_FF0500).l,a6
loc_123E:
		move.w  #$13,d7
loc_1242:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_1242
		movem.l (sp)+,d7/a6
		bra.s   sub_11F8

	; End of function sub_1234


; =============== S U B R O U T I N E =======================================

sub_1250:
		movem.l d7/a6,-(sp)
		lea     ((dword_FF0500+2)).l,a6
		bra.s   loc_123E

	; End of function sub_1250


; =============== S U B R O U T I N E =======================================

sub_125C:
		movem.w d1,-(sp)
		bsr.s   sub_126C
		bsr.w   DMAFromRAMToVRAM
		movem.w (sp)+,d1
		rts

	; End of function sub_125C


; =============== S U B R O U T I N E =======================================

sub_126C:
		movem.l d0-d1/a1,-(sp)
		bsr.w   DecompressGraphics
		lea     (FF3000_LOADING_SPACE).l,a0
		movem.l (sp)+,d0-d1/a1
		move.w  #2,d1
		rts

	; End of function sub_126C


; =============== S U B R O U T I N E =======================================

sub_1284:
		movem.w d1,-(sp)
		bsr.s   sub_126C
		bsr.w   sub_10D2
		movem.w (sp)+,d1
		rts

	; End of function sub_1284


; =============== S U B R O U T I N E =======================================

sub_1294:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (unk_FFD000).l,a0
		lea     ((loc_BFFE+2)).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   SetVIntParam3
		movem.l (sp)+,d0-d1/a0-a1
		rts

	; End of function sub_1294


; =============== S U B R O U T I N E =======================================

sub_12BA:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (unk_FFD000).l,a0
		lea     ($E000).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   SetVIntParam3
		movem.l (sp)+,d0-d1/a0-a1
		rts

	; End of function sub_12BA


; =============== S U B R O U T I N E =======================================

sub_12E0:
		bsr.s   sub_1294
		bra.w   WaitForVInt     

	; End of function sub_12E0


; =============== S U B R O U T I N E =======================================

; d0:DMA destination - d1:DMA length - d2:sent to VDP Data

DMAVramFill:
		movem.l d0-d3,-(sp)
		move.w  (VDP_REG01_STATUS).l,d3; get last 16+ vdp reg config command ?
		ori.b   #$10,d3         ; make sure it concerns a 16+ vdp reg
		move.w  d3,(VDP_Control).l; send command again
		move.w  #$8F01,(VDP_Control).l; set auto increment bias number to 1
		movem.l d1,-(sp)
		andi.w  #$FF,d1
		ori.w   #$9300,d1
		move.w  d1,(VDP_Control).l; DMA length counter low : 0
		movem.l (sp)+,d1
		lsr.w   #8,d1
		ori.w   #$9400,d1       ; DMA length counter high : 1
		move.w  d1,(VDP_Control).l
		move.w  #$9780,(VDP_Control).l; VRAM fill
		movem.l d0,-(sp)
		andi.w  #$3FFF,d0       ; d0 : destination address
		ori.w   #$4000,d0
		move.w  d0,(VDP_Control).l
		movem.l (sp)+,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.w   #$80,d0 ; errr .. CD5 set to 1 ? doesn't correspond to any access mode
		move.w  d0,(VDP_Control).l; destination address, second word
		move.w  d2,(VDP_Data).l ; writes 0 everytime
loc_1358:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0           ; wait for DMA free
		bne.s   loc_1358
		move.w  (VDP_REG01_STATUS).l,d3; get last vdp 16+ reg config command and send it
		move.w  d3,(VDP_Control).l
		move.w  #$8F02,(VDP_Control).l; auto increment bias number : 2
		movem.l (sp)+,d0-d3
		rts

	; End of function DMAVramFill


; =============== S U B R O U T I N E =======================================

; write D0 into RAM:E80 to D7 places

WriteAsciiNumber:
		
		movem.l d5-d7/a5-a6,-(sp)
		lea     PowersOfTen(pc), a5
		lea     (byte_FF0E80).l,a6
		moveq   #9,d5
loc_138E:
		move.w  #$2F,d6 
loc_1392:
		addq.w  #1,d6
		sub.l   (a5),d0
		bcc.s   loc_1392
		move.b  d6,(a6)+
		add.l   (a5)+,d0
		dbf     d5,loc_138E
		lea     (byte_FF0E80).l,a6
		moveq   #8,d6
loc_13A8:
		cmpi.b  #$30,(a6) 
		bne.w   loc_13B8
		move.b  #$20,(a6)+ 
		dbf     d6,loc_13A8
loc_13B8:
		movem.l (sp)+,d5-d7/a5-a6
		rts

	; End of function WriteAsciiNumber

PowersOfTen:    dc.l 1000000000
		dc.l 100000000
		dc.l 10000000
		dc.l 1000000
		dc.l 100000
		dc.l 10000
		dc.l 1000
		dc.l 100
		dc.l 10
		dc.l 1
		rts

; =============== S U B R O U T I N E =======================================

nullsub_1:
		rts

	; End of function nullsub_1

		movem.l d6-d7/a5-a6,-(sp)
		move.w  #$100,(Z80BusReq).l
loc_13F6:       btst    #0,(Z80BusReq).l
		bne.s   loc_13F6
		bsr.s   UpdatePlayerInputs
		move.w  #0,(Z80BusReq).l
		movem.l (sp)+,d6-d7/a5-a6
		rts

; =============== S U B R O U T I N E =======================================

UpdatePlayerInputs:
		
		lea     (P1_INPUT).l,a5 
		lea     ((DATA1+1)).l,a6
		bsr.s   sub_1428
		neg.b   d6
		add.w   d6,(RANDOM_SEED).l; Update RNG data?
		addq.w  #2,a6

	; End of function UpdatePlayerInputs


; =============== S U B R O U T I N E =======================================

sub_1428:
		move.b  #0,(a6)
		nop
		nop
		move.b  (a6),d6
		lsl.b   #2,d6
		andi.b  #$C0,d6
		move.b  #$40,(a6) 
		nop
		nop
		move.b  (a6),d7
		andi.b  #$3F,d7 
		or.b    d7,d6
		not.b   d6
		move.b  d6,(a5)+
		rts

	; End of function sub_1428


; =============== S U B R O U T I N E =======================================

WaitForPlayerInput:
		
		andi.b  #$FF,(CURRENT_PLAYER_INPUT).l
		bne.s   locret_145E
		bsr.w   WaitForVInt     
		bra.s   WaitForPlayerInput
locret_145E:
		rts

	; End of function WaitForPlayerInput


; =============== S U B R O U T I N E =======================================

WaitForPlayer1NewButtonPush:
		
		andi.b  #$FF,(P1_INPUT).l
		beq.s   loc_1470
		bsr.w   WaitForVInt     
		bra.s   WaitForPlayer1NewButtonPush
loc_1470:
		andi.b  #$FF,(P1_INPUT).l
		bne.s   locret_1480
		bsr.w   WaitForVInt     
		bra.s   loc_1470
locret_1480:
		rts

	; End of function WaitForPlayer1NewButtonPush


; =============== S U B R O U T I N E =======================================

sub_1482:
		movem.l d7,-(sp)
		move.b  (P1_INPUT).l,d7 
		and.b   (byte_FF0E9A).l,d7
		beq.s   loc_14B2
		addq.b  #1,(byte_FF0E9B).l
		move.b  (byte_FF0E9B).l,d7
		cmpi.b  #$A,d7
		bcc.s   loc_14B2
		clr.b   (P1_INPUT).l    
		movem.l (sp)+,d7
		rts
loc_14B2:
		clr.b   (byte_FF0E9A).l
		clr.b   (byte_FF0E9B).l
		movem.l (sp)+,d7
		rts

	; End of function sub_1482


; =============== S U B R O U T I N E =======================================

WaitForInputFor1Second:
		
		movem.l d5,-(sp)
		moveq   #$3B,d5 
loc_14CA:
		andi.b  #$FF,(P1_INPUT).l
		bne.s   loc_14DC
		bsr.w   WaitForVInt     
		dbf     d5,loc_14CA
loc_14DC:
		movem.l (sp)+,d5
		rts

	; End of function WaitForInputFor1Second


; =============== S U B R O U T I N E =======================================

WaitForInputFor3Seconds:
		
		movem.l d5,-(sp)
		move.l  #$B3,d5 
		bra.s   loc_14CA

	; End of function WaitForInputFor3Seconds


; =============== S U B R O U T I N E =======================================

; Get random number from 0 to D6, returned in D7

UpdateRandomSeed:
		
		move.w  (RANDOM_SEED).l,d7
		mulu.w  #$D,d7
		addi.w  #7,d7
		andi.l  #$FFFF,d7
		move.w  d7,(RANDOM_SEED).l
		mulu.w  d6,d7
		swap    d7
		rts

	; End of function UpdateRandomSeed


; =============== S U B R O U T I N E =======================================

; d0 : music index, or previous music if value $FB

PlayMusicAfterCurrentOne:
		
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_WAIT_MUSIC_END
						; Wait for current music to end
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_GET_D0_PARAMETER
						; get d0 value, if $FB : play previous music
loc_1516:
		moveq   #3,d0
		bsr.w   Sleep           
		tst.b   (WAIT_FOR_MUSIC_END).l; wait for sound command sent
		bne.s   loc_1516
		rts

	; End of function PlayMusicAfterCurrentOne


; =============== S U B R O U T I N E =======================================

;     Copy D7 bytes from A0 to A1.
;     In: A0 = src address
;         A1 = dest address
;         D7 = number of bytes to copy

CopyBytes:
		movem.l d7-a1,-(sp)
		cmpa.l  a0,a1
		bgt.w   loc_153E
		subq.w  #1,d7
loc_1532:
		move.b  (a0)+,(a1)+
		dbf     d7,loc_1532
		movem.l (sp)+,d7-a1
		rts
loc_153E:
		adda.w  d7,a0
		adda.w  d7,a1
		subq.w  #1,d7
loc_1544:
		move.b  -(a0),-(a1)
		dbf     d7,loc_1544
		movem.l (sp)+,d7-a1
		rts

	; End of function CopyBytes


; =============== S U B R O U T I N E =======================================

; In: D0 = number of sprites
; 
; set default values in sprite table

InitSprites:
		movem.l d0-d1/a0,-(sp)
		lea     (SPRITE_Y).l,a0 
		move.w  #1,d1
loc_155E:
		move.w  #1,(a0)+
		move.w  d1,(a0)+
		move.w  #1,(a0)+
		move.w  #1,(a0)+
		addq.w  #1,d1
		dbf     d0,loc_155E
		subq.l  #6,a0
		clr.w   (a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function InitSprites


; =============== S U B R O U T I N E =======================================

sub_157C:
		movem.l d1,-(sp)
		andi.w  #$FF,d7
		add.w   d7,d7
		move.w  word_1594(pc,d7.w),d7
		muls.w  d6,d7
		asr.w   #7,d7
		movem.l (sp)+,d1
		rts

	; End of function sub_157C

word_1594:      dc.w 0
		dc.w 3
		dc.w 6
		dc.w 9
		dc.w $C
		dc.w $10
		dc.w $13
		dc.w $16
		dc.w $19
		dc.w $1C
		dc.w $1F
		dc.w $22
		dc.w $25
		dc.w $28
		dc.w $2B
		dc.w $2E
		dc.w $31
		dc.w $33
		dc.w $36
		dc.w $39
		dc.w $3C
		dc.w $3F
		dc.w $41
		dc.w $44
		dc.w $47
		dc.w $49
		dc.w $4C
		dc.w $4E
		dc.w $51
		dc.w $53
		dc.w $55
		dc.w $58
		dc.w $5A
		dc.w $5C
		dc.w $5E
		dc.w $60
		dc.w $62
		dc.w $64
		dc.w $66
		dc.w $68
		dc.w $6A
		dc.w $6B
		dc.w $6D
		dc.w $6F
		dc.w $70
		dc.w $71
		dc.w $73
		dc.w $74
		dc.w $75
		dc.w $76
		dc.w $78
		dc.w $79
		dc.w $7A
		dc.w $7A
		dc.w $7B
		dc.w $7C
		dc.w $7D
		dc.w $7D
		dc.w $7E
		dc.w $7E
		dc.w $7E
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7E
		dc.w $7E
		dc.w $7E
		dc.w $7D
		dc.w $7D
		dc.w $7C
		dc.w $7B
		dc.w $7A
		dc.w $7A
		dc.w $79
		dc.w $78
		dc.w $76
		dc.w $75
		dc.w $74
		dc.w $73
		dc.w $71
		dc.w $70
		dc.w $6F
		dc.w $6D
		dc.w $6B
		dc.w $6A
		dc.w $68
		dc.w $66
		dc.w $64
		dc.w $62
		dc.w $60
		dc.w $5E
		dc.w $5C
		dc.w $5A
		dc.w $58
		dc.w $55
		dc.w $53
		dc.w $51
		dc.w $4E
		dc.w $4C
		dc.w $49
		dc.w $47
		dc.w $44
		dc.w $41
		dc.w $3F
		dc.w $3C
		dc.w $39
		dc.w $36
		dc.w $33
		dc.w $31
		dc.w $2E
		dc.w $2B
		dc.w $28
		dc.w $25
		dc.w $22
		dc.w $1F
		dc.w $1C
		dc.w $19
		dc.w $16
		dc.w $13
		dc.w $10
		dc.w $C
		dc.w 9
		dc.w 6
		dc.w 3
		dc.w 0
		dc.w $FFFD
		dc.w $FFFA
		dc.w $FFF7
		dc.w $FFF4
		dc.w $FFF0
		dc.w $FFED
		dc.w $FFEA
		dc.w $FFE7
		dc.w $FFE4
		dc.w $FFE1
		dc.w $FFDE
		dc.w $FFDB
		dc.w $FFD8
		dc.w $FFD5
		dc.w $FFD2
		dc.w $FFCF
		dc.w $FFCD
		dc.w $FFCA
		dc.w $FFC7
		dc.w $FFC4
		dc.w $FFC1
		dc.w $FFBF
		dc.w $FFBC
		dc.w $FFB9
		dc.w $FFB7
		dc.w $FFB4
		dc.w $FFB2
		dc.w $FFAF
		dc.w $FFAD
		dc.w $FFAB
		dc.w $FFA8
		dc.w $FFA6
		dc.w $FFA4
		dc.w $FFA2
		dc.w $FFA0
		dc.w $FF9E
		dc.w $FF9C
		dc.w $FF9A
		dc.w $FF98
		dc.w $FF96
		dc.w $FF95
		dc.w $FF93
		dc.w $FF91
		dc.w $FF90
		dc.w $FF8F
		dc.w $FF8D
		dc.w $FF8C
		dc.w $FF8B
		dc.w $FF8A
		dc.w $FF88
		dc.w $FF87
		dc.w $FF86
		dc.w $FF86
		dc.w $FF85
		dc.w $FF84
		dc.w $FF83
		dc.w $FF83
		dc.w $FF82
		dc.w $FF82
		dc.w $FF82
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF82
		dc.w $FF82
		dc.w $FF82
		dc.w $FF83
		dc.w $FF83
		dc.w $FF84
		dc.w $FF85
		dc.w $FF86
		dc.w $FF86
		dc.w $FF87
		dc.w $FF88
		dc.w $FF8A
		dc.w $FF8B
		dc.w $FF8C
		dc.w $FF8D
		dc.w $FF8F
		dc.w $FF90
		dc.w $FF91
		dc.w $FF93
		dc.w $FF95
		dc.w $FF96
		dc.w $FF98
		dc.w $FF9A
		dc.w $FF9C
		dc.w $FF9E
		dc.w $FFA0
		dc.w $FFA2
		dc.w $FFA4
		dc.w $FFA6
		dc.w $FFA8
		dc.w $FFAB
		dc.w $FFAD
		dc.w $FFAF
		dc.w $FFB2
		dc.w $FFB4
		dc.w $FFB7
		dc.w $FFB9
		dc.w $FFBC
		dc.w $FFBF
		dc.w $FFC1
		dc.w $FFC4
		dc.w $FFC7
		dc.w $FFCA
		dc.w $FFCD
		dc.w $FFCF
		dc.w $FFD2
		dc.w $FFD5
		dc.w $FFD8
		dc.w $FFDB
		dc.w $FFDE
		dc.w $FFE1
		dc.w $FFE4
		dc.w $FFE7
		dc.w $FFEA
		dc.w $FFED
		dc.w $FFF0
		dc.w $FFF4
		dc.w $FFF7
		dc.w $FFFA
		dc.w $FFFD

; =============== S U B R O U T I N E =======================================

sub_1794:
		movem.l d0-d2,-(sp)
		ext.l   d6
		move.w  d6,d0
		moveq   #$13,d2
		lsr.w   #1,d0
		move.w  d0,d7
loc_17A2:
		move.w  d7,d1
		mulu.w  d1,d1
		lsr.w   #1,d0
		cmp.l   d1,d6
		beq.w   loc_17BA
		blt.s   loc_17B4
		add.w   d0,d7
		bra.s   loc_17B6
loc_17B4:
		sub.w   d0,d7
loc_17B6:
		dbf     d2,loc_17A2
loc_17BA:
		movem.l (sp)+,d0-d2
		rts

	; End of function sub_1794


; =============== S U B R O U T I N E =======================================

sub_17C0:
		movem.l d0-d2,-(sp)
		move.w  d6,d0
		move.w  d7,d1
		muls.w  d6,d6
		muls.w  d7,d7
		add.w   d7,d6
		bsr.s   sub_1794
		move.w  d7,d6
		move.w  d1,d7
		bge.s   loc_17D8
		neg.w   d7
loc_17D8:
		lsl.w   #6,d7
		divs.w  d6,d7
		move.b  unk_1814(pc,d7.w),d7
		andi.w  #$FF,d7
		movem.l d0,-(sp)
		muls.w  d1,d0
		movem.l (sp)+,d0
		blt.s   loc_1800
		tst.w   d1
		bge.s   loc_17FA
		addi.w  #$40,d7 
		bra.s   loc_17FE
loc_17FA:
		addi.w  #$C0,d7 
loc_17FE:
		bra.s   loc_180E
loc_1800:
		subi.w  #$40,d7 
		neg.w   d7
		tst.w   d1
		bge.s   loc_180E
		addi.w  #$80,d7 
loc_180E:
		movem.l (sp)+,d0-d2
		rts

	; End of function sub_17C0

unk_1814:       dc.b   0
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b   6
		dc.b   6
		dc.b   7
		dc.b   8
		dc.b   8
		dc.b   9
		dc.b  $A
		dc.b  $A
		dc.b  $B
		dc.b  $C
		dc.b  $C
		dc.b  $D
		dc.b  $E
		dc.b  $E
		dc.b  $F
		dc.b $10
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $13
		dc.b $13
		dc.b $14
		dc.b $15
		dc.b $16
		dc.b $16
		dc.b $17
		dc.b $18
		dc.b $19
		dc.b $19
		dc.b $1A
		dc.b $1B
		dc.b $1C
		dc.b $1D
		dc.b $1D
		dc.b $1E
		dc.b $1F
		dc.b $20
		dc.b $21 
		dc.b $22 
		dc.b $23 
		dc.b $24 
		dc.b $25 
		dc.b $26 
		dc.b $27 
		dc.b $28 
		dc.b $29 
		dc.b $2B 
		dc.b $2C 
		dc.b $2D 
		dc.b $2F 
		dc.b $31 
		dc.b $32 
		dc.b $35 
		dc.b $37 
		dc.b $3B 
		dc.b $40 
		dc.b   0

; =============== S U B R O U T I N E =======================================

; something with clearing/resetting sprite info when transitioning to battle scene?

sub_1856:
		movem.l d0-d2/d7-a1,-(sp)
		lea     (SPRITE_LINK).l,a1
		clr.w   d1
		moveq   #2,d0
		bsr.w   sub_1880
		bsr.w   sub_1880
		bsr.w   sub_18A0
		clr.w   d2
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
		movem.l (sp)+,d0-d2/d7-a1
		rts

	; End of function sub_1856


; =============== S U B R O U T I N E =======================================

sub_1880:
		lea     (byte_FFB4DB).l,a0
		moveq   #$3E,d7 
		moveq   #1,d2
loc_188A:
		cmp.b   (a0)+,d0
		bne.s   loc_1896
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
loc_1896:
		addq.w  #1,d2
		dbf     d7,loc_188A
		subq.w  #1,d0
		rts

	; End of function sub_1880


; =============== S U B R O U T I N E =======================================

sub_18A0:
		lea     (byte_FFB4DB).l,a0
		moveq   #$3E,d7 
		moveq   #1,d2
loc_18AA:
		cmp.b   (a0)+,d0
		bne.s   loc_18BC
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
		bclr    #7,1(a1,d1.w)
loc_18BC:
		addq.w  #1,d2
		dbf     d7,loc_18AA
		rts

	; End of function sub_18A0


; =============== S U B R O U T I N E =======================================

sub_18C4:
		movem.l d0/a0,-(sp)
		moveq   #$3F,d0 
		lea     (byte_FFB4DA).l,a0
loc_18D0:
		clr.b   (a0)+
		dbf     d0,loc_18D0
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_18C4


; =============== S U B R O U T I N E =======================================

sub_18DC:
		movem.l d0-a6,-(sp)
		bsr.w   sub_198E
		bsr.s   sub_191C
		movem.l (sp)+,d0-a6
		rts

	; End of function sub_18DC


; =============== S U B R O U T I N E =======================================

sub_18EC:
		movem.l d0-a6,-(sp)
		bsr.w   sub_198E
		bsr.w   sub_1AB6
		btst    #0,(byte_FF0EE9).l
		beq.s   loc_1916
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1C08,d0
		move.w  #$213,d1
		bsr.w   sub_801C
		bsr.w   sub_8054
loc_1916:
		movem.l (sp)+,d0-a6
		rts

	; End of function sub_18EC


; =============== S U B R O U T I N E =======================================

sub_191C:
		move.b  #1,((byte_FFF804-$1000000)).w
		bsr.w   sub_1AB6
		btst    #0,(byte_FF0EE9).l
		beq.w   loc_1B74
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$21C0213,d1
		move.w  #7,d2
		bra.w   loc_80C0

	; End of function sub_191C


; =============== S U B R O U T I N E =======================================

sub_1948:
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$C080,d0
		move.w  #$C081,d1
		move.w  #$C880,d2
		bra.s   loc_197E
		bsr.s   sub_1948
		move.w  #$C090,d0
		move.w  #$C020,d1
		move.w  #$C890,d2
		move.w  #5,d6
loc_196C:
		bsr.s   loc_197E
		dbf     d6,loc_196C
loc_1972:
		move.w  #$D080,d0
		move.w  #$D081,d1
		move.w  #$D880,d2
loc_197E:
		move.w  d0,(a0)+
		move.w  #$19,d7
loc_1984:
		move.w  d1,(a0)+
		dbf     d7,loc_1984
		move.w  d2,(a0)+
		rts

	; End of function sub_1948


; =============== S U B R O U T I N E =======================================

sub_198E:
		move.b  #2,((TEXT_X_POSITION-$1000000)).w
		move.b  #2,((TEXT_Y_POSITION-$1000000)).w
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$9BF,d7
loc_19A4:
		move.w  #$DDDD,(a0)+
		dbf     d7,loc_19A4
		clr.w   d0
loc_19AE:
		move.w  d0,-(sp)
		bsr.w   sub_1A0E
		move.w  (sp)+,d1
		clr.w   d0
		moveq   #3,d2
		sub.b   ((unk_FF9C05-$1000000)).w,d2
		beq.s   loc_19C4
		subq.w  #1,d2
		bset    d2,d0
loc_19C4:
		cmpi.w  #$7B,d1 
		bne.s   loc_19CC
		clr.w   d0
loc_19CC:
		cmpi.w  #$7C,d1 
		bne.s   loc_19D4
		clr.w   d0
loc_19D4:
		beq.s   loc_19F4
		tst.w   d1
		beq.s   loc_19F0
		eori.b  #1,((unk_FFB53C-$1000000)).w
		beq.s   loc_19EE
		move.w  d0,-(sp)
		move.w  ((word_FFC0BE-$1000000)).w,d0
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_GET_D0_PARAMETER
		move.w  (sp)+,d0
loc_19EE:
		bra.s   loc_19F4
loc_19F0:
		clr.b   ((unk_FFB53C-$1000000)).w
loc_19F4:
		subq.w  #1,d0
		blt.s   locret_1A0C
loc_19F8:
		tst.b   (P1_INPUT).l    
		bne.s   locret_1A0C
		move    sr,-(sp)
		bsr.w   WaitForVInt     
		move    (sp)+,ccr
		dbne    d0,loc_19F8
locret_1A0C:
		rts

	; End of function sub_198E


; =============== S U B R O U T I N E =======================================

sub_1A0E:
		btst    #0,(byte_FF0EE9).l
		beq.w   loc_1A44
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($D000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		lea     ($F800).l,a1
		move.w  #$1C0,d0
		bsr.w   sub_10D2
		bra.w   SetVIntParam3AndWait
loc_1A44:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		moveq   #$19,d0
loc_1A52:
		moveq   #3,d1
loc_1A54:
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		adda.w  #$320,a0
		dbf     d1,loc_1A54
		suba.w  #$CE0,a0
		dbf     d0,loc_1A52
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     ($D120).l,a1
		move.w  #$680,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   SetVIntParam3AndWait
		rts

	; End of function sub_1A0E


; =============== S U B R O U T I N E =======================================

sub_1A92:
		bsr.s   sub_1AB6
		btst    #0,(byte_FF0EE9).l
		beq.w   loc_1B6E
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$213021C,d1
		move.w  #7,d2
		bra.w   loc_80C0

	; End of function sub_1A92


; =============== S U B R O U T I N E =======================================

sub_1AB6:
		bsr.w   sub_1948
		move.w  #$C090,d0
		move.w  #$C680,d1
		move.w  #$C890,d2
		move.w  #5,d6
loc_1ACA:
		bsr.s   sub_1AD4
		dbf     d6,loc_1ACA
		bra.w   loc_1972

	; End of function sub_1AB6


; =============== S U B R O U T I N E =======================================

sub_1AD4:
		move.w  d0,(a0)+
		move.w  #$19,d7
loc_1ADA:
		move.w  d1,(a0)+
		addq.w  #1,d1
		cmpi.w  #$C700,d1
		bne.s   loc_1AE8
		move.w  #$C7C0,d1
loc_1AE8:
		dbf     d7,loc_1ADA
		move.w  d2,(a0)+
		rts

	; End of function sub_1AD4


; =============== S U B R O U T I N E =======================================

sub_1AF0:
		move.l  (dword_FF0EF6).l,-(sp)
		btst    #0,(byte_FF0EE9).l
		bne.s   loc_1B06
		clr.l   (dword_FF0EF6).l
loc_1B06:
		move.w  #7,d5
loc_1B0A:
		bsr.s   sub_1B1E
		bsr.s   sub_1B1E
		bsr.w   sub_1A0E
		dbf     d5,loc_1B0A
		move.l  (sp)+,(dword_FF0EF6).l
		rts

	; End of function sub_1AF0


; =============== S U B R O U T I N E =======================================

sub_1B1E:
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  #$19,d6
loc_1B28:
		bsr.s   sub_1B34
		suba.w  #$103C,a0
		dbf     d6,loc_1B28
		rts

	; End of function sub_1B1E


; =============== S U B R O U T I N E =======================================

sub_1B34:
		move.w  #4,d7
loc_1B38:
		bsr.s   sub_1B4A
		adda.w  #$324,a0
		dbf     d7,loc_1B38
		move.l  #$DDDDDDDD,d0
		bra.s   loc_1B4E

	; End of function sub_1B34


; =============== S U B R O U T I N E =======================================

sub_1B4A:
		move.l  $340(a0),d0
loc_1B4E:
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  d0,(a0)
		rts

	; End of function sub_1B4A


; START OF FUNCTION CHUNK FOR sub_1A92

loc_1B6E:
		moveq   #$60,d1 
		bra.w   loc_1B98

; END OF FUNCTION CHUNK FOR sub_1A92


; START OF FUNCTION CHUNK FOR sub_191C

loc_1B74:
		lea     unk_1F26(pc), a0
		nop
		lea     ($D000).l,a1
		move.w  #$90,d0 
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   SetVIntParam3
		jsr     (WaitForVInt).l 
		clr.w   d1
loc_1B98:
		lea     word_1C0E(pc), a0
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		lea     (unk_FF0C88).l,a1
		moveq   #5,d7
loc_1BAA:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BAA
		lea     (unk_FF0D48).l,a1
		moveq   #6,d7
loc_1BC0:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BC0
		lea     (dword_FF0E30).l,a1
		moveq   #9,d7
loc_1BD6:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BD6
		move.l  #$2020202,d0
		lea     ((byte_FFB4DB-$1000000)).w,a0
		move.b  d0,(a0)+
		move.l  d0,(a0)+
		move.b  d0,(a0)+
		lea     ((unk_FFB4F3-$1000000)).w,a0
		move.b  d0,(a0)+
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		lea     ((unk_FFB510-$1000000)).w,a0
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		move.l  d0,(a0)+
		jmp     (sub_320).l

; END OF FUNCTION CHUNK FOR sub_191C

word_1C0E:      dc.w $118
		dc.l $F00C689
		dc.w $98
		dc.w $118
		dc.l $F00C699
		dc.w $B8
		dc.w $118
		dc.l $F00C6A9
		dc.w $D8
		dc.w $118
		dc.l $F00C6B9
		dc.w $F8
		dc.w $118
		dc.l $F00C6C9
		dc.w $118
		dc.w $118
		dc.l $F00C6D9
		dc.w $138
		dc.w $118
		dc.l $700C6E9
		dc.w $158
		dc.w $110
		dc.l $C00C680
		dc.w $90
		dc.w $110
		dc.l $C00C681
		dc.w $B0
		dc.w $110
		dc.l $C00C681
		dc.w $D0
		dc.w $110
		dc.l $C00C681
		dc.w $F0
		dc.w $110
		dc.l $C00C681
		dc.w $110
		dc.w $110
		dc.l $C00C681
		dc.w $130
		dc.w $110
		dc.l $C00CE80
		dc.w $150
		dc.w $138
		dc.l $C00D680
		dc.w $90
		dc.w $138
		dc.l $C00D681
		dc.w $B0
		dc.w $138
		dc.l $C00D681
		dc.w $D0
		dc.w $138
		dc.l $C00D681
		dc.w $F0
		dc.w $138
		dc.l $C00D681
		dc.w $110
		dc.w $138
		dc.l $C00D681
		dc.w $130
		dc.w $138
		dc.l $C00DE80
		dc.w $150
		dc.w $118
		dc.l $300C685
		dc.w $90
		dc.w $118
		dc.l $300CE85
		dc.w $168

; =============== S U B R O U T I N E =======================================

sub_1CC6:
		movem.w d0-d1,-(sp)
		move.w  d0,d7
		move.b  ((byte_FFF804-$1000000)).w,d1
		bsr.s   sub_1CD8
		movem.w (sp)+,d0-d1
		rts

	; End of function sub_1CC6


; =============== S U B R O U T I N E =======================================

sub_1CD8:
		move.w  #$D,d6
		lsl.w   #5,d7
		movea.l (p_VariableWidthFont).l,a0
		adda.l  d7,a0
		move.w  (a0)+,d4
		bsr.s   sub_1CFE
		move.w  d6,d7
loc_1CEC:
		bsr.w   sub_1D4A
		bsr.w   sub_1D36
		dbf     d7,loc_1CEC
		add.b   d4,((TEXT_X_POSITION-$1000000)).w
		rts

	; End of function sub_1CD8


; =============== S U B R O U T I N E =======================================

sub_1CFE:
		move.b  d1,d2
		lsl.b   #4,d2
		clr.w   d0
		move.b  ((TEXT_Y_POSITION-$1000000)).w,d0
		lsr.b   #3,d0
		mulu.w  #$340,d0
		clr.w   d3
		move.b  ((TEXT_Y_POSITION-$1000000)).w,d3
		andi.b  #7,d3
		move.b  d3,d5
		lsl.b   #2,d3
		add.w   d3,d0
		clr.w   d3
		move.b  ((TEXT_X_POSITION-$1000000)).w,d3
		andi.b  #$F8,d3
		lsl.w   #2,d3
		add.w   d3,d0
		lea     (FF3000_LOADING_SPACE).l,a2
		adda.w  d0,a2
		rts

	; End of function sub_1CFE


; =============== S U B R O U T I N E =======================================

sub_1D36:
		adda.w  #4,a2
		addq.b  #1,d5
		cmpi.b  #8,d5
		bcs.s   locret_1D48
		clr.b   d5
		adda.w  #$320,a2
locret_1D48:
		rts

	; End of function sub_1D36


; =============== S U B R O U T I N E =======================================

sub_1D4A:
		move.w  (a0)+,d0
		moveq   #$B,d6
loc_1D4E:
		lsl.w   #1,d0
		bcc.s   loc_1D90
		move.b  ((TEXT_X_POSITION-$1000000)).w,d3
		andi.w  #7,d3
		addi.w  #$B,d3
		sub.w   d6,d3
		add.w   d3,d3
		move.w  off_1D6A(pc,d3.w),d3
		jmp     off_1D6A(pc,d3.w)
off_1D6A:
		dc.w sub_1D96-off_1D6A
		dc.w sub_1D9E-off_1D6A
		dc.w sub_1DA6-off_1D6A
		dc.w sub_1DB2-off_1D6A
		dc.w sub_1DBE-off_1D6A
		dc.w sub_1DCA-off_1D6A
		dc.w sub_1DD6-off_1D6A
		dc.w sub_1DE2-off_1D6A
		dc.w sub_1DEE-off_1D6A
		dc.w sub_1DFA-off_1D6A
		dc.w sub_1E06-off_1D6A
		dc.w sub_1E14-off_1D6A
		dc.w sub_1E22-off_1D6A
		dc.w sub_1E30-off_1D6A
		dc.w sub_1E3E-off_1D6A
		dc.w sub_1E4C-off_1D6A
		dc.w sub_1E5A-off_1D6A
		dc.w sub_1E68-off_1D6A
		dc.w sub_1E76-off_1D6A
loc_1D90:
		dbf     d6,loc_1D4E
		rts

	; End of function sub_1D4A


; =============== S U B R O U T I N E =======================================

sub_1D96:
		andi.b  #$F,(a2)
		or.b    d2,(a2)
		bra.s   loc_1D90

	; End of function sub_1D96


; =============== S U B R O U T I N E =======================================

sub_1D9E:
		andi.b  #$F0,(a2)
		or.b    d1,(a2)
		bra.s   loc_1D90

	; End of function sub_1D9E


; =============== S U B R O U T I N E =======================================

sub_1DA6:
		andi.b  #$F,1(a2)
		or.b    d2,1(a2)
		bra.s   loc_1D90

	; End of function sub_1DA6


; =============== S U B R O U T I N E =======================================

sub_1DB2:
		andi.b  #$F0,1(a2)
		or.b    d1,1(a2)
		bra.s   loc_1D90

	; End of function sub_1DB2


; =============== S U B R O U T I N E =======================================

sub_1DBE:
		andi.b  #$F,2(a2)
		or.b    d2,2(a2)
		bra.s   loc_1D90

	; End of function sub_1DBE


; =============== S U B R O U T I N E =======================================

sub_1DCA:
		andi.b  #$F0,2(a2)
		or.b    d1,2(a2)
		bra.s   loc_1D90

	; End of function sub_1DCA


; =============== S U B R O U T I N E =======================================

sub_1DD6:
		andi.b  #$F,3(a2)
		or.b    d2,3(a2)
		bra.s   loc_1D90

	; End of function sub_1DD6


; =============== S U B R O U T I N E =======================================

sub_1DE2:
		andi.b  #$F0,3(a2)
		or.b    d1,3(a2)
		bra.s   loc_1D90

	; End of function sub_1DE2


; =============== S U B R O U T I N E =======================================

sub_1DEE:
		andi.b  #$F,$20(a2)
		or.b    d2,$20(a2)
		bra.s   loc_1D90

	; End of function sub_1DEE


; =============== S U B R O U T I N E =======================================

sub_1DFA:
		andi.b  #$F0,$20(a2)
		or.b    d1,$20(a2)
		bra.s   loc_1D90

	; End of function sub_1DFA


; =============== S U B R O U T I N E =======================================

sub_1E06:
		andi.b  #$F,$21(a2)
		or.b    d2,$21(a2)
		bra.w   loc_1D90

	; End of function sub_1E06


; =============== S U B R O U T I N E =======================================

sub_1E14:
		andi.b  #$F0,$21(a2)
		or.b    d1,$21(a2)
		bra.w   loc_1D90

	; End of function sub_1E14


; =============== S U B R O U T I N E =======================================

sub_1E22:
		andi.b  #$F,$22(a2)
		or.b    d2,$22(a2)
		bra.w   loc_1D90

	; End of function sub_1E22


; =============== S U B R O U T I N E =======================================

sub_1E30:
		andi.b  #$F0,$22(a2)
		or.b    d1,$22(a2)
		bra.w   loc_1D90

	; End of function sub_1E30


; =============== S U B R O U T I N E =======================================

sub_1E3E:
		andi.b  #$F,$23(a2)
		or.b    d2,$23(a2)
		bra.w   loc_1D90

	; End of function sub_1E3E


; =============== S U B R O U T I N E =======================================

sub_1E4C:
		andi.b  #$F0,$23(a2)
		or.b    d1,$23(a2)
		bra.w   loc_1D90

	; End of function sub_1E4C


; =============== S U B R O U T I N E =======================================

sub_1E5A:
		andi.b  #$F,$40(a2)
		or.b    d2,$40(a2)
		bra.w   loc_1D90

	; End of function sub_1E5A


; =============== S U B R O U T I N E =======================================

sub_1E68:
		andi.b  #$F0,$40(a2)
		or.b    d1,$40(a2)
		bra.w   loc_1D90

	; End of function sub_1E68


; =============== S U B R O U T I N E =======================================

sub_1E76:
		andi.b  #$F,$41(a2)
		or.b    d2,$41(a2)
		bra.w   loc_1D90
		lea     unk_1E9E(pc), a0
		move.w  #1,d7
loc_1E8C:
		move.b  (a0,d7.w),d2
		beq.s   loc_1E9A
		cmp.b   d0,d2
		beq.s   locret_1E9C
		addq.w  #1,d7
		bra.s   loc_1E8C
loc_1E9A:
		clr.w   d7
locret_1E9C:
		rts

	; End of function sub_1E76

unk_1E9E:       dc.b   0
		dc.b $30 
		dc.b $31 
		dc.b $32 
		dc.b $33 
		dc.b $34 
		dc.b $35 
		dc.b $36 
		dc.b $37 
		dc.b $38 
		dc.b $39 
		dc.b $71 
		dc.b $72 
		dc.b $73 
		dc.b $74 
		dc.b $75 
		dc.b $76 
		dc.b $77 
		dc.b $78 
		dc.b $79 
		dc.b $7A 
		dc.b $7B 
		dc.b $7C 
		dc.b $7D 
		dc.b $7E 
		dc.b $7F 
		dc.b $80 
		dc.b $81 
		dc.b $82 
		dc.b $83 
		dc.b $84 
		dc.b $85 
		dc.b $86 
		dc.b $87 
		dc.b $88 
		dc.b $89 
		dc.b $8A 
		dc.b $8B 
		dc.b $8C 
		dc.b $8D 
		dc.b $8E 
		dc.b $8F 
		dc.b $90 
		dc.b $91 
		dc.b $92 
		dc.b $93 
		dc.b $94 
		dc.b $95 
		dc.b $96 
		dc.b $97 
		dc.b $98 
		dc.b $99 
		dc.b $9A 
		dc.b $9B 
		dc.b $9C 
		dc.b $66 
		dc.b $9D 
		dc.b $67 
		dc.b $68 
		dc.b $69 
		dc.b $6A 
		dc.b $6B 
		dc.b $6C 
		dc.b $6D 
		dc.b $6E 
		dc.b $6F 
		dc.b $B1 
		dc.b $B2 
		dc.b $B3 
		dc.b $B4 
		dc.b $B5 
		dc.b $B6 
		dc.b $B7 
		dc.b $B8 
		dc.b $B9 
		dc.b $BA 
		dc.b $BB 
		dc.b $BC 
		dc.b $BD 
		dc.b $BE 
		dc.b $BF 
		dc.b $C0 
		dc.b $C1 
		dc.b $C2 
		dc.b $C3 
		dc.b $C4 
		dc.b $C5 
		dc.b $C6 
		dc.b $C7 
		dc.b $C8 
		dc.b $C9 
		dc.b $CA 
		dc.b $CB 
		dc.b $CC 
		dc.b $CD 
		dc.b $CE 
		dc.b $CF 
		dc.b $D0 
		dc.b $D1 
		dc.b $D2 
		dc.b $D3 
		dc.b $D4 
		dc.b $D5 
		dc.b $D6 
		dc.b $D7 
		dc.b $D8 
		dc.b $D9 
		dc.b $DA 
		dc.b $DB 
		dc.b $DC 
		dc.b $A6 
		dc.b $DD 
		dc.b $A7 
		dc.b $A8 
		dc.b $A9 
		dc.b $AA 
		dc.b $AB 
		dc.b $AC 
		dc.b $AD 
		dc.b $AE 
		dc.b $AF 
		dc.b $A4 
		dc.b $A1 
		dc.b $9E 
		dc.b $9F 
		dc.b $2D 
		dc.b $21 
		dc.b $3F 
		dc.b $2E 
		dc.b $A2 
		dc.b $A3 
		dc.b $A4 
		dc.b $A5 
		dc.b $A6 
		dc.b   0
		dc.b $FF
unk_1F26:       dc.b   0
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b  $E
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $EC 
		dc.b $CB 
		dc.b $BB 
		dc.b $BB 
		dc.b $EC 
		dc.b $BE 
		dc.b $CB 
		dc.b $11
		dc.b $EC 
		dc.b $BC 
		dc.b $B1 
		dc.b $CC 
		dc.b $EC 
		dc.b $BB 
		dc.b $1C
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
unk_2000:       dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 

; =============== S U B R O U T I N E =======================================

; d0 : string index

LoadText:
		nop
		nop
		move.b  #1,(CURRENTLY_TYPEWRITING).l
		movem.l d0-a6,-(sp)
		bsr.w   sub_20DA
		cmpi.b  #1,(COMPRESSED_STRING_LENGTH).l
		beq.w   loc_21C2
		jsr     j_InitDecoder   ; initialize decoder
		move.l  a0,(COMPRESSED_STRING_POINTER).l
						; keep string pointer
		bsr.s   sub_20E0

	; End of function LoadText


; START OF FUNCTION CHUNK FOR sub_20E0

loc_2074:
		bsr.w   GetNextTextSymbol
loc_2078:
		cmpi.w  #$FFF0,d0
		beq.s   loc_2086
		cmpi.w  #$FFF6,d0
		beq.s   loc_2086
		bsr.s   sub_208C
loc_2086:
		bsr.w   sub_21C8
		bra.s   loc_2074

; END OF FUNCTION CHUNK FOR sub_20E0


; =============== S U B R O U T I N E =======================================

sub_208C:
		cmpi.b  #$C4,(TEXT_X_POSITION).l
		bls.s   locret_20D8
		move.b  #2,(TEXT_X_POSITION).l
		addi.b  #$10,(TEXT_Y_POSITION).l
		btst    #0,(byte_FF0EE9).l
		bne.s   loc_20BA
		cmpi.b  #$20,(TEXT_Y_POSITION).l 
		bra.s   loc_20C2
loc_20BA:
		cmpi.b  #$30,(TEXT_Y_POSITION).l 
loc_20C2:
		bcs.s   locret_20D8

	; End of function sub_208C


; =============== S U B R O U T I N E =======================================

sub_20C4:
		movem.l d0,-(sp)
		bsr.w   sub_1AF0
		movem.l (sp)+,d0
		subi.b  #$10,(TEXT_Y_POSITION).l
locret_20D8:
		rts

	; End of function sub_20C4


; =============== S U B R O U T I N E =======================================

sub_20DA:
		bsr.s   sub_2124
		bsr.s   sub_2100
		rts

	; End of function sub_20DA


; =============== S U B R O U T I N E =======================================

sub_20E0:
		bsr.w   GetNextTextSymbol
		cmpi.w  #$FFEA,d0
		beq.s   locret_20FE
		movem.l d0,-(sp)
		bsr.w   sub_2458
		movem.l (sp)+,d0
		movem.l (sp)+,d1
		bra.w   loc_2078
locret_20FE:
		rts

	; End of function sub_20E0


; =============== S U B R O U T I N E =======================================

sub_2100:
		clr.l   (ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
		clr.b   (byte_FFF806).l
		clr.w   (word_FFF842).l
		move.b  (a0)+,(COMPRESSED_STRING_LENGTH).l
						; keep length of current string
		move.l  #TEXT_NAME_INDEX,(ADDR_CURRENT_DIALOGUE_NAMEIDX).l
		rts

	; End of function sub_2100


; =============== S U B R O U T I N E =======================================

sub_2124:
		movem.w d0,-(sp)        ; save string #
		lsr.w   #6,d0
		andi.b  #$FC,d0         ; string # -> bank pointer offset
		movea.l (p_pt_TextBanks).l,a0; load script bank pointer
		movea.l (a0,d0.w),a0
		movem.w (sp)+,d0        ; restore string #
GoToNextString:
		
		tst.b   d0
		beq.s   locret_214A
		moveq   #0,d7
		move.b  (a0),d7         ; first string byte : string length
		adda.l  d7,a0
		subq.b  #1,d0
		bra.s   GoToNextString  ; loop until wanted string reached
locret_214A:
		rts

	; End of function sub_2124


; =============== S U B R O U T I N E =======================================

GetNextTextSymbol:
		
		tst.l   (ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
		bne.w   loc_219A
loc_2156:
		movea.l (COMPRESSED_STRING_POINTER).l,a0
		jsr     j_HuffmanDecode
		move.l  a0,(COMPRESSED_STRING_POINTER).l
		cmpi.b  #$C0,d0
		beq.s   loc_218A
		bcs.s   loc_2184
		subi.b  #$C1,d0
		andi.w  #$FF,d0
		add.w   d0,d0
		lea     word_24AA(pc), a1
		move.w  (a1,d0.w),d0
		rts
loc_2184:
		andi.w  #$FF,d0
		rts
loc_218A:
		movem.l (sp)+,d0
		clr.b   (CURRENTLY_TYPEWRITING).l
		movem.l (sp)+,d0-a6
		rts
loc_219A:
		movea.l (ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l,a1
		move.w  (a1)+,d0
		move.l  a1,(ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
		cmpi.w  #$FFFF,d0
		beq.s   loc_21B8
		lea     unk_24D0(pc), a1
		move.b  (a1,d0.w),d0
		rts
loc_21B8:
		clr.l   (ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
		bra.w   loc_2156

	; End of function GetNextTextSymbol


; START OF FUNCTION CHUNK FOR LoadText

loc_21C2:
		movem.l (sp)+,d0-a6
		rts

; END OF FUNCTION CHUNK FOR LoadText


; =============== S U B R O U T I N E =======================================

sub_21C8:
		tst.w   d0
		bpl.s   loc_21D4
		not.w   d0
		lsl.w   #2,d0
		jmp     sub_21DE(pc,d0.w)
loc_21D4:
		bsr.w   sub_1CC6
		bsr.w   loc_19AE
		rts

	; End of function sub_21C8


; =============== S U B R O U T I N E =======================================

sub_21DE:
		bra.w   sub_2246

	; End of function sub_21DE


; =============== S U B R O U T I N E =======================================

sub_21E2:
		bra.w   sub_224C

	; End of function sub_21E2


; =============== S U B R O U T I N E =======================================

sub_21E6:
		bra.w   sub_2280

	; End of function sub_21E6


; =============== S U B R O U T I N E =======================================

sub_21EA:
		bra.w   sub_2296

	; End of function sub_21EA


; =============== S U B R O U T I N E =======================================

j_nullsub_22A2:
		
		bra.w   nullsub_22A2

	; End of function j_nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_21F2:
		bra.w   sub_22C8

	; End of function sub_21F2


; =============== S U B R O U T I N E =======================================

sub_21F6:
		bra.w   sub_230A

	; End of function sub_21F6


; =============== S U B R O U T I N E =======================================

j_nullsub_2318:
		
		bra.w   nullsub_2318

	; End of function j_nullsub_2318


; =============== S U B R O U T I N E =======================================

sub_21FE:
		bra.w   sub_231A

	; End of function sub_21FE


; =============== S U B R O U T I N E =======================================

sub_2202:
		bra.w   sub_2430

	; End of function sub_2202


; =============== S U B R O U T I N E =======================================

sub_2206:
		bra.w   sub_2354

	; End of function sub_2206


; =============== S U B R O U T I N E =======================================

sub_220A:
		bra.w   sub_235A

	; End of function sub_220A


; =============== S U B R O U T I N E =======================================

sub_220E:
		bra.w   sub_237E

	; End of function sub_220E


; =============== S U B R O U T I N E =======================================

sub_2212:
		bra.w   loc_23B4

	; End of function sub_2212


; =============== S U B R O U T I N E =======================================

sub_2216:
		bra.w   sub_2458

	; End of function sub_2216


; =============== S U B R O U T I N E =======================================

sub_221A:
		bra.w   loc_23B8

	; End of function sub_221A


; =============== S U B R O U T I N E =======================================

sub_221E:
		bra.w   sub_2430

	; End of function sub_221E

		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

j_nullsub_6:
		bra.w   nullsub_6

	; End of function j_nullsub_6

		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

sub_223A:
		bra.w   sub_22A4

	; End of function sub_223A


; =============== S U B R O U T I N E =======================================

sub_223E:
		bra.w   sub_22B0

	; End of function sub_223E


; =============== S U B R O U T I N E =======================================

sub_2242:
		bra.w   sub_22BC

	; End of function sub_2242


; =============== S U B R O U T I N E =======================================

sub_2246:
		movem.l (sp)+,d0
		rts

	; End of function sub_2246


; =============== S U B R O U T I N E =======================================

sub_224C:
		move.b  #2,(TEXT_X_POSITION).l
		addi.b  #$10,(TEXT_Y_POSITION).l
		btst    #0,(byte_FF0EE9).l
		bne.s   loc_2270
		cmpi.b  #$20,(TEXT_Y_POSITION).l 
		bra.s   loc_2278
loc_2270:
		cmpi.b  #$30,(TEXT_Y_POSITION).l 
loc_2278:
		bcs.s   locret_227E
		bsr.w   sub_20C4
locret_227E:
		rts

	; End of function sub_224C


; =============== S U B R O U T I N E =======================================

sub_2280:
		bsr.w   sub_2468
		jsr     j_GetSpellName
loc_228A:
		movea.l a0,a2
		move.w  d1,d7
		subi.w  #1,d7
		bra.w   loc_248E

	; End of function sub_2280


; =============== S U B R O U T I N E =======================================

sub_2296:
		bsr.w   sub_2468
		jsr     j_GetItemName
		bra.s   loc_228A

	; End of function sub_2296


; =============== S U B R O U T I N E =======================================

nullsub_22A2:
		rts

	; End of function nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_22A4:
		bsr.w   sub_2468
		jsr     j_GetClassName
		bra.s   loc_228A

	; End of function sub_22A4


; =============== S U B R O U T I N E =======================================

sub_22B0:
		bsr.w   sub_2468
		jsr     j_GetItemName
		bra.s   loc_228A

	; End of function sub_22B0


; =============== S U B R O U T I N E =======================================

sub_22BC:
		bsr.w   sub_2468
		move.b  d1,(byte_FFF804).l
		rts

	; End of function sub_22BC


; =============== S U B R O U T I N E =======================================

sub_22C8:
		bsr.w   sub_2468
		move.w  d1,d0
		jsr     j_LoadClassName
loc_22D4:
		lea     (unk_FFF84C).l,a1
		move.l  a1,(ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
		subq.w  #1,d1
loc_22E2:
		clr.w   d0
		move.b  (a0)+,d0
		move.w  d0,(a1)+
loc_22E8:
		dbf     d1,loc_22E2
loc_22EC:
		tst.w   -(a1)
		bne.s   loc_22F2
		bra.s   loc_22EC
loc_22F2:
		adda.w  #2,a1
		move.w  #$FFFF,(a1)+
		rts

	; End of function sub_22C8

		move.w  -2(a1),d2
		move.w  d3,-2(a1)
		move.w  d2,(a1)+
		bra.s   loc_22E8
		rts

; =============== S U B R O U T I N E =======================================

sub_230A:
		clr.w   d0
		jsr     j_GetForceStatsAddress
		moveq   #$A,d1
		bra.w   loc_22D4

	; End of function sub_230A


; =============== S U B R O U T I N E =======================================

nullsub_2318:
		rts

	; End of function nullsub_2318


; =============== S U B R O U T I N E =======================================

sub_231A:
		move.w  #$15,d0
loc_231E:
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
loc_232E:
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #$70,d1 
		bne.s   loc_2342
		bsr.w   WaitForVInt     
		dbf     d0,loc_232E
loc_2342:
		movem.w (sp)+,d0
		move.b  d0,(CURRENTLY_TYPEWRITING).l
		rts

	; End of function sub_231A

		move.w  #$3B,d0 
		bra.s   loc_231E

; =============== S U B R O U T I N E =======================================

sub_2354:
		move.w  #$77,d0 
		bra.s   loc_231E

	; End of function sub_2354


; =============== S U B R O U T I N E =======================================

sub_235A:
		move.w  #$3B,d0 
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
		bsr.w   Sleep           
		movem.w (sp)+,d0
		move.b  d0,(CURRENTLY_TYPEWRITING).l
		rts

	; End of function sub_235A


; =============== S U B R O U T I N E =======================================

sub_237E:
		move.l  (dword_FFF900).l,d0
		jsr     (j_WriteAsciiNumber).l
		lea     (unk_FFF84C).l,a1
		move.l  a1,(ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
		lea     (byte_FF0E80).l,a0
		moveq   #9,d1
loc_239E:
		clr.w   d0
		move.b  (a0)+,d0
		cmpi.b  #$20,d0 
		beq.s   loc_23AA
		move.w  d0,(a1)+
loc_23AA:
		dbf     d1,loc_239E
		move.w  #$FFFF,(a1)+
		rts

	; End of function sub_237E

loc_23B4:       bsr.w   sub_224C
loc_23B8:       move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
		moveq   #$14,d2
loc_23CA:       bsr.w   WaitForVInt     
		bsr.s   sub_23DE
		beq.s   loc_23CA
		trap    #SOUND_COMMAND
		dc.w SFX_VALIDATION
		clr.w   d2
		bsr.s   sub_23EC
		bra.w   loc_2342

; =============== S U B R O U T I N E =======================================

sub_23DE:
		bsr.s   sub_23EC
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #$70,d1 
		rts

	; End of function sub_23DE


; =============== S U B R O U T I N E =======================================

sub_23EC:
		lea     (SPRITE_Y).l,a0 
		cmpi.w  #7,d2
		bge.s   loc_2404
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_241E
loc_2404:
		move.w  #$160,6(a0)
		btst    #0,(byte_FF0EE9).l
		beq.s   loc_241A
		move.w  #$148,(a0)
		bra.s   loc_241E
loc_241A:
		move.w  #$130,(a0)
loc_241E:
		clr.b   2(a0)
		move.w  #$C084,4(a0)
		subq.w  #1,d2
		bne.s   locret_242E
		moveq   #$14,d2
locret_242E:
		rts

	; End of function sub_23EC


; =============== S U B R O U T I N E =======================================

sub_2430:
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
loc_2440:
		bsr.w   WaitForVInt     
		bsr.s   sub_244C
		beq.s   loc_2440
		bra.w   loc_2342

	; End of function sub_2430


; =============== S U B R O U T I N E =======================================

sub_244C:
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #$70,d1 
		rts

	; End of function sub_244C


; =============== S U B R O U T I N E =======================================

sub_2458:
		cmpi.b  #2,(TEXT_X_POSITION).l
		bne.w   sub_224C
		rts

	; End of function sub_2458


; =============== S U B R O U T I N E =======================================

nullsub_6:
		rts

	; End of function nullsub_6


; =============== S U B R O U T I N E =======================================

sub_2468:
		movea.l (ADDR_CURRENT_DIALOGUE_NAMEIDX).l,a1
		move.w  (a1)+,d1
		move.l  a1,(ADDR_CURRENT_DIALOGUE_NAMEIDX).l
		rts

	; End of function sub_2468


; =============== S U B R O U T I N E =======================================

sub_2478:
		dbf     d0,loc_247E
		bra.s   loc_2486

	; End of function sub_2478


; START OF FUNCTION CHUNK FOR sub_2478

loc_247E:
		clr.l   d1
		move.b  (a2),d1
		adda.l  d1,a2
		bra.s   sub_2478
loc_2486:
		clr.l   d7
		move.b  (a2)+,d7
		subq.w  #2,d7
		rts

; END OF FUNCTION CHUNK FOR sub_2478


; START OF FUNCTION CHUNK FOR sub_2280

loc_248E:
		lea     (unk_FFF84C).l,a1
		move.l  a1,(ADDR_CURRENT_DIALOGUE_ASCII_BYTE).l
loc_249A:
		clr.w   d0
		move.b  (a2)+,d0
		move.w  d0,(a1)+
		dbf     d7,loc_249A
		move.w  #$FFFF,(a1)
		rts

; END OF FUNCTION CHUNK FOR sub_2280

word_24AA:      dc.w $FFEA
		dc.w $FFF1
		dc.w $FFFE
		dc.w $FFF4
		dc.w $FFF3
		dc.w $FFFA
		dc.w $FFF8
		dc.w $FFF9
		dc.w $FFFB
		dc.w $FFFC
		dc.w $FFFD
		dc.w $FFE7
		dc.w $FFF0
		dc.w $FFF2
		dc.w $FFF7
		dc.w $FFF6
		dc.w $FFF5
		dc.w $FFE8
		dc.w $FFE6
unk_24D0:       dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $43 
		dc.b $46 
		dc.b $4A 
		dc.b   0
		dc.b $4B 
		dc.b $4C 
		dc.b $47 
		dc.b $48 
		dc.b $49 
		dc.b   0
		dc.b $4D 
		dc.b $42 
		dc.b $40 
		dc.b $41 
		dc.b $4E 
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   6
		dc.b   7
		dc.b   8
		dc.b   9
		dc.b  $A
		dc.b $4F 
		dc.b $45 
		dc.b $48 
		dc.b   0
		dc.b $49 
		dc.b $44 
		dc.b   0
		dc.b  $B
		dc.b  $C
		dc.b  $D
		dc.b  $E
		dc.b  $F
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $13
		dc.b $14
		dc.b $15
		dc.b $16
		dc.b $17
		dc.b $18
		dc.b $19
		dc.b $1A
		dc.b $1B
		dc.b $1C
		dc.b $1D
		dc.b $1E
		dc.b $1F
		dc.b $20
		dc.b $21 
		dc.b $22 
		dc.b $23 
		dc.b $24 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3F 
		dc.b   0
		dc.b $25 
		dc.b $26 
		dc.b $27 
		dc.b $28 
		dc.b $29 
		dc.b $2A 
		dc.b $2B 
		dc.b $2C 
		dc.b $2D 
		dc.b $2E 
		dc.b $2F 
		dc.b $30 
		dc.b $31 
		dc.b $32 
		dc.b $33 
		dc.b $34 
		dc.b $35 
		dc.b $36 
		dc.b $37 
		dc.b $38 
		dc.b $39 
		dc.b $3A 
		dc.b $3B 
		dc.b $3C 
		dc.b $3D 
		dc.b $3E 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

DecompressGraphics:
		
		movem.l a4-a6,-(sp)
		clr.w   d2
		move.b  (a0)+,d2
		move.b  d2,(byte_FF0FFC).l
		lsl.w   #3,d2
		clr.w   d1
		move.b  (a0)+,d1
		move.b  d1,(byte_FF0FFD).l
		lsl.w   #3,d1
		mulu.w  d2,d1
		move.w  d1,d7
		lsr.w   #5,d7
		lea     (byte_FF0FFD).l,a2
		lea     1(a2,d1.w),a3
		moveq   #0,d3
		move.l  d3,d4
		move.l  d3,d5
		move.l  d3,d6
		move.l  d3,d0
		movea.l d3,a4
		movea.l d3,a5
		movea.l d3,a6
		movea.l a3,a1
		lsr.w   #1,d7
		bcc.s   loc_2616
		movem.l d0/d3-d6/a4-a6,-(a1)
loc_2616:
		dbf     d7,loc_261C
		bra.s   loc_2628
loc_261C:
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		dbf     d7,loc_261C
loc_2628:
		moveq   #$FFFFFF80,d6
		moveq   #$F,d7
		clr.w   d3
loc_262E:
		moveq   #$FFFFFFFF,d4
		moveq   #2,d5
loc_2632:
		dbf     d3,loc_263A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_263A:
		add.w   d0,d0
		dbcs    d4,loc_2632
		negx.w  d4
		lsl.w   d4,d5
		lea     -2(a2,d5.w),a2
		clr.w   d5
loc_264A:
		dbf     d3,loc_2652
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2652:
		add.w   d0,d0
		addx.w  d5,d5
		dbf     d4,loc_264A
		adda.w  d5,a2
		cmpa.l  a3,a2
		bcc.w   loc_28C6
		subq.w  #4,d3
		bcc.s   loc_2682
		addq.w  #4,d3
		rol.l   d3,d0
		move.w  (a0)+,d0
		subq.w  #4,d3
		neg.w   d3
		rol.l   d3,d0
		neg.w   d3
		addi.w  #$10,d3
		move.l  d0,d1
		swap    d1
		and.b   d7,d1
		or.b    d6,d1
		bra.s   loc_268A
loc_2682:
		rol.w   #4,d0
		move.b  d0,d1
		and.b   d7,d1
		or.b    d6,d1
loc_268A:
		move.b  d1,(a2)
		dbf     d3,loc_2694
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2694:
		add.w   d0,d0
		bcc.s   loc_262E
		movea.l a2,a1
		subq.w  #3,d3
		bcs.s   loc_26B0
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.s   loc_262E
		bra.s   loc_26DC
loc_26B0:
		addq.w  #3,d3
		dbf     d3,loc_26BA
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26BA:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_26C8
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26C8:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_26D6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26D6:
		add.w   d0,d0
		bcc.w   loc_262E
loc_26DC:
		dbf     d3,loc_26E4
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26E4:
		add.w   d0,d0
		bcs.w   loc_27CE
		lea     -2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2706
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.s   loc_26DC
loc_2706:
		addq.w  #3,d3
		dbf     d3,loc_2710
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2710:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_271E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_271E:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_272C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_272C:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2736:
		move.l  a1,d5
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #2,d3
		bcs.s   loc_2754
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.s   loc_26DC
loc_2754:
		addq.w  #3,d3
		dbf     d3,loc_275E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_275E:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_276C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_276C:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_277A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_277A:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2784:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #2,d3
		bcs.s   loc_279E
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_279E:
		addq.w  #3,d3
		dbf     d3,loc_27A8
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27A8:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_27B6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27B6:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_27C4
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27C4:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_27CE:
		lea     2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_27EC
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_27EC:
		addq.w  #3,d3
		dbf     d3,loc_27F6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27F6:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_2804
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2804:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_2812
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2812:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_281C:
		move.l  a1,d5
		dbf     d3,loc_2826
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2826:
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2848
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2848:
		addq.w  #3,d3
		dbf     d3,loc_2852
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2852:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_2860
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2860:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_286E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_286E:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2878:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #3,d3
		bcs.s   loc_2896
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2896:
		addq.w  #3,d3
		dbf     d3,loc_28A0
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28A0:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_28AE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28AE:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_28BC
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28BC:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_28C6:
		lea     (FF0FFE_LOADING_SPACE).l,a0
		movea.l a0,a1
		move.w  #$8080,(a3)
		moveq   #$FFFFFFF0,d6
		move.w  (a1)+,d1
loc_28D6:
		bpl.s   loc_292A
		tst.b   d1
		bpl.s   loc_2906
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		beq.s   loc_2950
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
loc_28EC:
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_2906:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_292A:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_2950:
		lea     (FF0FFE_LOADING_SPACE).l,a3
		lea     (FF3000_LOADING_SPACE).l,a1
		lsr.w   #1,d2
		move.w  d2,d7
		lsl.w   #5,d7
		clr.w   d4
		move.b  (byte_FF0FFD).l,d4
		lsr.w   #2,d4
		subq.w  #1,d4
		clr.w   d5
		move.b  (byte_FF0FFC).l,d5
		lsr.w   #2,d5
		subq.w  #1,d5
loc_297A:
		movea.l a3,a0
		move.w  d4,d6
loc_297E:
		lea     (a0),a2
		moveq   #7,d3
loc_2982:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_2982
		lea     4(a0),a2
		moveq   #7,d3
loc_299C:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_299C
		lea     8(a0),a2
		moveq   #7,d3
loc_29B6:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_29B6
		lea     $C(a0),a2
		moveq   #7,d3
loc_29D0:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_29D0
		adda.w  d7,a0
		dbf     d6,loc_297E
		lea     $10(a3),a3
		dbf     d5,loc_297A
		movem.l (sp)+,a4-a6
		rts

	; End of function DecompressGraphics


; =============== S U B R O U T I N E =======================================

sub_29F8:
		movem.l a4-a6,-(sp)
		move.b  #6,(byte_FF0FFC).l
		moveq   #$30,d2 
		move.b  #3,(byte_FF0FFD).l
		moveq   #$18,d1
		lea     (byte_FF0FFD).l,a2
		lea     $481(a2),a3
		moveq   #0,d3
		move.l  d3,d4
		move.l  d3,d5
		move.l  d3,d6
		move.l  d3,d0
		movea.l d3,a4
		movea.l d3,a5
		movea.l d3,a6
		movea.l a3,a1
		moveq   #8,d7
loc_2A2E:
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		dbf     d7,loc_2A2E
		moveq   #$FFFFFF80,d6
		moveq   #$F,d7
		clr.w   d3
loc_2A48:
		moveq   #$FFFFFFFF,d4
		moveq   #2,d5
loc_2A4C:
		dbf     d3,loc_2A54
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2A54:
		add.w   d0,d0
		dbcs    d4,loc_2A4C
		negx.w  d4
		lsl.w   d4,d5
		lea     -2(a2,d5.w),a2
		clr.w   d5
loc_2A64:
		dbf     d3,loc_2A6C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2A6C:
		add.w   d0,d0
		addx.w  d5,d5
		dbf     d4,loc_2A64
		adda.w  d5,a2
		cmpa.l  a3,a2
		bcc.w   loc_2CE0
		subq.w  #4,d3
		bcc.s   loc_2A9C
		addq.w  #4,d3
		rol.l   d3,d0
		move.w  (a0)+,d0
		subq.w  #4,d3
		neg.w   d3
		rol.l   d3,d0
		neg.w   d3
		addi.w  #$10,d3
		move.l  d0,d1
		swap    d1
		and.b   d7,d1
		or.b    d6,d1
		bra.s   loc_2AA4
loc_2A9C:
		rol.w   #4,d0
		move.b  d0,d1
		and.b   d7,d1
		or.b    d6,d1
loc_2AA4:
		move.b  d1,(a2)
		dbf     d3,loc_2AAE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AAE:
		add.w   d0,d0
		bcc.s   loc_2A48
		movea.l a2,a1
		subq.w  #3,d3
		bcs.s   loc_2ACA
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.s   loc_2A48
		bra.s   loc_2AF6
loc_2ACA:
		addq.w  #3,d3
		dbf     d3,loc_2AD4
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AD4:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2AE2
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AE2:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2AF0
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AF0:
		add.w   d0,d0
		bcc.w   loc_2A48
loc_2AF6:
		dbf     d3,loc_2AFE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AFE:
		add.w   d0,d0
		bcs.w   loc_2BE8
		lea     -2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2B20
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.s   loc_2AF6
loc_2B20:
		addq.w  #3,d3
		dbf     d3,loc_2B2A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B2A:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2B38
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B38:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2B46
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B46:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2B50:
		move.l  a1,d5
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #2,d3
		bcs.s   loc_2B6E
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.s   loc_2AF6
loc_2B6E:
		addq.w  #3,d3
		dbf     d3,loc_2B78
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B78:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2B86
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B86:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2B94
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B94:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2B9E:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #2,d3
		bcs.s   loc_2BB8
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2BB8:
		addq.w  #3,d3
		dbf     d3,loc_2BC2
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BC2:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2BD0
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BD0:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2BDE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BDE:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2BE8:
		lea     2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2C06
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C06:
		addq.w  #3,d3
		dbf     d3,loc_2C10
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C10:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2C1E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C1E:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2C2C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C2C:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C36:
		move.l  a1,d5
		dbf     d3,loc_2C40
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C40:
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2C62
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C62:
		addq.w  #3,d3
		dbf     d3,loc_2C6C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C6C:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2C7A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C7A:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2C88
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C88:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C92:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #3,d3
		bcs.s   loc_2CB0
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2CB0:
		addq.w  #3,d3
		dbf     d3,loc_2CBA
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CBA:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2CC8
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CC8:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2CD6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CD6:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2CE0:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		move.w  #$8080,(a3)
		moveq   #$FFFFFFF0,d6
		moveq   #5,d5
		move.w  (a1)+,d1
loc_2CF6:
		bpl.w   loc_2D7E
		tst.b   d1
		bpl.s   loc_2D42
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		beq.w   loc_2F6C
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
loc_2D10:
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2D36
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2D36:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2D42:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2D72
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2D72:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2D7E:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2DB0
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2DB0:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2DBC:
		bpl.s   loc_2E2E
		tst.b   d1
		bpl.s   loc_2DFA
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2DEE
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2DEE:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2DFA:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E22
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E22:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E2E:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E58
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E58:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E64:
		bpl.s   loc_2EC6
		tst.b   d1
		bpl.s   loc_2E9A
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E8E
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E8E:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E9A:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2EBA
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2EBA:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2EC6:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2EE8
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2EE8:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2EF4:
		bpl.s   loc_2F46
		tst.b   d1
		bpl.s   loc_2F22
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		lea     $5C(a0),a0
		dbf     d5,loc_2F16
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F16:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F22:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2F3A
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F3A:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F46:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		lea     $5C(a0),a0
		dbf     d5,loc_2F60
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F60:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F6C:
		movem.l (sp)+,a4-a6
		rts

	; End of function sub_29F8


; =============== S U B R O U T I N E =======================================

Trap1_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_2FFA
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap1_


; =============== S U B R O U T I N E =======================================

Trap2_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_300A
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap2_


; =============== S U B R O U T I N E =======================================

Trap3_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_3018
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap3_


; =============== S U B R O U T I N E =======================================

Trap4_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_3028
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap4_


; =============== S U B R O U T I N E =======================================

sub_2FFA:
		movem.l d0/a0,-(sp)
		bsr.s   sub_3046
		move.b  (a0),d2
		and.b   d1,d2
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_2FFA


; =============== S U B R O U T I N E =======================================

sub_300A:
		movem.l d0/a0,-(sp)
		bsr.s   sub_3046
		or.b    d1,(a0)
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_300A


; =============== S U B R O U T I N E =======================================

sub_3018:
		movem.l d0/a0,-(sp)
		bsr.s   sub_3046
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_3018


; =============== S U B R O U T I N E =======================================

sub_3028:
		movem.l d0/d2/a0,-(sp)
		bsr.s   sub_3046
		move.b  (a0),d2
		and.b   d1,d2
		beq.s   loc_3040
		cmp.b   d1,d2
		bne.s   loc_3040
		andi    #$FB,ccr 
		ori     #1,ccr
loc_3040:
		movem.l (sp)+,d0/d2/a0
		rts

	; End of function sub_3028


; =============== S U B R O U T I N E =======================================

sub_3046:
		lea     (EVENT_FLAGS).l,a0
		andi.w  #$FF,d0
		adda.w  d0,a0
		rts

	; End of function sub_3046


; =============== S U B R O U T I N E =======================================

SetEventFlag:
		movem.l d0-d1/a0,-(sp)
		bsr.s   GetEventFlag    
		or.b    d1,(a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function SetEventFlag


; =============== S U B R O U T I N E =======================================

ClearEventFlag:
		
		movem.l d0-d1/a0,-(sp)
		bsr.s   GetEventFlag    
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function ClearEventFlag


; =============== S U B R O U T I N E =======================================

CheckEventFlag:
		
		movem.l d0-d1/a0,-(sp)
		bsr.s   GetEventFlag    
		move.b  (a0),d0
		and.b   d1,d0
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function CheckEventFlag


; =============== S U B R O U T I N E =======================================

; Get event flag D0

GetEventFlag:
		lea     (EVENT_FLAGS).l,a0
		move.w  d0,d1
		lsr.w   #3,d0
		adda.w  d0,a0
		move.w  d1,d0
		andi.b  #7,d0
		moveq   #1,d1
		lsl.b   d0,d1
		rts

	; End of function GetEventFlag


; START OF FUNCTION CHUNK FOR InitSystem

loc_309A:
		jsr     sub_CC004
		bsr.w   EnableInterrupts
		bsr.w   WaitForVInt     
		bsr.w   DisableInterrupts
		cmpi.b  #$F0,(byte_FF0E98).l
		bne.s   loc_30BC
		move.b  #1,((unk_FFC1CB-$1000000)).w
loc_30BC:
		jsr     j_DisplaySegaLogo
		jsr     loc_130004
		bsr.w   sub_3380
		jsr     sub_BC000
		tst.b   ((unk_FFC1CA-$1000000)).w
		beq.s   loc_30FC
		btst    #6,(P1_INPUT).l 
		bne.w   loc_4F00
		btst    #4,(P1_INPUT).l 
		bne.w   loc_4D9A
		btst    #5,(P1_INPUT).l 
		bne.w   sub_327E
loc_30FC:
		move.b  #$FF,((unk_FFC140-$1000000)).w
		moveq   #$26,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_3110
		jsr     (sub_3A44).l
loc_3110:
		bsr.w   sub_312A
		moveq   #$25,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_3124
		jsr     (sub_3D80).l
		bra.s   loc_30FC
loc_3124:
		bsr.w   sub_3F0E
		bra.s   loc_30FC

; END OF FUNCTION CHUNK FOR InitSystem


; =============== S U B R O U T I N E =======================================

sub_312A:
		clr.l   (dword_FF0EF6).l
		moveq   #$24,d0 
		bsr.w   CheckEventFlag
		bne.w   loc_31C2
loc_313A:
		moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_314E
		bsr.w   ClearEventFlag
		jsr     sub_8004
		bra.s   loc_3154
loc_314E:
		jsr     sub_8000
loc_3154:
		bpl.s   locret_31C0
		cmpi.b  #$FF,d0
		bne.s   loc_3174
		jsr     j_GetGold
		lsr.l   #1,d1
		jsr     j_SetGold
		clr.w   d0
		clr.w   d1
		jsr     j_SetForceMemberStatus
loc_3174:
		jsr     j_RefillHP
		jsr     j_RefillMP
		jsr     j_ResetForceMemberStats
		jsr     sub_20014
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		move.b  ((unk_FF9C4C-$1000000)).w,((CURRENT_REGION-$1000000)).w
		move.b  #2,((CURRENT_MAP-$1000000)).w
		bsr.w   sub_4C0E
		move.b  #2,((CURRENT_MAP-$1000000)).w
		move.w  d0,-(sp)
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		move.w  (sp)+,d0
		bra.s   loc_31F6
locret_31C0:
		rts
loc_31C2:
		move.b  ((CURRENT_REGION-$1000000)).w,((unk_FF9C4C-$1000000)).w
		jsr     j_ResetForceMemberStats
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		bsr.w   sub_4C0E
		move.w  d0,-(sp)
		moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_31F4
		move.b  #2,((CURRENT_MAP-$1000000)).w
loc_31F4:
		move.w  (sp)+,d0
loc_31F6:
		move.w  d0,-(sp)
		jsr     sub_20014
		move.w  (sp)+,d0
		move.b  #1,(byte_FF0F03).l
		move.w  d0,-(sp)
		clr.l   (dword_FF0100).l
		bsr.w   sub_27C
		bsr.w   j_SetVIntParam3
		move.w  (sp)+,d0
		jsr     sub_10000
		bsr.w   j_FadeOutToBlack
		clr.l   (dword_FF0EF6).l
		bsr.w   j_WaitForVInt
		moveq   #$25,d0 
		bsr.w   CheckEventFlag
		bne.w   locret_327C
		cmpi.b  #1,((CURRENT_MAP-$1000000)).w
		bne.s   locret_327C
		move.b  ((byte_FFF807-$1000000)).w,d0
		move.b  ((CURRENT_REGION-$1000000)).w,d1
		move.b  ((CURRENT_MAP_VERSION-$1000000)).w,d2
		clr.b   ((CURRENT_MAP-$1000000)).w
		movem.w d0-d2,-(sp)
		clr.l   (dword_FF0EF6).l
		jsr     (sub_340).l
		clr.l   (dword_FF0EF6).l
		movem.w (sp)+,d0-d2
		move.b  d1,((CURRENT_REGION-$1000000)).w
		move.b  d2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.w   loc_31F6
locret_327C:
		rts

	; End of function sub_312A


; =============== S U B R O U T I N E =======================================

sub_327E:
		jmp     sub_10038

	; End of function sub_327E


; =============== S U B R O U T I N E =======================================

sub_3284:
		clr.l   (dword_FF0EF6).l
		moveq   #$78,d0 
		bsr.w   j_Sleep
		trap    #SOUND_COMMAND
		dc.w $4884
		moveq   #$3C,d0 
		bsr.w   j_Sleep
		bsr.w   sub_3852
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     loc_164014
		jsr     (sub_304).l
		move.w  #$45,((word_FFC0BE-$1000000)).w 
		move.w  #$3B,d0 
		trap    #8
		move.w  #$3C,d0 
		trap    #8
		trap    #6
		jsr     loc_164018
		bsr.w   sub_38E4
		move.w  #$E10,d0
		bsr.w   j_Sleep
		bsr.w   j_FadeOutToBlack
		bsr.w   j_DisableDisplayAndInterrupts
		movea.w #$2700,sp
		movea.l (InitStack).w,sp
		movea.l (p_Start).w,a0  
		jmp     (a0)

	; End of function sub_3284


; =============== S U B R O U T I N E =======================================

sub_32EC:
		clr.l   (dword_FF0EF6).l
		moveq   #$78,d0 
		bsr.w   j_Sleep
		trap    #SOUND_COMMAND
		dc.w $4884
		moveq   #$3C,d0 
		bsr.w   j_Sleep
		bsr.w   sub_3852
		move.b  #1,((unk_FF9C05-$1000000)).w
		jsr     (sub_304).l
		move.w  #$45,((word_FFC0BE-$1000000)).w 
		move.w  #$3E,d0 
		trap    #8
		trap    #7
		move.w  #$3F,d0 
		trap    #8
		trap    #7
		move.w  #$40,d0 
		trap    #8
		trap    #7
		move.w  #$41,d0 
		trap    #8
		jsr     loc_164014
		trap    #7
		move.w  #$42,d0 
		trap    #8
		trap    #7
		move.w  #$43,d0 
		trap    #8
		trap    #7
		move.w  #$44,d0 
		trap    #8
		trap    #7
		move.w  #$45,d0 
		trap    #8
		trap    #6
		moveq   #$3C,d0 
		bsr.w   j_Sleep
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		move.w  #$12C,d0
		bsr.w   j_Sleep
		trap    #SOUND_COMMAND
		dc.w MUSIC_CREDITS
		bsr.w   j_FadeOutToBlack
		clr.l   (dword_FF0EF6).l
		rts

	; End of function sub_32EC


; =============== S U B R O U T I N E =======================================

sub_3380:
		bsr.w   sub_3852
		tst.b   ((unk_FFC1CB-$1000000)).w
		beq.s   loc_339E
		cmpi.b  #1,(byte_FF0E98).l
		bne.s   loc_339E
		move.b  #1,((unk_FFC1CA-$1000000)).w
		trap    #SOUND_COMMAND
		dc.w SFX_VALIDATION
loc_339E:
		move.w  #$45,((word_FFC0BE-$1000000)).w 
		bsr.w   CheckSRAM
		trap    #SOUND_COMMAND
		dc.w MUSIC_SIMONE
		tst.b   ((unk_FFC1CA-$1000000)).w
		beq.s   loc_33CA
		btst    #7,(P1_INPUT).l 
		beq.s   loc_33CA
		addq.b  #1,((unk_FFB53D-$1000000)).w
		jsr     j_InitGameSettings
		bra.w   loc_34B8
loc_33CA:
		jsr     (sub_304).l
		clr.b   ((unk_FF9C05-$1000000)).w
		tst.b   (P1_INPUT).l    
		bne.s   loc_33EE
		move.w  #$27,d0 
		trap    #8
		move.b  #2,((unk_FF9C05-$1000000)).w
		move.w  #$28,d0 
		trap    #8
loc_33EE:
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     loc_164014
		tst.b   (P1_INPUT).l    
		bne.s   loc_340E
		move.w  #$29,d0 
		trap    #8
		move.w  #$2A,d0 
		trap    #8
loc_340E:
		move.w  #$2B,d0 
		trap    #8
		bra.s   loc_3422
loc_3416:
		jsr     loc_164014
		move.w  #$39,d0 
		trap    #8
loc_3422:
		clr.w   d0
		jsr     sub_164008
		move.w  d0,-(sp)
		move.w  (sp)+,d0
		bmi.s   loc_3416
		add.w   d0,d0
		move.w  off_343A(pc,d0.w),d0
		jmp     off_343A(pc,d0.w)

	; End of function sub_3380

off_343A:       dc.w sub_3442-off_343A
		dc.w sub_34EC-off_343A
		dc.w sub_3542-off_343A
		dc.w loc_35AA-off_343A

; =============== S U B R O U T I N E =======================================

sub_3442:
		jsr     (sub_328).l
		move.w  #$3D,d0 
		trap    #8
		moveq   #1,d0
		jsr     sub_164008
		bmi.w   loc_3628
		move.b  #2,((unk_FF9C05-$1000000)).w
		move.w  d0,((unk_FFC0B8-$1000000)).w
		jsr     (sub_328).l
		move.w  #$2C,d0 
		trap    #8
		jsr     (sub_30C).l
		jsr     j_InitGameSettings
		clr.w   d0
		jsr     sub_164004
		cmpi.b  #$F0,(byte_FF0E98).l
		bne.s   loc_34A6
		moveq   #1,d0
		moveq   #$1B,d7
loc_3492:
		movem.w d0/d7,-(sp)
		jsr     sub_164004
		movem.w (sp)+,d0/d7
		addq.w  #1,d0
		dbf     d7,loc_3492
loc_34A6:
		jsr     (sub_304).l
		move.w  #$2D,d0 
		trap    #8
		move.w  #$2E,d0 
		trap    #8
loc_34B8:
		move.b  #1,((CURRENT_CHAPTER-$1000000)).w
		jsr     sub_37EE(pc)
		nop
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(SAVE_FLAGS).l
		bset    d0,(byte_20022F).l
		clr.l   (dword_FF0EF6).l
		clr.b   ((byte_FFB5AC-$1000000)).w
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		bsr.w   j_FadeOutToBlack
		clr.w   d0
		rts

	; End of function sub_3442


; =============== S U B R O U T I N E =======================================

sub_34EC:
		jsr     (sub_328).l
		move.w  #$2F,d0 
		trap    #8
		jsr     (sub_328).l
		move.w  #$30,d0 
		trap    #8
		moveq   #2,d0
		jsr     sub_164008
		bmi.w   loc_3628
		move.w  d0,((unk_FFC0B8-$1000000)).w
		jsr     sub_3826(pc)
		nop
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$31,d0 
		trap    #8
		clr.l   (dword_FF0EF6).l
		clr.b   ((byte_FFB5AC-$1000000)).w
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		bsr.w   j_FadeOutToBlack
		moveq   #$FFFFFFFF,d0
		rts

	; End of function sub_34EC


; =============== S U B R O U T I N E =======================================

sub_3542:
		jsr     (sub_328).l
		move.w  #$32,d0 
		trap    #8
		moveq   #2,d0
		jsr     sub_164008
		bmi.w   loc_3416
		movem.w d0,-(sp)
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$33,d0 
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		tst.w   d0
		movem.w (sp)+,d0
		bmi.w   loc_3628
		move.w  d0,((unk_FFC0B8-$1000000)).w
		jsr     (sub_328).l
		bsr.w   sub_3652
		move.w  #$34,d0 
		trap    #8
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		addq.w  #1,d0
		bclr    d0,(SAVE_FLAGS).l
		bclr    d0,(byte_20022F).l
		bra.w   loc_3416
loc_35AA:
		jsr     (sub_328).l
		move.w  #$35,d0 
		trap    #8
		moveq   #2,d0
		jsr     sub_164008
		bmi.w   loc_3628
		movem.w d0,-(sp)
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$36,d0 
		trap    #8
		moveq   #1,d0
		jsr     sub_164008
		movem.w (sp)+,d1
		bmi.w   loc_3628
		move.w  d0,-(sp)
		move.w  d1,((unk_FFC0B8-$1000000)).w
		bsr.w   sub_3826
		move.w  (sp)+,d0
		move.w  d0,((unk_FFC0B8-$1000000)).w
		bsr.w   loc_37F4
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(SAVE_FLAGS).l
		bset    d0,(byte_20022F).l
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		bsr.w   sub_3652
		move.w  #$37,d0 
		trap    #8
		bra.w   loc_3416
loc_3628:
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$38,d0 
		trap    #8
		bra.w   loc_3416
		jsr     (sub_304).l
		move.w  #$3A,d0 
		trap    #8
		move.w  #$3B,d0 
		trap    #8
		rts

	; End of function sub_3542


; =============== S U B R O U T I N E =======================================

sub_3652:
		jsr     loc_164018
		moveq   #$14,d0
		jsr     (Sleep).l       

	; End of function sub_3652


; =============== S U B R O U T I N E =======================================

CheckSRAM:
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SRAM_STRING).l,a1
		moveq   #$15,d7
		bsr.w   CopyBytesFromSRAM
		bne.w   loc_378A
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     aYasuhirohiroko(pc), a1
		moveq   #$14,d7
loc_3682:
		cmpm.b  (a0)+,(a1)+
		bne.w   loc_378A
		dbf     d7,loc_3682
		move.b  (SAVE_FLAGS).l,d0
		cmp.b   (byte_20022F).l,d0
		bne.w   loc_378A
		btst    #1,(SAVE_FLAGS).l
		beq.s   loc_36DA
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_1_DATA).l,a1
		move.w  #$8B6,d7
		bsr.w   CopyBytesFromSRAM
		beq.s   loc_36DA
		move.l  #1,((dword_FFF900-$1000000)).w
		bsr.w   sub_3758
		bclr    #1,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
loc_36DA:
		btst    #2,(SAVE_FLAGS).l
		beq.s   loc_3718
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_2_DATA).l,a1
		move.w  #$8B6,d7
		bsr.w   CopyBytesFromSRAM
		beq.s   loc_3718
		move.l  #2,((dword_FFF900-$1000000)).w
		bsr.w   sub_3758
		bclr    #2,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
loc_3718:
		btst    #3,(SAVE_FLAGS).l
		beq.s   locret_3756
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_3_DATA).l,a1
		move.w  #$8B6,d7
		bsr.w   CopyBytesFromSRAM
		beq.s   locret_3756
		move.l  #3,((dword_FFF900-$1000000)).w
		bsr.w   sub_3758
		bclr    #3,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
locret_3756:
		rts

	; End of function CheckSRAM


; =============== S U B R O U T I N E =======================================

sub_3758:
		jsr     (sub_304).l
		trap    #SOUND_COMMAND
		dc.w MUSIC_CURSED_ITEM
		move.w  #$3A,d0 
		trap    #8
		bsr.w   j_WaitForInputFor3Seconds
		jsr     (sub_30C).l
		rts

	; End of function sub_3758

aYasuhirohiroko:dc.b 'YASUHIROHIROKOinSERA ',0

; START OF FUNCTION CHUNK FOR CheckSRAM

loc_378A:
		clr.b   (byte_203819).l
		lea     (MAP_SPRITE_POSITION).l,a0
		lea     (SRAM_START).l,a1
		move.w  #$1FFE,d7
		bsr.w   CopyBytesToSRAM
		lea     aYasuhirohiroko(pc), a0
		lea     (SRAM_STRING).l,a1
		moveq   #$15,d7
		bsr.w   CopyBytesToSRAM
		moveq   #1,d7

; END OF FUNCTION CHUNK FOR CheckSRAM


; =============== S U B R O U T I N E =======================================

CopyBytesToSRAM:
		
		tst.b   ((unk_FFB53D-$1000000)).w
		bne.w   locret_37D4
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
loc_37C4:
		move.b  (a0)+,d1
		add.w   d1,d0
		move.b  d1,(a1)
		addq.l  #2,a1
		dbf     d7,loc_37C4
		move.b  d0,(a1)
		addq.l  #2,a1
locret_37D4:
		rts

	; End of function CopyBytesToSRAM


; =============== S U B R O U T I N E =======================================

CopyBytesFromSRAM:
		
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
loc_37DC:
		move.b  (a1),d1
		add.w   d1,d0
		move.b  d1,(a0)+
		addq.l  #2,a1
		dbf     d7,loc_37DC
		cmp.b   (a1),d0
		addq.l  #2,a1
		rts

	; End of function CopyBytesFromSRAM


; =============== S U B R O U T I N E =======================================

sub_37EE:
		jsr     sub_20024
loc_37F4:
		moveq   #$27,d0 
		bsr.w   SetEventFlag
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		bne.s   loc_3808
loc_3800:
		lea     (SAVE_SLOT_1_DATA).l,a1
		bra.s   loc_381C
loc_3808:
		cmpi.w  #1,d0
		bne.s   loc_3816
		lea     (SAVE_SLOT_2_DATA).l,a1
		bra.s   loc_381C
loc_3816:
		lea     (SAVE_SLOT_3_DATA).l,a1
loc_381C:
		move.w  #$8B6,d7
		lea     ((CURRENT_CHAPTER-$1000000)).w,a0
		bra.s   CopyBytesToSRAM

	; End of function sub_37EE


; =============== S U B R O U T I N E =======================================

sub_3826:
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		bne.s   loc_3834
		lea     (SAVE_SLOT_1_DATA).l,a1
		bra.s   loc_3848
loc_3834:
		cmpi.w  #1,d0
		bne.s   loc_3842
		lea     (SAVE_SLOT_2_DATA).l,a1
		bra.s   loc_3848
loc_3842:
		lea     (SAVE_SLOT_3_DATA).l,a1
loc_3848:
		move.w  #$8B6,d7
		lea     ((CURRENT_CHAPTER-$1000000)).w,a0
		bra.s   CopyBytesFromSRAM

	; End of function sub_3826


; =============== S U B R O U T I N E =======================================

sub_3852:
		clr.l   (dword_FF0EF6).l
		bsr.w   j_DisableDisplayAndInterrupts
		bsr.w   j_ClearScrollAndSpriteTables
		move.w  #$8C00,d0
		bsr.w   j_SetVDPRegStatus
		move.w  #$9001,d0
		bsr.w   j_SetVDPRegStatus
		move.w  #$8230,d0
		bsr.w   j_SetVDPRegStatus
		move.w  #$8407,d0
		bsr.w   j_SetVDPRegStatus
		move.w  #$8B00,d0
		bsr.w   j_SetVDPRegStatus
		jsr     sub_16400C
		bsr.w   j_EnableDisplayAndInterrupts
		movem.l d7-a1,-(sp)
		lea     plt_BasePalettes(pc), a0
		lea     (PALETTE_1_BIS).l,a1
		move.w  #$80,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		clr.l   (dword_FF0100).l
		clr.l   (dword_FF0500).l
		bsr.w   sub_27C
		bsr.w   sub_288
		bsr.w   j_FadeInFromBlack
		move.w  #$14,((unk_FFB56A-$1000000)).w
		move.w  #$14,((unk_FFB58A-$1000000)).w
		move.b  #1,((byte_FFB5AC-$1000000)).w
		move.l  #loc_164010,(dword_FF0EF6).l
		rts

	; End of function sub_3852


; =============== S U B R O U T I N E =======================================

sub_38E4:
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		movea.l (off_BC004).l,a0
		lea     (loc_A000).l,a1
		move.w  #$1000,d0
		moveq   #2,d1
		bsr.w   sub_298
		bsr.w   j_SetVIntParam3
		move.b  #2,(FADING_PALETTE_FLAGS).l
		move.b  #1,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #3,d0
		bsr.w   j_Sleep
		lea     unk_39CC(pc), a0
		move.w  #$C05,d0
		move.w  #$1215,d1
		jsr     sub_801C
		jsr     sub_8054
		moveq   #$3C,d0 
		bra.w   j_Sleep

	; End of function sub_38E4

plt_BasePalettes:
		incbin "data/graphics/tech/plt-basepalettes.bin"
unk_39CC:       dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   1
		dc.b $A5 
		dc.b   2
		dc.b $A5 
		dc.b   3
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   4
		dc.b $A5 
		dc.b   5
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   6
		dc.b $A5 
		dc.b   7
		dc.b $A5 
		dc.b   8
		dc.b $A5 
		dc.b   9
		dc.b $A5 
		dc.b  $A
		dc.b $A5 
		dc.b  $B
		dc.b $A5 
		dc.b  $C
		dc.b $A5 
		dc.b  $D
		dc.b $A5 
		dc.b  $E
		dc.b $A5 
		dc.b  $F
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b $10
		dc.b $A5 
		dc.b $11
		dc.b $A5 
		dc.b $12
		dc.b $A5 
		dc.b $13
		dc.b $A5 
		dc.b $14
		dc.b $A5 
		dc.b $15
		dc.b $A5 
		dc.b $16
		dc.b $A5 
		dc.b $17
		dc.b $A5 
		dc.b $18
		dc.b $A5 
		dc.b $19
		dc.b $A5 
		dc.b $1A
		dc.b $A5 
		dc.b $1B
		dc.b $A5 
		dc.b $1C
		dc.b $A5 
		dc.b $1D
		dc.b $A5 
		dc.b $1E
		dc.b $A5 
		dc.b $1F
		dc.b $A5 
		dc.b $20
		dc.b $A5 
		dc.b $21 
		dc.b $A5 
		dc.b $22 
		dc.b $A5 
		dc.b $23 
		dc.b $A5 
		dc.b $24 
		dc.b $A5 
		dc.b $25 
		dc.b $A5 
		dc.b $26 
		dc.b $A5 
		dc.b $27 
		dc.b $A5 
		dc.b $28 
		dc.b $A5 
		dc.b $29 
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b $2A 
		dc.b $A5 
		dc.b $2B 
		dc.b $A5 
		dc.b $2C 

; =============== S U B R O U T I N E =======================================

sub_3A44:
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		lea     (p_Chapter1Graphics).l,a0
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     (unk_2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (sub_294).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movea.l (p_plt_ChapterScreen).l,a0
		lea     (PALETTE_1_BIS).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		lea     word_49EE(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		move.w  #$B4,d0 
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		cmpi.b  #1,((CURRENT_CHAPTER-$1000000)).w
		bne.s   loc_3AE0
		trap    #SOUND_COMMAND
		dc.w MUSIC_TOWN
		bra.s   loc_3AE4
loc_3AE0:
		trap    #SOUND_COMMAND
		dc.w MUSIC_INTRO
loc_3AE4:
		moveq   #$26,d0 
		bsr.w   SetEventFlag
		clr.w   ((word_FFC0BE-$1000000)).w
		move.b  #$FF,((unk_FF9C4D-$1000000)).w
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_3B06(pc,d0.w),d0
		jmp     off_3B06(pc,d0.w)

	; End of function sub_3A44

off_3B06:       dc.w sub_3B16-off_3B06
		dc.w sub_3B8E-off_3B06
		dc.w sub_3BD2-off_3B06
		dc.w sub_3C18-off_3B06
		dc.w sub_3C5E-off_3B06
		dc.w sub_3CAA-off_3B06
		dc.w sub_3CF2-off_3B06
		dc.w sub_3D3A-off_3B06

; =============== S U B R O U T I N E =======================================

sub_3B16:
		trap    #5
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$4A,((word_FFC0BE-$1000000)).w 
		move.w  #$30C,d0
		trap    #8
		trap    #7
		trap    #SOUND_COMMAND
		dc.w SFX_SWORDS_HIT
		moveq   #$14,d0
		jsr     (j_Sleep).l
		trap    #SOUND_COMMAND
		dc.w SFX_SWORDS_HIT
		moveq   #$28,d0 
		jsr     (j_Sleep).l
		trap    #SOUND_COMMAND
		dc.w SFX_CRIT
		moveq   #$1E,d0
		jsr     (j_Sleep).l
		trap    #SOUND_COMMAND
		dc.w SFX_HIT
		move.w  #$30D,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #$80,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3B16


; =============== S U B R O U T I N E =======================================

sub_3B8E:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$15D,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		clr.b   ((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #$C0,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3B8E


; =============== S U B R O U T I N E =======================================

sub_3BD2:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$15E,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #$80,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3BD2


; =============== S U B R O U T I N E =======================================

sub_3C18:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$15F,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		move.b  #6,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3C18


; =============== S U B R O U T I N E =======================================

sub_3C5E:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$160,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #2,((unk_FF9C86-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #0,((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3C5E


; =============== S U B R O U T I N E =======================================

sub_3CAA:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$161,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3CAA


; =============== S U B R O U T I N E =======================================

sub_3CF2:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$162,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #4,((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3CF2


; =============== S U B R O U T I N E =======================================

sub_3D3A:
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$163,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		move.b  #2,((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #$C0,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3D3A


; =============== S U B R O U T I N E =======================================

sub_3D80:
		clr.w   ((word_FFC0BE-$1000000)).w
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #2,d0
		bne.s   loc_3DBC
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		move.w  #$165,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
		bra.w   loc_3DEC
loc_3DBC:
		cmpi.b  #7,d0
		bne.s   loc_3DEC
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (sub_304).l
		jsr     (j_FadeInFromBlack).l
		move.w  #$16A,d0
		trap    #8
		jsr     (j_FadeOutToBlack).l
loc_3DEC:
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		moveq   #$5A,d0 
		bsr.w   j_Sleep
		bsr.w   j_DisableDisplayAndInterrupts
		bsr.w   j_ClearScrollAndSpriteTables
		lea     (p_Chapter1Graphics).l,a0
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     (unk_2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		bsr.w   sub_294
		movea.l (off_124074).l,a0
		lea     ((loc_3FFE+2)).w,a1
		move.w  #$100,d0
		move.w  #2,d1
		bsr.w   sub_294
		trap    #SOUND_COMMAND
		dc.w MUSIC_CHAPTER_END
		jsr     (j_EnableDisplayAndInterrupts).l
		movea.l (p_plt_ChapterScreen).l,a0
		lea     (PALETTE_1_BIS).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		lea     unk_4BEE(pc), a0
		move.w  #$404,d0
		move.w  #$E0F,d1
		jsr     sub_801C
		lea     word_49EE(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		clr.w   d0
		bsr.w   j_PlayMusicAfterCurrentOne
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (sub_304).l
		addq.b  #1,((CURRENT_CHAPTER-$1000000)).w
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #8,d0
		ble.w   loc_3EC8
		rts

	; End of function sub_3D80


; START OF FUNCTION CHUNK FOR sub_3D80

loc_3EC8:
		clr.l   d0
		lea     ((EVENT_FLAGS-$1000000)).w,a0
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.w   (a0)+
		lea     ((unk_FF9C6E-$1000000)).w,a0
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_3D80

		dc.w MUSIC_SIMONE
		jsr     (j_FadeInFromBlack).l
		move.w  #$46,d0 
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		bne.s   loc_3F02
		jsr     (sub_32C).l
loc_3F02:       trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		rts

; =============== S U B R O U T I N E =======================================

sub_3F0E:
		move.b  #$FF,((unk_FF9C4D-$1000000)).w
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_3F26(pc,d0.w),d0
		jmp     off_3F26(pc,d0.w)

	; End of function sub_3F0E

off_3F26:       dc.w sub_3F36-off_3F26
		dc.w sub_4066-off_3F26
		dc.w sub_41D6-off_3F26
		dc.w sub_42D4-off_3F26
		dc.w sub_448A-off_3F26
		dc.w sub_45CC-off_3F26
		dc.w sub_46E4-off_3F26
		dc.w sub_4814-off_3F26

; =============== S U B R O U T I N E =======================================

sub_3F36:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_3F4C(pc,d0.w),d0
		jmp     off_3F4C(pc,d0.w)

	; End of function sub_3F36

off_3F4C:       dc.w sub_3F5A-off_3F4C
		dc.w sub_3FB6-off_3F4C
		dc.w sub_4012-off_3F4C
		dc.w sub_401A-off_3F4C
		dc.w loc_4032-off_3F4C
		dc.w loc_403A-off_3F4C
		dc.w sub_3F5A-off_3F4C

; =============== S U B R O U T I N E =======================================

sub_3F5A:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_3F6E(pc,d0.w),d0
		jmp     off_3F6E(pc,d0.w)

	; End of function sub_3F5A

off_3F6E:       dc.w sub_3F76-off_3F6E
		dc.w sub_3F7E-off_3F6E
		dc.w sub_3FA6-off_3F6E
		dc.w sub_3FAE-off_3F6E

; =============== S U B R O U T I N E =======================================

sub_3F76:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_3F76


; =============== S U B R O U T I N E =======================================

sub_3F7E:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_3F9E
		move.b  #3,((unk_FF9C4C-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_3FA4
loc_3F9E:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_3FA4:
		rts

	; End of function sub_3F7E


; =============== S U B R O U T I N E =======================================

sub_3FA6:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_3FA6


; =============== S U B R O U T I N E =======================================

sub_3FAE:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_3FAE


; =============== S U B R O U T I N E =======================================

sub_3FB6:
		move.b  #1,((CURRENT_MAP-$1000000)).w
loc_3FBC:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		beq.s   locret_4010
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_3FF4
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((unk_FF9C4D-$1000000)).w
		move.b  #4,((unk_FF9C4C-$1000000)).w
		bra.s   locret_4010
loc_3FF4:
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		beq.s   locret_4010
		moveq   #$2A,d0 
loc_3FFE:
		bsr.w   CheckEventFlag
		bne.s   locret_4010
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((unk_FF9C4D-$1000000)).w
locret_4010:
		rts

	; End of function sub_3FB6


; =============== S U B R O U T I N E =======================================

sub_4012:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4012


; =============== S U B R O U T I N E =======================================

sub_401A:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$33,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4030
		bsr.w   ClearEventFlag
		move.b  #1,((unk_FF9C86-$1000000)).w
loc_4030:
		bra.s   loc_3FBC
loc_4032:
		move.b  #2,((CURRENT_MAP-$1000000)).w
		bra.s   loc_3FBC
loc_403A:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4052
		move.b  #3,((CURRENT_MAP-$1000000)).w
		bra.w   loc_3FBC
		bra.s   locret_4064
loc_4052:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
locret_4064:
		rts

	; End of function sub_401A


; =============== S U B R O U T I N E =======================================

sub_4066:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_407C(pc,d0.w),d0
		jmp     off_407C(pc,d0.w)

	; End of function sub_4066

off_407C:       dc.w sub_408E-off_407C
		dc.w sub_408E-off_407C
		dc.w sub_408E-off_407C
		dc.w sub_40C0-off_407C
		dc.w sub_40CE-off_407C
		dc.w sub_40DC-off_407C
		dc.w sub_40EA-off_407C
		dc.w sub_4162-off_407C
		dc.w sub_4198-off_407C

; =============== S U B R O U T I N E =======================================

sub_408E:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_40A2(pc,d0.w),d0
		jmp     off_40A2(pc,d0.w)

	; End of function sub_408E

off_40A2:       dc.w sub_40A8-off_40A2
		dc.w sub_40B0-off_40A2
		dc.w sub_40B8-off_40A2

; =============== S U B R O U T I N E =======================================

sub_40A8:
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_40A8


; =============== S U B R O U T I N E =======================================

sub_40B0:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_40B0


; =============== S U B R O U T I N E =======================================

sub_40B8:
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_40B8


; =============== S U B R O U T I N E =======================================

sub_40C0:
		move.b  #1,((CURRENT_MAP-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_40C0


; =============== S U B R O U T I N E =======================================

sub_40CE:
		move.b  #1,((CURRENT_MAP-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_40CE


; =============== S U B R O U T I N E =======================================

sub_40DC:
		move.b  #3,((CURRENT_MAP-$1000000)).w
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_40DC


; =============== S U B R O U T I N E =======================================

sub_40EA:
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.w   loc_413A
		move.b  #1,((CURRENT_MAP-$1000000)).w
loc_40F8:
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4118
		move.b  #2,((CURRENT_REGION-$1000000)).w
		bra.s   locret_4138
loc_4118:
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		beq.s   locret_4138
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   locret_4138
		move.b  #1,((unk_FF9C4D-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
locret_4138:
		rts

	; End of function sub_40EA


; START OF FUNCTION CHUNK FOR sub_40EA

loc_413A:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_415A
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_4160
loc_415A:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4160:
		rts

; END OF FUNCTION CHUNK FOR sub_40EA


; =============== S U B R O U T I N E =======================================

sub_4162:
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.w   loc_4170
		clr.b   ((CURRENT_MAP-$1000000)).w
		bra.s   loc_40F8
loc_4170:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #4,((CURRENT_REGION-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4190
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_4196
loc_4190:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4196:
		rts

	; End of function sub_4162


; =============== S U B R O U T I N E =======================================

sub_4198:
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_41A8
		move.b  #2,((CURRENT_MAP-$1000000)).w
		bra.w   loc_40F8
loc_41A8:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #5,((CURRENT_REGION-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_41CE
		move.b  #7,((unk_FF9C4C-$1000000)).w
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_41D4
loc_41CE:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_41D4:
		rts

	; End of function sub_4198


; =============== S U B R O U T I N E =======================================

sub_41D6:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_41EC(pc,d0.w),d0
		jmp     off_41EC(pc,d0.w)

	; End of function sub_41D6

off_41EC:       dc.w sub_41F4-off_41EC
		dc.w sub_423E-off_41EC
		dc.w sub_424C-off_41EC
		dc.w sub_427A-off_41EC

; =============== S U B R O U T I N E =======================================

sub_41F4:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_4208(pc,d0.w),d0
		jmp     off_4208(pc,d0.w)

	; End of function sub_41F4

off_4208:       dc.w sub_420C-off_4208
		dc.w sub_421A-off_4208

; =============== S U B R O U T I N E =======================================

sub_420C:
		move.b  #4,((CURRENT_MAP-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_420C


; =============== S U B R O U T I N E =======================================

sub_421A:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4236
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_423C
loc_4236:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_423C:
		rts

	; End of function sub_421A


; =============== S U B R O U T I N E =======================================

sub_423E:
		move.b  #3,((CURRENT_MAP-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_423E


; =============== S U B R O U T I N E =======================================

sub_424C:
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4272
		move.b  #1,((unk_FF9C4D-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_4278
loc_4272:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4278:
		rts

	; End of function sub_424C


; =============== S U B R O U T I N E =======================================

sub_427A:
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.w   loc_42AE
		clr.b   ((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_42A6
		move.b  #1,((unk_FF9C4D-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_42AC
loc_42A6:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_42AC:
		rts

	; End of function sub_427A


; START OF FUNCTION CHUNK FOR sub_427A

loc_42AE:
		move.b  #1,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_42CC
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_42D2
loc_42CC:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_42D2:
		rts

; END OF FUNCTION CHUNK FOR sub_427A


; =============== S U B R O U T I N E =======================================

sub_42D4:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_42EA(pc,d0.w),d0
		jmp     off_42EA(pc,d0.w)

	; End of function sub_42D4

off_42EA:       dc.w sub_42FC-off_42EA
		dc.w sub_42FC-off_42EA
		dc.w sub_4366-off_42EA
		dc.w sub_4366-off_42EA
		dc.w sub_4366-off_42EA
		dc.w sub_43CE-off_42EA
		dc.w sub_43DC-off_42EA
		dc.w sub_43E2-off_42EA
		dc.w sub_43EA-off_42EA

; =============== S U B R O U T I N E =======================================

sub_42FC:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_4310(pc,d0.w),d0
		jmp     off_4310(pc,d0.w)

	; End of function sub_42FC

off_4310:       dc.w sub_4316-off_4310
		dc.w sub_4324-off_4310
		dc.w sub_435E-off_4310

; =============== S U B R O U T I N E =======================================

sub_4316:
		move.b  #4,((CURRENT_MAP-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4316


; =============== S U B R O U T I N E =======================================

sub_4324:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4340
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_REGION-$1000000)).w
		bra.s   locret_435C
loc_4340:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4356
		move.b  #3,((CURRENT_REGION-$1000000)).w
		bra.s   locret_435C
loc_4356:
		move.b  #4,((CURRENT_REGION-$1000000)).w
locret_435C:
		rts

	; End of function sub_4324


; =============== S U B R O U T I N E =======================================

sub_435E:
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_435E


; =============== S U B R O U T I N E =======================================

sub_4366:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_437A(pc,d0.w),d0
		jmp     off_437A(pc,d0.w)

	; End of function sub_4366

off_437A:       dc.w sub_4396-off_437A
		dc.w sub_4380-off_437A
		dc.w sub_4388-off_437A

; =============== S U B R O U T I N E =======================================

sub_4380:
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4380


; =============== S U B R O U T I N E =======================================

sub_4388:
		move.b  #8,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP-$1000000)).w
		rts

	; End of function sub_4388


; =============== S U B R O U T I N E =======================================

sub_4396:
		move.b  #1,((CURRENT_MAP-$1000000)).w
loc_439C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_43BA
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #1,((unk_FF9C4D-$1000000)).w
		bra.s   locret_43CC
loc_43BA:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		move.b  #2,((unk_FF9C4D-$1000000)).w
locret_43CC:
		rts

	; End of function sub_4396


; =============== S U B R O U T I N E =======================================

sub_43CE:
		move.b  #4,((CURRENT_MAP-$1000000)).w
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_43CE


; =============== S U B R O U T I N E =======================================

sub_43DC:
		clr.b   ((CURRENT_MAP-$1000000)).w
		bra.s   loc_439C

	; End of function sub_43DC


; =============== S U B R O U T I N E =======================================

sub_43E2:
		move.b  #2,((CURRENT_MAP-$1000000)).w
		bra.s   loc_439C

	; End of function sub_43E2


; =============== S U B R O U T I N E =======================================

sub_43EA:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_43FE(pc,d0.w),d0
		jmp     off_43FE(pc,d0.w)

	; End of function sub_43EA

off_43FE:       dc.w sub_4406-off_43FE
		dc.w sub_4406-off_43FE
		dc.w sub_4436-off_43FE
		dc.w sub_4466-off_43FE

; =============== S U B R O U T I N E =======================================

sub_4406:
		move.b  #2,((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4428
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_4434
loc_4428:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4434:
		rts

	; End of function sub_4406


; =============== S U B R O U T I N E =======================================

sub_4436:
		move.b  #1,((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4458
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_4464
loc_4458:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4464:
		rts

	; End of function sub_4436


; =============== S U B R O U T I N E =======================================

sub_4466:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #5,((CURRENT_REGION-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4482
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_4488
loc_4482:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4488:
		rts

	; End of function sub_4466


; =============== S U B R O U T I N E =======================================

sub_448A:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_44A0(pc,d0.w),d0
		jmp     off_44A0(pc,d0.w)

	; End of function sub_448A

off_44A0:       dc.w sub_44AE-off_44A0
		dc.w sub_4508-off_44A0
		dc.w sub_453A-off_44A0
		dc.w sub_4546-off_44A0
		dc.w sub_4552-off_44A0
		dc.w sub_459E-off_44A0
		dc.w sub_45B4-off_44A0

; =============== S U B R O U T I N E =======================================

sub_44AE:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_44C2(pc,d0.w),d0
		jmp     off_44C2(pc,d0.w)

	; End of function sub_44AE

off_44C2:       dc.w sub_44C8-off_44C2
		dc.w sub_44E0-off_44C2
		dc.w sub_44EE-off_44C2

; =============== S U B R O U T I N E =======================================

sub_44C8:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_REGION-$1000000)).w
		move.b  #5,((unk_FF9C4C-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		rts

	; End of function sub_44C8


; =============== S U B R O U T I N E =======================================

sub_44E0:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #4,((CURRENT_MAP-$1000000)).w
		rts

	; End of function sub_44E0


; =============== S U B R O U T I N E =======================================

sub_44EE:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		move.b  #6,((unk_FF9C4C-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		rts

	; End of function sub_44EE


; =============== S U B R O U T I N E =======================================

sub_4508:
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_452E
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #3,((unk_FF9C86-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.s   locret_4538
loc_452E:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
locret_4538:
		rts

	; End of function sub_4508


; =============== S U B R O U T I N E =======================================

sub_453A:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		rts

	; End of function sub_453A


; =============== S U B R O U T I N E =======================================

sub_4546:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		rts

	; End of function sub_4546


; =============== S U B R O U T I N E =======================================

sub_4552:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_4576
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #4,((unk_FF9C86-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_MAP-$1000000)).w
		bra.s   locret_459C
loc_4576:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4596
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_459C
loc_4596:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_459C:
		rts

	; End of function sub_4552


; =============== S U B R O U T I N E =======================================

sub_459E:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_459E


; =============== S U B R O U T I N E =======================================

sub_45B4:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_45B4


; =============== S U B R O U T I N E =======================================

sub_45CC:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_45E2(pc,d0.w),d0
		jmp     off_45E2(pc,d0.w)

	; End of function sub_45CC

off_45E2:       dc.w sub_45EE-off_45E2
		dc.w sub_45EE-off_45E2
		dc.w sub_463C-off_45E2
		dc.w sub_465A-off_45E2
		dc.w sub_46A8-off_45E2
		dc.w sub_46AE-off_45E2

; =============== S U B R O U T I N E =======================================

sub_45EE:
		clr.w   d0
loc_45F0:
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  off_4602(pc,d0.w),d0
		jmp     off_4602(pc,d0.w)

	; End of function sub_45EE

off_4602:       dc.w sub_4608-off_4602
		dc.w sub_4610-off_4602
		dc.w sub_4618-off_4602

; =============== S U B R O U T I N E =======================================

sub_4608:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4608


; =============== S U B R O U T I N E =======================================

sub_4610:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4610


; =============== S U B R O U T I N E =======================================

sub_4618:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4634
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_463A
loc_4634:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_463A:
		rts

	; End of function sub_4618


; =============== S U B R O U T I N E =======================================

sub_463C:
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_464C
		move.b  #3,((CURRENT_MAP-$1000000)).w
		bra.s   loc_4652
loc_464C:
		move.b  #4,((CURRENT_MAP-$1000000)).w
loc_4652:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_463C


; =============== S U B R O U T I N E =======================================

sub_465A:
		move.b  #2,((CURRENT_MAP-$1000000)).w
loc_4660:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #$56,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4694
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4692
		move.b  #2,((unk_FF9C4D-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
loc_4692:
		bra.s   locret_46A6
loc_4694:
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   locret_46A6
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((unk_FF9C4D-$1000000)).w
locret_46A6:
		rts

	; End of function sub_465A


; =============== S U B R O U T I N E =======================================

sub_46A8:
		clr.b   ((CURRENT_MAP-$1000000)).w
		bra.s   loc_4660

	; End of function sub_46A8


; =============== S U B R O U T I N E =======================================

sub_46AE:
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_46DA
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_46D2
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_46D8
loc_46D2:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_46D8:
		rts
loc_46DA:
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.w   loc_4660

	; End of function sub_46AE


; =============== S U B R O U T I N E =======================================

sub_46E4:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_46FA(pc,d0.w),d0
		jmp     off_46FA(pc,d0.w)

	; End of function sub_46E4

off_46FA:       dc.w sub_4706-off_46FA
		dc.w sub_4706-off_46FA
		dc.w sub_472E-off_46FA
		dc.w sub_474A-off_46FA
		dc.w sub_4758-off_46FA
		dc.w sub_47D0-off_46FA

; =============== S U B R O U T I N E =======================================

sub_4706:
		clr.w   d0
		move.b  ((CURRENT_MAP-$1000000)).w,d0
		clr.b   ((CURRENT_MAP-$1000000)).w
		add.w   d0,d0
		move.w  sub_471A(pc,d0.w),d0
		jmp     sub_471A(pc,d0.w)

	; End of function sub_4706


; =============== S U B R O U T I N E =======================================

sub_471A:
		ori.b   #$C,d4
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_471A


; =============== S U B R O U T I N E =======================================

sub_4726:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4726


; =============== S U B R O U T I N E =======================================

sub_472E:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_4742
		move.b  #4,((CURRENT_MAP-$1000000)).w
		bra.s   locret_4748
loc_4742:
		move.b  #3,((CURRENT_MAP-$1000000)).w
locret_4748:
		rts

	; End of function sub_472E


; =============== S U B R O U T I N E =======================================

sub_474A:
		move.b  #3,((CURRENT_MAP-$1000000)).w
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_474A


; =============== S U B R O U T I N E =======================================

sub_4758:
		cmpi.b  #$10,((byte_FFF807-$1000000)).w
		beq.w   loc_47A8
		clr.b   ((CURRENT_MAP-$1000000)).w
loc_4766:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #$7C,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4794
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4792
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
loc_4792:
		bra.s   locret_47A6
loc_4794:
		moveq   #$28,d0 
loc_4796:
		bsr.w   CheckEventFlag
		bne.s   locret_47A6
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((unk_FF9C4D-$1000000)).w
locret_47A6:
		rts
loc_47A8:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_47C8
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_47CE
loc_47C8:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_47CE:
		rts

	; End of function sub_4758


; =============== S U B R O U T I N E =======================================

sub_47D0:
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.w   loc_47E0
		move.b  #1,((CURRENT_MAP-$1000000)).w
		bra.s   loc_4766
loc_47E0:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_480C
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
loc_47FE:
		move.b  #1,((unk_FF9C4D-$1000000)).w
		move.b  #4,((unk_FF9C4C-$1000000)).w
		bra.s   locret_4812
loc_480C:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
locret_4812:
		rts

	; End of function sub_47D0


; =============== S U B R O U T I N E =======================================

sub_4814:
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_482A(pc,d0.w),d0
		jmp     off_482A(pc,d0.w)

	; End of function sub_4814

off_482A:       dc.w sub_483E-off_482A
		dc.w sub_4876-off_482A
		dc.w loc_487E-off_482A
		dc.w sub_48A4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_492C-off_482A
		dc.w loc_4932-off_482A
		dc.w sub_4964-off_482A
		dc.w sub_497C-off_482A

; =============== S U B R O U T I N E =======================================

sub_483E:
		cmpi.b  #1,((CURRENT_MAP-$1000000)).w
		beq.s   loc_484E
		move.b  #9,((CURRENT_REGION-$1000000)).w
		rts
loc_484E:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_486E
		move.b  #3,((CURRENT_REGION-$1000000)).w
		bra.s   locret_4874
loc_486E:
		move.b  #8,((CURRENT_REGION-$1000000)).w
locret_4874:
		rts

	; End of function sub_483E


; =============== S U B R O U T I N E =======================================

sub_4876:
		cmpi.b  #1,((CURRENT_MAP-$1000000)).w
		beq.s   loc_488C
loc_487E:
		move.b  #4,((CURRENT_MAP-$1000000)).w
		move.b  #9,((CURRENT_REGION-$1000000)).w
		rts
loc_488C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_4876


; =============== S U B R O U T I N E =======================================

sub_48A4:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_48BC
		move.b  #1,((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		rts
loc_48BC:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_48D6
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #4,((CURRENT_REGION-$1000000)).w
		bra.s   locret_48E2
loc_48D6:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #5,((CURRENT_REGION-$1000000)).w
locret_48E2:
		rts

	; End of function sub_48A4


; =============== S U B R O U T I N E =======================================

sub_48E4:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_4904
		move.b  #1,((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts
loc_4904:
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_491E
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		bra.s   locret_492A
loc_491E:
		move.b  #4,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
locret_492A:
		rts

	; End of function sub_48E4


; =============== S U B R O U T I N E =======================================

sub_492C:
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_494C
loc_4932:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_MAP-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts
loc_494C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP-$1000000)).w
		move.b  #4,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

	; End of function sub_492C


; =============== S U B R O U T I N E =======================================

sub_4964:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		rts

	; End of function sub_4964


; =============== S U B R O U T I N E =======================================

sub_497C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP-$1000000)).w
		bne.s   loc_4998
		clr.b   ((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		rts
loc_4998:
		cmpi.b  #3,((CURRENT_MAP-$1000000)).w
		beq.s   loc_49DC
		clr.b   ((CURRENT_MAP-$1000000)).w
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_49B8
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		bra.s   locret_49DA
loc_49B8:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_49CE
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   locret_49DA
loc_49CE:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP-$1000000)).w
locret_49DA:
		rts
loc_49DC:
		move.b  #3,((CURRENT_MAP-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		rts

	; End of function sub_497C

word_49EE:      dc.w $100
		dc.w $104
		dc.w $108
		dc.w $10C
		dc.w $120
		dc.w $124
		dc.w $128
		dc.w $12C
		dc.w $140
		dc.w $144
		dc.w $148
		dc.w $14C
		dc.w $160
		dc.w $164
		dc.w $168
		dc.w $16C
		dc.w $180
		dc.w $184
		dc.w $188
		dc.w $18C
		dc.w $1A0
		dc.w $1A4
		dc.w $1A8
		dc.w $1AC
		dc.w $1C0
		dc.w $1C4
		dc.w $1C8
		dc.w $1CC
		dc.w $1E0
		dc.w $1E4
		dc.w $1E8
		dc.w $1EC
		dc.w $101
		dc.w $105
		dc.w $109
		dc.w $10D
		dc.w $121
		dc.w $125
		dc.w $129
		dc.w $12D
		dc.w $141
		dc.w $145
		dc.w $149
		dc.w $14D
		dc.w $161
		dc.w $165
		dc.w $169
		dc.w $16D
		dc.w $181
		dc.w $185
		dc.w $189
		dc.w $18D
		dc.w $1A1
		dc.w $1A5
		dc.w $1A9
		dc.w $1AD
		dc.w $1C1
		dc.w $1C5
		dc.w $1C9
		dc.w $1CD
		dc.w $1E1
		dc.w $1E5
		dc.w $1E9
		dc.w $1ED
		dc.w $102
		dc.w $106
		dc.w $10A
		dc.w $10E
		dc.w $122
		dc.w $126
		dc.w $12A
		dc.w $12E
		dc.w $142
		dc.w $146
		dc.w $14A
		dc.w $14E
		dc.w $162
		dc.w $166
		dc.w $16A
		dc.w $16E
		dc.w $182
		dc.w $186
		dc.w $18A
		dc.w $18E
		dc.w $1A2
		dc.w $1A6
		dc.w $1AA
		dc.w $1AE
		dc.w $1C2
		dc.w $1C6
		dc.w $1CA
		dc.w $1CE
		dc.w $1E2
		dc.w $1E6
		dc.w $1EA
		dc.w $1EE
		dc.w $103
		dc.w $107
		dc.w $10B
		dc.w $10F
		dc.w $123
		dc.w $127
		dc.w $12B
		dc.w $12F
		dc.w $143
		dc.w $147
		dc.w $14B
		dc.w $14F
		dc.w $163
		dc.w $167
		dc.w $16B
		dc.w $16F
		dc.w $183
		dc.w $187
		dc.w $18B
		dc.w $18F
		dc.w $1A3
		dc.w $1A7
		dc.w $1AB
		dc.w $1AF
		dc.w $1C3
		dc.w $1C7
		dc.w $1CB
		dc.w $1CF
		dc.w $1E3
		dc.w $1E7
		dc.w $1EB
		dc.w $1EF
		dc.w $110
		dc.w $114
		dc.w $118
		dc.w $11C
		dc.w $130
		dc.w $134
		dc.w $138
		dc.w $13C
		dc.w $150
		dc.w $154
		dc.w $158
		dc.w $15C
		dc.w $170
		dc.w $174
		dc.w $178
		dc.w $17C
		dc.w $190
		dc.w $194
		dc.w $198
		dc.w $19C
		dc.w $1B0
		dc.w $1B4
		dc.w $1B8
		dc.w $1BC
		dc.w $1D0
		dc.w $1D4
		dc.w $1D8
		dc.w $1DC
		dc.w $1F0
		dc.w $1F4
		dc.w $1F8
		dc.w $1FC
		dc.w $111
		dc.w $115
		dc.w $119
		dc.w $11D
		dc.w $131
		dc.w $135
		dc.w $139
		dc.w $13D
		dc.w $151
		dc.w $155
		dc.w $159
		dc.w $15D
		dc.w $171
		dc.w $175
		dc.w $179
		dc.w $17D
		dc.w $191
		dc.w $195
		dc.w $199
		dc.w $19D
		dc.w $1B1
		dc.w $1B5
		dc.w $1B9
		dc.w $1BD
		dc.w $1D1
		dc.w $1D5
		dc.w $1D9
		dc.w $1DD
		dc.w $1F1
		dc.w $1F5
		dc.w $1F9
		dc.w $1FD
		dc.w $112
		dc.w $116
		dc.w $11A
		dc.w $11E
		dc.w $132
		dc.w $136
		dc.w $13A
		dc.w $13E
		dc.w $152
		dc.w $156
		dc.w $15A
		dc.w $15E
		dc.w $172
		dc.w $176
		dc.w $17A
		dc.w $17E
		dc.w $192
		dc.w $196
		dc.w $19A
		dc.w $19E
		dc.w $1B2
		dc.w $1B6
		dc.w $1BA
		dc.w $1BE
		dc.w $1D2
		dc.w $1D6
		dc.w $1DA
		dc.w $1DE
		dc.w $1F2
		dc.w $1F6
		dc.w $1FA
		dc.w $1FE
		dc.w $113
		dc.w $117
		dc.w $11B
		dc.w $11F
		dc.w $133
		dc.w $137
		dc.w $13B
		dc.w $13F
		dc.w $153
		dc.w $157
		dc.w $15B
		dc.w $15F
		dc.w $173
		dc.w $177
		dc.w $17B
		dc.w $17F
		dc.w $193
		dc.w $197
		dc.w $19B
		dc.w $19F
		dc.w $1B3
		dc.w $1B7
		dc.w $1BB
		dc.w $1BF
		dc.w $1D3
		dc.w $1D7
		dc.w $1DB
		dc.w $1DF
		dc.w $1F3
		dc.w $1F7
		dc.w $1FB
		dc.w $1FF
unk_4BEE:       dc.b   2
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   2
		dc.b   8
		dc.b   2
		dc.b  $C
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   5
		dc.b   2
		dc.b   9
		dc.b   2
		dc.b  $D
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   6
		dc.b   2
		dc.b  $A
		dc.b   2
		dc.b  $E
		dc.b   2
		dc.b   3
		dc.b   2
		dc.b   7
		dc.b   2
		dc.b  $B
		dc.b   2
		dc.b  $F

; =============== S U B R O U T I N E =======================================

sub_4C0E:
		clr.w   d0
		move.b  (CURRENT_CHAPTER).l,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_4C22(pc,d0.w),d0
		jmp     off_4C22(pc,d0.w)

	; End of function sub_4C0E

off_4C22:       dc.w loc_4C32-off_4C22
		dc.w sub_4CC6-off_4C22
		dc.w loc_4CFC-off_4C22
		dc.w sub_4D00-off_4C22
		dc.w sub_4D20-off_4C22
		dc.w sub_4D4E-off_4C22
		dc.w sub_4D64-off_4C22
		dc.w sub_4D88-off_4C22
loc_4C32:       move.b  (CURRENT_MAP).l,d7
loc_4C38:       clr.b   (CURRENT_MAP).l
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #3,d1
		bne.s   loc_4C70
		moveq   #$38,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4C60
		move.b  #3,(CURRENT_MAP).l
		bsr.w   SetEventFlag
loc_4C60:       moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4C6C
		moveq   #2,d0
		bra.s   locret_4C6E
loc_4C6C:       moveq   #3,d0
locret_4C6E:    rts
loc_4C70:       cmpi.w  #4,d1
		bne.s   loc_4C7A
		moveq   #$C,d0
		rts
loc_4C7A:       moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4C92
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4C8E
		moveq   #4,d0
		bra.s   locret_4C90
loc_4C8E:       moveq   #5,d0
locret_4C90:    rts
loc_4C92:       cmpi.b  #4,d7
		bne.s   loc_4C9E
		move.b  d7,(CURRENT_MAP).l
loc_4C9E:       moveq   #$31,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4CAA
		moveq   #4,d0
		rts
loc_4CAA:       cmpi.b  #2,d7
		bne.s   loc_4CBA
		move.b  d7,(CURRENT_MAP).l
		moveq   #5,d0
		rts
loc_4CBA:       move.b  #3,(CURRENT_MAP).l
		moveq   #4,d0
		rts

; =============== S U B R O U T I N E =======================================

sub_4CC6:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #8,d1
		bne.s   loc_4CD8
		moveq   #8,d0
		rts
loc_4CD8:
		tst.b   (CURRENT_MAP).l
		beq.s   loc_4CE8
		move.b  #3,(CURRENT_MAP).l
loc_4CE8:
		cmpi.w  #6,d1
		bne.s   loc_4CF2
		moveq   #$D,d0
		rts
loc_4CF2:
		cmpi.w  #7,d1
		bne.s   loc_4CFC
		moveq   #6,d0
		rts
loc_4CFC:
		moveq   #7,d0
		rts

	; End of function sub_4CC6


; =============== S U B R O U T I N E =======================================

sub_4D00:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #6,d1
		bne.s   loc_4D12
		moveq   #9,d0
		rts
loc_4D12:
		cmpi.w  #7,d1
		bne.s   loc_4D1C
		moveq   #$A,d0
		rts
loc_4D1C:
		moveq   #$1D,d0
		rts

	; End of function sub_4D00


; =============== S U B R O U T I N E =======================================

sub_4D20:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D4A
		moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4D3A
		moveq   #$20,d0 
		rts
loc_4D3A:
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4D46
		moveq   #$20,d0 
		bra.s   locret_4D48
loc_4D46:
		moveq   #$2A,d0 
locret_4D48:
		rts
loc_4D4A:
		moveq   #$29,d0 
		rts

	; End of function sub_4D20


; =============== S U B R O U T I N E =======================================

sub_4D4E:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D60
		moveq   #$21,d0 
		rts
loc_4D60:
		moveq   #$1F,d0
		rts

	; End of function sub_4D4E


; =============== S U B R O U T I N E =======================================

sub_4D64:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D84
		cmpi.b  #3,(CURRENT_MAP).l
		bne.s   loc_4D80
		moveq   #$10,d0
		bra.s   locret_4D82
loc_4D80:
		moveq   #$1E,d0
locret_4D82:
		rts
loc_4D84:
		moveq   #$24,d0 
		rts

	; End of function sub_4D64


; =============== S U B R O U T I N E =======================================

sub_4D88:
		cmpi.b  #2,(CURRENT_MAP).l
		bgt.s   loc_4D96
		moveq   #$E,d0
		bra.s   locret_4D98
loc_4D96:
		moveq   #$25,d0 
locret_4D98:
		rts

	; End of function sub_4D88


; START OF FUNCTION CHUNK FOR InitSystem

loc_4D9A:
		move.b  #1,((unk_FFB53D-$1000000)).w
		moveq   #3,d0
		jsr     j_JoinForce
		moveq   #8,d0
		jsr     j_JoinForce
		moveq   #$C,d0
		jsr     j_JoinForce
		moveq   #$E,d0
		jsr     j_JoinForce
		moveq   #$13,d0
		jsr     j_JoinForce
		moveq   #$18,d0
loc_4DCA:
		jsr     j_JoinForce
		moveq   #$19,d0
		jsr     j_JoinForce
		moveq   #$1A,d0
		jsr     j_JoinForce
		moveq   #$1B,d0
		jsr     j_JoinForce
		moveq   #$1C,d0
loc_4DEA:
		jsr     j_JoinForce
		moveq   #$1D,d0
		jsr     j_JoinForce
		moveq   #1,d0
		moveq   #$1C,d7
loc_4DFC:
		jsr     j_JoinForce
		addq.w  #1,d0
		dbf     d7,loc_4DFC
		clr.l   (dword_FF0EF6).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     wl_ChapterTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
loc_4E42:
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		moveq   #1,d0
		moveq   #$14,d1
loc_4E5E:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4E76
		addq.w  #1,d0
		cmpi.w  #9,d0
		blt.s   loc_4E72
		moveq   #1,d0
loc_4E72:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR InitSystem

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR InitSystem

loc_4E76:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4E8A
		subq.w  #1,d0
		bne.s   loc_4E86
		moveq   #8,d0
loc_4E86:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR InitSystem

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR InitSystem

loc_4E8A:
		btst    #5,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_4EF2
		btst    #6,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_4EF2
		movem.l d7-a1,-(sp)
		lea     wl_ChapterTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((unk_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_DisplayNumber
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_4E5E
loc_4EF2:
		move.b  d0,((CURRENT_CHAPTER-$1000000)).w
		jsr     (j_FadeOutToBlack).l
		bra.w   loc_30FC
loc_4F00:
		move.b  #1,((unk_FFB53D-$1000000)).w
		moveq   #3,d0
		jsr     j_JoinForce
		moveq   #8,d0
		jsr     j_JoinForce
		moveq   #$C,d0
loc_4F18:
		jsr     j_JoinForce
		moveq   #$E,d0
		jsr     j_JoinForce
		moveq   #$13,d0
		jsr     j_JoinForce
		moveq   #$18,d0
		jsr     j_JoinForce
		moveq   #$19,d0
		jsr     j_JoinForce
		moveq   #$1A,d0
		jsr     j_JoinForce
		moveq   #$1B,d0
		jsr     j_JoinForce
		moveq   #$1C,d0
		jsr     j_JoinForce
		moveq   #$1D,d0
		jsr     j_JoinForce
		moveq   #1,d0
		moveq   #$1C,d7
loc_4F62:
		jsr     j_JoinForce
		addq.w  #1,d0
		dbf     d7,loc_4F62
loc_4F6E:
		clr.l   (dword_FF0EF6).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     wl_BattleTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
loc_4FC0:
		tst.b   (P1_INPUT).l    
		bne.s   loc_4FC0
		clr.w   d0
		moveq   #$14,d1
loc_4FCC:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4FE4
		addq.w  #1,d0
		cmpi.w  #$1E,d0
		blt.s   loc_4FE0
		moveq   #0,d0
loc_4FE0:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR InitSystem

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR InitSystem

loc_4FE4:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4FF8
		subq.w  #1,d0
		bgt.s   loc_4FF4
		moveq   #$1D,d0
loc_4FF4:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR InitSystem

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR InitSystem

loc_4FF8:
		btst    #5,(CURRENT_PLAYER_INPUT).l
loc_5000:
		bne.w   loc_5086
		btst    #6,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_5086
		btst    #4,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5034
		movem.w d0-d1,-(sp)
		jsr     sub_20014
		jsr     sub_10018
		jsr     (sub_338).l
		movem.w (sp)+,d0-d1
loc_5034:
		movem.l d7-a1,-(sp)
		lea     wl_BattleTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		addq.w  #1,d0
		lea     ((unk_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_DisplayNumber
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_4FCC
loc_5086:
		clr.b   ((byte_FFB5AC-$1000000)).w
		move.w  d0,-(sp)
		lsl.w   #3,d0
		lea     BattleTestTargets(pc), a0
		adda.w  d0,a0
		move.b  (a0)+,((CURRENT_CHAPTER-$1000000)).w
		move.b  (a0)+,((CURRENT_REGION-$1000000)).w
		move.b  (a0)+,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  (a0)+,((CURRENT_MAP-$1000000)).w
		clr.w   d1
		move.b  (a0)+,d1
		bmi.w   loc_50CC
		lsl.w   #3,d1
		clr.w   d0
		move.b  (a0)+,d0
		add.w   d1,d0
		bsr.w   j_SetEventFlag
		clr.w   d1
		move.b  (a0)+,d1
		bmi.w   loc_50CC
		lsl.w   #3,d1
		clr.w   d0
		move.b  (a0)+,d0
		add.w   d1,d0
		bsr.w   j_SetEventFlag
loc_50CC:
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		jsr     (j_FadeOutToBlack).l
		bsr.w   loc_313A
		move.w  (sp)+,d0
		bra.w   loc_4F6E

; END OF FUNCTION CHUNK FOR InitSystem

BattleTestTargets:
		incbin "data/battles/global/battletesttargets.bin"

; =============== S U B R O U T I N E =======================================

sub_51D2:
		btst    #4,(P1_INPUT).l 
		bne.s   loc_51DE
		rts

	; End of function sub_51D2


; START OF FUNCTION CHUNK FOR sub_51D2

loc_51DE:
		clr.l   (dword_FF0EF6).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     wl_MessageTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		trap    #5
		moveq   #0,d0
		moveq   #$14,d1
loc_5236:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5250
		addq.w  #1,d0
		cmpi.w  #$8BF,d0
		blt.s   loc_524C
		move.w  #$8BF,d0
loc_524C:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5250:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5264
		subq.w  #1,d0
		bpl.s   loc_5260
		clr.w   d0
loc_5260:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5264:
		btst    #1,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5280
		addi.w  #$A,d0
		cmpi.w  #$8BF,d0
		blt.s   loc_527C
		move.w  #$8BF,d0
loc_527C:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5280:
		btst    #0,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5296
		subi.w  #$A,d0
		bpl.s   loc_5292
		clr.w   d0
loc_5292:
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w SFX_MENU_SELECTION

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5296:
		btst    #5,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_52FE
		btst    #6,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_52FE
		movem.l d7-a1,-(sp)
		lea     wl_MessageTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((unk_FFB854-$1000000)).w,a1
		ext.l   d0
		moveq   #4,d7
		jsr     j_DisplayNumber
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_5236
loc_52FE:
		movem.w d0,-(sp)
		trap    #7
		trap    #8
		movem.w (sp)+,d0
		bra.w   loc_5236

; END OF FUNCTION CHUNK FOR sub_51D2

wl_BattleTest:  incbin "data/graphics/tech/windowlayouts/wl-battletest.bin"
wl_ChapterTest: incbin "data/graphics/tech/windowlayouts/wl-chaptertest.bin"
wl_MessageTest: incbin "data/graphics/tech/windowlayouts/wl-messagetest.bin"

; =============== S U B R O U T I N E =======================================

sub_550C:
		bsr.w   sub_558E
		move.l  #$C1C0C15,d1
		moveq   #4,d2
		jsr     sub_8020
		jsr     (j_WaitForPlayerInput).l
		move.l  #$C152015,d1
		moveq   #6,d2
		jmp     sub_8020

	; End of function sub_550C


; =============== S U B R O U T I N E =======================================

sub_5532:
		bsr.w   sub_558E
		move.l  #$200F160F,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5532


; =============== S U B R O U T I N E =======================================

sub_5544:
		bsr.w   sub_558E
		move.l  #$160F200F,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5544


; =============== S U B R O U T I N E =======================================

sub_5556:
		bsr.w   sub_558E
		move.l  #$F8010101,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5556


; =============== S U B R O U T I N E =======================================

sub_5568:
		bsr.w   sub_558E
		move.l  #$101F801,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5568


; =============== S U B R O U T I N E =======================================

sub_557A:
		bsr.w   sub_558E
		move.w  #$160F,d1
		jsr     sub_801C
		jmp     sub_8054

	; End of function sub_557A


; =============== S U B R O U T I N E =======================================

sub_558E:
		movem.l d7-a1,-(sp)
		lea     unk_55CC(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$40,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     j_GetGold
		move.l  d1,d0
		lea     (unk_FFB7FC).l,a1
		moveq   #6,d7
		jsr     j_DisplayNumber
		lea     (unk_FFB7DA).l,a0
		move.w  #$804,d0
		rts

	; End of function sub_558E

unk_55CC:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $47 
		dc.b $C0 
		dc.b $4F 
		dc.b $C0 
		dc.b $4C 
		dc.b $C0 
		dc.b $44 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $30 
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 

; =============== S U B R O U T I N E =======================================

YesNoPrompt:
		clr.w   d0
		move.b  (P1_INPUT).l,d0 
		bra.s   loc_5618
YesNoChoiceBox:
		
		clr.w   d0
loc_5618:
		move.w  d0,-(sp)
		lea     MenuTiles_YesNo(pc), a0
		jsr     (j_DecompressGraphics).l
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SWITCH
		clr.b   (CURRENT_DIAMENU_CHOICE).l
		bsr.w   sub_5744
		move.w  #$90,d0 
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$60,d0 
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$30,d0 
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #0,d0
		bsr.w   sub_57BA
		move.w  (sp)+,d0
		beq.w   loc_5672
loc_566A:
		tst.b   (P1_INPUT).l    
		bne.s   loc_566A
loc_5672:
		moveq   #$F,d6
loc_5674:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_568E
		clr.b   (CURRENT_DIAMENU_CHOICE).l
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SELECTION
		bra.w   loc_56F2
loc_568E:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56AA
		move.b  #$FF,(CURRENT_DIAMENU_CHOICE).l
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SELECTION
		bra.w   loc_56F2
loc_56AA:
		btst    #4,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56C2
		moveq   #$FFFFFFFF,d0
		move.b  d0,(CURRENT_DIAMENU_CHOICE).l
		bra.w   loc_5702
loc_56C2:
		btst    #5,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56DA
		clr.w   d0
		move.b  (CURRENT_DIAMENU_CHOICE).l,d0
		bra.w   loc_5702
loc_56DA:
		btst    #6,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56F4
		clr.w   d0
		move.b  (CURRENT_DIAMENU_CHOICE).l,d0
		bra.w   loc_5702
loc_56F2:
		moveq   #$13,d6
loc_56F4:
		bsr.w   sub_5744
		subq.w  #1,d6
		bne.s   loc_56FE
		moveq   #$14,d6
loc_56FE:
		bra.w   loc_5674
loc_5702:
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SWITCH
		movem.w d0-d1,-(sp)
		move.w  #$FFD0,d0
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$FFA0,d0
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$FF70,d0
		bsr.w   sub_57BA
		jsr     (j_WaitForVInt).l
		move.w  #$100,d0
		bsr.w   sub_57BA
		movem.w (sp)+,d0-d1
		ext.w   d0
		rts

	; End of function YesNoPrompt


; =============== S U B R O U T I N E =======================================

sub_5744:
		lea     (FF3000_LOADING_SPACE).l,a2
		movea.l a2,a0
		cmpi.w  #$A,d6
		ble.s   loc_575E
		tst.b   (CURRENT_DIAMENU_CHOICE).l
		bne.s   loc_575E
		adda.w  #$120,a0
loc_575E:
		lea     (unk_FF3800).l,a1
		move.w  #$120,d7
		jsr     (j_CopyBytes).l
		adda.w  #$120,a1
		movea.l a2,a0
		adda.w  #$240,a0
		cmpi.w  #$A,d6
		ble.s   loc_578C
		cmpi.b  #$FF,(CURRENT_DIAMENU_CHOICE).l
		bne.s   loc_578C
		adda.w  #$120,a0
loc_578C:
		move.w  #$120,d7
		jsr     (j_CopyBytes).l
		adda.w  #$120,a1
		lea     (unk_FF3800).l,a0
		lea     ($FDC0).l,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (sub_278).l
		jsr     (j_SetVIntParam3AndWait).l
		rts

	; End of function sub_5744


; =============== S U B R O U T I N E =======================================

sub_57BA:
		lea     (unk_FF0C88).l,a0
		move.w  #$106,(a0)+
		move.b  #$A,(a0)
		addq.l  #2,a0
		move.w  #$C7EE,(a0)+
		move.w  #$E0,(a0) 
		add.w   d0,(a0)+
		move.w  #$106,(a0)+
		move.b  #$A,(a0)
		addq.l  #2,a0
		move.w  #$C7F7,(a0)+
		move.w  #$108,(a0)
		add.w   d0,(a0)+
		rts

	; End of function sub_57BA

MenuTiles_YesNo:incbin "data/graphics/tech/menus/menutiles-yesno.bin"

; =============== S U B R O U T I N E =======================================

sub_5A18:
		clr.w   ((word_FFC0BE-$1000000)).w
		move.b  #1,((byte_FFB53A-$1000000)).w
		clr.b   ((unk_FFB4CA-$1000000)).w
loc_5A26:
		btst    #6,((TEMP_INPUT_STATES-$1000000)).w
		beq.s   loc_5A3E
		clr.w   d0
		clr.b   ((unk_FFB4CB-$1000000)).w
		jsr     sub_8070
		bsr.w   sub_5556
loc_5A3E:
		move.b  #1,((byte_FFB526-$1000000)).w
		jsr     sub_8038
		tst.w   (word_FFD0BC).l
		beq.s   loc_5A62
		move.w  d0,-(sp)
		bsr.w   sub_5568
		clr.w   d0
		jsr     sub_8074
		move.w  (sp)+,d0
loc_5A62:
		tst.b   d0
		bmi.w   locret_5A80
		clr.w   d0
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_5A78(pc,d0.w),d0
		jmp     off_5A78(pc,d0.w)
off_5A78:
		dc.w sub_5A88-off_5A78
		dc.w loc_5A9E-off_5A78
		dc.w loc_5B4A-off_5A78
		dc.w sub_5A82-off_5A78
locret_5A80:
		rts

	; End of function sub_5A18


; =============== S U B R O U T I N E =======================================

sub_5A82:
		jmp     sub_10020

	; End of function sub_5A82


; =============== S U B R O U T I N E =======================================

sub_5A88:
		cmpi.b  #$1E,((unk_FFA1C6-$1000000)).w
		beq.s   loc_5A98
		jmp     loc_10028
		bra.s   loc_5A9E
loc_5A98:
		jmp     (loc_344).l

	; End of function sub_5A88


; START OF FUNCTION CHUNK FOR sub_5A88

loc_5A9E:
		clr.b   ((unk_FFB4C9-$1000000)).w
		clr.b   ((unk_FFB4C5-$1000000)).w
		clr.w   d0
		jsr     j_GetForceSpellsFromForceID
		cmpi.b  #$FF,(a0)
		bne.s   loc_5ABE
		moveq   #1,d0
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5ABE:
		move.b  #2,((byte_FFB526-$1000000)).w
		bsr.w   sub_8048
		cmpi.w  #$FFFF,d0
		bne.s   loc_5AD8
		jsr     (j_WaitForVInt).l
		bra.w   loc_5A26
loc_5AD8:
		move.b  d1,((byte_FFB51C-$1000000)).w
		clr.w   d0
		jsr     j_GetForceMemberMP
		move.w  d1,-(sp)
		move.b  ((byte_FFB51C-$1000000)).w,d1
		jsr     j_GetMPCost
		move.w  (sp)+,d1
		cmp.w   d1,d2
		ble.s   loc_5B00
		moveq   #3,d0
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5B00:
		move.w  d2,-(sp)
		clr.w   ((TEXT_NAME_INDEX-$1000000)).w
		move.b  ((byte_FFB51C-$1000000)).w,d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF846-$1000000)).w
		move.w  (sp)+,d1
		lsr.w   #6,d1
		ext.l   d1
		addq.l  #1,d1
		move.l  d1,((dword_FFF900-$1000000)).w
		trap    #5
		move.w  #$1B5,d0
		trap    #8
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_5A88

		dc.w SFX_SPELL_CAST
		move.w  #$1EA,d0
		trap    #8
		trap    #7
		move.w  #$1D1,d0
		trap    #8
		move.w  #$1EA,d0
		trap    #8
		trap    #6
		clr.w   d0
		move.w  (sp)+,d1
		bra.w   loc_5A26
loc_5B4A:       bsr.w   sub_5B54
		bmi.w   loc_5A3E
		rts

; =============== S U B R O U T I N E =======================================

sub_5B54:
		clr.w   ((word_FFC0BE-$1000000)).w
loc_5B58:
		tst.w   (word_FFD984).l
		beq.s   loc_5B62
		trap    #6
loc_5B62:
		clr.b   ((unk_FFB52A-$1000000)).w
		move.b  #4,((byte_FFB526-$1000000)).w
		jsr     sub_8048
		tst.w   d0
		bge.w   loc_5B7A
		rts
loc_5B7A:
		add.w   d0,d0
		move.w  off_5B84(pc,d0.w),d0
		jmp     off_5B84(pc,d0.w)

	; End of function sub_5B54

off_5B84:       dc.w sub_5B8C-off_5B84
		dc.w sub_5CFE-off_5B84
		dc.w sub_5EA0-off_5B84
		dc.w sub_5F4C-off_5B84

; =============== S U B R O U T I N E =======================================

sub_5B8C:
		trap    #5
		bsr.w   sub_617C
loc_5B92:
		jsr     (sub_328).l
		move.w  #$1C,d0
		trap    #8
		jsr     sub_8044
		tst.w   d0
		bmi.s   loc_5B58
		move.w  d0,((word_FFB7C4-$1000000)).w
		jsr     j_GetForceItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.b  d0,((byte_FFF001-$1000000)).w
		jsr     j_GetForceItemsAddress
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		andi.w  #$3F,d0 
		move.w  d0,((TEXT_NAME_INDEX-$1000000)).w
		cmpi.b  #$27,d0 
		bne.w   loc_5C30
		cmpi.b  #8,((CURRENT_CHAPTER-$1000000)).w
		bne.w   loc_5C30
		tst.b   ((CURRENT_REGION-$1000000)).w
		bne.w   loc_5C30
		cmpi.w  #$170A,((CURSOR_POSITION-$1000000)).w
		bne.w   loc_5C30
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		beq.w   loc_5C2E
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		bne.w   loc_5C2E
		moveq   #$31,d0 
		bsr.w   SetEventFlag
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #6
		move.b  #5,((unk_FF9C86-$1000000)).w
		clr.b   ((byte_FFB538-$1000000)).w
		jmp     sub_124008

	; End of function sub_5B8C


; START OF FUNCTION CHUNK FOR sub_5B8C

loc_5C2E:
		moveq   #$27,d0 
loc_5C30:
		cmpi.b  #2,d0
		bne.w   loc_5C7E
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8040
		tst.w   d0
		bmi.w   loc_5B92
		move.w  d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   FindBattleMember
		jsr     sub_202B8
		move.w  ((MESSAGE_ARG_NAME-$1000000)).w,((TEXT_NAME_INDEX-$1000000)).w
		move.l  ((MESSAGE_ARG_NUMBER-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((MESSAGE_INDEX-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		trap    #6
		rts
loc_5C7E:
		cmpi.b  #5,d0
		blt.w   loc_5CE0
		cmpi.b  #9,d0
		bgt.w   loc_5CE0
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8040
		tst.w   d0
		bmi.w   loc_5B92
		movem.w d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   FindBattleMember
		move.w  ((TEXT_NAME_INDEX-$1000000)).w,d1
		subq.w  #5,d1
		jsr     sub_202B4
		move.w  ((MESSAGE_ARG_NAME-$1000000)).w,((TEXT_NAME_INDEX-$1000000)).w
		move.l  ((MESSAGE_ARG_NUMBER-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((MESSAGE_INDEX-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		trap    #6
		jmp     j_ResetForceMemberStats
loc_5CE0:
		jmp     loc_10024

; END OF FUNCTION CHUNK FOR sub_5B8C


; =============== S U B R O U T I N E =======================================

sub_5CE6:
		move.w  #$1EA,d0
		trap    #8
		move.w  ((word_FFB7C4-$1000000)).w,d0
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		jmp     j_RemoveItem

	; End of function sub_5CE6


; =============== S U B R O U T I N E =======================================

nullsub_5CFC:
		rts

	; End of function nullsub_5CFC


; =============== S U B R O U T I N E =======================================

sub_5CFE:
		trap    #5
		bsr.w   sub_617C
		move.w  #$1F,d0
		trap    #8
		jsr     sub_8044
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_5B58
		jsr     j_GetForceItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.s   loc_5D5C
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_5D5C
		jsr     sub_805C
		trap    #7
		move.w  #$21,d0 
		trap    #8
		bra.w   loc_5E9A
loc_5D5C:
		trap    #7
		move.w  #$20,d0 
		trap    #8
		jsr     sub_8060
loc_5D6A:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_5D7E
		jsr     sub_8068
		bra.w   loc_5B58
loc_5D7E:
		jsr     j_GetForceItemsAddress
		move.w  d0,((unk_FFB7C8-$1000000)).w
		cmpi.b  #$FF,3(a0)
		beq.s   loc_5DA0
		move.w  d0,-(sp)
		jsr     sub_806C
		move.w  (sp)+,d0
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		blt.s   loc_5D6A
loc_5DA0:
		jsr     sub_8068
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		move.w  d1,((unk_FFB7CA-$1000000)).w
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_GetForceItemsAddress
		move.b  (a0,d1.w),d1
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     j_FindEmptyItemSlot
		bcc.w   loc_5E8C
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     j_GetForceItemsAddress
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_5E14
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_5E14
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_5E9A
loc_5E14:
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		cmp.w   ((word_FFB7C4-$1000000)).w,d0
		bne.w   loc_5E40
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     j_GetForceItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  d2,d1
		jsr     j_FindEmptyItemSlot
		bra.s   loc_5E9A
loc_5E40:
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     j_GetForceItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     j_RemoveItem
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_GetForceItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
		jsr     j_FindEmptyItemSlot
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  (sp)+,d1
		jsr     j_FindEmptyItemSlot
		bra.s   loc_5E9A
loc_5E8C:
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItem
loc_5E9A:
		trap    #7
		trap    #6
		rts

	; End of function sub_5CFE


; =============== S U B R O U T I N E =======================================

sub_5EA0:
		trap    #5
		bsr.w   sub_617C
		move.w  #$23,d0 
		trap    #8
		jsr     sub_8040
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_5B58
		move.w  d0,-(sp)
		move.w  d0,d2
		bsr.w   FindBattleMember
		move.w  d0,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d0
		move.w  #$300,d1
		jsr     j_LoadEquippableItems
		bne.s   loc_5EE0
		trap    #7
		move.w  #$22,d0 
		trap    #8
		trap    #7
		bra.s   loc_5F46
loc_5EE0:
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		beq.w   loc_5F08
		clr.b   ((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F08
		bsr.w   sub_6C6E
		trap    #7
		bra.w   loc_5B58
loc_5F08:
		move.w  #$200,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		beq.w   loc_5F42
		move.b  #1,((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F42
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		bne.s   loc_5EE0
		bsr.w   sub_6C6E
		trap    #7
		bra.w   loc_5B58
loc_5F42:
		bsr.w   sub_6C6E
loc_5F46:
		trap    #7
		trap    #6
		rts

	; End of function sub_5EA0


; =============== S U B R O U T I N E =======================================

sub_5F4C:
		trap    #5
		bsr.w   sub_617C
		move.w  #$25,d0 
		trap    #8
		jsr     sub_8044
		tst.w   d0
		bmi.w   loc_5B58
		jsr     j_GetForceItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_5FAA
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_5FAA
		jsr     sub_805C
		trap    #7
		move.w  #$21,d0 
		trap    #8
		bra.w   loc_5FD0
loc_5FAA:
		jsr     j_GetItemType
		btst    #$B,d2
		bne.s   loc_5FC8
		jsr     j_IncreaseDealsItemStock
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItem
		bra.s   loc_5FD0
loc_5FC8:
		trap    #7
		move.w  #$26,d0 
		trap    #8
loc_5FD0:
		trap    #7
		trap    #6
		rts

	; End of function sub_5F4C


; =============== S U B R O U T I N E =======================================

sub_5FD6:
		trap    #7
		move.w  #2,d0
		trap    #8
		trap    #6
		rts

	; End of function sub_5FD6


; =============== S U B R O U T I N E =======================================

sub_5FE2:
		move.w  d0,-(sp)
		tst.w   (word_FFD082).l
		bne.s   loc_5FF4
		moveq   #$29,d0 
		jsr     sub_802C
loc_5FF4:
		move.w  (sp)+,d0
		rts

	; End of function sub_5FE2


; =============== S U B R O U T I N E =======================================

sub_5FF8:
		jsr     sub_20014
		bsr.s   sub_5FE2
loc_6000:
		trap    #5
		move.w  #0,d0
		trap    #8
loc_6008:
		trap    #6
		clr.b   ((unk_FFB4CA-$1000000)).w
loc_600E:
		move.b  #8,((byte_FFB526-$1000000)).w
		jsr     sub_8048
		tst.b   d0
		bge.s   loc_6028
		trap    #5
loc_6020:
		move.w  #3,d0
		trap    #8
		rts
loc_6028:
		clr.w   d0
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_6038(pc,d0.w),d0
		jmp     off_6038(pc,d0.w)

	; End of function sub_5FF8

off_6038:       dc.w sub_6068-off_6038
		dc.w sub_60AE-off_6038
		dc.w sub_6268-off_6038
		dc.w sub_61D0-off_6038
		trap    #5

; START OF FUNCTION CHUNK FOR sub_60AE

loc_6042:
		move.w  #1,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		bge.w   loc_6008
		trap    #7
		bra.s   loc_6020
loc_605A:
		bsr.s   sub_5FE2
		trap    #7
		move.w  #2,d0
		trap    #8
		trap    #7
		bra.s   loc_6042

; END OF FUNCTION CHUNK FOR sub_60AE


; =============== S U B R O U T I N E =======================================

sub_6068:
		trap    #5
		bsr.w   sub_6078
		addi.w  #$2EE,d0
		trap    #8
		trap    #7
		bra.s   loc_6042

	; End of function sub_6068


; =============== S U B R O U T I N E =======================================

sub_6078:
		clr.w   d2
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d2
		subq.w  #1,d2
		move.w  d2,d1
		move.b  unk_60A6(pc,d2.w),d2
		subq.w  #1,d2
		clr.w   d0
loc_608A:
		btst    d0,((byte_FF9C53-$1000000)).w
		beq.s   loc_6098
		cmp.b   d0,d2
		beq.s   loc_6098
		addq.w  #1,d0
		bra.s   loc_608A
loc_6098:
		add.b   unk_609E(pc,d1.w),d0
		rts

	; End of function sub_6078

unk_609E:       dc.b   0
		dc.b   4
		dc.b   8
		dc.b  $B
		dc.b  $E
		dc.b $11
		dc.b $15
		dc.b $19
unk_60A6:       dc.b   4
		dc.b   4
		dc.b   3
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   5

; =============== S U B R O U T I N E =======================================

sub_60AE:
		trap    #5
loc_60B0:
		jsr     sub_2003C
		tst.w   ((unk_FFCB82-$1000000)).w
		bne.w   loc_60CA
		move.w  #6,d0
		trap    #8
		trap    #7
		bra.w   loc_6042
loc_60CA:
		move.w  #4,d0
		trap    #8
		jsr     sub_8030
		move.b  #$FF,((unk_FFC140-$1000000)).w
		jsr     sub_8040
		bsr.w   sub_5FE2
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetHPFromForceID
		tst.w   d1
		bne.s   loc_6112
		move.w  d0,((TEXT_NAME_INDEX-$1000000)).w
		trap    #7
		move.w  #7,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		bmi.s   loc_60CA
loc_6112:
		trap    #7
		move.w  #5,d0
		trap    #8
		jsr     sub_20038
		jsr     sub_8030
		move.b  #$FF,((unk_FFC140-$1000000)).w
		jsr     sub_8040
		bsr.w   sub_5FE2
		move.w  d0,((unk_FFB7C6-$1000000)).w
		bmi.w   loc_605A
		bne.s   loc_614A
		trap    #7
		move.w  #$1A,d0
		trap    #8
		bra.s   loc_6112
loc_614A:
		move.w  ((unk_FFB7C6-$1000000)).w,d0
		jsr     j_LeaveBattleParty
		move.w  ((word_FFB7C4-$1000000)).w,d0
		moveq   #$B,d1
		jsr     j_JoinBattleParty
		trap    #7
		move.w  #8,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		beq.w   loc_60B0
		bra.w   loc_6042

	; End of function sub_60AE


; =============== S U B R O U T I N E =======================================

sub_617C:
		move.w  #$C07E,((unk_FFC0B6-$1000000)).w
		jsr     sub_20038
		move.w  ((unk_FFCB82-$1000000)).w,d7
		subq.w  #1,d7
		move.w  d7,-(sp)
		movem.l d7-a1,-(sp)
		lea     ((unk_FFCB84-$1000000)).w,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		move.w  #$C,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     sub_20034
		lea     (FF0FFE_LOADING_SPACE).l,a0
		move.w  (sp)+,d7
loc_61BA:
		lea     ((unk_FFCB84-$1000000)).w,a1
		move.b  (a0)+,d0
loc_61C0:
		cmp.b   (a1)+,d0
		bne.s   loc_61C0
		bset    #6,-1(a1)
		dbf     d7,loc_61BA
		rts

	; End of function sub_617C


; =============== S U B R O U T I N E =======================================

sub_61D0:
		trap    #5
		bsr.s   sub_617C
loc_61D4:
		move.w  #$18,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_605A
		trap    #6
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_20304
		move.w  d1,d0
		jsr     sub_802C
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_8058
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$20010901,d1
		move.w  #8,d2
		jsr     sub_8020
		jsr     (j_WaitForPlayerInput).l
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$9012001,d1
		move.w  #8,d2
		jsr     sub_8020
		jsr     sub_8030
		bsr.w   sub_5FE2
		trap    #5
		move.w  #$19,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		beq.w   loc_61D4
		bra.w   loc_6042

	; End of function sub_61D0


; =============== S U B R O U T I N E =======================================

sub_6268:
		clr.b   ((unk_FFB52A-$1000000)).w
		move.b  #4,((byte_FFB526-$1000000)).w
		jsr     sub_8048
		cmpi.w  #$FFFF,d0
		beq.w   loc_600E
		add.w   d0,d0
		move.w  off_628A(pc,d0.w),d0
		jmp     off_628A(pc,d0.w)

	; End of function sub_6268

off_628A:       dc.w sub_6292-off_628A
		dc.w sub_63B4-off_628A
		dc.w sub_6588-off_628A
		dc.w sub_6650-off_628A

; =============== S U B R O U T I N E =======================================

sub_6292:
		trap    #5
		bsr.w   sub_617C
loc_6298:
		jsr     (sub_328).l
		move.w  #9,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8044
		bsr.w   sub_5FE2
		tst.w   d0
		bmi.w   loc_605A
		move.w  d0,((word_FFB7C4-$1000000)).w
		jsr     j_GetForceItemsFromForceID
		clr.w   d0
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		trap    #7
		andi.w  #$3F,d0 
		move.w  d0,((TEXT_NAME_INDEX-$1000000)).w
		cmpi.b  #2,d0
		bne.w   loc_632A
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		tst.w   d0
		bmi.s   loc_6298
		move.w  d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   FindBattleMember
		jsr     sub_202B8
		move.w  ((MESSAGE_ARG_NAME-$1000000)).w,((TEXT_NAME_INDEX-$1000000)).w
		move.l  ((MESSAGE_ARG_NUMBER-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((MESSAGE_INDEX-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		bra.w   loc_6398

	; End of function sub_6292


; START OF FUNCTION CHUNK FOR sub_6292

loc_632A:
		cmpi.b  #5,d0
		blt.w   loc_6392
		cmpi.b  #9,d0
		bgt.w   loc_6392
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		tst.w   d0
		bmi.w   loc_6298
		movem.w d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   FindBattleMember
		move.w  ((TEXT_NAME_INDEX-$1000000)).w,d1
		subq.w  #5,d1
		jsr     sub_202B4
		move.w  ((MESSAGE_ARG_NAME-$1000000)).w,((TEXT_NAME_INDEX-$1000000)).w
		move.l  ((MESSAGE_ARG_NUMBER-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((MESSAGE_INDEX-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		jsr     j_ResetForceMemberStats
		bra.s   loc_6398
loc_6392:
		move.w  #$B,d0
		trap    #8
loc_6398:
		trap    #7
		move.w  #$C,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		beq.w   loc_6298
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_6292


; =============== S U B R O U T I N E =======================================

sub_63B4:
		trap    #5
		bsr.w   sub_617C
loc_63BA:
		move.w  #$D,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8044
		bsr.w   sub_5FE2
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetForceItemsFromForceID
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_641E
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_641E
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_656C

	; End of function sub_63B4


; START OF FUNCTION CHUNK FOR sub_63B4

loc_641E:
		trap    #7
		move.w  #$10,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8060
loc_6432:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_644A
		jsr     sub_8068
		bsr.w   sub_5FE2
		bra.w   loc_605A
loc_644A:
		jsr     j_GetForceItemsAddress
		move.w  d0,((unk_FFB7C8-$1000000)).w
		cmpi.b  #$FF,3(a0)
		beq.w   loc_646E
		move.w  d0,-(sp)
		jsr     sub_806C
		move.w  (sp)+,d0
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		blt.s   loc_6432
loc_646E:
		jsr     sub_8068
		bsr.w   sub_5FE2
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
		move.w  d1,((unk_FFB7CA-$1000000)).w
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_GetForceItemsFromForceID
		move.b  (a0,d1.w),d1
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     j_FindEmptyItemSlotFromTargetID
		bcc.w   loc_655E
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     j_GetForceItemsFromForceID
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_64E6
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_64E6
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_656C
loc_64E6:
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		cmp.w   ((word_FFB7C4-$1000000)).w,d0
		bne.w   loc_6512
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     j_GetForceItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  d2,d1
		jsr     j_FindEmptyItemSlot
		bra.s   loc_656C
loc_6512:
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     j_GetForceItemsFromForceID
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     j_RemoveItemFromTargetID
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_GetForceItemsFromForceID
		clr.w   d2
		move.b  (a0,d1.w),d2
loc_653E:
		jsr     j_RemoveItemFromTargetID
loc_6544:
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
loc_654A:
		jsr     j_FindEmptyItemSlotFromTargetID
loc_6550:
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  (sp)+,d1
loc_6556:
		jsr     j_FindEmptyItemSlotFromTargetID
		bra.s   loc_656C
loc_655E:
		move.w  ((word_FFB7C4-$1000000)).w,d0
loc_6562:
		move.w  ((unk_FFB7C6-$1000000)).w,d1
loc_6566:
		jsr     j_RemoveItemFromTargetID
loc_656C:
		trap    #7
loc_656E:
		move.w  #$11,d0
		trap    #8
loc_6574:
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
loc_6580:
		beq.w   loc_63BA
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_63B4


; =============== S U B R O U T I N E =======================================

sub_6588:
		trap    #5
		bsr.w   sub_617C
loc_658E:
		move.w  #$12,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		move.w  d0,((word_FFB7C4-$1000000)).w
loc_65A4:
		bmi.w   loc_605A
		move.w  d0,d2
loc_65AA:
		bsr.w   FindBattleMember
		move.w  d0,((TEXT_NAME_INDEX-$1000000)).w
		move.w  #$300,d1
loc_65B6:
		jsr     j_LoadEquippableItemsFromForceID
		bne.s   loc_65CE
		bsr.w   sub_5FE2
		trap    #7
		move.w  #$1B,d0
		trap    #8
		trap    #7
		bra.s   loc_6630

	; End of function sub_6588


; START OF FUNCTION CHUNK FOR sub_6588

loc_65CE:
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     j_LoadEquippableItemsFromForceID
		beq.w   loc_65F4
loc_65E0:
		clr.b   ((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_65F4
loc_65EC:
		bsr.w   sub_6C6E
		bra.w   loc_605A
loc_65F4:
		move.w  #$200,d1
loc_65F8:
		move.w  ((word_FFB7C4-$1000000)).w,d0
loc_65FC:
		jsr     j_LoadEquippableItemsFromForceID
		beq.w   loc_662C
		move.b  #1,((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_662C
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
loc_661C:
		jsr     j_LoadEquippableItemsFromForceID
		bne.s   loc_65CE
		bsr.w   sub_6C6E
loc_6628:
		bra.w   loc_605A
loc_662C:
		bsr.w   sub_6C6E
loc_6630:
		bsr.w   sub_5FE2
		trap    #7
		move.w  #$14,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		beq.w   loc_658E
loc_664C:
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_6588


; =============== S U B R O U T I N E =======================================

sub_6650:
		trap    #5
loc_6652:
		bsr.w   sub_617C
loc_6656:
		move.w  #$15,d0
		trap    #8
loc_665C:
		jsr     sub_8030
loc_6662:
		jsr     sub_8044
		bsr.w   sub_5FE2
		tst.w   d0
		bmi.w   loc_605A
		jsr     j_GetForceItemsFromForceID
		clr.w   d1
		move.b  ((CURRENT_DIAMENU_CHOICE-$1000000)).w,d1
loc_667E:
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((TEXT_NAME_INDEX-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_66B8
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_66B8
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_66DE

	; End of function sub_6650


; START OF FUNCTION CHUNK FOR sub_6650

loc_66B8:
		jsr     j_GetItemType
		btst    #$B,d2
		bne.s   loc_66D6
		jsr     j_IncreaseDealsItemStock
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItemFromTargetID
		bra.s   loc_66DE
loc_66D6:
		trap    #7
		move.w  #$16,d0
		trap    #8
loc_66DE:
		trap    #7
		move.w  #$17,d0
		trap    #8
		jsr     (j_YesNoChoiceBox).l
		trap    #7
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		beq.w   loc_6656
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_6650


; =============== S U B R O U T I N E =======================================

sub_66FA:
		move.w  #1,(word_FFB7C4).l
		bra.w   loc_67BC

	; End of function sub_66FA


; =============== S U B R O U T I N E =======================================

sub_6706:
		move.l  sp,(dword_FF0EFE).l
		clr.w   (word_FFB7C4).l 
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   sub_679A
		jsr     sub_203A4
		clr.b   (byte_FFB53A).l
		move.w  #$15,(SCREEN_POSITION).l
		move.w  #$21A,(CURSOR_POSITION).l
		move.b  #1,(byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (byte_FFB4C7).l
		move.b  #$FF,(byte_FFB4D3).l
loc_6754:
		clr.w   d0
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d0,-(sp)
		move.w  d6,d0
		jsr     sub_8094
		clr.b   (byte_FFB538).l
		jsr     (j_WaitForVInt).l
		jsr     sub_8098
		move.w  (sp)+,d0
		move.b  d0,(byte_FFB4C6).l
		jsr     sub_809C
		jsr     sub_8090
		bra.s   loc_6754

	; End of function sub_6706


; =============== S U B R O U T I N E =======================================

sub_679A:
		move.b  #$FF,(CURRENT_REGION).l
		move.b  #$FF,(CURRENT_MAP_VERSION).l
		clr.b   (CURRENT_MAP).l
		jsr     j_InitBattle
		jsr     sub_203A0
loc_67BC:
		moveq   #$FFFFFFFF,d1
		moveq   #$1E,d7
		clr.w   d0
loc_67C2:
		jsr     j_SetTargetID
		addq.w  #1,d0
		dbf     d7,loc_67C2
		moveq   #1,d0
		lea     byte_69D4(pc), a1
		jsr     sub_20038
		lea     (unk_FFCB85).l,a0
		moveq   #$1E,d1
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetTargetX
		move.b  (a1)+,d1
		jsr     j_SetTargetY
		moveq   #2,d0
loc_6804:
		move.b  (a0)+,d1
		blt.s   loc_682C
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetTargetX
		move.b  (a1)+,d1
		jsr     j_SetTargetY
		addq.w  #1,d0
		bra.s   loc_6804
loc_682C:
		jsr     sub_2003C
		lea     (unk_FFCB84).l,a0
loc_6838:
		move.b  (a0)+,d1
		blt.s   loc_6860
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetTargetX
		move.b  (a1)+,d1
		jsr     j_SetTargetY
		addq.w  #1,d0
		bra.s   loc_6838
loc_6860:
		clr.w   d0
		clr.w   d1
		tst.w   (word_FFB7C4).l 
		bne.s   loc_688C
		moveq   #1,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		moveq   #2,d1
		jsr     j_SetTargetX
		moveq   #$1A,d1
		jsr     j_SetTargetY
		bra.s   locret_6892
loc_688C:
		jsr     j_SetTargetID
locret_6892:
		rts

	; End of function sub_679A


; =============== S U B R O U T I N E =======================================

sub_6894:
		move.w  #1,(word_FFB7C4).l

	; End of function sub_6894


; =============== S U B R O U T I N E =======================================

sub_689C:
		movem.w d0-d2,-(sp)
		movem.l a0-a1,-(sp)
		move.w  d0,-(sp)
		move.w  d1,d0
		cmpi.w  #$1E,d1
		beq.s   loc_68B8
		jsr     j_GetForceMemberHP
		tst.w   d1
		beq.s   loc_68C0
loc_68B8:
		jsr     j_GetMapSprite
		bra.s   loc_68C2
loc_68C0:
		moveq   #$2B,d1 
loc_68C2:
		bsr.w   sub_690A
		move.w  (sp)+,d0
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  d0,d7
		lsl.w   #3,d0
		add.w   d7,d0
		add.w   d0,d0
		addi.w  #$100,d0
		lsl.w   #5,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		tst.w   (word_FFB7C4).l 
		bne.s   loc_68F4
		jsr     (j_DMAFromRAMToVRAM).l
		bra.s   loc_6900
loc_68F4:
		jsr     (sub_278).l
loc_68FA:
		jsr     (j_SetVIntParam3AndWait).l
loc_6900:
		movem.l (sp)+,a0-a1
		movem.w (sp)+,d0-d2
		rts

	; End of function sub_689C


; =============== S U B R O U T I N E =======================================

sub_690A:
		move.w  d2,d7
		add.w   d7,d7
		move.w  off_6916(pc,d7.w),d7
		jmp     off_6916(pc,d7.w)

	; End of function sub_690A

off_6916:       dc.w sub_6932-off_6916
		dc.w sub_693A-off_6916
		dc.w sub_691E-off_6916
		dc.w sub_69CA-off_6916

; =============== S U B R O U T I N E =======================================

sub_691E:
		movea.l (p_pt_Sprites).l,a0

	; End of function sub_691E


; START OF FUNCTION CHUNK FOR sub_6932

loc_6924:
		move.w  d1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jmp     (sub_300).l

; END OF FUNCTION CHUNK FOR sub_6932


; =============== S U B R O U T I N E =======================================

sub_6932:
		movea.l (p_p_MapSprite304).l,a0
		bra.s   loc_6924

	; End of function sub_6932


; =============== S U B R O U T I N E =======================================

sub_693A:
		bsr.w   sub_69CA
		lea     (FF3000_LOADING_SPACE).l,a0
		moveq   #1,d6
loc_6946:
		movea.l a0,a1
		adda.l  #$300,a1
		moveq   #$17,d7
loc_6950:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_6950
		movea.l a0,a1
		adda.l  #$240,a1
		moveq   #$17,d7
loc_6970:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_6970
		movea.l a0,a1
		adda.l  #$180,a1
		moveq   #$17,d7
loc_6990:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_6990
		dbf     d6,loc_6946
		movem.l d7-a1,-(sp)
		lea     (unk_FF3240).l,a0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$240,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		rts

	; End of function sub_693A


; =============== S U B R O U T I N E =======================================

sub_69CA:
		movea.l (p_p_MapSprite156).l,a0
		bra.w   loc_6924

	; End of function sub_69CA

byte_69D4:      dc.b 1                  ; HQ Positions
		dc.b   3
		dc.b $18
		dc.b   2
		dc.b  $D
		dc.b $17
		dc.b   2
		dc.b  $E
		dc.b $17
		dc.b   2
		dc.b $10
		dc.b $17
		dc.b   2
		dc.b $11
		dc.b $17
		dc.b   2
		dc.b  $D
		dc.b $19
		dc.b   2
		dc.b  $E
		dc.b $19
		dc.b   2
		dc.b $10
		dc.b $19
		dc.b   2
		dc.b $11
		dc.b $19
		dc.b   2
		dc.b  $D
		dc.b $1B
		dc.b   2
		dc.b  $E
		dc.b $1B
		dc.b   2
		dc.b $10
		dc.b $1B
		dc.b   2
		dc.b  $E
		dc.b   7
		dc.b   3
		dc.b $11
		dc.b   6
		dc.b   3
		dc.b  $C
		dc.b  $B
		dc.b   2
		dc.b  $A
		dc.b   8
		dc.b   3
		dc.b  $D
		dc.b  $A
		dc.b   1
		dc.b  $D
		dc.b   6
		dc.b   2
		dc.b $10
		dc.b   4
		dc.b   2
		dc.b  $C
		dc.b   8
		dc.b   2
		dc.b   2
		dc.b   3
		dc.b   2
		dc.b  $F
		dc.b   4
		dc.b   0
		dc.b  $A
		dc.b   5
		dc.b   1
		dc.b   2
		dc.b   7
		dc.b   1
		dc.b   4
		dc.b   3
		dc.b   2
		dc.b $12
		dc.b   8
		dc.b   0
		dc.b   4
		dc.b   7
		dc.b   0
		dc.b   9
		dc.b   5
		dc.b   1
		dc.b   9
		dc.b   9
		dc.b   0
		dc.b   5
		dc.b $10

; =============== S U B R O U T I N E =======================================

sub_6A2E:
		jsr     sub_20044
		clr.w   (word_FFB7C4).l 
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   sub_6A7E
		clr.b   (byte_FFB53A).l
		move.w  #$1605,(SCREEN_POSITION).l
		move.w  #$1B09,(CURSOR_POSITION).l
		clr.b   (byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (byte_FFB4C7).l
		move.b  #$FF,(byte_FFB4D3).l
		move.b  #1,(byte_FFB4D7).l
		rts

	; End of function sub_6A2E


; =============== S U B R O U T I N E =======================================

sub_6A7E:
		clr.b   (CURRENT_REGION).l
		clr.b   (CURRENT_MAP).l
		move.b  #$FF,(CURRENT_MAP_VERSION).l
		jsr     j_InitBattle
		jsr     sub_203A0
		moveq   #$1F,d7
		lea     (BATTLE_STATS).l,a1
		lea     unk_6AB8(pc), a0
		nop
loc_6AAC:
		move.l  (a0)+,(a1)
		lea     $10(a1),a1
		dbf     d7,loc_6AAC
		rts

	; End of function sub_6A7E

unk_6AB8:       dc.b $1E
		dc.b $1B
		dc.b   9
		dc.b   0
		dc.b   1
		dc.b $1A
		dc.b  $A
		dc.b   0
		dc.b  $E
		dc.b $1B
		dc.b  $A
		dc.b   0
		dc.b  $A
		dc.b $1C
		dc.b  $A
		dc.b   0
		dc.b  $F
		dc.b $1C
		dc.b   8
		dc.b   0
		dc.b $13
		dc.b $1D
		dc.b   8
		dc.b   0
		dc.b   8
		dc.b $1D
		dc.b   9
		dc.b   0
		dc.b   3
		dc.b $1D
		dc.b  $A
		dc.b   0
		dc.b  $C
		dc.b $1C
		dc.b   9
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF

; START OF FUNCTION CHUNK FOR sub_5A88

loc_6B38:
		clr.w   d1
		clr.w   d2
		move.b  ((CURSOR_POSITION-$1000000)).w,d1
		move.b  ((CURSOR_POSITION+1-$1000000)).w,d2
loc_6B44:
		jsr     sub_80A8
		move.w  d2,d3
		mulu.w  ((MAP_WIDTH-$1000000)).w,d3
		add.w   d1,d3
		lea     (unk_FFA4C0).l,a0
		btst    #2,(a0,d3.w)
		bne.s   loc_6B44
		move.w  d1,d3
		moveq   #1,d0
		moveq   #$1D,d7
loc_6B66:
		jsr     j_GetTargetX
		cmp.b   d1,d3
		bne.s   loc_6B7C
		jsr     j_GetTargetY
		cmp.b   d1,d2
		beq.w   loc_6B9A
loc_6B7C:
		addq.w  #1,d0
		dbf     d7,loc_6B66
		trap    #5
		move.w  #$1B0,d0
		trap    #8
loc_6B8A:
		bsr.w   j_WaitForVInt
		tst.b   (P1_INPUT).l    
		beq.s   loc_6B8A
		trap    #6
		rts
loc_6B9A:
		move.w  d0,-(sp)
		jsr     j_GetTargetID
		move.w  d0,-(sp)
		move.w  d1,-(sp)
		move.w  d1,d0
		jsr     j_GetMapSprite
		move.l  a0,-(sp)
		movea.l (p_SpriteTextSounds).l,a0
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d1
		addi.w  #$45,d1 
		move.w  d1,((word_FFC0BE-$1000000)).w
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		move.w  (sp)+,d0
		clr.w   d2
		move.b  ((SPRITE_DIRECTION-$1000000)).w,d2
		bsr.w   sub_6894
		move.w  (sp)+,d0
		cmpi.w  #1,d0
		bne.s   loc_6BF6
		jsr     (sub_338).l
		bsr.w   sub_66FA
		jsr     sub_8030
		jsr     (sub_30C).l
		rts
loc_6BF6:
		move.w  d0,-(sp)
		moveq   #$FFFFFFFF,d2
		moveq   #$23,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   loc_6C08
		moveq   #$39,d2 
		bra.s   loc_6C12
loc_6C08:
		cmpi.b  #$15,((CURSOR_POSITION+1-$1000000)).w
		bge.s   loc_6C12
		moveq   #$1C,d2
loc_6C12:
		move.w  (sp)+,d0
		jsr     j_GetTargetID
		move.w  d1,d0
		movem.w d0/d2,-(sp)
		move.w  d0,-(sp)
		jsr     sub_20304
		move.w  d1,d0
		jsr     sub_802C
		move.w  (sp)+,d0
		jsr     sub_80D0
		trap    #5
		movem.w (sp)+,d0/d2
		move.w  d0,-(sp)
		jsr     j_GetForceMemberHP
		tst.w   d1
		ble.s   loc_6C56
		andi.w  #$FF,d0
		addi.w  #$105,d0
		add.w   d2,d0
		bra.s   loc_6C5A
loc_6C56:
		move.w  #$15C,d0
loc_6C5A:
		trap    #8
		move.w  (sp)+,d0
		jsr     sub_80D4
		jsr     sub_8030
		trap    #6
		rts

; END OF FUNCTION CHUNK FOR sub_5A88


; =============== S U B R O U T I N E =======================================

sub_6C6E:
		bsr.w   sub_7104
		lea     (unk_FFB7DA).l,a0
		move.w  #$C09,d0
		move.l  #$9042004,d1
		move.w  #4,d2
		jsr     sub_8020
		bsr.w   sub_735A
		lea     (unk_FFB7DA).l,a0
		move.w  #$1203,d0
		move.l  #$9012001,d1
		move.w  #4,d2
		jsr     sub_8020
		move.w  (word_FFB7C4).l,d0
		jmp     sub_8030

	; End of function sub_6C6E


; =============== S U B R O U T I N E =======================================

sub_6CB6:
		tst.b   (byte_FFB526).l
		bne.s   loc_6CC4
		move.w  #$100,d1
		bra.s   loc_6CC8

	; End of function sub_6CB6


; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6CC4:
		move.w  #$200,d1
loc_6CC8:
		move.w  (word_FFB7C4).l,d0
		jsr     j_GetEquippedItem
		move.w  d2,(word_FFBC5A).l
		move.w  d2,(word_FFBC5C).l
		move.w  d3,(word_FFBC58).l
		bne.s   loc_6CEE
		clr.w   d0
		bra.w   loc_6D1E
loc_6CEE:
		cmpi.w  #$FFFF,d3
		bne.s   loc_6D08
		cmpi.w  #4,(word_FFA8C0).l
		bne.s   loc_6D02
		clr.w   d0
		bra.s   loc_6D04
loc_6D02:
		moveq   #3,d0
loc_6D04:
		bra.w   loc_6D1E
loc_6D08:
		bsr.w   sub_71A2
		clr.w   d0
		lea     (unk_FFA8C2).l,a0
loc_6D14:
		cmp.w   (a0),d3
		beq.s   loc_6D1E
		addq.w  #1,d0
		addq.l  #4,a0
		bra.s   loc_6D14
loc_6D1E:
		move.b  d0,(CURRENT_DIAMENU_CHOICE).l
		move.w  d0,(word_FFBC5E).l
		move.b  d0,(byte_FFB529).l
		bsr.w   sub_70A6
		tst.w   (word_FFD082).l
		bne.w   loc_6D8E
		move.w  (word_FFB7C4).l,d0
		jsr     sub_20304
		move.w  d1,d0
		jsr     sub_802C
		bsr.w   sub_735A
		lea     (unk_FFB7DA).l,a0
		move.w  #$1203,d0
		move.l  #$20010901,d1
		move.w  #4,d2
		jsr     sub_8020
		bsr.w   sub_7104
		lea     (unk_FFB7DA).l,a0
		move.w  #$C09,d0
		move.l  #$20040904,d1
		move.w  #4,d2
		jsr     sub_8020
loc_6D8E:
		bsr.w   sub_6FE6
		bsr.w   sub_70E8
		bsr.w   nullsub_2
		bsr.w   sub_71A2
		moveq   #$F,d6
loc_6DA0:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6DC4
		cmpi.w  #2,(word_FFA8C0).l
		blt.s   loc_6DC4
		move.b  #1,(CURRENT_DIAMENU_CHOICE).l
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w SFX_MENU_SELECTION
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6DC4:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6DE8
		cmpi.w  #3,(word_FFA8C0).l
		blt.s   loc_6DE8
		move.b  #2,(CURRENT_DIAMENU_CHOICE).l
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w SFX_MENU_SELECTION
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6DE8:
		btst    #0,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E00
		clr.b   (CURRENT_DIAMENU_CHOICE).l
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w SFX_MENU_SELECTION
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6E00:
		btst    #1,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E1A
		move.b  #3,(CURRENT_DIAMENU_CHOICE).l
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w SFX_MENU_SELECTION
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6E1A:
		btst    #4,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E42
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		bsr.w   sub_7104
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		moveq   #$FFFFFFFF,d0
		bra.w   loc_6F8E
loc_6E42:
		btst    #5,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E58
		clr.w   d0
		move.b  (CURRENT_DIAMENU_CHOICE).l,d0
		bra.w   loc_6EB8
loc_6E58:
		btst    #6,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_6EA4
		clr.w   d0
		move.b  (CURRENT_DIAMENU_CHOICE).l,d0
		bra.w   loc_6EB8

; END OF FUNCTION CHUNK FOR sub_6CB6

loc_6E70:       bsr.w   sub_70A6
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (j_WaitForVInt).l
		moveq   #$13,d6
		bsr.w   sub_7054
		move.w  d6,-(sp)
		bsr.w   sub_7104
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		move.w  (sp)+,d6
		bra.s   loc_6EA8

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6EA4:
		bsr.w   sub_7054
loc_6EA8:
		jsr     (j_WaitForVInt).l
		subq.w  #1,d6
		bne.s   loc_6EB4
		moveq   #$14,d6
loc_6EB4:
		bra.w   loc_6DA0
loc_6EB8:
		movem.w d0-d1,-(sp)
		move.w  (word_FFBC5A).l,d1
		move.w  d1,(TEXT_NAME_INDEX).l
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_6F3C
		move.w  (word_FFBC5E).l,d3
		cmp.b   (CURRENT_DIAMENU_CHOICE).l,d3
		beq.s   loc_6F3A
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		jsr     sub_805C
		move.b  d3,(CURRENT_DIAMENU_CHOICE).l
loc_6EF8:
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (j_WaitForVInt).l
		moveq   #$13,d6
		bsr.w   sub_7054
		bsr.w   sub_7104
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		bsr.w   sub_6FA0
		trap    #7
		move.w  #$F,d0
		trap    #8
		trap    #7
		jsr     sub_8088
		bsr.w   loc_73B6
loc_6F3A:
		bra.s   loc_6F8A
loc_6F3C:
		move.w  (word_FFBC5C).l,d1
		jsr     j_GetItemType
		btst    #$D,d2
		beq.s   loc_6F8A
		jsr     sub_805C
		move.w  (word_FFB7C4).l,d2
		bsr.w   FindBattleMember
		move.w  d0,(TEXT_NAME_INDEX).l
		bsr.w   sub_6FA0
		trap    #7
		move.w  #$13,d0
		trap    #8
		trap    #7
		jsr     sub_8088
		bsr.w   loc_73B6
		move.w  (word_FFB7C4).l,d0
		moveq   #4,d1
		jsr     j_SetForceMemberStatus
loc_6F8A:
		movem.w (sp)+,d0-d1
loc_6F8E:
		movem.w d0-d1,-(sp)
		clr.w   d6
		bsr.w   sub_7054
		bsr.s   sub_6FA0
		movem.w (sp)+,d0-d1
		rts

; END OF FUNCTION CHUNK FOR sub_6CB6


; =============== S U B R O U T I N E =======================================

sub_6FA0:
		tst.w   (word_FFD692).l
		beq.s   locret_6FE4
		clr.w   d6
		bsr.w   sub_7054
		bsr.w   sub_70E8
		lea     (unk_FFB7DA).l,a0
		move.l  #$90D200D,d1
		move.w  #$C05,d0
		move.w  #4,d2
		jsr     sub_8020
		lea     asc_75A0(pc), a0
		move.w  #$606,d0
		move.l  #$20BFA0B,d1
		move.w  #4,d2
		jmp     sub_8020
locret_6FE4:
		rts

	; End of function sub_6FA0


; =============== S U B R O U T I N E =======================================

sub_6FE6:
		bsr.w   sub_71C0
		lea     asc_75A0(pc), a0
		move.w  #$606,d0
		move.l  #$FA0B020B,d1
		move.w  #4,d2
		jsr     sub_8020
		bsr.w   sub_70E8
loc_7006:
		lea     (unk_FFB7DA).l,a0
		move.w  #$C05,d0
		move.l  #$200D090D,d1
		move.w  #4,d2
		jmp     sub_8020

	; End of function sub_6FE6


; =============== S U B R O U T I N E =======================================

sub_7020:
		lea     (unk_FFB7DA).l,a0
		move.w  #$C05,d0
		move.l  #$90D,d1
		jsr     sub_801C
		bra.w   loc_73B6

	; End of function sub_7020


; =============== S U B R O U T I N E =======================================

sub_703A:
		lea     (unk_FFB7DA).l,a0
		move.w  #$C09,d0
		move.l  #$904,d1
		jsr     sub_801C
		bra.w   loc_73B6

	; End of function sub_703A


; =============== S U B R O U T I N E =======================================

sub_7054:
		lea     (SPRITE_Y).l,a1 
		lea     word_73EE(pc), a0
		nop
		clr.w   d0
		move.b  (CURRENT_DIAMENU_CHOICE).l,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		move.w  (a0)+,d0
		cmpi.w  #$A,d6
		bge.s   loc_7076
		moveq   #1,d0
loc_7076:
		btst    #7,(P1_INPUT).l 
		beq.s   loc_7082
		moveq   #1,d0
loc_7082:
		move.w  d0,(a1)+
		move.w  (a0)+,d0
		lsr.w   #8,d0
		move.b  d0,(a1)+
		addq.l  #1,a1
		move.l  (a0)+,(a1)+
		rts

	; End of function sub_7054


; =============== S U B R O U T I N E =======================================

sub_7090:
		move.b  (CURRENT_DIAMENU_CHOICE).l,d7
		cmp.b   (byte_FFB529).l,d7
		beq.s   nullsub_2
		move.b  d7,(byte_FFB529).l

	; End of function sub_7090


; =============== S U B R O U T I N E =======================================

nullsub_2:
		rts

	; End of function nullsub_2


; =============== S U B R O U T I N E =======================================

sub_70A6:
		lea     (unk_FFA8C2).l,a0
		clr.w   d2
		move.b  (CURRENT_DIAMENU_CHOICE).l,d2
		lsl.w   #2,d2
		move.w  2(a0,d2.w),(word_FFBC5C).l
		move.w  (a0,d2.w),d2
loc_70C2:
		move.w  (word_FFB7C4).l,d0
		tst.b   (byte_FFB526).l
		bne.s   loc_70D6
		move.w  #$100,d1
		bra.s   loc_70DA
loc_70D6:
		move.w  #$200,d1
loc_70DA:
		jmp     loc_20290

	; End of function sub_70A6

		dc.b   0
		dc.b $AE 
		dc.b   0
		dc.b $AE 
		dc.b   0
		dc.b $62 
		dc.b   0
		dc.b $88 

; =============== S U B R O U T I N E =======================================

sub_70E8:
		bsr.w   sub_71A2
		lea     wl_ItemEquipItemName(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$CC,d7 
loc_70FA:
		jsr     (j_CopyBytes).l
		bra.w   loc_72D8

	; End of function sub_70E8


; =============== S U B R O U T I N E =======================================

sub_7104:
		lea     wl_ItemEquipStats(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$D8,d7 
		jsr     (j_CopyBytes).l
		move.w  (word_FFB7C4).l,d2
		bsr.w   FindBattleMember
		jsr     j_GetTargetATT
		lea     (unk_FFB804).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		move.w  (word_FFB7C4).l,d2
		bsr.w   FindBattleMember
		jsr     j_GetTargetDEF
		lea     (unk_FFB834).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		move.w  (word_FFB7C4).l,d2
		bsr.w   FindBattleMember
		jsr     j_GetTargetMOVE
		lea     (unk_FFB864).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		move.w  (word_FFB7C4).l,d2
		bsr.w   FindBattleMember
		jsr     j_GetTargetAGI
		lea     (unk_FFB894).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		rts

	; End of function sub_7104


; =============== S U B R O U T I N E =======================================

sub_71A2:
		tst.b   (byte_FFB526).l
		bne.s   loc_71B0
		move.w  #$100,d1
		bra.s   loc_71B4
loc_71B0:
		move.w  #$200,d1
loc_71B4:
		move.w  (word_FFB7C4).l,d0
		jmp     j_LoadEquippableItems

	; End of function sub_71A2


; =============== S U B R O U T I N E =======================================

sub_71C0:
		bsr.s   sub_71A2
		move.w  (word_FFA8C0).l,d7
		subq.w  #1,d7
		lea     (unk_FFA8C2).l,a3
		clr.w   d1
		bsr.w   sub_72A0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$C0,d7 
		jsr     (j_CopyBytes).l
		adda.w  #$C0,a1 
		move.l  a1,-(sp)
		move.w  #$BF,d0 
loc_71F0:
		clr.l   (a1)+
		dbf     d0,loc_71F0
		movea.l (sp)+,a1
		moveq   #1,d1
		bsr.w   sub_72A0
		moveq   #5,d7
loc_7200:
		move.l  (a0)+,$10(a1)
		move.l  (a0)+,$14(a1)
		move.l  (a0)+,$18(a1)
		move.l  (a0)+,$1C(a1)
		move.l  (a0)+,$40(a1)
		move.l  (a0)+,$44(a1)
		move.l  (a0)+,$48(a1)
		move.l  (a0)+,$4C(a1)
		adda.w  #$20,a1 
		dbf     d7,loc_7200
		adda.w  #$40,a1 
		moveq   #2,d1
		bsr.w   sub_72A0
		moveq   #5,d7
loc_7234:
		move.l  (a0)+,$10(a1)
		move.l  (a0)+,$14(a1)
		move.l  (a0)+,$18(a1)
		move.l  (a0)+,$1C(a1)
		move.l  (a0)+,$40(a1)
		move.l  (a0)+,$44(a1)
		move.l  (a0)+,$48(a1)
		move.l  (a0)+,$4C(a1)
		adda.w  #$20,a1 
		dbf     d7,loc_7234
		adda.w  #$40,a1 
		moveq   #3,d1
		bsr.w   sub_72A0
		move.w  #$C0,d7 
		jsr     (j_CopyBytes).l
		adda.w  #$C0,a1 
		lea     unk_740E(pc), a0
		move.w  #$200,d7
		jsr     (j_CopyBytes).l
loc_7282:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($F800).l,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_278).l
		jmp     (j_SetVIntParam3AndWait).l

	; End of function sub_71C0


; =============== S U B R O U T I N E =======================================

sub_72A0:
		movea.l (off_CC024).l,a0
		cmp.w   (word_FFA8C0).l,d1
		blt.s   loc_72C2
		adda.l  #$2F40,a0
		cmpi.w  #3,d1
		bne.s   loc_72C0
		adda.l  #$C0,a0 
loc_72C0:
		bra.s   locret_72D6
loc_72C2:
		lsl.w   #2,d1
		move.w  2(a3,d1.w),d1
		andi.w  #$3F,d1 
		move.w  d1,d7
		add.w   d1,d1
		add.w   d7,d1
		lsl.w   #6,d1
		adda.w  d1,a0
locret_72D6:
		rts

	; End of function sub_72A0


; START OF FUNCTION CHUNK FOR sub_70E8

loc_72D8:
		movem.l d7-a1,-(sp)
		lea     wl_ItemEquipItemName(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$78,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     aWeaponring(pc), a0
		lea     (unk_FFB7F4).l,a1
		btst    #0,(byte_FFB526).l
		beq.s   loc_730A
		addq.w  #6,a0
loc_730A:
		moveq   #6,d7
		moveq   #$FFFFFFE8,d1
		jsr     sub_804C
		clr.w   d1
		move.b  (CURRENT_DIAMENU_CHOICE).l,d1
		cmpi.w  #4,(word_FFA8C0).l
		beq.w   loc_7338
		cmpi.w  #3,d1
		bne.s   loc_7338
		lea     unk_758E(pc), a0
		nop
		moveq   #6,d7
		bra.s   loc_734C
loc_7338:
		lea     (unk_FFA8C2).l,a0
		lsl.w   #2,d1
		move.w  2(a0,d1.w),d1
		jsr     j_GetItemName
		move.w  d1,d7
loc_734C:
		lea     (unk_FFB80C).l,a1
		moveq   #$FFFFFFE8,d1
		jmp     sub_804C

; END OF FUNCTION CHUNK FOR sub_70E8


; =============== S U B R O U T I N E =======================================

sub_735A:
		movem.l d7-a1,-(sp)
		lea     wl_ItemEquipCharName(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     (unk_FFB804).l,a1
		move.l  a1,-(sp)
		move.w  (word_FFB7C4).l,d0
		jsr     j_GetForceStatsAddress
		moveq   #$FFFFFFDC,d1
		moveq   #$A,d7
		jsr     sub_804C
		movea.l (sp)+,a1
		lea     $12(a1),a1
		move.w  (word_FFB7C4).l,d0
		jsr     j_GetForceMemberClass
		jsr     j_GetClassName
		move.w  d1,d7
		moveq   #$FFFFFFDC,d1
		jsr     sub_804C
loc_73B6:
		lea     ((loc_BFFE+2)).l,a1
		move.w  #$780,d0
		lea     (unk_FFD000).l,a0
		moveq   #2,d1
		jsr     (sub_278).l
		jmp     (j_SetVIntParam3).l

	; End of function sub_735A


; =============== S U B R O U T I N E =======================================

; Find battle member with index D2

FindBattleMember:
		
		clr.w   d0
		moveq   #$1F,d7
loc_73D8:
		jsr     j_GetTargetID
		cmp.b   d2,d1
		beq.w   locret_73EC
		addq.w  #1,d0
		dbf     d7,loc_73D8
		moveq   #$FFFFFFFF,d0
locret_73EC:
		rts

	; End of function FindBattleMember

word_73EE:      dc.w $D7
		dc.w $B01
		dc.l $C7DC009F
		dc.w $E3
		dc.w $B01
		dc.l $C7DC008F
		dc.w $E3
		dc.w $B01
		dc.l $C7DC00AF
		dc.w $EF
		dc.w $B01
		dc.l $C7DC009F
unk_740E:       dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b  $A
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
unk_758E:       dc.b $B2 
		dc.b $A5 
		dc.b $AD 
		dc.b $AF 
		dc.b $B6 
		dc.b $A5 
aWeaponring:    dc.b 'WEAPONRING',0
		dc.b   0
asc_75A0:       dc.b 'À',0
		dc.b $C0 
		dc.b   0
		dc.b $C7 
		dc.b $C0 
		dc.b $C7 
		dc.b $C1 
		dc.b $C0 
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $C7 
		dc.b $C6 
		dc.b $C7 
		dc.b $C7 
		dc.b $C7 
		dc.b $C2 
		dc.b $C7 
		dc.b $C3 
		dc.b $C7 
		dc.b $CE 
		dc.b $C7 
		dc.b $CF 
		dc.b $C7 
		dc.b $C8 
		dc.b $C7 
		dc.b $C9 
		dc.b $C7 
		dc.b $C4 
		dc.b $C7 
		dc.b $C5 
		dc.b $C7 
		dc.b $D0 
		dc.b $C7 
		dc.b $D1 
		dc.b $C7 
		dc.b $CA 
		dc.b $C7 
		dc.b $CB 
		dc.b $C7 
		dc.b $D6 
		dc.b $C7 
		dc.b $D7 
		dc.b $C7 
		dc.b $D2 
		dc.b $C7 
		dc.b $D3 
		dc.b $C7 
		dc.b $CC 
		dc.b $C7 
		dc.b $CD 
		dc.b $C7 
		dc.b $D8 
		dc.b $C7 
		dc.b $D9 
		dc.b $C7 
		dc.b $D4 
		dc.b $C7 
		dc.b $D5 
		dc.b $C0 
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $C7 
		dc.b $DA 
		dc.b $C7 
		dc.b $DB 
		dc.b $C0 
		dc.b   0
		dc.b $C0 
		dc.b   0
wl_ItemEquipStats:
		incbin "data/graphics/tech/windowlayouts/wl-itemequipstats.bin"
wl_ItemEquipCharName:
		incbin "data/graphics/tech/windowlayouts/wl-itemequipcharname.bin"
wl_ItemEquipItemName:
		incbin "data/graphics/tech/windowlayouts/wl-itemequipitemname.bin"

; =============== S U B R O U T I N E =======================================

sub_77A4:
		jsr     sub_80A4
		move.w  d0,((word_FFB7C4-$1000000)).w
		cmpi.w  #$FFFF,d0
		beq.w   loc_78F4
		jsr     (j_CheckEventFlag).l
		bne.w   loc_7898
loc_77C0:
		bsr.w   sub_80C4
		cmpi.b  #$3F,d3 
		beq.w   loc_7898
		clr.w   d7
		move.b  ((unk_FFB4C5-$1000000)).w,d7
		move.w  d7,((TEXT_NAME_INDEX-$1000000)).w
		cmpi.b  #$3F,d3 
		bgt.w   loc_78B0
		move.w  d3,((word_FFF846-$1000000)).w
		jsr     (sub_304).l
		clr.w   ((word_FFC0BE-$1000000)).w
		movem.w d1,-(sp)
		move.b  ((unk_FFB4C5-$1000000)).w,d0
		move.w  ((word_FFF846-$1000000)).w,d1
		jsr     j_FindEmptyItemSlotFromTargetID
		movem.w (sp)+,d1
		bcs.w   loc_7872
		trap    #SOUND_COMMAND
		dc.w MUSIC_ITEM
		move.w  #$48,d0 
		trap    #8
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     (j_SetEventFlag).l
		bsr.w   sub_788C
		cmpi.w  #$26,((word_FFF846-$1000000)).w 
		bne.s   locret_7870
		moveq   #$37,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$2B,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   locret_7870
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		jsr     (sub_304).l
		move.w  #$169,d0
		trap    #8
		jsr     (sub_30C).l
		movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (dword_FF0EF6).l
		clr.w   d0
locret_7870:
		rts

	; End of function sub_77A4


; START OF FUNCTION CHUNK FOR sub_77A4

loc_7872:
		movem.w d1-d2,-(sp)
		move.w  #$48,d0 
		trap    #8
		move.w  #$49,d0 
		trap    #8
		movem.w (sp)+,d1-d2
		jsr     sub_80C8

; END OF FUNCTION CHUNK FOR sub_77A4


; =============== S U B R O U T I N E =======================================

sub_788C:
		jsr     (sub_30C).l
		jmp     sub_8094

	; End of function sub_788C


; START OF FUNCTION CHUNK FOR sub_77A4

loc_7898:
		jsr     (sub_304).l
		move.w  #$4A,d0 
		trap    #8
loc_78A4:
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     (j_SetEventFlag).l
		bra.s   sub_788C
loc_78B0:
		subi.w  #$40,d3 
		add.w   d3,d3
		clr.l   d1
		move.w  word_78E2(pc,d3.w),d1
		move.l  d1,((dword_FFF900-$1000000)).w
		jsr     j_IncreaseGold
		jsr     (sub_304).l
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_77A4

		dc.w MUSIC_ITEM
		move.w  #$4C,d0 
		trap    #8
		jsr     (j_PlayMusicAfterCurrentOne).l
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		bra.s   loc_78A4
word_78E2:      dc.w $32
		dc.w $A
		dc.w $14
		dc.w $1E
		dc.w $28
		dc.w $32
		dc.w $3C
		dc.w $32
		dc.w $3C

; START OF FUNCTION CHUNK FOR sub_77A4

loc_78F4:
		tst.b   ((byte_FFB4D7-$1000000)).w
		beq.s   locret_7908
		jsr     (sub_304).l
		move.w  #$4B,d0 
		trap    #8
		bsr.s   sub_788C
locret_7908:
		rts

; END OF FUNCTION CHUNK FOR sub_77A4


; =============== S U B R O U T I N E =======================================

sub_790A:
		lea     wl_Options(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		move.b  ((unk_FF9C05-$1000000)).w,d0
		moveq   #$14,d1
loc_792A:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_793E
		addq.w  #1,d0
		andi.w  #3,d0
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SELECTION
loc_793E:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_7952
		subq.w  #1,d0
		andi.w  #3,d0
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SELECTION
loc_7952:
		btst    #4,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_79A8
		btst    #5,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7982
		btst    #6,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7982
		bsr.w   sub_7B1A
		jsr     (j_WaitForVInt).l
		bra.s   loc_792A
loc_7982:
		move.b  d0,((unk_FF9C05-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     wl_Options(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		rts

	; End of function sub_790A


; START OF FUNCTION CHUNK FOR sub_790A

loc_79A8:
		bset    #0,((unk_FFB4CA-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     wl_Options(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #$FFFFFFFF,d0
		rts

; END OF FUNCTION CHUNK FOR sub_790A


; =============== S U B R O U T I N E =======================================

sub_79D6:
		lea     (wl_Options+$EE)(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		move.b  ((unk_FF9C06-$1000000)).w,d0
		moveq   #$14,d1
loc_79F6:
		btst    #3,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_7A0A
		addq.w  #1,d0
		andi.w  #1,d0
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SELECTION
loc_7A0A:
		btst    #2,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_7A1E
		subq.w  #1,d0
		andi.w  #1,d0
		trap    #SOUND_COMMAND
		dc.w SFX_MENU_SELECTION
loc_7A1E:
		btst    #4,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7A78
		btst    #5,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7A52
		btst    #6,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7A52
		add.w   d0,d0
		bsr.w   sub_7B1A
		lsr.w   #1,d0
		jsr     (j_WaitForVInt).l
		bra.s   loc_79F6
loc_7A52:
		move.b  d0,((unk_FF9C06-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     (wl_Options+$EE)(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		rts

	; End of function sub_79D6


; START OF FUNCTION CHUNK FOR sub_79D6

loc_7A78:
		bset    #0,((unk_FFB4CA-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     (wl_Options+$EE)(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #$FFFFFFFF,d0
		rts

; END OF FUNCTION CHUNK FOR sub_79D6


; =============== S U B R O U T I N E =======================================

sub_7AA6:
		lea     (wl_Options+$1DC)(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     sub_8020
		jsr     (j_YesNoPrompt).l
		tst.b   ((CURRENT_DIAMENU_CHOICE-$1000000)).w
		bge.w   loc_7AEE
		lea     (wl_Options+$1DC)(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     sub_8020
		bset    #0,((unk_FFB4CA-$1000000)).w
		moveq   #$FFFFFFFF,d0
		rts

	; End of function sub_7AA6


; START OF FUNCTION CHUNK FOR sub_7AA6

loc_7AEE:
		lea     (wl_Options+$1DC)(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     sub_8020
		jsr     (sub_32C).l
		jsr     (j_FadeOutToBlack).l
		trap    #SOUND_COMMAND

; END OF FUNCTION CHUNK FOR sub_7AA6

		dc.w SOUND_COMMAND_FADE_OUT
		bra.w   sub_3284

; =============== S U B R O U T I N E =======================================

sub_7B1A:
		lea     (unk_FF0D28).l,a0
		cmpi.w  #7,d1
		bge.s   loc_7B32
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_7B46
loc_7B32:
		move.w  d0,d2
		add.w   d2,d2
		add.w   d0,d2
		lsl.w   #3,d2
		addi.w  #$D8,d2 
		move.w  d2,6(a0)
		move.w  #$138,(a0)
loc_7B46:
		clr.b   2(a0)
		move.w  #$C085,4(a0)
		subq.w  #1,d1
		bne.s   locret_7B56
		moveq   #$14,d1
locret_7B56:
		rts

	; End of function sub_7B1A

wl_Options:     incbin "data/graphics/tech/windowlayouts/wl-options.bin"
algn_7E22:      align $8000
