
; GAME SECTION 01 :
; Technical layer, low level game engine, menu engine, ...
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
		dc.l Trap8_DisplayMessage; TRAP #08 - Display message
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
														; x = 1 if used for backup
														; yy = 11 if odd bytes addressing, 10 if even only, 00 if both
		dc.b %100000
		dc.l $200001            ; SRAM start address
		dc.l $203FFF            ; SRAM end address
		dc.b '            '     ; Modem data
		dc.b '                    '; Memo
		dc.b '                    '
aU:             dc.b 'U               ' ; Region codes

; =============== S U B R O U T I N E =======================================

j_EnableDisplayOnVdp:
		
		bra.w   EnableDisplayOnVdp

    ; End of function j_EnableDisplayOnVdp


; =============== S U B R O U T I N E =======================================

j_DisableDisplayOnVdp:
		
		bra.w   DisableDisplayOnVdp

    ; End of function j_DisableDisplayOnVdp


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

j_ActivateVIntDmaQueueProcessing:
		
		bra.w   ActivateVIntDmaQueueProcessing

    ; End of function j_ActivateVIntDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

j_DeactivateVIntDmaQueueProcessing:
		
		bra.w   DeactivateVIntDmaQueueProcessing

    ; End of function j_DeactivateVIntDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

j_DuplicatePalettes:
		
		bra.w   DuplicatePalettes

    ; End of function j_DuplicatePalettes


; =============== S U B R O U T I N E =======================================

j_ApplyVIntCramDma:
		
		bra.w   ApplyVIntCramDma

    ; End of function j_ApplyVIntCramDma


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

j_UpdateVdpSpriteTable:
		
		bra.w   UpdateVdpSpriteTable

    ; End of function j_UpdateVdpSpriteTable


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


; =============== S U B R O U T I N E =======================================

j_RequestVdpCommandQueueProcessing:
		
		bra.w   RequestVdpCommandQueueProcessing

    ; End of function j_RequestVdpCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

j_WaitForVdpCommandQueueProcessing:
		
		bra.w   WaitForVdpCommandQueueProcessing

    ; End of function j_WaitForVdpCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

j_EnableDmaQueueProcessing:
		
		bra.w   EnableDmaQueueProcessing

    ; End of function j_EnableDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

j_WaitForDmaQueueProcessing:
		
		bra.w   WaitForDmaQueueProcessing

    ; End of function j_WaitForDmaQueueProcessing


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
		bra.w   sub_F5C

    ; End of function sub_270


; =============== S U B R O U T I N E =======================================

j_ApplyImmediateVramDma:
		
		bra.w   ApplyImmediateVramDma

    ; End of function j_ApplyImmediateVramDma


; =============== S U B R O U T I N E =======================================

j_ApplyVIntVramDma:
		
		bra.w   ApplyVIntVramDma

    ; End of function j_ApplyVIntVramDma


; =============== S U B R O U T I N E =======================================

j_UpdateVdpHScrollData:
		
		bra.w   UpdateVdpHScrollData

    ; End of function j_UpdateVdpHScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateForegroundHScrollData:
		
		bra.w   UpdateForegroundHScrollData

    ; End of function j_UpdateForegroundHScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateBackgroundHScrollData:
		
		bra.w   UpdateBackgroundHScrollData

    ; End of function j_UpdateBackgroundHScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateVdpVScrollData:
		
		bra.w   UpdateVdpVScrollData

    ; End of function j_UpdateVdpVScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateForegroundVScrollData:
		
		bra.w   UpdateForegroundVScrollData

    ; End of function j_UpdateForegroundVScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateBackgroundVScrollData:
		
		bra.w   UpdateBackgroundVScrollData

    ; End of function j_UpdateBackgroundVScrollData


; =============== S U B R O U T I N E =======================================

j_ApplyImmediateVramDmaOnCompressedTiles:
		
		bra.w   ApplyImmediateVramDmaOnCompressedTiles

    ; End of function j_ApplyImmediateVramDmaOnCompressedTiles


; =============== S U B R O U T I N E =======================================

j_ApplyVIntVramDmaOnCompressedTiles:
		
		bra.w   ApplyVIntVramDmaOnCompressedTiles

    ; End of function j_ApplyVIntVramDmaOnCompressedTiles


; =============== S U B R O U T I N E =======================================

sub_29C:
		bra.w   sub_1294        

    ; End of function sub_29C


; =============== S U B R O U T I N E =======================================

j_DMAandWait:
		bra.w   DmaAndWait

    ; End of function j_DMAandWait


; =============== S U B R O U T I N E =======================================

j_GetVdpRegStatus:
		
		bra.w   GetVdpRegStatus 

    ; End of function j_GetVdpRegStatus


; =============== S U B R O U T I N E =======================================

j_SetVdpReg:
		bra.w   SetVdpReg

    ; End of function j_SetVdpReg


; =============== S U B R O U T I N E =======================================

j_ApplyLogicalOrOnVdpReg:
		
		bra.w   ApplyLogicalOrOnVdpReg

    ; End of function j_ApplyLogicalOrOnVdpReg


; =============== S U B R O U T I N E =======================================

j_ApplyLogicalAndOnVdpReg:
		
		bra.w   ApplyLogicalAndOnVdpReg

    ; End of function j_ApplyLogicalAndOnVdpReg


; =============== S U B R O U T I N E =======================================

j_ApplyVramDmaFill:
		
		bra.w   ApplyVramDmaFill

    ; End of function j_ApplyVramDmaFill


; =============== S U B R O U T I N E =======================================

j_CopyPalette1:
		
		bra.w   CopyPalette1

    ; End of function j_CopyPalette1


; =============== S U B R O U T I N E =======================================

j_CopyPalette:
		
		bra.w   CopyPalette

    ; End of function j_CopyPalette


; =============== S U B R O U T I N E =======================================

j_CopyPalette_Loop:
		
		bra.w   CopyPalette_Loop

    ; End of function j_CopyPalette_Loop


; =============== S U B R O U T I N E =======================================

j_WriteAsciiNumber:
		
		bra.w   WriteAsciiNumber

    ; End of function j_WriteAsciiNumber


; =============== S U B R O U T I N E =======================================

j_nullsub_13E8:
		
		bra.w   nullsub_13E8

    ; End of function j_nullsub_13E8


; =============== S U B R O U T I N E =======================================

j_WaitForPlayerInput:
		
		bra.w   WaitForPlayerInput

    ; End of function j_WaitForPlayerInput


; =============== S U B R O U T I N E =======================================

j_WaitForPlayer1NewInput:
		
		bra.w   WaitForPlayer1NewInput

    ; End of function j_WaitForPlayer1NewInput


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

j_GenerateRandomNumber:
		
		bra.w   GenerateRandomNumber

    ; End of function j_GenerateRandomNumber


; =============== S U B R O U T I N E =======================================

j_PlayMusicAfterCurrentOne:
		
		bra.w   PlayMusicAfterCurrentOne

    ; End of function j_PlayMusicAfterCurrentOne


; =============== S U B R O U T I N E =======================================

j_ApplyCurrentColorFadingValue:
		
		bra.w   ApplyCurrentColorFadingValue

    ; End of function j_ApplyCurrentColorFadingValue


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

j_OpenMessageWindow:
		bra.w   sub_18DC

    ; End of function j_OpenMessageWindow


; =============== S U B R O U T I N E =======================================

j_LoadText:
		bra.w   LoadText        

    ; End of function j_LoadText


; =============== S U B R O U T I N E =======================================

j_CloseMessageWindow:
		
		bra.w   CloseMessageWindow

    ; End of function j_CloseMessageWindow


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

j_CreateMessageWindow:
		
		bra.w   CreateMessageWindow

    ; End of function j_CreateMessageWindow


; =============== S U B R O U T I N E =======================================

j_SaveGame:
		bra.w   SaveGame

    ; End of function j_SaveGame


; =============== S U B R O U T I N E =======================================

j_LoadGame:
		bra.w   LoadGame

    ; End of function j_LoadGame


; =============== S U B R O U T I N E =======================================

j_YesNoChoiceBox:
		
		bra.w   YesNoChoiceBox

    ; End of function j_YesNoChoiceBox


; =============== S U B R O U T I N E =======================================

j_ExecuteHeadquartersMenu:
		
		bra.w   ExecuteHeadquartersMenu

    ; End of function j_ExecuteHeadquartersMenu


; =============== S U B R O U T I N E =======================================

j_ExecuteMainMenu:
		
		bra.w   ExecuteMainMenu

    ; End of function j_ExecuteMainMenu


; =============== S U B R O U T I N E =======================================

sub_340:
		bra.w   sub_6706

    ; End of function sub_340


; =============== S U B R O U T I N E =======================================

sub_344:
		bra.w   sub_6B38

    ; End of function sub_344


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

j_ExecuteItemMenu:
		
		bra.w   ExecuteItemMenu

    ; End of function j_ExecuteItemMenu


; =============== S U B R O U T I N E =======================================

j_optionMenu_Speed:
		
		bra.w   optionMenu_Speed

    ; End of function j_optionMenu_Speed


; =============== S U B R O U T I N E =======================================

j_optionMenuAction_Message:
		
		bra.w   optionMenuAction_Message

    ; End of function j_optionMenuAction_Message


; =============== S U B R O U T I N E =======================================

j_optionMenuAction_Quit:
		
		bra.w   optionMenuAction_Quit

    ; End of function j_optionMenuAction_Quit


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
		bsr.s   InitVdp
		bsr.w   InitZ80
		bsr.s   InitVdpData
		jmp     (InitializeMain).l

    ; End of function InitSystem


; =============== S U B R O U T I N E =======================================

InitVdp:
		move.w  #$3FFE,d0
		lea     (PALETTE_1_CURRENT).l,a0
@ClearRam_Loop:
		
		clr.l   (a0)+           ; clear all RAM
		dbf     d0,@ClearRam_Loop
                
		move.b  #3,(FADING_COUNTER_MAX).l
		clr.b   (FADING_SETTING).l
		lea     vdp_init_params(pc), a0
		moveq   #$12,d1
@SetVdpReg_Loop:
		
		move.w  (a0)+,d0
		bsr.w   SetVdpReg
		dbf     d1,@SetVdpReg_Loop

		clr.w   d0
		clr.w   d1
		clr.w   d2
		bsr.w   ApplyVramDmaFill
		rts

    ; End of function InitVdp


; =============== S U B R O U T I N E =======================================

InitVdpData:
		move.l  #VDP_COMMAND_QUEUE,(VDP_COMMAND_QUEUE_POINTER).l
		move.l  #DMA_QUEUE,(DMA_QUEUE_POINTER).l
		moveq   #$40,d0 ; PD2 output mode ?
		move.b  d0,(CTRL1+1).l  
loc_3FC:
		move.b  d0,(CTRL2+1).l
		move.b  d0,(CTRL3+1).l
		lea     (HORIZONTAL_SCROLL_DATA).l,a0
		move.w  #$FF,d0
loc_412:
		move.w  #0,(a0)+        ; clear from FF0100 to FF0500
		move.w  #0,(a0)+
		dbf     d0,loc_412

		lea     (VERTICAL_SCROLL_DATA).l,a0
		move.w  #$13,d0
loc_428:
		move.w  #0,(a0)+        ; clear next 80d bytes
		move.w  #0,(a0)+
		dbf     d0,loc_428

		lea     (PALETTE_1_BASE).l,a0
		moveq   #$7F,d1 
loc_43C:
		clr.w   (a0)+           ; clear palette replicas ?
		dbf     d1,loc_43C

		bsr.w   ClearSpriteTable
		bsr.w   UpdateVdpHScrollData
		bsr.w   UpdateVdpVScrollData
		bsr.w   EnableDmaQueueProcessing
		rts

    ; End of function InitVdpData

vdp_init_params:dc.w $8004              ; disable H int, enable read H V counter
		dc.w $8124              ; disable display, enable V int, disable DMA, V28 cell mode
		dc.w $8230              ; scroll A table VRAM address : C000
		dc.w $8338              ; window table VRAM address : E000
		dc.w $8407              ; scroll B table VRAM address : E000
		dc.w $8578              ; sprite attribute table VRAM address : F000
		dc.w $8600              ; always 0
		dc.w $8700              ; background color : plt 0, clr 0
		dc.w $8800              ; always 0
		dc.w $8900              ; always 0
		dc.w $8A00              ; Hint timing : 0
		dc.w $8B00              ; disable external interrupt, full scrolls
		dc.w $8C81              ; H40 cell mode, no interlace
		dc.w $8D3D              ; H Scroll table VRAM address : F400
		dc.w $8E00              ; always 0
		dc.w $8F02              ; auto increment bias number : 2
		dc.w $9001              ; scroll size : V32 cell, H64 cell
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
		dc.b 4                  ; vdp reg 00 : disable HInt, enable read H V counter
		dc.b $14                ; vdp reg 01 : disable display, disable VInt, enable DMA, V28 cell mode
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
		dc.b $AF                ; Z80 start code
		dc.b 1                  ; xor     a
		dc.b $D9                ; ld      bc, 1FD9h
		dc.b $1F                ; ld      de, 27h
		dc.b $11                ; ld      hl, 26h
		dc.b $27                ; ld      sp, hl
		dc.b 0                  ; ld      (hl), a
		dc.b $21                ; ldir
		dc.b $26                ; pop     ix
		dc.b 0                  ; pop     iy
		dc.b $F9                ; ld      i, a
		dc.b $77                ; ld      r, a
		dc.b $ED                ; pop     de
		dc.b $B0                ; pop     hl
		dc.b $DD                ; pop     af
		dc.b $E1                ; ex      af, af'
		dc.b $FD                ; exx
		dc.b $E1                ; pop     bc
		dc.b $ED                ; pop     de
		dc.b $47                ; pop     hl
		dc.b $ED                ; pop     af
		dc.b $4F                ; ld      sp, hl
		dc.b $D1                ; di
		dc.b $E1                ; im      1
		dc.b $F1                ; ld      (hl), 0E9h
		dc.b 8                  ; jp      (hl)
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
		jmp     sub_8010

    ; End of function int_AdressError


; =============== S U B R O U T I N E =======================================

int_IllegalInstruction:
		
		move.l  #'BAD ',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

    ; End of function int_IllegalInstruction


; =============== S U B R O U T I N E =======================================

int_ZeroDivide:
		
		move.l  #'ZERO',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

    ; End of function int_ZeroDivide


; =============== S U B R O U T I N E =======================================

int_OtherError:
		
		move.l  #'OTHR',(ERRCODE_DWORD0).l
		move.l  2(sp),(ERRCODE_DWORD1).l
		jmp     sub_8010

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
		jsr     (j_OpenMessageWindow).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap5_


; =============== S U B R O U T I N E =======================================

Trap6_:
		movem.l d0-a6,-(sp)
		jsr     (j_CloseMessageWindow).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap6_


; =============== S U B R O U T I N E =======================================

Trap7_:
		movem.l d0-a6,-(sp)
		jsr     (j_CreateMessageWindow).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap7_


; =============== S U B R O U T I N E =======================================

Trap8_DisplayMessage:
		
		movem.l d0-a6,-(sp)
		jsr     (j_LoadText).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function Trap8_DisplayMessage


; =============== S U B R O U T I N E =======================================

; Vertical Interrupt

VInt:
		movem.l d0-a6,-(sp)
		bclr    #ENABLE_VINT,(VINT_PARAMS).l
						; disable VInt
		beq.s   @Skip           ; skip if VInt was already disabled
		bsr.w   ProcessVdpQueues
		bsr.w   ProcessVramRead
		bsr.w   ApplyFadingEffect
		bsr.w   ApplyZ80BusUpdates
		bsr.w   CallContextualFunction
		clr.b   (VINT_WAIT_TOGGLE).l
		move.b  (VINT_ENABLED).l,d0
		or.b    d0,(VINT_PARAMS).l
@Skip:
		addq.b  #1,(FRAME_COUNTER).l
		clr.b   (byte_FF0E9D).l
		move.w  (VDP_REG00_STATUS).l,(VDP_Control).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function VInt


; =============== S U B R O U T I N E =======================================

CallContextualFunction:
		
		move.b  (SECONDS_COUNTER_FRAMES).l,d0
		addq.b  #1,d0           ; increment frame and second counters
		cmpi.b  #60,d0
		bne.s   loc_738
		clr.b   d0
loc_738:
		move.b  d0,(SECONDS_COUNTER_FRAMES).l
		movea.l (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,a0
		move.l  a0,d0
		bne.s   loc_74A
		rts
loc_74A:
		jmp     (a0)

    ; End of function CallContextualFunction


; =============== S U B R O U T I N E =======================================

DisableDisplay:
		
		andi.b  #$BF,(VDP_REG01_VALUE).l
		move.w  (VDP_REG01_STATUS).l,(VDP_Control).l
		rts

    ; End of function DisableDisplay


; =============== S U B R O U T I N E =======================================

ProcessVdpQueues:
		
		bsr.s   ProcessVdpCommandQueue
		bsr.w   ProcessDmaQueue
		rts

    ; End of function ProcessVdpQueues


; =============== S U B R O U T I N E =======================================

ProcessVdpCommandQueue:
		
		bclr    #VDP_COMMAND_REQUEST,(VINT_PARAMS).l
		beq.w   return_7EA
		tst.b   (VDP_COMMAND_COUNTER).l
		beq.w   return_7EA
		lea     (VDP_COMMAND_QUEUE).l,a0
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
                
		subq.b  #1,(VDP_COMMAND_COUNTER).l
		bne.s   loc_784
                
		move.w  #$8F02,(VDP_Control).l
		move.l  #VDP_COMMAND_QUEUE,(VDP_COMMAND_QUEUE_POINTER).l
return_7EA:
		rts

    ; End of function ProcessVdpCommandQueue


; =============== S U B R O U T I N E =======================================

ProcessVramRead:
		
		bclr    #VRAM_READ_REQUEST,(VINT_PARAMS).l
						; Check if VRAM read requested
		beq.s   @Return
		lea     (VDP_COMMAND_QUEUE).l,a0
		move.w  #$8F02,(VDP_Control).l; autoincrement 02
		move.w  (a0),d7
		andi.w  #$3FFF,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
		rol.w   #2,d7
		andi.w  #3,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
@Loop:
		move.w  (VDP_Data).l,(a0)+
		dbf     d7,@Loop
@Return:
		rts

    ; End of function ProcessVramRead


; =============== S U B R O U T I N E =======================================

ProcessDmaQueue:
		
		bclr    #DMA_REQUEST,(VINT_PARAMS).l
						; Check if DMA requested
		bne.s   loc_840         
		btst    #DEACTIVATE_DMA,(VINT_PARAMS).l
						; Check if DMA deactivated
		bne.s   return_8B8
loc_840:
		move.w  #$100,(Z80BusReq).l; Bus request
loc_848:
		btst    #0,(Z80BusReq).l; Check bus availability
		bne.s   loc_848         
                
		btst    #DEACTIVATE_DMA,(VINT_PARAMS).l
						; Check if DMA deactivated
		bne.s   return_8B8
		bsr.w   UpdateVdpSpriteTable; Update sprites
		tst.b   (DMA_QUEUE_SIZE).l
		beq.s   loc_8A6
		lea     (DMA_QUEUE).l,a0
		lea     (VDP_Control).l,a6
		move.w  (VDP_REG01_STATUS).l,d7
		ori.b   #$10,d7         ; Enable DMA on VDP
		move.w  d7,(a6)
loc_880:
		move.w  (a0)+,(a6)      ; Send all queued DMA commands
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.w  (a0)+,(TEMP_DMA_VALUE).l
		move.w  (TEMP_DMA_VALUE).l,(a6)
		subq.b  #1,(DMA_QUEUE_SIZE).l
		bne.s   loc_880         
                
		move.w  (VDP_REG01_STATUS).l,(a6)
		move.w  #$8F02,(a6)
loc_8A6:
		move.w  #0,(Z80BusReq).l
		move.l  #DMA_QUEUE,(DMA_QUEUE_POINTER).l
return_8B8:
		rts

    ; End of function ProcessDmaQueue


; =============== S U B R O U T I N E =======================================

ApplyZ80BusUpdates:
		
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
		andi.w  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d1
		move.b  d1,(PRIMARY_WALKING_DIRECTION).l
loc_A38:
		move.b  (P1_INPUT).l,d0 
		move.b  d0,(CURRENT_PLAYER_INPUT).l
						; overwrite P2 6-button data with P1 state with walking direction
		cmp.b   (LAST_DIRECTIONAL_INPUT).l,d0
		bne.s   loc_A6C         
		addq.b  #1,(INPUT_REPEAT_DELAYER).l
						; if input is the same then increment counter and ignore input
		cmpi.b  #24,(INPUT_REPEAT_DELAYER).l
		bcc.s   loc_A64
		clr.b   (CURRENT_PLAYER_INPUT).l; keep current input only when counter reaches $18
		bra.s   loc_A6A
loc_A64:
		subq.b  #6,(INPUT_REPEAT_DELAYER).l
loc_A6A:
		bra.s   loc_A9A
loc_A6C:
		clr.w   d2              ; if input is new
		move.b  (LAST_DIRECTIONAL_INPUT).l,d1
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d1
		beq.s   loc_A7C
		moveq   #1,d2           ; was pushing a direction
loc_A7C:
		move.b  (CURRENT_PLAYER_INPUT).l,(LAST_DIRECTIONAL_INPUT).l
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d0
		beq.w   loc_A94
		tst.b   d2
		bne.w   loc_A9A
loc_A94:
		clr.b   (INPUT_REPEAT_DELAYER).l
loc_A9A:
		move.w  #0,(Z80BusReq).l
		rts

    ; End of function ApplyZ80BusUpdates


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

ApplyFadingEffect:
		
		move.b  (FADING_SETTING).l,d0
		beq.w   return_B4A
		subq.b  #1,(FADING_COUNTER).l
		bne.w   return_B4A
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		subq.b  #1,d0
		ext.w   d0
		lsl.w   #3,d0
		move.b  (FADING_POINTER).l,d1
		ext.w   d1
		add.w   d1,d0
		move.b  FadingData(pc,d0.w),d1
		cmpi.w  #$80,d1 
		bne.s   loc_B14
		clr.b   (FADING_SETTING).l
loc_B14:
		movem.l d1,-(sp)
		andi.w  #$F0,d1 
		cmpi.w  #$80,d1 
		movem.l (sp)+,d1
		bne.s   loc_B34
		andi.w  #$F,d1          ; go x backwards
		sub.b   d1,(FADING_POINTER).l
		bra.w   ApplyFadingEffect
loc_B34:
		ext.w   d1
		move.w  d1,d0
		move.b  (FADING_PALETTE_FLAGS).l,d1
		ext.w   d1
		bsr.w   ApplyCurrentColorFadingValue
		addq.b  #1,(FADING_POINTER).l
return_B4A:
		rts

    ; End of function ApplyFadingEffect

FadingData:     incbin "data/graphics/tech/fadingdata.bin"

; =============== S U B R O U T I N E =======================================

; Horizontal Interrupt

HInt:
		rte

    ; End of function HInt


; =============== S U B R O U T I N E =======================================

; waits for 0xc00004 (VDP DMA register) to be cleared

WaitDmaEnd:
		movem.w d0,-(sp)
@Wait:
		move.w  (VDP_Control).l,d0
		btst    #1,d0           ; control if DMA in progress
		bne.s   @Wait           ; loop if DMA in progress
		move.w  (sp)+,d0
		rts

    ; End of function WaitDmaEnd


; =============== S U B R O U T I N E =======================================

; VDP Reg Status -> D0

GetVdpRegStatus:
		
		movem.l a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		move.w  (a0,d0.w),d0
		movem.l (sp)+,a0
		rts

    ; End of function GetVdpRegStatus


; =============== S U B R O U T I N E =======================================

SetVdpReg:
		bsr.s   WaitDmaEnd      
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		move.w  d0,(VDP_Control).l
		move.w  d0,d1
		andi.w  #$7F00,d0
		lsr.w   #7,d0
		move.w  d1,(a0,d0.w)    ; store new vdp reg status
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function SetVdpReg


; =============== S U B R O U T I N E =======================================

ApplyLogicalOrOnVdpReg:
		
		bsr.s   WaitDmaEnd      
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		or.b    d1,1(a0,d0.w)   ; enable display
		bra.s   SendVdpCommand

    ; End of function ApplyLogicalOrOnVdpReg


; =============== S U B R O U T I N E =======================================

ApplyLogicalAndOnVdpReg:
		
		bsr.s   WaitDmaEnd      
		movem.l d0-d1/a0,-(sp)
		lea     (VDP_REG00_STATUS).l,a0
		add.w   d0,d0
		and.b   d1,1(a0,d0.w)   ; disable display

    ; End of function ApplyLogicalAndOnVdpReg


; START OF FUNCTION CHUNK FOR ApplyLogicalOrOnVdpReg

SendVdpCommand:
		
		move.w  (a0,d0.w),d1
		move.w  d1,(VDP_Control).l
		movem.l (sp)+,d0-d1/a0
		rts

; END OF FUNCTION CHUNK FOR ApplyLogicalOrOnVdpReg


; =============== S U B R O U T I N E =======================================

EnableDisplayOnVdp:
		
		move.w  #1,d0           ; get vdp reg 01
		move.w  #$40,d1 
		bra.s   ApplyLogicalOrOnVdpReg

    ; End of function EnableDisplayOnVdp


; =============== S U B R O U T I N E =======================================

DisableDisplayOnVdp:
		
		move.w  #1,d0
		move.w  #$BF,d1 
		bra.s   ApplyLogicalAndOnVdpReg

    ; End of function DisableDisplayOnVdp


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
		
		bsr.s   EnableDisplayOnVdp
		bra.s   EnableInterrupts

    ; End of function EnableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

DisableDisplayAndInterrupts:
		
		bsr.s   DisableInterrupts
		bra.s   DisableDisplayOnVdp

    ; End of function DisableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

ActivateVIntDmaQueueProcessing:
		
		bclr    #DEACTIVATE_DMA,(VINT_PARAMS).l
		rts

    ; End of function ActivateVIntDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

DeactivateVIntDmaQueueProcessing:
		
		bset    #DEACTIVATE_DMA,(VINT_PARAMS).l
		rts

    ; End of function DeactivateVIntDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

DuplicatePalettes:
		
		movem.l d7/a5-a6,-(sp)
		lea     (PALETTE_1_BASE).l,a5
		lea     (PALETTE_1_CURRENT).l,a6
		move.w  #CRAM_COLORS_COUNTER,d7
@Loop:
		move.w  (a5)+,(a6)+
		dbf     d7,@Loop

		movem.l (sp)+,d7/a5-a6

    ; End of function DuplicatePalettes


; =============== S U B R O U T I N E =======================================

; VDP CRAM

ApplyVIntCramDma:
		
		move    sr,-(sp)
		move    #$2700,sr       ; disable interrupts
		movem.l a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.w  #$8F02,(a6)+    ; auto increment : 2
		move.w  #$9400,(a6)+    ; DMA length : 64
		move.w  #$9340,(a6)+
		move.w  #$9680,(a6)+
		move.w  #$9500,(a6)+
		move.w  #$977F,(a6)+    ; RAM to VRAM, address : ?
		move.w  #$C000,(a6)+
		move.w  #$80,(a6)+      ; CRAM DMA Write
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,a6
		move    (sp)+,sr
		rts

    ; End of function ApplyVIntCramDma


; =============== S U B R O U T I N E =======================================

CopyPalette1:
		lea     (PALETTE_1_BASE).l,a1

    ; End of function CopyPalette1


; =============== S U B R O U T I N E =======================================

CopyPalette:
		move.w  #PALETTE_COLORS_COUNTER,d0

    ; End of function CopyPalette


; =============== S U B R O U T I N E =======================================

CopyPalette_Loop:
		
		move.w  (a0)+,(a1)+
		dbf     d0,CopyPalette_Loop
		rts

    ; End of function CopyPalette_Loop


; =============== S U B R O U T I N E =======================================

FadeInFromBlack:
		
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		bra.w   ExecuteFading

    ; End of function FadeInFromBlack


; =============== S U B R O U T I N E =======================================

FadeOutToBlack:
		
		move.b  #OUT_TO_BLACK,(FADING_SETTING).l
		bra.w   ExecuteFading

    ; End of function FadeOutToBlack


; =============== S U B R O U T I N E =======================================

FadeInFromWhite:
		
		move.b  #IN_FROM_WHITE,(FADING_SETTING).l
		bra.w   ExecuteFading

    ; End of function FadeInFromWhite


; =============== S U B R O U T I N E =======================================

FadeOutToWhite:
		
		move.b  #OUT_TO_WHITE,(FADING_SETTING).l

    ; End of function FadeOutToWhite


; =============== S U B R O U T I N E =======================================

ExecuteFading:
		
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		move.b  #$F,(FADING_PALETTE_FLAGS).l
@Wait:
		bsr.w   WaitForVInt     
		tst.b   (FADING_SETTING).l; wait until fade end
		bne.s   @Wait
		bsr.w   WaitForVInt     
		rts

    ; End of function ExecuteFading


; =============== S U B R O U T I N E =======================================

ApplyCurrentColorFadingValue:
		
		movem.l d2-a2,-(sp)
		lea     (PALETTE_1_BASE).l,a0
		lea     (PALETTE_1_CURRENT).l,a1
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
loc_D7A:
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

		bsr.w   ApplyVIntCramDma
		bsr.w   EnableDmaQueueProcessing
		movem.l (sp)+,d2-a2
		rts

    ; End of function ApplyCurrentColorFadingValue


; =============== S U B R O U T I N E =======================================

ClearScrollAndSpriteTables:
		
		bsr.s   ClearScrollTable
		bsr.s   ClearSpriteTable

    ; End of function ClearScrollAndSpriteTables


; =============== S U B R O U T I N E =======================================

UpdateVdpSpriteTable:
		
		lea     (VDP_Control).l,a6
		move.w  #$8134,(a6)     ; disable display, enable VInt, enable DMA
		move.l  #$94019300,(a6) ; DMA Length : $100
		move.l  #$96869540,(a6)
		move.w  #$977F,(a6)
		move.w  #$7000,(a6)
		move.w  #$83,(TEMP_DMA_VALUE).l 
		move.w  (TEMP_DMA_VALUE).l,(a6)
		move.w  (VDP_REG01_STATUS).l,(a6)
		rts

    ; End of function UpdateVdpSpriteTable


; =============== S U B R O U T I N E =======================================

ClearSpriteTable:
		
		movem.l d0-d1/a0,-(sp)
		lea     (SPRITE_00_PROPERTIES).l,a0
		moveq   #VDP_SPRITES_COUNTER,d1
		moveq   #1,d0
@Loop:
		move.l  d0,(a0)
		clr.l   4(a0)
		addq.w  #8,a0
		addq.b  #1,d0
		dbf     d1,@Loop

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
		bsr.w   ApplyVramDmaFill
		move.w  #$E000,d0       ; clear scroll B table
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   ApplyVramDmaFill
		move.w  #$7FF,d7
		lea     (PLANE_A_MAP_LAYOUT).l,a6
@Loop:
		clr.l   (a6)+
		dbf     d7,@Loop

		movem.l (sp)+,d7/a6
		rts

    ; End of function ClearScrollTable


; =============== S U B R O U T I N E =======================================

; Wait until VInt function is called, i.e., next frame

WaitForVInt:
		bset    #ENABLE_VINT,(VINT_PARAMS).l
		move.b  #1,(VINT_WAIT_TOGGLE).l
@Wait:
		tst.b   (VINT_WAIT_TOGGLE).l; wait until toggle cleared
		bne.s   @Wait
		rts

    ; End of function WaitForVInt


; =============== S U B R O U T I N E =======================================

; Wait for D0 frames

Sleep:
		movem.w d0,-(sp)
		subq.w  #1,d0
		bcs.w   @Done
@Loop:
		bsr.s   WaitForVInt     
		dbf     d0,@Loop
@Done:
		movem.w (sp)+,d0
		rts

    ; End of function Sleep


; =============== S U B R O U T I N E =======================================

RequestVdpCommandQueueProcessing:
		
		bset    #VDP_COMMAND_REQUEST,(VINT_PARAMS).l
		rts

    ; End of function RequestVdpCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

WaitForVdpCommandQueueProcessing:
		
		bsr.s   RequestVdpCommandQueueProcessing
		bra.w   WaitForVInt     

    ; End of function WaitForVdpCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

EnableDmaQueueProcessing:
		
		bset    #DMA_REQUEST,(VINT_PARAMS).l
		rts

    ; End of function EnableDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

WaitForDmaQueueProcessing:
		
		bsr.s   EnableDmaQueueProcessing
		bra.w   WaitForVInt     

    ; End of function WaitForDmaQueueProcessing


; =============== S U B R O U T I N E =======================================

sub_EB6:
		bsr.w   DisableInterrupts
		movem.l d7/a4-a5,-(sp)
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		move.w  a6,(a4)+
loc_ECC:
		move.w  d0,(a4)+
		move.l  a4,(VDP_COMMAND_QUEUE_POINTER).l
		addq.b  #1,(VDP_COMMAND_COUNTER).l
		clr.l   d7
		move.w  a6,d7
		ori.l   #PALETTE_1_CURRENT,d7
		movea.l d7,a6
		movem.l (sp)+,d7/a4-a5
		bsr.w   EnableInterrupts
		rts

    ; End of function sub_EB6


; =============== S U B R O U T I N E =======================================

sub_EF0:
		bsr.w   DisableInterrupts
loc_EF4:
		movem.l d7/a4-a5,-(sp)
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		bsr.s   SwapA6
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
		bsr.s   SwapA6
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

SwapA6:
		movem.l d7,-(sp)
		move.l  a6,d7
		swap    d7
		movea.l d7,a6
		movem.l (sp)+,d7
		rts

    ; End of function SwapA6


; =============== S U B R O U T I N E =======================================

sub_F52:
		bsr.w   DisableInterrupts
		lea     (byte_FF0B80).l,a4

    ; End of function sub_F52


; =============== S U B R O U T I N E =======================================

sub_F5C:
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.s   sub_F0A
		movem.l (sp)+,d5-d6
loc_F78:
		movem.l d3-d4/a3-a6,-(sp)
		clr.l   d3
		move.w  a6,d3
		cmpi.w  #$E000,d3
		bcc.s   loc_F8A
		addi.w  #$1000,d3
loc_F8A:
		ori.l   #$FF0000,d3
		movea.l d3,a3
		movea.l (VDP_COMMAND_QUEUE_POINTER).l,a5
		move.w  (word_FF0EC6).l,d3
		andi.l  #$FF,d3
		move.b  d3,(VDP_COMMAND_COUNTER).l
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
		bra.w   WaitForVdpCommandQueueProcessing

    ; End of function sub_F5C


; =============== S U B R O U T I N E =======================================

sub_FE8:
		bsr.w   DisableInterrupts
		lea     (byte_FF0B80).l,a4
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.w   sub_F0A
		movem.l (sp)+,d5-d6
		bsr.w   SwapA6
		bra.w   loc_F78

    ; End of function sub_FE8


; =============== S U B R O U T I N E =======================================

ApplyImmediateVramDma:
		
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

    ; End of function ApplyImmediateVramDma


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D0=Length, D1=Auto-increment

ApplyVIntVramDma:
		
		bsr.w   DisableInterrupts
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)+        ; Apply auto-increment from D1
		move.l  d2,d1
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)+        ; Apply DMA Length from D0
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
		move.w  d0,(a6)+        ; Apply source address from A0
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)+
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(a6)+        ; Apply VRAM write destination address from A1
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		bra.w   EnableInterrupts

    ; End of function ApplyVIntVramDma


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

UpdateVdpHScrollData:
		
		movem.l a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.w  #$8F02,(a6)+    ; auto-increment : 2
		btst    #1,(VDP_REG0B_VALUE).l; Check HScroll mode
		bne.s   loc_11A2        
		move.w  #$9400,(a6)+    ; If HScroll mode = 00, then full screen
		move.w  #$9302,(a6)+    ; DMA length = 2
		bra.s   loc_11AA
loc_11A2:
		move.w  #$9402,(a6)+    ; If HScroll mode = 10, then 8 pixel rows
		move.w  #$9300,(a6)+    ; DMA length = $200 = 512
loc_11AA:
		move.w  #$9680,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+    ; RAM to VRAM, address :
		move.w  #$7400,(a6)+
		move.w  #$83,(a6)+ 
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,a6
		rts

    ; End of function UpdateVdpHScrollData


; =============== S U B R O U T I N E =======================================

UpdateForegroundHScrollData:
		
		movem.l d7/a6,-(sp)
		lea     (HORIZONTAL_SCROLL_DATA).l,a6
loc_11DA:
		move.w  #$FF,d7
loc_11DE:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_11DE

		movem.l (sp)+,d7/a6
		bra.s   UpdateVdpHScrollData

    ; End of function UpdateForegroundHScrollData


; =============== S U B R O U T I N E =======================================

UpdateBackgroundHScrollData:
		
		movem.l d7/a6,-(sp)
		lea     ((HORIZONTAL_SCROLL_DATA+2)).l,a6
		bra.s   loc_11DA

    ; End of function UpdateBackgroundHScrollData


; =============== S U B R O U T I N E =======================================

; VDP Vertical Scroll Data

UpdateVdpVScrollData:
		
		movem.l a6,-(sp)
		movea.l (DMA_QUEUE_POINTER).l,a6
		move.w  #$8F02,(a6)+
		move.w  #$9400,(a6)+
		move.w  #$9328,(a6)+
		move.w  #$9682,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$4000,(a6)+
		move.w  #$90,(a6)+ 
		move.l  a6,(DMA_QUEUE_POINTER).l
		addq.b  #1,(DMA_QUEUE_SIZE).l
		movem.l (sp)+,a6
		rts

    ; End of function UpdateVdpVScrollData


; =============== S U B R O U T I N E =======================================

UpdateForegroundVScrollData:
		
		movem.l d7/a6,-(sp)
		lea     (VERTICAL_SCROLL_DATA).l,a6
loc_123E:
		move.w  #$13,d7
loc_1242:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_1242

		movem.l (sp)+,d7/a6
		bra.s   UpdateVdpVScrollData

    ; End of function UpdateForegroundVScrollData


; =============== S U B R O U T I N E =======================================

UpdateBackgroundVScrollData:
		
		movem.l d7/a6,-(sp)
		lea     ((VERTICAL_SCROLL_DATA+2)).l,a6
		bra.s   loc_123E

    ; End of function UpdateBackgroundVScrollData


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D0=Length, D1=Auto-increment

ApplyImmediateVramDmaOnCompressedTiles:
		
		movem.w d1,-(sp)
		bsr.s   DecompressTilesForVramDma
		bsr.w   ApplyImmediateVramDma
		movem.w (sp)+,d1
		rts

    ; End of function ApplyImmediateVramDmaOnCompressedTiles


; =============== S U B R O U T I N E =======================================

DecompressTilesForVramDma:
		
		movem.l d0-d1/a1,-(sp)
		bsr.w   DecompressGraphics
		lea     (FF3000_LOADING_SPACE).l,a0
		movem.l (sp)+,d0-d1/a1
		move.w  #2,d1
		rts

    ; End of function DecompressTilesForVramDma


; =============== S U B R O U T I N E =======================================

ApplyVIntVramDmaOnCompressedTiles:
		
		movem.w d1,-(sp)
		bsr.s   DecompressTilesForVramDma
		bsr.w   ApplyVIntVramDma
		movem.w (sp)+,d1
		rts

    ; End of function ApplyVIntVramDmaOnCompressedTiles


; =============== S U B R O U T I N E =======================================

; DMA code

sub_1294:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($C000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   EnableDmaQueueProcessing
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_1294


; =============== S U B R O U T I N E =======================================

; DMA code

sub_12BA:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($E000).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   EnableDmaQueueProcessing
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_12BA


; =============== S U B R O U T I N E =======================================

DmaAndWait:
		bsr.s   sub_1294        
		bra.w   WaitForVInt     

    ; End of function DmaAndWait


; =============== S U B R O U T I N E =======================================

; D0=Destination, D1=Length, D2=Filler value

ApplyVramDmaFill:
		
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
@Wait:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0           ; wait for DMA free
		bne.s   @Wait
		move.w  (VDP_REG01_STATUS).l,d3; get last vdp 16+ reg config command and send it
		move.w  d3,(VDP_Control).l
		move.w  #$8F02,(VDP_Control).l; auto increment bias number : 2
		movem.l (sp)+,d0-d3
		rts

    ; End of function ApplyVramDmaFill


; =============== S U B R O U T I N E =======================================

WriteAsciiNumber:
		
		movem.l d5-d7/a5-a6,-(sp)
		lea     tbl_PowersOfTen(pc), a5
		lea     (LOADED_NUMBER).l,a6
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
                
		lea     (LOADED_NUMBER).l,a6
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

tbl_PowersOfTen:dc.l 1000000000
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

nullsub_13E8:
		rts

    ; End of function nullsub_13E8


; =============== S U B R O U T I N E =======================================

sub_13EA:
		movem.l d6-d7/a5-a6,-(sp)
		move.w  #$100,(Z80BusReq).l
loc_13F6:
		btst    #0,(Z80BusReq).l
		bne.s   loc_13F6
		bsr.s   UpdatePlayerInputs
		move.w  #0,(Z80BusReq).l
		movem.l (sp)+,d6-d7/a5-a6
		rts

    ; End of function sub_13EA


; =============== S U B R O U T I N E =======================================

UpdatePlayerInputs:
		
		lea     (P1_INPUT).l,a5 
		lea     ((DATA1+1)).l,a6
		bsr.s   sub_1428
		neg.b   d6
		add.w   d6,(RANDOM_SEED).l; Update random seed
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
		
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(CURRENT_PLAYER_INPUT).l
		bne.s   @Return
		bsr.w   WaitForVInt     
		bra.s   WaitForPlayerInput
@Return:
		rts

    ; End of function WaitForPlayerInput


; =============== S U B R O U T I N E =======================================

WaitForPlayer1NewInput:
		
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P1_INPUT).l
		beq.s   @Wait
		bsr.w   WaitForVInt     
		bra.s   WaitForPlayer1NewInput
@Wait:
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P1_INPUT).l
		bne.s   @Return
		bsr.w   WaitForVInt     
		bra.s   @Wait
@Return:
		rts

    ; End of function WaitForPlayer1NewInput


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
		moveq   #59,d5          ; number of frames to wait, minus one
WaitForInput_Loop:
		
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT|INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P1_INPUT).l
		bne.s   @Done
		bsr.w   WaitForVInt     
		dbf     d5,WaitForInput_Loop
@Done:
		movem.l (sp)+,d5
		rts

    ; End of function WaitForInputFor1Second


; =============== S U B R O U T I N E =======================================

WaitForInputFor3Seconds:
		
		movem.l d5,-(sp)
		move.l  #179,d5
		bra.s   WaitForInput_Loop

    ; End of function WaitForInputFor3Seconds


; =============== S U B R O U T I N E =======================================

; In: D6 = Value range, Out: D7 = Random value

GenerateRandomNumber:
		
		move.w  (RANDOM_SEED).l,d7
		mulu.w  #$D,d7
		addi.w  #7,d7
		andi.l  #$FFFF,d7
		move.w  d7,(RANDOM_SEED).l
		mulu.w  d6,d7
		swap    d7
		rts

    ; End of function GenerateRandomNumber


; =============== S U B R O U T I N E =======================================

; d0 : music index, or previous music if value $FB

PlayMusicAfterCurrentOne:
		
		 
		sndCom  SOUND_COMMAND_WAIT_MUSIC_END
						; Wait for current music to end
		sndCom  SOUND_COMMAND_GET_D0_PARAMETER
@Wait:
		moveq   #3,d0
		bsr.w   Sleep           
		tst.b   (WAIT_FOR_MUSIC_END).l; wait for sound command sent
		bne.s   @Wait
		rts

    ; End of function PlayMusicAfterCurrentOne


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D7=Length

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

; D0 = Number of sprites to initialize

InitSprites:
		movem.l d0-d1/a0,-(sp)
		lea     (SPRITE_00_PROPERTIES).l,a0
		move.w  #1,d1
@Loop:
		move.w  #1,(a0)+
		move.w  d1,(a0)+
		move.w  #1,(a0)+
		move.w  #1,(a0)+
		addq.w  #1,d1
		dbf     d0,@Loop

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
		move.b  byte_1814(pc,d7.w),d7
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

byte_1814:      dc.b 0
		dc.b 1
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 5
		dc.b 6
		dc.b 6
		dc.b 7
		dc.b 8
		dc.b 8
		dc.b 9
		dc.b $A
		dc.b $A
		dc.b $B
		dc.b $C
		dc.b $C
		dc.b $D
		dc.b $E
		dc.b $E
		dc.b $F
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
		dc.b 0

; =============== S U B R O U T I N E =======================================

; something with clearing/resetting sprite info when transitioning to battle scene?

sub_1856:
		movem.l d0-d2/d7-a1,-(sp)
		lea     (SPRITE_00_LINK).l,a1
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
		bsr.w   HandleDialogueTypewriting
		bsr.s   OpenMessageWindow
		movem.l (sp)+,d0-a6
		rts

    ; End of function sub_18DC


; =============== S U B R O U T I N E =======================================

CreateMessageWindow:
		
		movem.l d0-a6,-(sp)
		bsr.w   HandleDialogueTypewriting
		bsr.w   LoadMessageWindowLayout
		btst    #0,(VDP_REG10_VALUE).l
		beq.s   loc_1916
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1C08,d0
		move.w  #$213,d1
		bsr.w   j_CreateWindow
		bsr.w   sub_8054
loc_1916:
		movem.l (sp)+,d0-a6
		rts

    ; End of function CreateMessageWindow


; =============== S U B R O U T I N E =======================================

OpenMessageWindow:
		
		move.b  #1,((byte_FFF804-$1000000)).w
		bsr.w   LoadMessageWindowLayout
		btst    #0,(VDP_REG10_VALUE).l
		beq.w   loc_1B74
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$21C0213,d1
		move.w  #7,d2
		bra.w   j_MoveWindow

    ; End of function OpenMessageWindow


; =============== S U B R O U T I N E =======================================

LoadMessageWindowLayout_TopBorder:
		
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_WINDOW_HORIZONTAL_BORDER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_MIRRORED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
		bra.s   LoadMessageWindowSingleRow
		                
		bsr.s   LoadMessageWindowLayout_TopBorder
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_ASCII_SPACE|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_MIRRORED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
		move.w  #5,d6
loc_196C:
		bsr.s   LoadMessageWindowSingleRow
		dbf     d6,loc_196C

; ---------------------------------------------------------------------------
LoadMessageWindowLayout_BottomBorder:
		
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_FLIPPED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_WINDOW_HORIZONTAL_BORDER|VDPTILE_FLIPPED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_CORNER|VDPTILE_MIRRORED_BIT|VDPTILE_FLIPPED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
LoadMessageWindowSingleRow:
		
		move.w  d0,(a0)+
		move.w  #$19,d7
@Loop:
		move.w  d1,(a0)+
		dbf     d7,@Loop
                
		move.w  d2,(a0)+
		rts

    ; End of function LoadMessageWindowLayout_TopBorder


; =============== S U B R O U T I N E =======================================

HandleDialogueTypewriting:
		
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
		bsr.w   HandleBlinkingDialogueCursor
		move.w  (sp)+,d1
		clr.w   d0
		moveq   #3,d2
		sub.b   ((MESSAGE_SPEED-$1000000)).w,d2
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
		eori.b  #1,((SPEECH_SOUND_TOGGLE-$1000000)).w
		beq.s   loc_19EE
		move.w  d0,-(sp)
		move.w  ((SPEECH_SFX-$1000000)).w,d0
		sndCom  SOUND_COMMAND_GET_D0_PARAMETER
		move.w  (sp)+,d0
loc_19EE:
		bra.s   loc_19F4
loc_19F0:
		clr.b   ((SPEECH_SOUND_TOGGLE-$1000000)).w
loc_19F4:
		subq.w  #1,d0
		blt.s   return_1A0C
loc_19F8:
		tst.b   (P1_INPUT).l    
		bne.s   return_1A0C
		move    sr,-(sp)
		bsr.w   WaitForVInt     
		move    (sp)+,ccr
		dbne    d0,loc_19F8
return_1A0C:
		rts

    ; End of function HandleDialogueTypewriting


; =============== S U B R O U T I N E =======================================

HandleBlinkingDialogueCursor:
		
		btst    #0,(VDP_REG10_VALUE).l
		beq.w   loc_1A44
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($D000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		lea     ($F800).l,a1
		move.w  #$1C0,d0
		bsr.w   ApplyVIntVramDma
		bra.w   WaitForDmaQueueProcessing
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
		bsr.w   ApplyVIntVramDma
		bsr.w   WaitForDmaQueueProcessing
		rts

    ; End of function HandleBlinkingDialogueCursor


; =============== S U B R O U T I N E =======================================

CloseMessageWindow:
		
		bsr.s   LoadMessageWindowLayout
		btst    #0,(VDP_REG10_VALUE).l
		beq.w   loc_1B6E
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$213021C,d1
		move.w  #7,d2
		bra.w   j_MoveWindow

    ; End of function CloseMessageWindow


; =============== S U B R O U T I N E =======================================

LoadMessageWindowLayout:
		
		bsr.w   LoadMessageWindowLayout_TopBorder
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d0
		move.w  #VDPTILE_MESSAGE_START1|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		move.w  #VDPTILE_WINDOW_VERTICAL_BORDER|VDPTILE_MIRRORED_BIT|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d2
		move.w  #5,d6
@Loop:
		bsr.s   LoadMessageWindowLayout_Content
		dbf     d6,@Loop
                
		bra.w   LoadMessageWindowLayout_BottomBorder

    ; End of function LoadMessageWindowLayout


; =============== S U B R O U T I N E =======================================

LoadMessageWindowLayout_Content:
		
		move.w  d0,(a0)+
		move.w  #$19,d7
@Loop:
		move.w  d1,(a0)+
		addq.w  #1,d1
		cmpi.w  #VDPTILE_MESSAGE_END1|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
		bne.s   @Continue
		move.w  #VDPTILE_MESSAGE_START2|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,d1
@Continue:
		dbf     d7,@Loop
                
		move.w  d2,(a0)+
		rts

    ; End of function LoadMessageWindowLayout_Content


; =============== S U B R O U T I N E =======================================

sub_1AF0:
		move.l  (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,-(sp)
		btst    #0,(VDP_REG10_VALUE).l
		bne.s   loc_1B06
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
loc_1B06:
		move.w  #7,d5
loc_1B0A:
		bsr.s   sub_1B1E
		bsr.s   sub_1B1E
		bsr.w   HandleBlinkingDialogueCursor
		dbf     d5,loc_1B0A

		move.l  (sp)+,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
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


; START OF FUNCTION CHUNK FOR CloseMessageWindow

loc_1B6E:
		moveq   #$60,d1 
		bra.w   loc_1B98

; END OF FUNCTION CHUNK FOR CloseMessageWindow


; START OF FUNCTION CHUNK FOR OpenMessageWindow

loc_1B74:
		lea     byte_1F26(pc), a0
		nop
		lea     ($D000).l,a1
		move.w  #$90,d0 
		move.w  #2,d1
		bsr.w   ApplyVIntVramDma
		bsr.w   EnableDmaQueueProcessing
		jsr     (WaitForVInt).l 
		clr.w   d1
loc_1B98:
		lea     word_1C0E(pc), a0
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		lea     (SPRITE_01_PROPERTIES).l,a1
		moveq   #5,d7
loc_1BAA:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BAA

		lea     (SPRITE_25_PROPERTIES).l,a1
		moveq   #6,d7
loc_1BC0:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BC0

		lea     (SPRITE_54_PROPERTIES).l,a1
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
		lea     ((byte_FFB4F3-$1000000)).w,a0
		move.b  d0,(a0)+
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		lea     ((word_FFB510-$1000000)).w,a0
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		move.l  d0,(a0)+
		jmp     (sub_320).l

; END OF FUNCTION CHUNK FOR OpenMessageWindow

word_1C0E:      ; sprite properties data

                vdpSprite 280, V4|H4|0, 689|PALETTE3|PRIORITY_BIT, 152
                vdpSprite 280, V4|H4|0, 699|PALETTE3|PRIORITY_BIT, 184
                vdpSprite 280, V4|H4|0, 6A9|PALETTE3|PRIORITY_BIT, 216
                vdpSprite 280, V4|H4|0, 6B9|PALETTE3|PRIORITY_BIT, 248
                vdpSprite 280, V4|H4|0, 6C9|PALETTE3|PRIORITY_BIT, 280
                vdpSprite 280, V4|H4|0, 6D9|PALETTE3|PRIORITY_BIT, 312

                vdpSprite 280, V4|H2|0, 6E9|PALETTE3|PRIORITY_BIT, 344
                vdpSprite 272, V1|H4|0, MESSAGE_START1|PALETTE3|PRIORITY_BIT, 144
                vdpSprite 272, V1|H4|0, 681|PALETTE3|PRIORITY_BIT, 176
                vdpSprite 272, V1|H4|0, 681|PALETTE3|PRIORITY_BIT, 208
                vdpSprite 272, V1|H4|0, 681|PALETTE3|PRIORITY_BIT, 240
                vdpSprite 272, V1|H4|0, 681|PALETTE3|PRIORITY_BIT, 272
                vdpSprite 272, V1|H4|0, 681|PALETTE3|PRIORITY_BIT, 304

                vdpSprite 272, V1|H4|0, MESSAGE_START1|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 336
                vdpSprite 312, V1|H4|0, MESSAGE_START1|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 144
                vdpSprite 312, V1|H4|0, 681|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 176
                vdpSprite 312, V1|H4|0, 681|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 208
                vdpSprite 312, V1|H4|0, 681|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 240
                vdpSprite 312, V1|H4|0, 681|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 272
                vdpSprite 312, V1|H4|0, 681|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 304
                vdpSprite 312, V1|H4|0, MESSAGE_START1|MIRRORED_BIT|FLIPPED_BIT|PALETTE3|PRIORITY_BIT, 336
                vdpSprite 280, V4|H1|0, 685|PALETTE3|PRIORITY_BIT, 144
                vdpSprite 280, V4|H1|0, 685|MIRRORED_BIT|PALETTE3|PRIORITY_BIT, 360

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
		bcs.s   @Return
		clr.b   d5
		adda.w  #$320,a2
@Return:
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
		lea     byte_1E9E(pc), a0
		move.w  #1,d7
loc_1E8C:
		move.b  (a0,d7.w),d2
		beq.s   loc_1E9A
		cmp.b   d0,d2
		beq.s   return_1E9C
		addq.w  #1,d7
		bra.s   loc_1E8C
loc_1E9A:
		clr.w   d7
return_1E9C:
		rts

    ; End of function sub_1E76

byte_1E9E:      dc.b 0
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
		dc.b 0
		dc.b $FF
byte_1F26:      dc.b 0
		dc.b $EE
		dc.b $EE
		dc.b $EE
		dc.b $E
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
		jsr     j_InitDecoder
		move.l  a0,(COMPRESSED_STRING_POINTER).l
						; keep string pointer
		bsr.s   sub_20E0
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

    ; End of function LoadText


; =============== S U B R O U T I N E =======================================

sub_208C:
		cmpi.b  #$C4,(TEXT_X_POSITION).l
		bls.s   return_20D8
		move.b  #2,(TEXT_X_POSITION).l
		addi.b  #$10,(TEXT_Y_POSITION).l
		btst    #0,(VDP_REG10_VALUE).l
		bne.s   loc_20BA
		cmpi.b  #$20,(TEXT_Y_POSITION).l 
		bra.s   loc_20C2
loc_20BA:
		cmpi.b  #$30,(TEXT_Y_POSITION).l 
loc_20C2:
		bcs.s   return_20D8

    ; End of function sub_208C


; =============== S U B R O U T I N E =======================================

sub_20C4:
		movem.l d0,-(sp)
		bsr.w   sub_1AF0
		movem.l (sp)+,d0
		subi.b  #$10,(TEXT_Y_POSITION).l
return_20D8:
		rts

    ; End of function sub_20C4


; =============== S U B R O U T I N E =======================================

sub_20DA:
		bsr.s   FindString
		bsr.s   sub_2100
		rts

    ; End of function sub_20DA


; =============== S U B R O U T I N E =======================================

sub_20E0:
		bsr.w   GetNextTextSymbol
		cmpi.w  #$FFEA,d0
		beq.s   @Return
		movem.l d0,-(sp)
		bsr.w   sub_2458
		movem.l (sp)+,d0
		movem.l (sp)+,d1
		bra.w   loc_2078
@Return:
		rts

    ; End of function sub_20E0


; =============== S U B R O U T I N E =======================================

sub_2100:
		clr.l   (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		clr.b   (byte_FFF806).l
		clr.w   (word_FFF842).l
		move.b  (a0)+,(COMPRESSED_STRING_LENGTH).l
						; keep length of current string
		move.l  #MESSAGE_ARG_NAME_1,(CURRENT_MESSAGE_NAME_INDEX_ADDRESS).l
		rts

    ; End of function sub_2100


; =============== S U B R O U T I N E =======================================

FindString:
		movem.w d0,-(sp)        ; save string index
		lsr.w   #6,d0
		andi.b  #$FC,d0         ; string index -> bank pointer offset
		movea.l (p_pt_TextBanks).l,a0; load script bank pointer
		movea.l (a0,d0.w),a0
		movem.w (sp)+,d0        ; restore string index
@GoToNextString:
		
		tst.b   d0
		beq.s   @Return
		moveq   #0,d7
		move.b  (a0),d7         ; first string byte : string length
		adda.l  d7,a0
		subq.b  #1,d0
		bra.s   @GoToNextString ; loop until wanted string reached
@Return:
		rts

    ; End of function FindString


; =============== S U B R O U T I N E =======================================

GetNextTextSymbol:
		
		tst.l   (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
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
		movea.l (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l,a1
		move.w  (a1)+,d0
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		cmpi.w  #$FFFF,d0
		beq.s   loc_21B8
		lea     byte_24D0(pc), a1
		move.b  (a1,d0.w),d0
		rts
loc_21B8:
		clr.l   (CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
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
		bra.w   sub_23B4

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

		dcb.b $10,0

; =============== S U B R O U T I N E =======================================

j_nullsub_2466:
		
		bra.w   nullsub_2466

    ; End of function j_nullsub_2466

		dcb.b 4,0

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
		btst    #0,(VDP_REG10_VALUE).l
		bne.s   loc_2270
		cmpi.b  #$20,(TEXT_Y_POSITION).l 
		bra.s   loc_2278
loc_2270:
		cmpi.b  #$30,(TEXT_Y_POSITION).l 
loc_2278:
		bcs.s   return_227E
		bsr.w   sub_20C4
return_227E:
		rts

    ; End of function sub_224C


; =============== S U B R O U T I N E =======================================

sub_2280:
		bsr.w   sub_2468
		jsr     j_GetSpellNameAddress

    ; End of function sub_2280


; START OF FUNCTION CHUNK FOR sub_2296

loc_228A:
		movea.l a0,a2
		move.w  d1,d7
		subi.w  #1,d7
		bra.w   loc_248E

; END OF FUNCTION CHUNK FOR sub_2296


; =============== S U B R O U T I N E =======================================

sub_2296:
		bsr.w   sub_2468
		jsr     j_GetItemNameAddress
		bra.s   loc_228A

    ; End of function sub_2296


; =============== S U B R O U T I N E =======================================

nullsub_22A2:
		rts

    ; End of function nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_22A4:
		bsr.w   sub_2468
		jsr     j_GetClassNameAddress
		bra.s   loc_228A

    ; End of function sub_22A4


; =============== S U B R O U T I N E =======================================

sub_22B0:
		bsr.w   sub_2468
		jsr     j_GetItemNameAddress
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
		jsr     j_GetDisplayedNameAddress
loc_22D4:
		lea     (DIALOG_STRING_TO_PRINT).l,a1
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
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
		jsr     j_GetEntityStatsAddress
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
		andi.b  #INPUT_B|INPUT_C|INPUT_A,d1
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
		move.w  #59,d0
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
		move.l  (MESSAGE_ARG_NUMBER).l,d0
		jsr     (j_WriteAsciiNumber).l
		lea     (DIALOG_STRING_TO_PRINT).l,a1
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
		lea     (LOADED_NUMBER).l,a0
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


; =============== S U B R O U T I N E =======================================

sub_23B4:
		bsr.w   sub_224C
loc_23B8:
		move.b  (CURRENTLY_TYPEWRITING).l,d2
		movem.w d2,-(sp)
		clr.b   (CURRENTLY_TYPEWRITING).l
		moveq   #$14,d2
loc_23CA:
		bsr.w   WaitForVInt     
		bsr.s   sub_23DE
		beq.s   loc_23CA
		sndCom  SFX_VALIDATION
		clr.w   d2
		bsr.s   sub_23EC
		bra.w   loc_2342

    ; End of function sub_23B4


; =============== S U B R O U T I N E =======================================

sub_23DE:
		bsr.s   sub_23EC
		move.b  (CURRENT_PLAYER_INPUT).l,d1
		andi.b  #INPUT_B|INPUT_C|INPUT_A,d1
		rts

    ; End of function sub_23DE


; =============== S U B R O U T I N E =======================================

sub_23EC:
		lea     (SPRITE_00_PROPERTIES).l,a0
		cmpi.w  #7,d2
		bge.s   loc_2404
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_241E
loc_2404:
		move.w  #$160,6(a0)
		btst    #0,(VDP_REG10_VALUE).l
		beq.s   loc_241A
		move.w  #$148,(a0)
		bra.s   loc_241E
loc_241A:
		move.w  #$130,(a0)
loc_241E:
		clr.b   2(a0)
		move.w  #$C084,4(a0)
		subq.w  #1,d2
		bne.s   return_242E
		moveq   #$14,d2
return_242E:
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
		andi.b  #INPUT_B|INPUT_C|INPUT_A,d1
		rts

    ; End of function sub_244C


; =============== S U B R O U T I N E =======================================

sub_2458:
		cmpi.b  #2,(TEXT_X_POSITION).l
		bne.w   sub_224C
		rts

    ; End of function sub_2458


; =============== S U B R O U T I N E =======================================

nullsub_2466:
		rts

    ; End of function nullsub_2466


; =============== S U B R O U T I N E =======================================

sub_2468:
		movea.l (CURRENT_MESSAGE_NAME_INDEX_ADDRESS).l,a1
		move.w  (a1)+,d1
		move.l  a1,(CURRENT_MESSAGE_NAME_INDEX_ADDRESS).l
		rts

    ; End of function sub_2468


; =============== S U B R O U T I N E =======================================

sub_2478:
		dbf     d0,loc_247E
		bra.s   loc_2486
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

    ; End of function sub_2478


; START OF FUNCTION CHUNK FOR sub_2296

loc_248E:
		lea     (DIALOG_STRING_TO_PRINT).l,a1
		move.l  a1,(CURRENT_MESSAGE_ASCII_BYTE_ADDRESS).l
loc_249A:
		clr.w   d0
		move.b  (a2)+,d0
		move.w  d0,(a1)+
		dbf     d7,loc_249A

		move.w  #-1,(a1)
		rts

; END OF FUNCTION CHUNK FOR sub_2296

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
byte_24D0:      dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $43
		dc.b $46
		dc.b $4A
		dc.b 0
		dc.b $4B
		dc.b $4C
		dc.b $47
		dc.b $48
		dc.b $49
		dc.b 0
		dc.b $4D
		dc.b $42
		dc.b $40
		dc.b $41
		dc.b $4E
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 6
		dc.b 7
		dc.b 8
		dc.b 9
		dc.b $A
		dc.b $4F
		dc.b $45
		dc.b $48
		dc.b 0
		dc.b $49
		dc.b $44
		dc.b 0
		dc.b $B
		dc.b $C
		dc.b $D
		dc.b $E
		dc.b $F
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
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $3F
		dc.b 0
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
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0

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

		moveq   #-128,d6
		moveq   #$F,d7
		clr.w   d3
loc_2A48:
		moveq   #-1,d4
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
		bsr.s   GetEventFlagsAddress
		move.b  (a0),d2
		and.b   d1,d2
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_2FFA


; =============== S U B R O U T I N E =======================================

sub_300A:
		movem.l d0/a0,-(sp)
		bsr.s   GetEventFlagsAddress
		or.b    d1,(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_300A


; =============== S U B R O U T I N E =======================================

sub_3018:
		movem.l d0/a0,-(sp)
		bsr.s   GetEventFlagsAddress
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_3018


; =============== S U B R O U T I N E =======================================

sub_3028:
		movem.l d0/d2/a0,-(sp)
		bsr.s   GetEventFlagsAddress
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

GetEventFlagsAddress:
		
		lea     (EVENT_FLAGS).l,a0
		andi.w  #$FF,d0
		adda.w  d0,a0
		rts

    ; End of function GetEventFlagsAddress


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


; =============== S U B R O U T I N E =======================================

InitializeMain:
		
		jsr     j_LoadBaseTilesAndPalette
		bsr.w   EnableInterrupts
		bsr.w   WaitForVInt     
		bsr.w   DisableInterrupts
		cmpi.b  #INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P2_INPUT).l
		bne.s   loc_30BC
		move.b  #1,((DEBUG_MODE_UNLOCKED-$1000000)).w
loc_30BC:
		jsr     j_DisplaySegaLogo
		jsr     PlayIntro
		bsr.w   DisplayReaderScreen
		jsr     j_debugMode_SoundTest
		tst.b   ((DEBUG_MODE_ACTIVATED-$1000000)).w
		beq.s   loc_30FC
		btst    #INPUT_BIT_A,(P1_INPUT).l
		bne.w   debugMode_BattleTest
		btst    #INPUT_BIT_B,(P1_INPUT).l
		bne.w   debugMode_ChapterTest
		btst    #INPUT_BIT_C,(P1_INPUT).l
		bne.w   debugMode_PlayEnding
loc_30FC:
		move.b  #$FF,((byte_FFC140-$1000000)).w
		moveq   #$26,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_3110
		jsr     (DisplayChapterScreen).l
loc_3110:
		bsr.w   sub_312A
		moveq   #$25,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_3124
		jsr     (sub_3D80).l    
		bra.s   loc_30FC
loc_3124:
		bsr.w   ExecuteMapExitScript
		bra.s   loc_30FC

    ; End of function InitializeMain


; =============== S U B R O U T I N E =======================================

sub_312A:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #$24,d0 
		bsr.w   CheckEventFlag
		bne.w   loc_31C2

    ; End of function sub_312A


; =============== S U B R O U T I N E =======================================

sub_313A:
		moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_314E
		bsr.w   ClearEventFlag
		jsr     sub_8004
		bra.s   loc_3154
loc_314E:
		jsr     j_BattleLoop
loc_3154:
		bpl.s   return_31C0
		cmpi.b  #$FF,d0
		bne.s   loc_3174
		jsr     j_GetGold
		lsr.l   #1,d1
		jsr     j_SetGold
		clr.w   d0
		clr.w   d1
		jsr     j_SetStatusEffects
loc_3174:
		jsr     j_RefillHP
		jsr     j_RefillMP
		jsr     j_ResetForceMemberStats
		jsr     j_ResetCombatants
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		move.b  ((EGRESS_LOCATION-$1000000)).w,((CURRENT_REGION-$1000000)).w
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bsr.w   sub_4C0E
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.w  d0,-(sp)
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		move.w  (sp)+,d0
		bra.s   loc_31F6
return_31C0:
		rts
loc_31C2:
		move.b  ((CURRENT_REGION-$1000000)).w,((EGRESS_LOCATION-$1000000)).w
		jsr     j_ResetForceMemberStats
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		bsr.w   sub_4C0E
		move.w  d0,-(sp)
		moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_31F4
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_31F4:
		move.w  (sp)+,d0
loc_31F6:
		move.w  d0,-(sp)
		jsr     j_ResetCombatants
		move.w  (sp)+,d0
		move.b  #1,(byte_FF0F03).l
		move.w  d0,-(sp)
		clr.l   (HORIZONTAL_SCROLL_DATA).l
		bsr.w   j_UpdateVdpHScrollData
		bsr.w   j_EnableDmaQueueProcessing
		move.w  (sp)+,d0
		jsr     sub_10000
		bsr.w   j_FadeOutToBlack
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		bsr.w   j_WaitForVInt
		moveq   #$25,d0 
		bsr.w   CheckEventFlag
		bne.w   return_327C
		cmpi.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   return_327C
		move.b  ((byte_FFF807-$1000000)).w,d0
		move.b  ((CURRENT_REGION-$1000000)).w,d1
		move.b  ((CURRENT_MAP_VERSION-$1000000)).w,d2
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		movem.w d0-d2,-(sp)
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (sub_340).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		movem.w (sp)+,d0-d2
		move.b  d1,((CURRENT_REGION-$1000000)).w
		move.b  d2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_31F6
return_327C:
		rts

    ; End of function sub_313A


; =============== S U B R O U T I N E =======================================

debugMode_PlayEnding:
		
		jmp     j_PlayEnding

    ; End of function debugMode_PlayEnding


; =============== S U B R O U T I N E =======================================

; Suspend game

sub_3284:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #$78,d0 
		bsr.w   j_Sleep
		sndCom  SOUND_COMMAND_18564
		moveq   #$3C,d0 
		bsr.w   j_Sleep
		bsr.w   InitializeReaderScreen
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     sub_164014
		jsr     (j_OpenMessageWindow).l
		move.w  #SFX_DIALOG_BLEEP_1,((SPEECH_SFX-$1000000)).w
		txt     $3B ; "Done for now? That's OK. Get[Line]lots of rest, and I'll see[Line]you soon![Wait2]"
		txt     $3C ; "Don't stay away too long,[Line]though. We need you here to[Line]lead the Shining Force![Wait2]"
		clstxt
		jsr     sub_164018
		bsr.w   DisplayShiningForceLogo
		move.w  #3600,d0
		bsr.w   j_Sleep
		bsr.w   j_FadeOutToBlack
		bsr.w   j_DisableDisplayAndInterrupts
		movea.w #$2700,sp
		movea.l (InitStack).w,sp
		movea.l (p_Start).w,a0  
		jmp     (a0)

    ; End of function sub_3284


; =============== S U B R O U T I N E =======================================

; Simone's ending speech

sub_32EC:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		moveq   #120,d0 
		bsr.w   j_Sleep
		sndCom  SOUND_COMMAND_18564
		moveq   #60,d0 
		bsr.w   j_Sleep
		bsr.w   InitializeReaderScreen
		move.b  #1,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_OpenMessageWindow).l
		move.w  #SFX_DIALOG_BLEEP_1,((SPEECH_SFX-$1000000)).w
		txt     $3E ; "Swallowed by the murky brine,[Line]the Castle of the Ancients[Line]was lost forevermore.[Delay2][Delay2]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $3F ; "The battle over and Rune[Line]saved, the warriors of the[Line]Shining Force returned home.[Delay2][Delay2]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $40 ; "Led by Mae, Guardiana was[Line]rebuilt and Anri inherited[Line]the throne.[Delay2][Delay2]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $41 ; "As for [Hero], he is[Line]believed to have perished at[Line]sea along with Dark Dragon.[Delay2][Delay2]"
		jsr     sub_164014
		trap    #CREATE_MESSAGE_WINDOW
		txt     $42 ; "And that is the official[Line]ending. But you and I know[Line]differently, don't we?[Delay2][Delay2]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $43 ; "Somewhere, evil stirs in a[Line]land that has need of a[Line]hero.[Delay2][Delay2]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $44 ; "And I know you'll be up to[Line]the challenge, [Hero]![Delay2][Delay2]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $45 ; "Well, goodbye for now. I have[Line]a feeling I'll be seeing you[Line]again.[Delay2][Delay2][Delay2]"
		clstxt
		moveq   #$3C,d0 
		bsr.w   j_Sleep
		sndCom  SOUND_COMMAND_FADE_OUT
		move.w  #$12C,d0
		bsr.w   j_Sleep
		sndCom  MUSIC_CREDITS
		bsr.w   j_FadeOutToBlack
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function sub_32EC


; =============== S U B R O U T I N E =======================================

DisplayReaderScreen:
		
		bsr.w   InitializeReaderScreen
		tst.b   ((DEBUG_MODE_UNLOCKED-$1000000)).w
		beq.s   loc_339E
		cmpi.b  #INPUT_UP,(P2_INPUT).l
		bne.s   loc_339E
		move.b  #1,((DEBUG_MODE_ACTIVATED-$1000000)).w
		sndCom  SFX_VALIDATION
loc_339E:
		move.w  #SFX_DIALOG_BLEEP_1,((SPEECH_SFX-$1000000)).w
		bsr.w   CheckSram
		sndCom  MUSIC_SIMONE
		tst.b   ((DEBUG_MODE_ACTIVATED-$1000000)).w
		beq.s   loc_33CA
		btst    #INPUT_BIT_START,(P1_INPUT).l
		beq.s   loc_33CA
		addq.b  #1,((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		jsr     j_InitializeNewGame
		bra.w   loc_34B8
loc_33CA:
		jsr     (j_OpenMessageWindow).l
		clr.b   ((MESSAGE_SPEED-$1000000)).w
		tst.b   (P1_INPUT).l    
		bne.s   loc_33EE
		txt     $27 ; "Wow! Dark Dragon, Ancients...[Line]Let's see now, what else does[Line]this old book say?[Wait2][Line]Hmmm. One thousand years[Line]have passed since they[Line]vanquished Dark Dragon.[Wait2][Line]And this book says[Line]Dark Dragon threatened to[Line]return right about now.[Wait2][Line]I bet anything that Dark[Line]Dragon is behind the evil[Line]hordes of Runefaust![Wait2]"
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		txt     $28 ; "I need to tell someone about[Line]this! But who would listen to[Line]a kid like me?[Wait2]"
loc_33EE:
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     sub_164014
		tst.b   (P1_INPUT).l    
		bne.s   loc_340E        
		txt     $29 ; "Oh, hi! I didn't notice you[Line]there at first. Maybe you'll[Line]listen. Nobody else will.[Wait2]"
		txt     $2A ; "This book tells of an ancient[Line]evil that threatened our land[Line]long ago--Dark Dragon![Wait2]"
loc_340E:
		txt     $2B ; "I think Dark Dragon's coming[Line]back! Will you help us?[Line]C'mon, it'll be an adventure![Wait2]"
		bra.s   loc_3422
loc_3416:
		jsr     sub_164014
		txt     $39 ; "Come on! Let's get on with[Line]your adventure!"
loc_3422:
		clr.w   d0
		jsr     j_CheckSavedGames
		move.w  d0,-(sp)
		move.w  (sp)+,d0
		bmi.s   loc_3416
		add.w   d0,d0
		move.w  rjt_ReaderScreenActions(pc,d0.w),d0
		jmp     rjt_ReaderScreenActions(pc,d0.w)

    ; End of function DisplayReaderScreen

rjt_ReaderScreenActions:
		dc.w readerScreenAction_New-rjt_ReaderScreenActions
		dc.w readerScreenAction_Cont-rjt_ReaderScreenActions
		dc.w ReaderScreenAction_Del-rjt_ReaderScreenActions
		dc.w ReaderScreenAction_Copy-rjt_ReaderScreenActions

; =============== S U B R O U T I N E =======================================

readerScreenAction_New:
		
		jsr     (j_CreateMessageWindow).l
		txt     $3D ; "Pick an adventure."
		moveq   #1,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3628
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     $2C ; "Say, what shall I call you?[Wait2]"
		jsr     (j_CloseMessageWindow).l
		jsr     j_InitializeNewGame
		clr.w   d0
		jsr     j_NameAlly
		cmpi.b  #INPUT_B|INPUT_C|INPUT_A|INPUT_START,(P2_INPUT).l
		bne.s   loc_34A6
		moveq   #1,d0
		moveq   #REGULAR_NON_LEADER_FORCE_MEMBERS_COUNTER,d7
loc_3492:
		movem.w d0/d7,-(sp)
		jsr     j_NameAlly
		movem.w (sp)+,d0/d7
		addq.w  #1,d0
		dbf     d7,loc_3492
loc_34A6:
		jsr     (j_OpenMessageWindow).l
		txt     $2D ; "Nice to meet you,[Line][Hero]! I'm Simone.[Wait2][Line]Come back often[Line]and tell me everything![Wait2]"
		txt     $2E ; "You need to get going! Evil[Line]spreads farther across Rune[Line]with every passing day.[Wait2]"
loc_34B8:
		move.b  #1,((CURRENT_CHAPTER-$1000000)).w
		jsr     SaveGame(pc)
		nop
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(SAVE_FLAGS).l
		bset    d0,(byte_20022F).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		sndCom  SOUND_COMMAND_FADE_OUT
		bsr.w   j_FadeOutToBlack
		clr.w   d0
		rts

    ; End of function readerScreenAction_New


; =============== S U B R O U T I N E =======================================

readerScreenAction_Cont:
		
		jsr     (j_CreateMessageWindow).l
		txt     $2F ; "Let's get going![Line]You're doing great so far![Wait2]"
		jsr     (j_CreateMessageWindow).l
		txt     $30 ; "Which adventure would you[Line]like to continue?[Wait2]"
		moveq   #2,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3628
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		jsr     LoadGame(pc)
		nop
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     $31 ; "Good luck! And be sure to[Line]stop by to let me know how[Line]you're doing, OK?[Wait2]"
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		sndCom  SOUND_COMMAND_FADE_OUT
		bsr.w   j_FadeOutToBlack
		moveq   #$FFFFFFFF,d0
		rts

    ; End of function readerScreenAction_Cont


; =============== S U B R O U T I N E =======================================

ReaderScreenAction_Del:
		
		jsr     (j_CreateMessageWindow).l
		txt     $32 ; "Really? Which adventure[Line]should I delete?[Wait2]"
		moveq   #2,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3416
		movem.w d0,-(sp)
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     $33 ; "Are you sure?"
		jsr     (j_YesNoChoiceBox).l
		tst.w   d0
		movem.w (sp)+,d0
		bmi.w   loc_3628
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		bsr.w   sub_3652
		txt     $34 ; "OK, it's done![Wait2]"
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		addq.w  #1,d0
		bclr    d0,(SAVE_FLAGS).l
		bclr    d0,(byte_20022F).l
		bra.w   loc_3416
ReaderScreenAction_Copy:
		
		jsr     (j_CreateMessageWindow).l
		txt     $35 ; "Which adventure do you wish[Line]to copy?"
		moveq   #2,d0
		jsr     j_CheckSavedGames
		bmi.w   loc_3628
		movem.w d0,-(sp)
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     $36 ; "Where do you wish to copy it[Line]to?"
		moveq   #1,d0
		jsr     j_CheckSavedGames
		movem.w (sp)+,d1
		bmi.w   loc_3628
		move.w  d0,-(sp)
		move.w  d1,((CURRENT_SAVE_SLOT-$1000000)).w
		bsr.w   LoadGame
		move.w  (sp)+,d0
		move.w  d0,((CURRENT_SAVE_SLOT-$1000000)).w
		bsr.w   DeleteGame
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(SAVE_FLAGS).l
		bset    d0,(byte_20022F).l
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		bsr.w   sub_3652
		txt     $37 ; "Done![Wait2]"
		bra.w   loc_3416
loc_3628:
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		jsr     (j_CreateMessageWindow).l
		txt     $38 ; "Change your mind? No problem![Wait2]"
		bra.w   loc_3416
		jsr     (j_OpenMessageWindow).l
		txt     $3A ; "Oh no! I can't find adventure[Line][Num]! I hope you're not too[Line]mad![Wait2]"
		txt     $3B ; "Done for now? That's OK. Get[Line]lots of rest, and I'll see[Line]you soon![Wait2]"
		rts

    ; End of function ReaderScreenAction_Del


; =============== S U B R O U T I N E =======================================

sub_3652:
		jsr     sub_164018
		moveq   #20,d0
		jsr     (Sleep).l       

    ; End of function sub_3652


; =============== S U B R O U T I N E =======================================

CheckSram:
		lea     (FF0FFE_LOADING_SPACE).l,a0
						; load SRAM string into RAM
		lea     (SRAM_STRING).l,a1
		moveq   #21,d7
		bsr.w   CopyBytesFromSram
		bne.w   loc_378A
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     aYasuhirohiroko(pc), a1
		moveq   #20,d7
@CheckSramString_Loop:
		
		cmpm.b  (a0)+,(a1)+
		bne.w   loc_378A
		dbf     d7,@CheckSramString_Loop
                
		move.b  (SAVE_FLAGS).l,d0
		cmp.b   (byte_20022F).l,d0
		bne.w   loc_378A
		btst    #1,(SAVE_FLAGS).l
		beq.s   @Slot2
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_1_DATA).l,a1
		move.w  #SAVE_SLOT_SIZE,d7
		bsr.w   CopyBytesFromSram
		beq.s   @Slot2
		move.l  #1,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   sub_3758
		bclr    #1,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
@Slot2:
		btst    #2,(SAVE_FLAGS).l
		beq.s   @Slot3
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_2_DATA).l,a1
		move.w  #SAVE_SLOT_SIZE,d7
		bsr.w   CopyBytesFromSram
		beq.s   @Slot3
		move.l  #2,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   sub_3758
		bclr    #2,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
@Slot3:
		btst    #3,(SAVE_FLAGS).l
		beq.s   @Return
		lea     (FF0FFE_LOADING_SPACE).l,a0
		lea     (SAVE_SLOT_3_DATA).l,a1
		move.w  #SAVE_SLOT_SIZE,d7
		bsr.w   CopyBytesFromSram
		beq.s   @Return
		move.l  #3,((MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   sub_3758
		bclr    #3,(SAVE_FLAGS).l
		move.b  (SAVE_FLAGS).l,(byte_20022F).l
@Return:
		rts

    ; End of function CheckSram


; =============== S U B R O U T I N E =======================================

sub_3758:
		jsr     (j_OpenMessageWindow).l
		sndCom  MUSIC_CURSED_ITEM
		txt     $3A ; "Oh no! I can't find adventure[Line][Num]! I hope you're not too[Line]mad![Wait2]"
		bsr.w   j_WaitForInputFor3Seconds
		jsr     (j_CloseMessageWindow).l
		rts

    ; End of function sub_3758

aYasuhirohiroko:dc.b 'YASUHIROHIROKOinSERA ',0

; START OF FUNCTION CHUNK FOR CheckSram

loc_378A:
		clr.b   (GAME_COMPLETED).l
		lea     (MAP_SPRITE_POSITION).l,a0
		lea     (SRAM_START).l,a1
		move.w  #SRAM_COUNTER_MINUS_ONE,d7
		bsr.w   CopyBytesToSram
		lea     aYasuhirohiroko(pc), a0
		lea     (SRAM_STRING).l,a1
		moveq   #21,d7
		bsr.w   CopyBytesToSram
		moveq   #1,d7

; END OF FUNCTION CHUNK FOR CheckSram


; =============== S U B R O U T I N E =======================================

CopyBytesToSram:
		
		tst.b   ((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		bne.w   @Return
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
@Loop:
		move.b  (a0)+,d1
		add.w   d1,d0
		move.b  d1,(a1)
		addq.l  #2,a1
		dbf     d7,@Loop
                
		move.b  d0,(a1)
		addq.l  #2,a1
@Return:
		rts

    ; End of function CopyBytesToSram


; =============== S U B R O U T I N E =======================================

CopyBytesFromSram:
		
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
@Loop:
		move.b  (a1),d1
		add.w   d1,d0
		move.b  d1,(a0)+
		addq.l  #2,a1
		dbf     d7,@Loop
                
		cmp.b   (a1),d0
		addq.l  #2,a1
		rts

    ; End of function CopyBytesFromSram


; =============== S U B R O U T I N E =======================================

SaveGame:
		jsr     sub_20024

    ; End of function SaveGame


; =============== S U B R O U T I N E =======================================

DeleteGame:
		moveq   #39,d0
		bsr.w   SetEventFlag
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		bne.s   loc_3808
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
		move.w  #SAVE_SLOT_SIZE,d7
		lea     ((CURRENT_CHAPTER-$1000000)).w,a0
		bra.s   CopyBytesToSram

    ; End of function DeleteGame


; =============== S U B R O U T I N E =======================================

LoadGame:
		move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
		bne.s   @Slot2
		lea     (SAVE_SLOT_1_DATA).l,a1
		bra.s   @Continue
@Slot2:
		cmpi.w  #1,d0
		bne.s   @Slot3
		lea     (SAVE_SLOT_2_DATA).l,a1
		bra.s   @Continue
@Slot3:
		lea     (SAVE_SLOT_3_DATA).l,a1
@Continue:
		move.w  #SAVE_SLOT_SIZE,d7
		lea     ((CURRENT_CHAPTER-$1000000)).w,a0
		bra.s   CopyBytesFromSram

    ; End of function LoadGame


; =============== S U B R O U T I N E =======================================

InitializeReaderScreen:
		
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		bsr.w   j_DisableDisplayAndInterrupts
		bsr.w   j_ClearScrollAndSpriteTables
		move.w  #$8C00,d0       ; H32 cell mode, no interlace
		bsr.w   j_SetVdpReg
		move.w  #$9001,d0       ; scroll size : V32 cell, H64 cell
		bsr.w   j_SetVdpReg
		move.w  #$8230,d0       ; scroll A table VRAM address : C000
		bsr.w   j_SetVdpReg
		move.w  #$8407,d0       ; scroll B table VRAM address : E000
		bsr.w   j_SetVdpReg
		move.w  #$8B00,d0       ; disable external interrupt, full scrolls
		bsr.w   j_SetVdpReg
		jsr     sub_16400C
		bsr.w   j_EnableDisplayAndInterrupts
		movem.l d7-a1,-(sp)
		lea     ReaderScreenPalettes(pc), a0
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$80,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		clr.l   (HORIZONTAL_SCROLL_DATA).l
		clr.l   (VERTICAL_SCROLL_DATA).l
		bsr.w   j_UpdateVdpHScrollData
		bsr.w   j_UpdateVdpVScrollData
		bsr.w   j_FadeInFromBlack
		move.w  #$14,((word_FFB56A-$1000000)).w
		move.w  #$14,((word_FFB58A-$1000000)).w
		move.b  #1,((IS_DISPLAYING_PORTRAIT-$1000000)).w
		move.l  #sub_164010,(VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		rts

    ; End of function InitializeReaderScreen


; =============== S U B R O U T I N E =======================================

DisplayShiningForceLogo:
		
		move.w  #$3C,d0 
		jsr     (j_Sleep).l
		movea.l (p_ShiningForceLogoTiles).l,a0
		lea     ($A000).l,a1
		move.w  #$1000,d0
		moveq   #2,d1
		bsr.w   j_ApplyVIntVramDmaOnCompressedTiles
		bsr.w   j_EnableDmaQueueProcessing
		move.b  #2,(FADING_PALETTE_FLAGS).l
		move.b  #IN_FROM_BLACK,(FADING_SETTING).l
		clr.b   (FADING_POINTER).l
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		moveq   #3,d0
		bsr.w   j_Sleep
		lea     ShiningForceLogoLayout(pc), a0
		move.w  #$C05,d0
		move.w  #$1215,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		moveq   #$3C,d0 
		bra.w   j_Sleep

    ; End of function DisplayShiningForceLogo

ReaderScreenPalettes:
		incbin "data/graphics/specialscreens/readerscreen/readerscreenpalettes.bin"
ShiningForceLogoLayout:
		incbin "data/graphics/specialscreens/readerscreen/shiningforcelogolayout.bin"

; =============== S U B R O U T I N E =======================================

DisplayChapterScreen:
		
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		lea     (pt_ChapterScreens).l,a0
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     ($2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movea.l (p_ChapterScreensPalette).l,a0
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		lea     ChapterScreenLayout(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		move.w  #$B4,d0 
		jsr     (j_Sleep).l
		jsr     (j_FadeOutToBlack).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		cmpi.b  #1,((CURRENT_CHAPTER-$1000000)).w
		bne.s   byte_3AE0
		sndCom  MUSIC_TOWN
		bra.s   loc_3AE4
byte_3AE0:
		sndCom  MUSIC_INTRO
loc_3AE4:
		moveq   #$26,d0 
		bsr.w   SetEventFlag
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  #$FF,((VICTORY_EXIT-$1000000)).w
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_3B06(pc,d0.w),d0
		jmp     off_3B06(pc,d0.w)

    ; End of function DisplayChapterScreen

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
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  #SFX_DIALOG_BLEEP_6,((SPEECH_SFX-$1000000)).w
		txt     $30C        ; "[Hero]? [Hero]?[Line]C'mon, kid, wake up![Line]I didn't hit you that hard.[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		sndCom  SFX_SWORDS_HIT
		moveq   #$14,d0
		jsr     (j_Sleep).l
		sndCom  SFX_SWORDS_HIT
		moveq   #$28,d0 
		jsr     (j_Sleep).l
		sndCom  SFX_CRITICAL_HIT
		moveq   #30,d0
		jsr     (j_Sleep).l
		sndCom  SFX_HIT
		txt     $30D        ; "Keep your guard up, kid.[Line]Those beasts of Runefaust[Line]will tear you to pieces![Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $15D        ; "[Hero] and the Shining[Line]Force followed Kane's trail[Line]to the town of Rindo....[Wait2]"
		jsr     (j_FadeOutToBlack).l
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $15E        ; "The Shining Force arrived in[Line]Bustoke, a town built into a[Line]mountainside.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $15F        ; "The Shining Force reached the[Line]Pao Prairie to discover that[Line]Pao was a town of wagons![Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #6,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $160        ; "After a week at sea, sentries[Line]spotted a horde of monsters[Line]approaching the ship....[Wait2]"
		jsr     (j_FadeOutToBlack).l
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #2,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #0,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$27,d0 
		bsr.w   ClearEventFlag
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

    ; End of function sub_3C5E


; =============== S U B R O U T I N E =======================================

sub_3CAA:
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $161        ; "The Shining Force finally[Line]reached the port of Rudo, far[Line]from Prompt.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $162        ; "The Shining Force quickly[Line]reached Prompt, hoping[Line]that they had come in time.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		clr.l   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		move.l  d0,((MESSAGE_ARG_NUMBER-$1000000)).w
		txt     $163        ; "Runefaust at last! The long[Line]and perilous journey is near[Line]its end.[Wait2][Line]It is up to the Shining Force[Line]whether it ends as a[Line]triumph for Light or Darkness.[Wait2]"
		jsr     (j_FadeOutToBlack).l
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
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

; End chapter

sub_3D80:
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #2,d0
		bne.s   loc_3DBC
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		txt     $165        ; "[Hero] and the Shining[Line]Force head toward Bustoke.[Line]What awaits them there?[Wait2][Line]The legacy of the Ancients[Line]is still a mystery. Will[Line]they ever solve it?[Wait2]"
		jsr     (j_FadeOutToBlack).l
		bra.w   byte_3DEC
loc_3DBC:
		cmpi.b  #7,d0
		bne.s   byte_3DEC
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		jsr     (j_OpenMessageWindow).l
		jsr     (j_FadeInFromBlack).l
		txt     $16A        ; "The Shining Force is now in a[Line]desperate race against time.[Line]Dark Dragon is awakening![Wait2]"
		jsr     (j_FadeOutToBlack).l
byte_3DEC:
		sndCom  SOUND_COMMAND_FADE_OUT
		moveq   #$5A,d0 
		bsr.w   j_Sleep
		bsr.w   j_DisableDisplayAndInterrupts
		bsr.w   j_ClearScrollAndSpriteTables
		lea     (pt_ChapterScreens).l,a0
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     ($2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		bsr.w   j_ApplyImmediateVramDmaOnCompressedTiles
		movea.l (p_ChapterEndTiles).l,a0
		lea     ($4000).w,a1
		move.w  #$100,d0
		move.w  #2,d1
		bsr.w   j_ApplyImmediateVramDmaOnCompressedTiles
		sndCom  MUSIC_CHAPTER_END
		jsr     (j_EnableDisplayAndInterrupts).l
		movea.l (p_ChapterScreensPalette).l,a0
		lea     (PALETTE_1_BASE).l,a1
		move.w  #$20,d7 
		jsr     (j_CopyBytes).l
		lea     ChapterEndLayout(pc), a0
		move.w  #$404,d0
		move.w  #$E0F,d1
		jsr     j_CreateWindow
		lea     ChapterScreenLayout(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     j_CreateWindow
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
		jsr     (j_OpenMessageWindow).l
		addq.b  #1,((CURRENT_CHAPTER-$1000000)).w
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #8,d0
		ble.w   loc_3EC8
		rts
loc_3EC8:
		clr.l   d0
		lea     ((EVENT_FLAGS-$1000000)).w,a0
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.w   (a0)+
		lea     ((byte_FF9C6E-$1000000)).w,a0
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		sndCom  MUSIC_SIMONE
		jsr     (j_FadeInFromBlack).l
		txt     $46 ; "Do you want to record your[Line]exploits so far?"
		jsr     (j_YesNoChoiceBox).l
		bne.s   byte_3F02
		jsr     (j_SaveGame).l
byte_3F02:
		sndCom  SOUND_COMMAND_FADE_OUT
		jsr     (j_FadeOutToBlack).l
		rts

    ; End of function sub_3D80


; =============== S U B R O U T I N E =======================================

ExecuteMapExitScript:
		
		move.b  #-1,((VICTORY_EXIT-$1000000)).w
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  rjt_MapExitScripts(pc,d0.w),d0
		jmp     rjt_MapExitScripts(pc,d0.w)

    ; End of function ExecuteMapExitScript

rjt_MapExitScripts:
		dc.w mes0_Chapter1-rjt_MapExitScripts
		dc.w mes1_Chapter2-rjt_MapExitScripts
		dc.w mes2_Chapter3-rjt_MapExitScripts
		dc.w mes3_Chapter4-rjt_MapExitScripts
		dc.w mes4_Chapter5-rjt_MapExitScripts
		dc.w mes5_Chapter6-rjt_MapExitScripts
		dc.w mes6_Chapter7-rjt_MapExitScripts
		dc.w mes7_Chapter8-rjt_MapExitScripts

; =============== S U B R O U T I N E =======================================

mes0_Chapter1:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_MapExitScript0_Regions(pc,d0.w),d0
		jmp     rjt_MapExitScript0_Regions(pc,d0.w)

    ; End of function mes0_Chapter1

rjt_MapExitScript0_Regions:
		dc.w mes0_Region0-rjt_MapExitScript0_Regions
		dc.w mes0_Region1-rjt_MapExitScript0_Regions
		dc.w mes0_Region2-rjt_MapExitScript0_Regions
		dc.w mes0_Region3-rjt_MapExitScript0_Regions
		dc.w mes0_Region4-rjt_MapExitScript0_Regions
		dc.w mes0_Region5-rjt_MapExitScript0_Regions
		dc.w mes0_Region0-rjt_MapExitScript0_Regions

; =============== S U B R O U T I N E =======================================

mes0_Region0:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  rjt_MapExitScript0_Region0_Exits(pc,d0.w),d0
		jmp     rjt_MapExitScript0_Region0_Exits(pc,d0.w)

    ; End of function mes0_Region0

rjt_MapExitScript0_Region0_Exits:
		dc.w mes0_r0_Exit0-rjt_MapExitScript0_Region0_Exits
		dc.w mes0_r0_Exit1-rjt_MapExitScript0_Region0_Exits
		dc.w mes0_r0_Exit2-rjt_MapExitScript0_Region0_Exits
		dc.w mes0_r0_Exit3-rjt_MapExitScript0_Region0_Exits

; =============== S U B R O U T I N E =======================================

mes0_r0_Exit0:
		
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_r0_Exit0


; =============== S U B R O U T I N E =======================================

mes0_r0_Exit1:
		
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   loc_3F9E
		move.b  #3,((EGRESS_LOCATION-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_3FA4
loc_3F9E:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_3FA4:
		rts

    ; End of function mes0_r0_Exit1


; =============== S U B R O U T I N E =======================================

mes0_r0_Exit2:
		
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_r0_Exit2


; =============== S U B R O U T I N E =======================================

mes0_r0_Exit3:
		
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_r0_Exit3


; =============== S U B R O U T I N E =======================================

mes0_Region1:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_3FBC:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #40,d0
		bsr.w   CheckEventFlag
		beq.s   return_4010
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_3FF4
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((VICTORY_EXIT-$1000000)).w
		move.b  #4,((EGRESS_LOCATION-$1000000)).w
		bra.s   return_4010
loc_3FF4:
		moveq   #48,d0
		bsr.w   CheckEventFlag
		beq.s   return_4010
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   return_4010
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((VICTORY_EXIT-$1000000)).w
return_4010:
		rts

    ; End of function mes0_Region1


; =============== S U B R O U T I N E =======================================

mes0_Region2:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_Region2


; =============== S U B R O U T I N E =======================================

mes0_Region3:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #51,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4030
		bsr.w   ClearEventFlag
		move.b  #1,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
loc_4030:
		bra.s   loc_3FBC

    ; End of function mes0_Region3


; =============== S U B R O U T I N E =======================================

mes0_Region4:
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_3FBC

    ; End of function mes0_Region4


; =============== S U B R O U T I N E =======================================

mes0_Region5:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #49,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4052
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_3FBC
		bra.s   return_4064
loc_4052:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
return_4064:
		rts

    ; End of function mes0_Region5


; =============== S U B R O U T I N E =======================================

mes1_Chapter2:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_407C(pc,d0.w),d0
		jmp     off_407C(pc,d0.w)

    ; End of function mes1_Chapter2

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40C0


; =============== S U B R O U T I N E =======================================

sub_40CE:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40CE


; =============== S U B R O U T I N E =======================================

sub_40DC:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40DC


; =============== S U B R O U T I N E =======================================

sub_40EA:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_413A
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_40F8:
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4118
		move.b  #2,((CURRENT_REGION-$1000000)).w
		bra.s   return_4138
loc_4118:
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		beq.s   return_4138
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   return_4138
		move.b  #1,((VICTORY_EXIT-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
return_4138:
		rts
loc_413A:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_415A
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4160
loc_415A:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4160:
		rts

    ; End of function sub_40EA


; =============== S U B R O U T I N E =======================================

sub_4162:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_4170
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_40F8
loc_4170:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #4,((CURRENT_REGION-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4190
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4196
loc_4190:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4196:
		rts

    ; End of function sub_4162


; =============== S U B R O U T I N E =======================================

sub_4198:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_41A8
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_40F8
loc_41A8:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #5,((CURRENT_REGION-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_41CE
		move.b  #7,((EGRESS_LOCATION-$1000000)).w
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_41D4
loc_41CE:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_41D4:
		rts

    ; End of function sub_4198


; =============== S U B R O U T I N E =======================================

mes2_Chapter3:
		
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_41EC(pc,d0.w),d0
		jmp     off_41EC(pc,d0.w)

    ; End of function mes2_Chapter3

off_41EC:       dc.w sub_41F4-off_41EC
		dc.w sub_423E-off_41EC
		dc.w sub_424C-off_41EC
		dc.w sub_427A-off_41EC

; =============== S U B R O U T I N E =======================================

sub_41F4:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_4208(pc,d0.w),d0
		jmp     off_4208(pc,d0.w)

    ; End of function sub_41F4

off_4208:       dc.w sub_420C-off_4208
		dc.w sub_421A-off_4208

; =============== S U B R O U T I N E =======================================

sub_420C:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		bra.s   return_423C
loc_4236:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_423C:
		rts

    ; End of function sub_421A


; =============== S U B R O U T I N E =======================================

sub_423E:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_423E


; =============== S U B R O U T I N E =======================================

sub_424C:
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4272
		move.b  #1,((VICTORY_EXIT-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4278
loc_4272:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4278:
		rts

    ; End of function sub_424C


; =============== S U B R O U T I N E =======================================

sub_427A:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_42AE
		clr.b   ((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_42A6
		move.b  #1,((VICTORY_EXIT-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_42AC
loc_42A6:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_42AC:
		rts
loc_42AE:
		move.b  #1,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_42CC
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_42D2
loc_42CC:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_42D2:
		rts

    ; End of function sub_427A


; =============== S U B R O U T I N E =======================================

mes3_Chapter4:
		
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_42EA(pc,d0.w),d0
		jmp     off_42EA(pc,d0.w)

    ; End of function mes3_Chapter4

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_4310(pc,d0.w),d0
		jmp     off_4310(pc,d0.w)

    ; End of function sub_42FC

off_4310:       dc.w sub_4316-off_4310
		dc.w sub_4324-off_4310
		dc.w sub_435E-off_4310

; =============== S U B R O U T I N E =======================================

sub_4316:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		bra.s   return_435C
loc_4340:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4356
		move.b  #3,((CURRENT_REGION-$1000000)).w
		bra.s   return_435C
loc_4356:
		move.b  #4,((CURRENT_REGION-$1000000)).w
return_435C:
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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_437A(pc,d0.w),d0
loc_4376:
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
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_4388


; =============== S U B R O U T I N E =======================================

sub_4396:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_439C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_43BA
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #1,((VICTORY_EXIT-$1000000)).w
		bra.s   return_43CC
loc_43BA:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		move.b  #2,((VICTORY_EXIT-$1000000)).w
return_43CC:
		rts

    ; End of function sub_4396


; =============== S U B R O U T I N E =======================================

sub_43CE:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_43CE


; =============== S U B R O U T I N E =======================================

sub_43DC:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_439C

    ; End of function sub_43DC


; =============== S U B R O U T I N E =======================================

sub_43E2:
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_439C

    ; End of function sub_43E2


; =============== S U B R O U T I N E =======================================

sub_43EA:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4428
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4434
loc_4428:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4434:
		rts

    ; End of function sub_4406


; =============== S U B R O U T I N E =======================================

sub_4436:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4458
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4464
loc_4458:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4464:
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
		bra.s   return_4488
loc_4482:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4488:
		rts

    ; End of function sub_4466


; =============== S U B R O U T I N E =======================================

mes4_Chapter5:
		
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_44A0(pc,d0.w),d0
		jmp     off_44A0(pc,d0.w)

    ; End of function mes4_Chapter5

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		move.b  #5,((EGRESS_LOCATION-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_44C8


; =============== S U B R O U T I N E =======================================

sub_44E0:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_44E0


; =============== S U B R O U T I N E =======================================

sub_44EE:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		move.b  #6,((EGRESS_LOCATION-$1000000)).w
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
		move.b  #3,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   return_4538
loc_452E:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
return_4538:
		rts

    ; End of function sub_4508


; =============== S U B R O U T I N E =======================================

sub_453A:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_453A


; =============== S U B R O U T I N E =======================================

sub_4546:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_4546


; =============== S U B R O U T I N E =======================================

sub_4552:
		moveq   #$24,d0 
loc_4554:
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4576
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #4,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   return_459C
loc_4576:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4596
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_459C
loc_4596:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_459C:
		rts

    ; End of function sub_4552


; =============== S U B R O U T I N E =======================================

sub_459E:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_459E


; =============== S U B R O U T I N E =======================================

sub_45B4:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_45B4


; =============== S U B R O U T I N E =======================================

mes5_Chapter6:
		
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_45E2(pc,d0.w),d0
		jmp     off_45E2(pc,d0.w)

    ; End of function mes5_Chapter6

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		bra.s   return_463A
loc_4634:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_463A:
		rts

    ; End of function sub_4618


; =============== S U B R O U T I N E =======================================

sub_463C:
		moveq   #$30,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_464C
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_4652
loc_464C:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_4652:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_463C


; =============== S U B R O U T I N E =======================================

sub_465A:
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		move.b  #2,((VICTORY_EXIT-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
loc_4692:
		bra.s   return_46A6
loc_4694:
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   return_46A6
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((VICTORY_EXIT-$1000000)).w
return_46A6:
		rts

    ; End of function sub_465A


; =============== S U B R O U T I N E =======================================

sub_46A8:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		bra.s   return_46D8
loc_46D2:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_46D8:
		rts
loc_46DA:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_4660

    ; End of function sub_46AE


; =============== S U B R O U T I N E =======================================

mes6_Chapter7:
		
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_46FA(pc,d0.w),d0
		jmp     off_46FA(pc,d0.w)

    ; End of function mes6_Chapter7

off_46FA:       dc.w sub_4706-off_46FA
		dc.w sub_4706-off_46FA
		dc.w sub_472E-off_46FA
		dc.w sub_474A-off_46FA
		dc.w sub_4758-off_46FA
		dc.w sub_47D0-off_46FA

; =============== S U B R O U T I N E =======================================

sub_4706:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4742
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   return_4748
loc_4742:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
return_4748:
		rts

    ; End of function sub_472E


; =============== S U B R O U T I N E =======================================

sub_474A:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_474A


; =============== S U B R O U T I N E =======================================

sub_4758:
		cmpi.b  #$10,((byte_FFF807-$1000000)).w
		beq.w   loc_47A8
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		bra.s   return_47A6
loc_4794:
		moveq   #$28,d0 
loc_4796:
		bsr.w   CheckEventFlag
		bne.s   return_47A6
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((VICTORY_EXIT-$1000000)).w
return_47A6:
		rts
loc_47A8:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_47C8
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_47CE
loc_47C8:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_47CE:
		rts

    ; End of function sub_4758


; =============== S U B R O U T I N E =======================================

sub_47D0:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_47E0
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_4766
loc_47E0:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_480C
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
loc_47FE:
		move.b  #1,((VICTORY_EXIT-$1000000)).w
		move.b  #4,((EGRESS_LOCATION-$1000000)).w
		bra.s   return_4812
loc_480C:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
return_4812:
		rts

    ; End of function sub_47D0


; =============== S U B R O U T I N E =======================================

mes7_Chapter8:
		
		moveq   #$24,d0 
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_482A(pc,d0.w),d0
		jmp     off_482A(pc,d0.w)

    ; End of function mes7_Chapter8

off_482A:       dc.w sub_483E-off_482A
		dc.w sub_4876-off_482A
		dc.w sub_487E-off_482A
		dc.w sub_48A4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_492C-off_482A
		dc.w loc_4932-off_482A
		dc.w sub_4964-off_482A
		dc.w sub_497C-off_482A

; =============== S U B R O U T I N E =======================================

sub_483E:
		cmpi.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		beq.s   loc_484E
		move.b  #9,((CURRENT_REGION-$1000000)).w
		rts
loc_484E:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_486E
		move.b  #3,((CURRENT_REGION-$1000000)).w
		bra.s   return_4874
loc_486E:
		move.b  #8,((CURRENT_REGION-$1000000)).w
return_4874:
		rts

    ; End of function sub_483E


; =============== S U B R O U T I N E =======================================

sub_4876:
		cmpi.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		beq.s   loc_488C

    ; End of function sub_4876


; =============== S U B R O U T I N E =======================================

sub_487E:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #9,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_487E


; START OF FUNCTION CHUNK FOR sub_4876

loc_488C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_REGION-$1000000)).w
		rts

; END OF FUNCTION CHUNK FOR sub_4876


; =============== S U B R O U T I N E =======================================

sub_48A4:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_48BC
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		rts
loc_48BC:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_48D6
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #4,((CURRENT_REGION-$1000000)).w
		bra.s   return_48E2
loc_48D6:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #5,((CURRENT_REGION-$1000000)).w
return_48E2:
		rts

    ; End of function sub_48A4


; =============== S U B R O U T I N E =======================================

sub_48E4:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4904
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts
loc_4904:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_491E
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		bra.s   return_492A
loc_491E:
		move.b  #4,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
return_492A:
		rts

    ; End of function sub_48E4


; =============== S U B R O U T I N E =======================================

sub_492C:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_494C

    ; End of function sub_492C

loc_4932:       moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

; START OF FUNCTION CHUNK FOR sub_492C

loc_494C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #4,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

; END OF FUNCTION CHUNK FOR sub_492C


; =============== S U B R O U T I N E =======================================

sub_4964:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_4964


; =============== S U B R O U T I N E =======================================

sub_497C:
		moveq   #$24,d0 
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4998
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		rts
loc_4998:
		cmpi.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		beq.s   loc_49DC
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #$28,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_49B8
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		bra.s   return_49DA
loc_49B8:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_49CE
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_49DA
loc_49CE:
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
return_49DA:
		rts
loc_49DC:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #$FF,((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_497C

ChapterScreenLayout:
		incbin "data/graphics/specialscreens/chapterscreens/chapterscreenlayout.bin"
ChapterEndLayout:
		incbin "data/graphics/specialscreens/chapterscreens/chapterendlayout.bin"

; =============== S U B R O U T I N E =======================================

sub_4C0E:
		clr.w   d0
		move.b  (CURRENT_CHAPTER).l,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_4C22(pc,d0.w),d0
		jmp     off_4C22(pc,d0.w)

    ; End of function sub_4C0E

off_4C22:       dc.w sub_4C32-off_4C22
		dc.w sub_4CC6-off_4C22
		dc.w sub_4CFC-off_4C22
		dc.w sub_4D00-off_4C22
		dc.w sub_4D20-off_4C22
		dc.w sub_4D4E-off_4C22
		dc.w sub_4D64-off_4C22
		dc.w sub_4D88-off_4C22

; =============== S U B R O U T I N E =======================================

sub_4C32:
		move.b  (CURRENT_MAP_ENTRANCE).l,d7
loc_4C38:
		clr.b   (CURRENT_MAP_ENTRANCE).l
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #3,d1
		bne.s   loc_4C70
		moveq   #$38,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4C60
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
		bsr.w   SetEventFlag
loc_4C60:
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4C6C
		moveq   #2,d0
		bra.s   return_4C6E
loc_4C6C:
		moveq   #3,d0
return_4C6E:
		rts
loc_4C70:
		cmpi.w  #4,d1
		bne.s   loc_4C7A
		moveq   #$C,d0
		rts
loc_4C7A:
		moveq   #$27,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4C92
		moveq   #$2B,d0 
		bsr.w   CheckEventFlag
		beq.s   loc_4C8E
		moveq   #4,d0
		bra.s   return_4C90
loc_4C8E:
		moveq   #5,d0
return_4C90:
		rts
loc_4C92:
		cmpi.b  #4,d7
		bne.s   loc_4C9E
		move.b  d7,(CURRENT_MAP_ENTRANCE).l
loc_4C9E:
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		bne.s   loc_4CAA
		moveq   #4,d0
		rts
loc_4CAA:
		cmpi.b  #2,d7
		bne.s   loc_4CBA
		move.b  d7,(CURRENT_MAP_ENTRANCE).l
		moveq   #5,d0
		rts
loc_4CBA:
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
		moveq   #4,d0
		rts

    ; End of function sub_4C32


; =============== S U B R O U T I N E =======================================

sub_4CC6:
		clr.w   d1
		move.b  (CURRENT_REGION).l,d1
		cmpi.w  #8,d1
		bne.s   loc_4CD8
		moveq   #8,d0
		rts
loc_4CD8:
		tst.b   (CURRENT_MAP_ENTRANCE).l
		beq.s   loc_4CE8
		move.b  #3,(CURRENT_MAP_ENTRANCE).l
loc_4CE8:
		cmpi.w  #6,d1
		bne.s   loc_4CF2
		moveq   #$D,d0
		rts
loc_4CF2:
		cmpi.w  #7,d1
		bne.s   sub_4CFC
		moveq   #6,d0
		rts

    ; End of function sub_4CC6


; =============== S U B R O U T I N E =======================================

sub_4CFC:
		moveq   #7,d0
		rts

    ; End of function sub_4CFC


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
		bra.s   return_4D48
loc_4D46:
		moveq   #$2A,d0 
return_4D48:
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
		cmpi.b  #3,(CURRENT_MAP_ENTRANCE).l
		bne.s   loc_4D80
		moveq   #$10,d0
		bra.s   return_4D82
loc_4D80:
		moveq   #$1E,d0
return_4D82:
		rts
loc_4D84:
		moveq   #$24,d0 
		rts

    ; End of function sub_4D64


; =============== S U B R O U T I N E =======================================

sub_4D88:
		cmpi.b  #2,(CURRENT_MAP_ENTRANCE).l
		bgt.s   loc_4D96
		moveq   #$E,d0
		bra.s   return_4D98
loc_4D96:
		moveq   #$25,d0 
return_4D98:
		rts

    ; End of function sub_4D88


; =============== S U B R O U T I N E =======================================

debugMode_ChapterTest:
		
		move.b  #1,((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		moveq   #ALLY_KEN,d0
		jsr     j_JoinForce
		moveq   #ALLY_LUKE,d0
		jsr     j_JoinForce
		moveq   #ALLY_TAO,d0
		jsr     j_JoinForce
		moveq   #ALLY_LOWE,d0
		jsr     j_JoinForce
		moveq   #ALLY_HANS,d0
		jsr     j_JoinForce
		moveq   #ALLY_BLEU,d0
		jsr     j_JoinForce
		moveq   #ALLY_ADAM,d0
		jsr     j_JoinForce
		moveq   #ALLY_ZYLO,d0
		jsr     j_JoinForce
		moveq   #ALLY_MUSASHI,d0
		jsr     j_JoinForce
		moveq   #ALLY_HANZOU,d0
		jsr     j_JoinForce
		moveq   #ALLY_JOGURT,d0
		jsr     j_JoinForce
		moveq   #ALLY_MAE,d0
		moveq   #NON_LEADER_FORCE_MEMBERS_COUNTER,d7
loc_4DFC:
		jsr     j_JoinForce
		addq.w  #1,d0
		dbf     d7,loc_4DFC
                
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     wl_ChapterTest(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
loc_4E42:
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		moveq   #1,d0
		moveq   #$14,d1
loc_4E5E:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4E76
		addq.w  #1,d0
		cmpi.w  #9,d0
		blt.s   byte_4E72
		moveq   #1,d0
byte_4E72:
		sndCom  SFX_MENU_SELECTION
loc_4E76:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4E8A
		subq.w  #1,d0
		bne.s   byte_4E86
		moveq   #8,d0
byte_4E86:
		sndCom  SFX_MENU_SELECTION
loc_4E8A:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_4EF2
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_4EF2
		movem.l d7-a1,-(sp)
		lea     wl_ChapterTest(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((byte_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_WriteTilesFromNumber
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_4E5E
loc_4EF2:
		move.b  d0,((CURRENT_CHAPTER-$1000000)).w
		jsr     (j_FadeOutToBlack).l
		bra.w   loc_30FC

    ; End of function debugMode_ChapterTest


; =============== S U B R O U T I N E =======================================

debugMode_BattleTest:
		
		move.b  #1,((SAVE_GAME_DISABLED_TOGGLE-$1000000)).w
		moveq   #ALLY_KEN,d0
		jsr     j_JoinForce
		moveq   #ALLY_LUKE,d0
		jsr     j_JoinForce
		moveq   #ALLY_TAO,d0
		jsr     j_JoinForce
		moveq   #ALLY_LOWE,d0
		jsr     j_JoinForce
		moveq   #ALLY_HANS,d0
		jsr     j_JoinForce
		moveq   #ALLY_BLEU,d0
		jsr     j_JoinForce
		moveq   #ALLY_ADAM,d0
		jsr     j_JoinForce
		moveq   #ALLY_ZYLO,d0
		jsr     j_JoinForce
		moveq   #ALLY_MUSASHI,d0
		jsr     j_JoinForce
		moveq   #ALLY_HANZOU,d0
		jsr     j_JoinForce
		moveq   #ALLY_JOGURT,d0
		jsr     j_JoinForce
		moveq   #ALLY_MAE,d0
		moveq   #NON_LEADER_FORCE_MEMBERS_COUNTER,d7
loc_4F62:
		jsr     j_JoinForce
		addq.w  #1,d0
		dbf     d7,loc_4F62
loc_4F6E:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     wl_BattleTest(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
loc_4FC0:
		tst.b   (P1_INPUT).l    
		bne.s   loc_4FC0
		clr.w   d0
		moveq   #$14,d1
loc_4FCC:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4FE4
		addq.w  #1,d0
		cmpi.w  #$1E,d0
		blt.s   byte_4FE0
		moveq   #0,d0
byte_4FE0:
		sndCom  SFX_MENU_SELECTION
loc_4FE4:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_4FF8
		subq.w  #1,d0
		bgt.s   byte_4FF4
		moveq   #$1D,d0
byte_4FF4:
		sndCom  SFX_MENU_SELECTION
loc_4FF8:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_5086
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_5086
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5034
		movem.w d0-d1,-(sp)
		jsr     j_ResetCombatants
		jsr     j_ExecuteChurchMenu
		jsr     (j_ExecuteHeadquartersMenu).l
		movem.w (sp)+,d0-d1
loc_5034:
		movem.l d7-a1,-(sp)
		lea     wl_BattleTest(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		addq.w  #1,d0
		lea     ((byte_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_WriteTilesFromNumber
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_4FCC
loc_5086:
		clr.b   ((IS_DISPLAYING_PORTRAIT-$1000000)).w
		move.w  d0,-(sp)
		lsl.w   #3,d0
		lea     tbl_BattleTestTargets(pc), a0
		adda.w  d0,a0
		move.b  (a0)+,((CURRENT_CHAPTER-$1000000)).w
		move.b  (a0)+,((CURRENT_REGION-$1000000)).w
		move.b  (a0)+,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  (a0)+,((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		bsr.w   sub_313A
		move.w  (sp)+,d0
		bra.w   loc_4F6E

    ; End of function debugMode_BattleTest

tbl_BattleTestTargets:
		incbin "data/battles/global/battletesttargets.bin"

; =============== S U B R O U T I N E =======================================

DebugModeMessageTest:
		
		btst    #INPUT_BIT_B,(P1_INPUT).l
		bne.s   loc_51DE
		rts
loc_51DE:
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		jsr     (j_DisableDisplayAndInterrupts).l
		jsr     (j_ClearScrollAndSpriteTables).l
		jsr     (j_EnableDisplayAndInterrupts).l
		movem.l d7-a1,-(sp)
		lea     wl_MessageTest(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		jsr     (j_FadeInFromBlack).l
		trap    #5
		moveq   #0,d0
		moveq   #$14,d1
loc_5236:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5250
		addq.w  #1,d0
		cmpi.w  #$8BF,d0
		blt.s   byte_524C
		move.w  #$8BF,d0
byte_524C:
		sndCom  SFX_MENU_SELECTION
loc_5250:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5264
		subq.w  #1,d0
		bpl.s   byte_5260
		clr.w   d0
byte_5260:
		sndCom  SFX_MENU_SELECTION
loc_5264:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5280
		addi.w  #$A,d0
		cmpi.w  #$8BF,d0
		blt.s   byte_527C
		move.w  #$8BF,d0
byte_527C:
		sndCom  SFX_MENU_SELECTION
loc_5280:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_5296
		subi.w  #$A,d0
		bpl.s   byte_5292
		clr.w   d0
byte_5292:
		sndCom  SFX_MENU_SELECTION
loc_5296:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_52FE
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_52FE
		movem.l d7-a1,-(sp)
		lea     wl_MessageTest(pc), a0
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((byte_FFB854-$1000000)).w,a1
		ext.l   d0
		moveq   #4,d7
		jsr     j_WriteTilesFromNumber
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     j_CreateWindow
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (j_WaitForVInt).l
		bra.w   loc_5236
loc_52FE:
		movem.w d0,-(sp)
		trap    #CREATE_MESSAGE_WINDOW
		trap    #DISPLAY_MESSAGE
		movem.w (sp)+,d0
		bra.w   loc_5236

    ; End of function DebugModeMessageTest

wl_BattleTest:  incbin "data/graphics/tech/windowlayouts/wl-battletest.bin"
wl_ChapterTest: incbin "data/graphics/tech/windowlayouts/wl-chaptertest.bin"
wl_MessageTest: incbin "data/graphics/tech/windowlayouts/wl-messagetest.bin"

; =============== S U B R O U T I N E =======================================

sub_550C:
		bsr.w   CreateGoldWindow
		move.l  #$C1C0C15,d1
		moveq   #4,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_WaitForPlayerInput).l
		move.l  #$C152015,d1
		moveq   #6,d2
		jmp     j_MoveWindowWithSfx

    ; End of function sub_550C


; =============== S U B R O U T I N E =======================================

sub_5532:
		bsr.w   CreateGoldWindow
		move.l  #$200F160F,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function sub_5532


; =============== S U B R O U T I N E =======================================

sub_5544:
		bsr.w   CreateGoldWindow
		move.l  #$160F200F,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function sub_5544


; =============== S U B R O U T I N E =======================================

DisplayGoldWindow:
		
		bsr.w   CreateGoldWindow
		move.l  #$F8010101,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function DisplayGoldWindow


; =============== S U B R O U T I N E =======================================

HideGoldWindow:
		
		bsr.w   CreateGoldWindow
		move.l  #$101F801,d1
		moveq   #4,d2
		jmp     j_MoveWindowWithSfx

    ; End of function HideGoldWindow


; =============== S U B R O U T I N E =======================================

sub_557A:
		bsr.w   CreateGoldWindow
		move.w  #$160F,d1
		jsr     j_CreateWindow
		jmp     sub_8054

    ; End of function sub_557A


; =============== S U B R O U T I N E =======================================

CreateGoldWindow:
		
		movem.l d7-a1,-(sp)
		lea     wl_Gold(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$40,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     j_GetGold
		move.l  d1,d0
		lea     (byte_FFB7FC).l,a1
		moveq   #6,d7
		jsr     j_WriteTilesFromNumber
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$804,d0
		rts

    ; End of function CreateGoldWindow

wl_Gold:        incbin "data/graphics/tech/windowlayouts/wl-gold.bin"

; =============== S U B R O U T I N E =======================================

YesNoPrompt:
		clr.w   d0
		move.b  (P1_INPUT).l,d0 
		bra.s   loc_5618

    ; End of function YesNoPrompt


; =============== S U B R O U T I N E =======================================

YesNoChoiceBox:
		
		clr.w   d0
loc_5618:
		move.w  d0,-(sp)
		lea     MenuTiles_YesNo(pc), a0
		jsr     (j_DecompressGraphics).l
		sndCom  SFX_MENU_SWITCH
		clr.b   (CURRENT_DIAMOND_MENU_SELECTION).l
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
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_568E
		clr.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_56F2
loc_568E:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56AA
		move.b  #$FF,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_56F2
loc_56AA:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56C2
		moveq   #$FFFFFFFF,d0
		move.b  d0,(CURRENT_DIAMOND_MENU_SELECTION).l
		bra.w   byte_5702
loc_56C2:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56DA
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   byte_5702
loc_56DA:
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_56F4
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   byte_5702
loc_56F2:
		moveq   #$13,d6
loc_56F4:
		bsr.w   sub_5744
		subq.w  #1,d6
		bne.s   loc_56FE
		moveq   #$14,d6
loc_56FE:
		bra.w   loc_5674
byte_5702:
		sndCom  SFX_MENU_SWITCH
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

    ; End of function YesNoChoiceBox


; =============== S U B R O U T I N E =======================================

sub_5744:
		lea     (FF3000_LOADING_SPACE).l,a2
		movea.l a2,a0
		cmpi.w  #$A,d6
		ble.s   loc_575E
		tst.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		bne.s   loc_575E
		adda.w  #$120,a0
loc_575E:
		lea     (byte_FF3800).l,a1
		move.w  #$120,d7
		jsr     (j_CopyBytes).l
		adda.w  #$120,a1
		movea.l a2,a0
		adda.w  #$240,a0
		cmpi.w  #$A,d6
		ble.s   loc_578C
		cmpi.b  #$FF,(CURRENT_DIAMOND_MENU_SELECTION).l
		bne.s   loc_578C
		adda.w  #$120,a0
loc_578C:
		move.w  #$120,d7
		jsr     (j_CopyBytes).l
		adda.w  #$120,a1
		lea     (byte_FF3800).l,a0
		lea     ($FDC0).l,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jsr     (j_WaitForDmaQueueProcessing).l
		rts

    ; End of function sub_5744


; =============== S U B R O U T I N E =======================================

sub_57BA:
		lea     (SPRITE_01_PROPERTIES).l,a0
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

ExecuteMainMenu:
		
		clr.w   ((SPEECH_SFX-$1000000)).w
		move.b  #1,((byte_FFB53A-$1000000)).w
		clr.b   ((byte_FFB4CA-$1000000)).w
loc_5A26:
		btst    #INPUT_BIT_A,((TEMP_INPUT_STATES-$1000000)).w
		beq.s   loc_5A3E
		clr.w   d0
		clr.b   ((byte_FFB4CB-$1000000)).w
		jsr     j_OpenMiniStatusWindow
		bsr.w   DisplayGoldWindow
loc_5A3E:
		move.b  #MAIN_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8038
		tst.w   (word_FFD0BC).l
		beq.s   loc_5A62
		move.w  d0,-(sp)
		bsr.w   HideGoldWindow
		clr.w   d0
		jsr     j_CloseMiniStatusWindow
		move.w  (sp)+,d0
loc_5A62:
		tst.b   d0
		bmi.w   return_5A80
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_MainMenuActions(pc,d0.w),d0
		jmp     rjt_MainMenuActions(pc,d0.w)
rjt_MainMenuActions:
		
		dc.w mainMenuAction_Talk-rjt_MainMenuActions
		dc.w MainMenuAction_Magic-rjt_MainMenuActions
		dc.w MainMenuAction_Item-rjt_MainMenuActions
		dc.w j_j_MainMenuAction_Search-rjt_MainMenuActions
return_5A80:
		rts

    ; End of function ExecuteMainMenu


; =============== S U B R O U T I N E =======================================

j_j_MainMenuAction_Search:
		
		jmp     j_MainMenuAction_Search

    ; End of function j_j_MainMenuAction_Search


; =============== S U B R O U T I N E =======================================

mainMenuAction_Talk:
		
		cmpi.b  #ALLY_NOVA,((COMBATANT_1_ENTITY-$1000000)).w
		beq.s   loc_5A98
		jmp     sub_10028
		bra.s   MainMenuAction_Magic
loc_5A98:
		jmp     (sub_344).l

    ; End of function mainMenuAction_Talk


; =============== S U B R O U T I N E =======================================

MainMenuAction_Magic:
		
		clr.b   ((byte_FFB4C9-$1000000)).w
		clr.b   ((byte_FFB4C5-$1000000)).w
		clr.w   d0
		jsr     j_GetEntitySpellsAddressForCombatant
		cmpi.b  #$FF,(a0)
		bne.s   loc_5ABE
		moveq   #1,d0           ; "No magic." refusal text
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5ABE:
		move.b  #MAGIC_MENU,((CURRENT_MENU-$1000000)).w
		bsr.w   sub_8048
		cmpi.w  #$FFFF,d0
		bne.s   loc_5AD8
		jsr     (j_WaitForVInt).l
		bra.w   loc_5A26
loc_5AD8:
		move.b  d1,((SPELL_INDEX-$1000000)).w
		clr.w   d0
		jsr     j_GetCurrentMP
		move.w  d1,-(sp)
		move.b  ((SPELL_INDEX-$1000000)).w,d1
		jsr     j_GetMPCost
		move.w  (sp)+,d1
		cmp.w   d1,d2
		ble.s   loc_5B00
		moveq   #3,d0           ; "Not enough MP." refusal text
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5B00:
		move.w  d2,-(sp)
		clr.w   ((MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  ((SPELL_INDEX-$1000000)).w,d1
		move.w  d1,-(sp)
		andi.w  #SPELLENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.w  (sp)+,d1
		lsr.w   #6,d1
		ext.l   d1
		addq.l  #1,d1
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		trap    #5
		txt     $1B5        ; "[Name] casts [Spell][Line]level [Num]!"
		sndCom  SFX_SPELL_CAST
		txt     $1EA        ; "[Dict][Line]"
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1D1        ; "But nothing happens."
		txt     $1EA        ; "[Dict][Line]"
		clstxt
		clr.w   d0
		move.w  (sp)+,d1
		bra.w   loc_5A26

    ; End of function MainMenuAction_Magic


; =============== S U B R O U T I N E =======================================

MainMenuAction_Item:
		
		bsr.w   ExecuteItemMenu
		bmi.w   loc_5A3E
		rts

    ; End of function MainMenuAction_Item


; =============== S U B R O U T I N E =======================================

ExecuteItemMenu:
		
		clr.w   ((SPEECH_SFX-$1000000)).w
loc_5B58:
		tst.w   (word_FFD984).l
		beq.s   loc_5B62
		clstxt
loc_5B62:
		clr.b   ((byte_FFB52A-$1000000)).w
		move.b  #ITEM_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8048
		tst.w   d0
		bge.w   loc_5B7A
		rts
loc_5B7A:
		add.w   d0,d0
		move.w  rjt_ItemMenuActions(pc,d0.w),d0
		jmp     rjt_ItemMenuActions(pc,d0.w)

    ; End of function ExecuteItemMenu

rjt_ItemMenuActions:
		dc.w itemMenuAction_Use-rjt_ItemMenuActions
		dc.w itemMenuAction_Give-rjt_ItemMenuActions
		dc.w itemMenuAction_Equip-rjt_ItemMenuActions
		dc.w itemMenuAction_Drop-rjt_ItemMenuActions

; =============== S U B R O U T I N E =======================================

itemMenuAction_Use:
		
		trap    #5
		bsr.w   sub_617C
loc_5B92:
		jsr     (j_CreateMessageWindow).l
		txt     $1C         ; "Use whose item?"
		jsr     sub_8044
		tst.w   d0
		bmi.s   loc_5B58
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.b  d0,((byte_FFF001-$1000000)).w
		jsr     j_GetEntityItemsAddress
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		andi.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ITEM_CHAOS_BREAKER,d0
		bne.w   loc_5C30
		cmpi.b  #8,((CURRENT_CHAPTER-$1000000)).w
		bne.w   loc_5C30
		tst.b   ((CURRENT_REGION-$1000000)).w
		bne.w   loc_5C30
		cmpi.w  #$170A,((CURSOR_POSITION_X-$1000000)).w
		bne.w   loc_5C30
		moveq   #$29,d0 
		bsr.w   CheckEventFlag
		beq.w   loc_5C2E
		moveq   #$31,d0 
		bsr.w   CheckEventFlag
		bne.w   loc_5C2E
		moveq   #$31,d0 
		bsr.w   SetEventFlag
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21C        ; "[Hero] uses the[Line][Item].[Wait2]"
		clstxt
		move.b  #5,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		clr.b   ((byte_FFB538-$1000000)).w
		jmp     sub_124008
loc_5C2E:
		moveq   #ITEM_CHAOS_BREAKER,d0 
loc_5C30:
		cmpi.b  #ITEM_ANTIDOTE,d0
		bne.w   loc_5C7E
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1D         ; "Who will use the[Line][Item]?"
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.w   loc_5B92
		move.w  d0,-(sp)
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21C        ; "[Hero] uses the[Line][Item].[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		jsr     j_CurePoison
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_5CE6
		clstxt
		rts
loc_5C7E:
		cmpi.b  #ITEM_POWER_POTION,d0
		blt.w   loc_5CE0
		cmpi.b  #ITEM_BREAD_OF_LIFE,d0
		bgt.w   loc_5CE0
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1D         ; "Who will use the[Line][Item]?"
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.w   loc_5B92
		movem.w d0,-(sp)
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21C        ; "[Hero] uses the[Line][Item].[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		move.w  ((MESSAGE_ARG_NAME_1-$1000000)).w,d1
		subq.w  #5,d1
		jsr     j_IncreaseStatOnItemUse
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_5CE6
		clstxt
		jmp     j_ResetForceMemberStats
loc_5CE0:
		jmp     sub_10024

    ; End of function itemMenuAction_Use


; =============== S U B R O U T I N E =======================================

sub_5CE6:
		txt     $1EA        ; "[Dict][Line]"
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		jmp     j_RemoveItem

    ; End of function sub_5CE6


; =============== S U B R O U T I N E =======================================

nullsub_5CFC:
		rts

    ; End of function nullsub_5CFC


; =============== S U B R O U T I N E =======================================

itemMenuAction_Give:
		
		trap    #5
		bsr.w   sub_617C
		txt     $1F         ; "Transfer whose item?"
		jsr     sub_8044
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_5B58
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1    ; D1 = selected item index
		move.w  d1,-(sp)        ; save selected item index
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1        ; restore selected item index -> D1
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.s   loc_5D5C        ; branch if item is not equipped
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_5D5C        ; branch if item can be unequipped
		jsr     j_PlayCursedItemMusic
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21 ; "The [Item] is cursed[Line]and can't be given away.[Wait2]"
		bra.w   loc_5E9A
loc_5D5C:
		trap    #CREATE_MESSAGE_WINDOW
		txt     $20 ; "Who gets the [Item]?"
		jsr     sub_8060
loc_5D6A:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_5D7E
		jsr     sub_8068
		bra.w   loc_5B58
loc_5D7E:
		jsr     j_GetEntityItemsAddress
		move.w  d0,((word_FFB7C8-$1000000)).w
		cmpi.b  #$FF,3(a0)
		beq.s   loc_5DA0        ; branch if member has an empty item slot
		move.w  d0,-(sp)
		jsr     j_PickItemSlot
		move.w  (sp)+,d0
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		blt.s   loc_5D6A
loc_5DA0:
		jsr     sub_8068
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7CA-$1000000)).w
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		move.b  (a0,d1.w),d1    ; D1 = item index to give
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GiveItem
		bcc.w   loc_5E8C        ; branch is item has successfully been given
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GetEntityItemsAddress
		move.w  ((word_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.w   loc_5E14
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_5E14
		jsr     j_PlayCursedItemMusic
		trap    #CREATE_MESSAGE_WINDOW
		txt     $F          ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   loc_5E9A
loc_5E14:
		move.w  ((word_FFB7C8-$1000000)).w,d0
		cmp.w   ((CURRENT_OBJECT-$1000000)).w,d0
		bne.w   loc_5E40
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  d2,d1
		jsr     j_GiveItem
		bra.s   loc_5E9A
loc_5E40:
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     j_RemoveItem
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  ((word_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
		jsr     j_GiveItem
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  (sp)+,d1
		jsr     j_GiveItem
		bra.s   loc_5E9A
loc_5E8C:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItem
loc_5E9A:
		trap    #CREATE_MESSAGE_WINDOW
		clstxt
		rts

    ; End of function itemMenuAction_Give


; =============== S U B R O U T I N E =======================================

itemMenuAction_Equip:
		
		trap    #5
		bsr.w   sub_617C
		txt     $23 ; "Who do you wish to equip?"
		jsr     j_CreateMembersListScreen
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_5B58
		move.w  d0,-(sp)
		move.w  d0,d2
		bsr.w   FindCombatantSlot
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d0
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
		jsr     j_LoadEquippableItems
		bne.s   loc_5EE0
		trap    #CREATE_MESSAGE_WINDOW
		txt     $22 ; "[Name] can't be[Line]equipped with anything![Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		bra.s   loc_5F46
loc_5EE0:
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		beq.w   loc_5F08
		clr.b   ((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F08
		bsr.w   sub_6C6E
		trap    #CREATE_MESSAGE_WINDOW
		bra.w   loc_5B58
loc_5F08:
		move.w  #ITEMTYPE_MASK_RING,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		beq.w   loc_5F42
		move.b  #MAIN_MENU,((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F42
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItems
		bne.s   loc_5EE0
		bsr.w   sub_6C6E
		trap    #CREATE_MESSAGE_WINDOW
		bra.w   loc_5B58
loc_5F42:
		bsr.w   sub_6C6E
loc_5F46:
		trap    #CREATE_MESSAGE_WINDOW
		clstxt
		rts

    ; End of function itemMenuAction_Equip


; =============== S U B R O U T I N E =======================================

itemMenuAction_Drop:
		
		trap    #5
		bsr.w   sub_617C
		txt     $25 ; "Discard whose item?"
		jsr     sub_8044
		tst.w   d0
		bmi.w   loc_5B58
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_5FAA
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_5FAA
		jsr     j_PlayCursedItemMusic
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21 ; "The [Item] is cursed[Line]and can't be given away.[Wait2]"
		bra.w   loc_5FD0
loc_5FAA:
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CANNOT_DROP,d2
		bne.s   loc_5FC8
		jsr     j_IncrementDealsStock
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItem
		bra.s   loc_5FD0
loc_5FC8:
		trap    #CREATE_MESSAGE_WINDOW
		txt     $26 ; "[Hero] keeps the[Line][Item].[Wait2]"
loc_5FD0:
		trap    #CREATE_MESSAGE_WINDOW
		clstxt
		rts

    ; End of function itemMenuAction_Drop


; =============== S U B R O U T I N E =======================================

sub_5FD6:
		trap    #CREATE_MESSAGE_WINDOW
		txt     2           ; "A change of heart, eh?[Wait2]"
		clstxt
		rts

    ; End of function sub_5FD6


; =============== S U B R O U T I N E =======================================

DisplayAdvisorPortrait:
		
		move.w  d0,-(sp)
		tst.w   (word_FFD082).l
		bne.s   loc_5FF4
		moveq   #PORTRAIT_NOVA,d0
		jsr     j_OpenPortraitWindow
loc_5FF4:
		move.w  (sp)+,d0
		rts

    ; End of function DisplayAdvisorPortrait


; =============== S U B R O U T I N E =======================================

ExecuteHeadquartersMenu:
		
		jsr     j_ResetCombatants
		bsr.s   DisplayAdvisorPortrait
		trap    #5
		txt     0           ; "Well, [Hero],[Line]are you ready to[Line]face the enemy?[Wait2]"
loc_6008:
		clstxt
		clr.b   ((byte_FFB4CA-$1000000)).w
loc_600E:
		move.b  #HEADQUARTERS_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8048
		tst.b   d0
		bge.s   loc_6028
		trap    #5
loc_6020:
		txt     3           ; "If that is all, then go now,[Line]for the hordes of Runefaust[Line]are still on the attack![Wait2]"
		rts
loc_6028:
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_HeadquartersMenuActions(pc,d0.w),d0
		jmp     rjt_HeadquartersMenuActions(pc,d0.w)

    ; End of function ExecuteHeadquartersMenu

rjt_HeadquartersMenuActions:
		dc.w headquartersMenuAction_Advice-rjt_HeadquartersMenuActions
		dc.w headquartersMenuAction_Join-rjt_HeadquartersMenuActions
		dc.w headquartersMenuAction_Item-rjt_HeadquartersMenuActions
		dc.w headquartersMenuAction_Status-rjt_HeadquartersMenuActions
		trap    #5

; START OF FUNCTION CHUNK FOR headquartersMenuAction_Join

loc_6042:
		txt     1           ; "Anything else, [Hero]?"
		jsr     (j_YesNoChoiceBox).l
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bge.w   loc_6008
		trap    #CREATE_MESSAGE_WINDOW
		bra.s   loc_6020        
loc_605A:
		bsr.s   DisplayAdvisorPortrait
		trap    #CREATE_MESSAGE_WINDOW
		txt     2           ; "A change of heart, eh?[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		bra.s   loc_6042        

; END OF FUNCTION CHUNK FOR headquartersMenuAction_Join


; =============== S U B R O U T I N E =======================================

headquartersMenuAction_Advice:
		
		trap    #5
		bsr.w   GetAdviceMessageOffset
		addi.w  #MESSAGE_ADVICES_START,d0
						; "A word of advice.[Line]Seek the hermit who lives by[Line]the Gate of the Ancients![Wait2]"
		trap    #DISPLAY_MESSAGE
		trap    #CREATE_MESSAGE_WINDOW
		bra.s   loc_6042        

    ; End of function headquartersMenuAction_Advice


; =============== S U B R O U T I N E =======================================

; Get offset to advice message index for current battle -> D0

GetAdviceMessageOffset:
		
		clr.w   d2
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d2
		subq.w  #1,d2
		move.w  d2,d1
		move.b  tbl_AdviceMessageNumbers(pc,d2.w),d2
		subq.w  #1,d2
		clr.w   d0
@Loop:
		btst    d0,((byte_FF9C53-$1000000)).w
		beq.s   @Break
		cmp.b   d0,d2
		beq.s   @Break
		addq.w  #1,d0
		bra.s   @Loop
@Break:
		add.b   tbl_AdviceMessageOffsets(pc,d1.w),d0
		rts

    ; End of function GetAdviceMessageOffset

tbl_AdviceMessageOffsets:
		; Base advice message offsets for each chapter
		dc.b 0
		dc.b 4
		dc.b 8
		dc.b 11
		dc.b 14
		dc.b 17
		dc.b 21
		dc.b 25
                
tbl_AdviceMessageNumbers:
		; Number of advice messages per chapter
		dc.b 4
		dc.b 4
		dc.b 3
		dc.b 3
		dc.b 3
		dc.b 4
		dc.b 4
		dc.b 5

; =============== S U B R O U T I N E =======================================

headquartersMenuAction_Join:
		
		trap    #5
loc_60B0:
		jsr     j_PopulateReservePartyMembersList
		tst.w   ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w
		bne.w   loc_60CA        
		txt     6           ; "[Hero], no one[Line]is waiting![Delay1]"
		trap    #CREATE_MESSAGE_WINDOW
		bra.w   loc_6042        
loc_60CA:
		txt     4           ; "Who do you wish to take?"
		jsr     j_ClosePortraitWindow
		move.b  #$FF,((byte_FFC140-$1000000)).w
		jsr     j_CreateMembersListScreen
		bsr.w   DisplayAdvisorPortrait
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetCurrentHpForCombatant
		tst.w   d1
		bne.s   loc_6112
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		trap    #CREATE_MESSAGE_WINDOW
		txt     7           ; "Are you sure? After all,[Line][Name] needs to[Line]be revived."
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bmi.s   loc_60CA        
loc_6112:
		trap    #CREATE_MESSAGE_WINDOW
		txt     5           ; "Who will you leave behind?"
		jsr     j_PopulateBattlePartyMembersList
		jsr     j_ClosePortraitWindow
		move.b  #$FF,((byte_FFC140-$1000000)).w
		jsr     j_CreateMembersListScreen
		bsr.w   DisplayAdvisorPortrait
		move.w  d0,((word_FFB7C6-$1000000)).w
		bmi.w   loc_605A
		bne.s   loc_614A
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1A         ; "Without you, [Hero], who[Line]will lead the Shining Force?[Wait2]"
		bra.s   loc_6112
loc_614A:
		move.w  ((word_FFB7C6-$1000000)).w,d0
		jsr     j_LeaveBattleParty
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
		jsr     j_JoinBattleParty
		trap    #CREATE_MESSAGE_WINDOW
		txt     8           ; "Anyone else to replace?"
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_60B0
		bra.w   loc_6042        

    ; End of function headquartersMenuAction_Join


; =============== S U B R O U T I N E =======================================

sub_617C:
		move.w  #VDPTILE_FW_SYMBOL|VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT,((MEMBERS_LIST_SYMBOL-$1000000)).w
						; load "Fw" VDP tile entry
		jsr     j_PopulateBattlePartyMembersList
		move.w  ((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w,d7
		subq.w  #1,d7
		move.w  d7,-(sp)
		movem.l d7-a1,-(sp)
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		lea     (FF0FFE_LOADING_SPACE).l,a1
		move.w  #BATTLE_PARTY_SLOTS_NUMBER,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		jsr     j_PopulateForceMembersList
		lea     (FF0FFE_LOADING_SPACE).l,a0
		move.w  (sp)+,d7
loc_61BA:
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a1
		move.b  (a0)+,d0
loc_61C0:
		cmp.b   (a1)+,d0
		bne.s   loc_61C0
		bset    #6,-1(a1)
		dbf     d7,loc_61BA
		rts

    ; End of function sub_617C


; =============== S U B R O U T I N E =======================================

headquartersMenuAction_Status:
		
		trap    #5
		bsr.s   sub_617C
loc_61D4:
		txt     $18         ; "View whose status?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_605A
		clstxt
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_GetPortrait
		move.w  d1,d0
		jsr     j_OpenPortraitWindow
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_BuildMemberStatusWindow
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$20010901,d1
		move.w  #8,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_WaitForPlayerInput).l
		lea     ((WINDOW_LAYOUT_LOADING_SPACE-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$9012001,d1
		move.w  #8,d2
		jsr     j_MoveWindowWithSfx
		jsr     j_ClosePortraitWindow
		bsr.w   DisplayAdvisorPortrait
		trap    #5
		txt     $19         ; "Check someone else's status?"
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_61D4        
		bra.w   loc_6042        

    ; End of function headquartersMenuAction_Status


; =============== S U B R O U T I N E =======================================

headquartersMenuAction_Item:
		
		clr.b   ((byte_FFB52A-$1000000)).w
		move.b  #ITEM_MENU,((CURRENT_MENU-$1000000)).w
		jsr     sub_8048
		cmpi.w  #$FFFF,d0
		beq.w   loc_600E
		add.w   d0,d0
		move.w  rjt_HeadquartersItemActions(pc,d0.w),d0
		jmp     rjt_HeadquartersItemActions(pc,d0.w)

    ; End of function headquartersMenuAction_Item

rjt_HeadquartersItemActions:
                dc.w HeadquartersItemMenu_Use-rjt_HeadquartersItemActions
		dc.w HeadquartesItemMenu_Give-rjt_HeadquartersItemActions
		dc.w HeadquartesItemMenu_Equip-rjt_HeadquartersItemActions
		dc.w HeadquartesItemMenu_Discard-rjt_HeadquartersItemActions

; =============== S U B R O U T I N E =======================================

HeadquartersItemMenu_Use:
		trap    #5
		bsr.w   sub_617C
loc_6298:
		jsr     (j_CreateMessageWindow).l
		txt     9           ; "Use whose item?"
		jsr     j_ClosePortraitWindow
		jsr     sub_8044
		bsr.w   DisplayAdvisorPortrait
		tst.w   d0
		bmi.w   loc_605A
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d0
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		trap    #CREATE_MESSAGE_WINDOW
		andi.w  #ITEMENTRY_MASK_INDEX,d0
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ITEM_ANTIDOTE,d0
		bne.w   loc_632A
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1D         ; "Who will use the[Line][Item]?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.s   loc_6298
		move.w  d0,-(sp)
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21C        ; "[Hero] uses the[Line][Item].[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		jsr     j_CurePoison
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_5CE6
		bra.w   loc_6398
loc_632A:
		cmpi.b  #ITEM_POWER_POTION,d0
		blt.w   loc_6392        
		cmpi.b  #ITEM_BREAD_OF_LIFE,d0
		bgt.w   loc_6392        
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1D         ; "Who will use the[Line][Item]?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		tst.w   d0
		bmi.w   loc_6298
		movem.w d0,-(sp)
		trap    #CREATE_MESSAGE_WINDOW
		txt     $21C        ; "[Hero] uses the[Line][Item].[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		move.w  (sp)+,d2
		bsr.w   FindCombatantSlot
		move.w  ((MESSAGE_ARG_NAME_1-$1000000)).w,d1
		subq.w  #5,d1
		jsr     j_IncreaseStatOnItemUse
		move.w  ((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  ((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		move.w  ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,d0
		trap    #DISPLAY_MESSAGE
		bsr.w   sub_5CE6
		jsr     j_ResetForceMemberStats
		bra.s   loc_6398
loc_6392:
		txt     $B          ; "[Hero]! What are you[Line]trying to do with that?[Wait2]"
loc_6398:
		trap    #CREATE_MESSAGE_WINDOW
		txt     $C          ; "Any other item to use?"
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_6298
		bra.w   loc_6042        

    ; End of function HeadquartersItemMenu_Use


; =============== S U B R O U T I N E =======================================

HeadquartesItemMenu_Give:
		trap    #5
		bsr.w   sub_617C
loc_63BA:
		txt     $D          ; "Transfer whose item?"
		jsr     j_ClosePortraitWindow
		jsr     sub_8044
		bsr.w   DisplayAdvisorPortrait
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_641E
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_641E
		jsr     j_PlayCursedItemMusic
		trap    #CREATE_MESSAGE_WINDOW
		txt     $F          ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   loc_656C
loc_641E:
		trap    #CREATE_MESSAGE_WINDOW
		txt     $10         ; "Now, who gets it?"
		jsr     j_ClosePortraitWindow
		jsr     sub_8060
loc_6432:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_644A
		jsr     sub_8068
		bsr.w   DisplayAdvisorPortrait
		bra.w   loc_605A
loc_644A:
		jsr     j_GetEntityItemsAddress
		move.w  d0,((word_FFB7C8-$1000000)).w
		cmpi.b  #$FF,3(a0)
		beq.w   loc_646E
		move.w  d0,-(sp)
		jsr     j_PickItemSlot
		move.w  (sp)+,d0
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		blt.s   loc_6432
loc_646E:
		jsr     sub_8068
		bsr.w   DisplayAdvisorPortrait
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
		move.w  d1,((word_FFB7CA-$1000000)).w
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddressForCombatant
		move.b  (a0,d1.w),d1
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GiveItemForCombatant
		bcc.w   loc_655E
		move.w  ((word_FFB7C8-$1000000)).w,d0
		jsr     j_GetEntityItemsAddressForCombatant
		move.w  ((word_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_64E6
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_64E6
		jsr     j_PlayCursedItemMusic
		trap    #CREATE_MESSAGE_WINDOW
		txt     $F          ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   loc_656C
loc_64E6:
		move.w  ((word_FFB7C8-$1000000)).w,d0
		cmp.w   ((CURRENT_OBJECT-$1000000)).w,d0
		bne.w   loc_6512
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddress
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     j_RemoveItem
		move.w  d2,d1
		jsr     j_GiveItem
		bra.s   loc_656C
loc_6512:
		move.w  ((word_FFB7CA-$1000000)).w,d1
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     j_RemoveItemForCombatant
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d2
		move.b  (a0,d1.w),d2
loc_653E:
		jsr     j_RemoveItemForCombatant
loc_6544:
		move.w  ((word_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
loc_654A:
		jsr     j_GiveItemForCombatant
loc_6550:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		move.w  (sp)+,d1
loc_6556:
		jsr     j_GiveItemForCombatant
		bra.s   loc_656C
loc_655E:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
loc_6562:
		move.w  ((word_FFB7C6-$1000000)).w,d1
loc_6566:
		jsr     j_RemoveItemForCombatant
loc_656C:
		trap    #CREATE_MESSAGE_WINDOW
loc_656E:
		txt     $11         ; "Anything else to transfer?"
loc_6574:
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
loc_6580:
		beq.w   loc_63BA        
		bra.w   loc_6042        

    ; End of function HeadquartesItemMenu_Give


; =============== S U B R O U T I N E =======================================

HeadquartesItemMenu_Equip:
		trap    #5
		bsr.w   sub_617C
loc_658E:
		txt     $12         ; "Who do you wish to equip?"
		jsr     j_ClosePortraitWindow
		jsr     j_CreateMembersListScreen
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
loc_65A4:
		bmi.w   loc_605A
		move.w  d0,d2
loc_65AA:
		bsr.w   FindCombatantSlot
		move.w  d0,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #ITEMTYPE_MASK_WEAPON_OR_RING,d1
loc_65B6:
		jsr     j_LoadEquippableItemsForCombatant
		bne.s   loc_65CE
		bsr.w   DisplayAdvisorPortrait
		trap    #CREATE_MESSAGE_WINDOW
		txt     $1B         ; "[Name] can't be[Line]equipped with anything![Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		bra.s   loc_6630
loc_65CE:
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     j_LoadEquippableItemsForCombatant
		beq.w   loc_65F4
loc_65E0:
		clr.b   ((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_65F4
loc_65EC:
		bsr.w   sub_6C6E
		bra.w   loc_605A
loc_65F4:
		move.w  #ITEMTYPE_MASK_RING,d1
loc_65F8:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
loc_65FC:
		jsr     j_LoadEquippableItemsForCombatant
		beq.w   loc_662C
		move.b  #MAIN_MENU,((CURRENT_MENU-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_662C
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
loc_661C:
		jsr     j_LoadEquippableItemsForCombatant
		bne.s   loc_65CE
		bsr.w   sub_6C6E
loc_6628:
		bra.w   loc_605A
loc_662C:
		bsr.w   sub_6C6E
loc_6630:
		bsr.w   DisplayAdvisorPortrait
		trap    #CREATE_MESSAGE_WINDOW
		txt     $14         ; "Anyone else to equip?"
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_658E        
loc_664C:
		bra.w   loc_6042        

    ; End of function HeadquartesItemMenu_Equip


; =============== S U B R O U T I N E =======================================

HeadquartesItemMenu_Discard:
		trap    #5
loc_6652:
		bsr.w   sub_617C
loc_6656:
		txt     $15         ; "Discard whose item?"
loc_665C:
		jsr     j_ClosePortraitWindow
loc_6662:
		jsr     sub_8044
		bsr.w   DisplayAdvisorPortrait
		tst.w   d0
		bmi.w   loc_605A
		jsr     j_GetEntityItemsAddressForCombatant
		clr.w   d1
		move.b  ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w,d1
loc_667E:
		move.w  d1,((word_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_66B8
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_66B8
		jsr     j_PlayCursedItemMusic
		trap    #CREATE_MESSAGE_WINDOW
		txt     $F          ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		bra.w   loc_66DE
loc_66B8:
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CANNOT_DROP,d2
		bne.s   loc_66D6
		jsr     j_IncrementDealsStock
		move.w  ((word_FFB7C6-$1000000)).w,d1
		jsr     j_RemoveItemForCombatant
		bra.s   loc_66DE
loc_66D6:
		trap    #CREATE_MESSAGE_WINDOW
		txt     $16         ; "[Hero]! It would be[Line]foolish to discard the[Line][Item].[Wait2]"
loc_66DE:
		trap    #CREATE_MESSAGE_WINDOW
		txt     $17         ; "Anything else to discard?"
		jsr     (j_YesNoChoiceBox).l
		trap    #CREATE_MESSAGE_WINDOW
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		beq.w   loc_6656        
		bra.w   loc_6042        

    ; End of function HeadquartesItemMenu_Discard


; =============== S U B R O U T I N E =======================================

sub_66FA:
		move.w  #1,(CURRENT_OBJECT).l
		bra.w   PositionHeadquartersMembers

    ; End of function sub_66FA


; =============== S U B R O U T I N E =======================================

sub_6706:
		move.l  sp,(dword_FF0EFE).l
		clr.w   (CURRENT_OBJECT).l
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   InitializeHeadquarters
		jsr     j_ClearTerrainAtOccupiedSquares
		clr.b   (byte_FFB53A).l
		move.w  #$15,(SCREEN_POSITION).l
		move.w  #$21A,(CURSOR_POSITION_X).l
		move.b  #1,(byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (AREA_CURSOR_INDEX).l
		move.b  #$FF,(byte_FFB4D3).l
loc_6754:
		clr.w   d0
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d0,-(sp)
		move.w  d6,d0
		jsr     j_LoadCursorTiles
		clr.b   (byte_FFB538).l
		jsr     (j_WaitForVInt).l
		jsr     sub_8098
		move.w  (sp)+,d0
		move.b  d0,(ACTOR_BLINKING_TOGGLE).l
		jsr     sub_809C
		jsr     sub_8090
		bra.s   loc_6754

    ; End of function sub_6706


; =============== S U B R O U T I N E =======================================

InitializeHeadquarters:
		
		move.b  #$FF,(CURRENT_REGION).l
		move.b  #$FF,(CURRENT_MAP_VERSION).l
		clr.b   (CURRENT_MAP_ENTRANCE).l
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
PositionHeadquartersMembers:
		
		moveq   #-1,d1
		moveq   #FORCE_MEMBERS_COUNTER,d7
		clr.w   d0
@ClearEntities_Loop:
		
		jsr     j_SetEntityIndex
		addq.w  #1,d0
		dbf     d7,@ClearEntities_Loop
                
		                ; Position advisor
		moveq   #1,d0
		lea     HeadquartersMembersPositions(pc), a1
		jsr     j_PopulateBattlePartyMembersList
		lea     (byte_FFCB85).l,a0; FORCE_MEMBERS_LIST+1
		moveq   #ALLY_NOVA,d1
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetCombatantX
		move.b  (a1)+,d1
		jsr     j_SetCombatantY
		moveq   #2,d0
@PositionBattlePartyMembers_Loop:
		
		move.b  (a0)+,d1
		blt.s   @PositionReservePartyMembers
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetCombatantX
		move.b  (a1)+,d1
		jsr     j_SetCombatantY
		addq.w  #1,d0
		bra.s   @PositionBattlePartyMembers_Loop
@PositionReservePartyMembers:
		
		jsr     j_PopulateReservePartyMembersList
		lea     (FORCE_MEMBERS_LIST).l,a0
@PositionReservePartyMembers_Loop:
		
		move.b  (a0)+,d1
		blt.s   loc_6860
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetCombatantX
		move.b  (a1)+,d1
		jsr     j_SetCombatantY
		addq.w  #1,d0
		bra.s   @PositionReservePartyMembers_Loop
loc_6860:
		clr.w   d0
		clr.w   d1
		tst.w   (CURRENT_OBJECT).l
		bne.s   loc_688C
		moveq   #1,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		moveq   #2,d1
		jsr     j_SetCombatantX
		moveq   #$1A,d1
		jsr     j_SetCombatantY
		bra.s   return_6892
loc_688C:
		jsr     j_SetEntityIndex
return_6892:
		rts

    ; End of function InitializeHeadquarters


; =============== S U B R O U T I N E =======================================

sub_6894:
		move.w  #1,(CURRENT_OBJECT).l

    ; End of function sub_6894


; =============== S U B R O U T I N E =======================================

; Load headquarters map sprite

LoadHeadquartersMapsprite:
		
		movem.w d0-d2,-(sp)
		movem.l a0-a1,-(sp)
		move.w  d0,-(sp)
		move.w  d1,d0
		cmpi.w  #ALLY_NOVA,d1
		beq.s   loc_68B8
		jsr     j_GetCurrentHP
		tst.w   d1
		beq.s   loc_68C0
loc_68B8:
		jsr     j_GetMapSprite
		bra.s   loc_68C2
loc_68C0:
		moveq   #MAPSPRITE_BLUE_FLAME,d1
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
		tst.w   (CURRENT_OBJECT).l
		bne.s   loc_68F4
		jsr     (j_ApplyImmediateVramDma).l
		bra.s   loc_6900
loc_68F4:
		jsr     (j_ApplyVIntVramDma).l
loc_68FA:
		jsr     (j_WaitForDmaQueueProcessing).l
loc_6900:
		movem.l (sp)+,a0-a1
		movem.w (sp)+,d0-d2
		rts

    ; End of function LoadHeadquartersMapsprite


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
		movea.l (p_pt_MapSprites).l,a0
loc_6924:
		move.w  d1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jmp     (sub_300).l

    ; End of function sub_691E


; =============== S U B R O U T I N E =======================================

sub_6932:
		movea.l (p_pt_MapSprites+8).l,a0
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
		lea     (byte_FF3240).l,a0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$240,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		rts

    ; End of function sub_693A


; =============== S U B R O U T I N E =======================================

sub_69CA:
		movea.l (p_pt_MapSprites+4).l,a0
		bra.w   loc_6924

    ; End of function sub_69CA

HeadquartersMembersPositions:
		hqPosition RIGHT, 3, 24   ; advisor

		hqPosition DOWN, 13, 23  ; active members
		hqPosition DOWN, 14, 23
		hqPosition DOWN, 16, 23
		hqPosition DOWN, 17, 23
		hqPosition DOWN, 13, 25
		hqPosition DOWN, 14, 25
		hqPosition DOWN, 16, 25
		hqPosition DOWN, 17, 25
		hqPosition DOWN, 13, 27
		hqPosition DOWN, 14, 27
		hqPosition DOWN, 16, 27

		hqPosition DOWN, 14, 7   ; reserve members
		hqPosition LEFT, 17, 6
		hqPosition LEFT, 12, 11
		hqPosition DOWN, 10, 8
		hqPosition LEFT, 13, 10
		hqPosition RIGHT, 13, 6
		hqPosition DOWN, 16, 4
		hqPosition DOWN, 12, 8
		hqPosition DOWN, 2, 3
		hqPosition DOWN, 15, 4
		hqPosition UP, 10, 5
		hqPosition RIGHT, 2, 7
		hqPosition RIGHT, 4, 3
		hqPosition DOWN, 18, 8
		hqPosition UP, 4, 7
		hqPosition UP, 9, 5
		hqPosition RIGHT, 9, 9
		hqPosition UP, 5, 16

; =============== S U B R O U T I N E =======================================

sub_6A2E:
		jsr     j_RefillWholeForceHP
		clr.w   (CURRENT_OBJECT).l
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   LoadEndingCutsceneCombatantData
		clr.b   (byte_FFB53A).l
		move.w  #$1605,(SCREEN_POSITION).l
		move.w  #$1B09,(CURSOR_POSITION_X).l
		clr.b   (byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (AREA_CURSOR_INDEX).l
		move.b  #$FF,(byte_FFB4D3).l
		move.b  #1,(byte_FFB4D7).l
		rts

    ; End of function sub_6A2E


; =============== S U B R O U T I N E =======================================

; Load combatant data during ending cutscene

LoadEndingCutsceneCombatantData:
		
		clr.b   (CURRENT_REGION).l
		clr.b   (CURRENT_MAP_ENTRANCE).l
		move.b  #$FF,(CURRENT_MAP_VERSION).l
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		moveq   #COMBATANT_ENTRIES_COUNTER,d7
		lea     (COMBATANT_DATA).l,a1
		lea     dword_6AB8(pc), a0
		nop
loc_6AAC:
		move.l  (a0)+,(a1)
		lea     $10(a1),a1
		dbf     d7,loc_6AAC
		rts

    ; End of function LoadEndingCutsceneCombatantData

dword_6AB8:     dc.l $1E1B0900
		dc.l $11A0A00
		dc.l $E1B0A00
		dc.l $A1C0A00
		dc.l $F1C0800
		dc.l $131D0800
		dc.l $81D0900
		dc.l $31D0A00
		dc.l $C1C0900
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF
		dc.l $FFFFFFFF

; =============== S U B R O U T I N E =======================================

sub_6B38:
		clr.w   d1
		clr.w   d2
		move.b  ((CURSOR_POSITION_X-$1000000)).w,d1
		move.b  ((CURSOR_POSITION_Y-$1000000)).w,d2
loc_6B44:
		jsr     sub_80A8
		move.w  d2,d3
		mulu.w  ((MAP_WIDTH-$1000000)).w,d3
		add.w   d1,d3
		lea     (PASSABILITY_FLAGS).l,a0
		btst    #2,(a0,d3.w)
		bne.s   loc_6B44
		move.w  d1,d3
		moveq   #1,d0
		moveq   #$1D,d7
loc_6B66:
		jsr     j_GetCombatantX
		cmp.b   d1,d3
		bne.s   loc_6B7C
		jsr     j_GetCombatantY
		cmp.b   d1,d2
		beq.w   loc_6B9A
loc_6B7C:
		addq.w  #1,d0
		dbf     d7,loc_6B66

		trap    #5
		txt     $1B0        ; "No one is in that direction.[Wait2]"
loc_6B8A:
		bsr.w   j_WaitForVInt
		tst.b   (P1_INPUT).l    
		beq.s   loc_6B8A
		clstxt
		rts
loc_6B9A:
		move.w  d0,-(sp)
		jsr     j_GetEntity
		move.w  d0,-(sp)
		move.w  d1,-(sp)
		move.w  d1,d0
		jsr     j_GetMapSprite
		move.l  a0,-(sp)
		movea.l (p_tbl_SpriteSpeechSfx).l,a0
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d1
		addi.w  #SFX_DIALOG_BLEEP_1,d1
		move.w  d1,((SPEECH_SFX-$1000000)).w
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		move.w  (sp)+,d0
		clr.w   d2
		move.b  ((SPRITE_DIRECTION-$1000000)).w,d2
		bsr.w   sub_6894
		move.w  (sp)+,d0
		cmpi.w  #1,d0           ; Advisor's entity index (HQ)
		bne.s   loc_6BF6
		jsr     (j_ExecuteHeadquartersMenu).l
		bsr.w   sub_66FA
		jsr     j_ClosePortraitWindow
		jsr     (j_CloseMessageWindow).l
		rts
loc_6BF6:
		move.w  d0,-(sp)
		moveq   #$FFFFFFFF,d2
		moveq   #$23,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   loc_6C08
		moveq   #MAPSPRITE_NOVA,d2
		bra.s   loc_6C12
loc_6C08:
		cmpi.b  #$15,((CURSOR_POSITION_Y-$1000000)).w
		bge.s   loc_6C12
		moveq   #$1C,d2
loc_6C12:
		move.w  (sp)+,d0
		jsr     j_GetEntity
		move.w  d1,d0
		movem.w d0/d2,-(sp)
		move.w  d0,-(sp)
		jsr     j_GetPortrait
		move.w  d1,d0
		jsr     j_OpenPortraitWindow
		move.w  (sp)+,d0
		jsr     sub_80D0
		trap    #5
		movem.w (sp)+,d0/d2
		move.w  d0,-(sp)
		jsr     j_GetCurrentHP
		tst.w   d1
		ble.s   loc_6C56        
		andi.w  #$FF,d0
		addi.w  #$105,d0        ; offset to combatant headquarters line
		add.w   d2,d0
		bra.s   loc_6C5A
loc_6C56:
		move.w  #$15C,d0        ; "....[Wait2]"
loc_6C5A:
		trap    #DISPLAY_MESSAGE
		move.w  (sp)+,d0
		jsr     sub_80D4
		jsr     j_ClosePortraitWindow
		clstxt
		rts

    ; End of function sub_6B38


; =============== S U B R O U T I N E =======================================

sub_6C6E:
		bsr.w   BuildEquipMenuStatsWindow
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C09,d0
		move.l  #$9042004,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		bsr.w   sub_735A
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$1203,d0
		move.l  #$9012001,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		move.w  (CURRENT_OBJECT).l,d0
		jmp     j_ClosePortraitWindow

    ; End of function sub_6C6E


; =============== S U B R O U T I N E =======================================

sub_6CB6:
		tst.b   (CURRENT_MENU).l
		bne.s   loc_6CC4
		move.w  #$100,d1
		bra.s   loc_6CC8
loc_6CC4:
		move.w  #$200,d1
loc_6CC8:
		move.w  (CURRENT_OBJECT).l,d0
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
		cmpi.w  #4,(TABLE_AT_FFA8C0).l
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
		lea     (byte_FFA8C2).l,a0
loc_6D14:
		cmp.w   (a0),d3
		beq.s   loc_6D1E
		addq.w  #1,d0
		addq.l  #4,a0
		bra.s   loc_6D14
loc_6D1E:
		move.b  d0,(CURRENT_DIAMOND_MENU_SELECTION).l
		move.w  d0,(word_FFBC5E).l
		move.b  d0,(byte_FFB529).l
		bsr.w   sub_70A6
		tst.w   (word_FFD082).l
		bne.w   loc_6D8E
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetPortrait
		move.w  d1,d0
		jsr     j_OpenPortraitWindow
		bsr.w   sub_735A
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$1203,d0
		move.l  #$20010901,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		bsr.w   BuildEquipMenuStatsWindow
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C09,d0
		move.l  #$20040904,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
loc_6D8E:
		bsr.w   sub_6FE6
		bsr.w   sub_70E8
		bsr.w   nullsub_70A4
		bsr.w   sub_71A2
		moveq   #$F,d6
loc_6DA0:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6DC4
		cmpi.w  #2,(TABLE_AT_FFA8C0).l
		blt.s   loc_6DC4
		move.b  #1,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6DC4:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6DE8
		cmpi.w  #3,(TABLE_AT_FFA8C0).l
		blt.s   loc_6DE8
		move.b  #2,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6DE8:
		btst    #INPUT_BIT_UP,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E00
		clr.b   (CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6E00:
		btst    #INPUT_BIT_DOWN,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E1A
		move.b  #3,(CURRENT_DIAMOND_MENU_SELECTION).l
		sndCom  SFX_MENU_SELECTION
		bra.w   loc_6E70
loc_6E1A:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E42
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		bsr.w   BuildEquipMenuStatsWindow
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		moveq   #$FFFFFFFF,d0
		bra.w   loc_6F8E
loc_6E42:
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_6E58
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   loc_6EB8
loc_6E58:
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		beq.w   loc_6EA4
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		bra.w   loc_6EB8
loc_6E70:
		bsr.w   sub_70A6
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (j_WaitForVInt).l
		moveq   #$13,d6
		bsr.w   sub_7054
		move.w  d6,-(sp)
		bsr.w   BuildEquipMenuStatsWindow
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		move.w  (sp)+,d6
		bra.s   loc_6EA8
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
		move.w  d1,(MESSAGE_ARG_NAME_1).l
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_6F3C
		move.w  (word_FFBC5E).l,d3
		cmp.b   (CURRENT_DIAMOND_MENU_SELECTION).l,d3
		beq.s   loc_6F3A
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		jsr     j_PlayCursedItemMusic
		move.b  d3,(CURRENT_DIAMOND_MENU_SELECTION).l
loc_6EF8:
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (j_WaitForVInt).l
		moveq   #$13,d6
		bsr.w   sub_7054
		bsr.w   BuildEquipMenuStatsWindow
		bsr.w   sub_703A
		jsr     (j_WaitForVInt).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		bsr.w   sub_6FA0
		trap    #CREATE_MESSAGE_WINDOW
		txt     $F          ; "The [Item] is cursed[Line]and can't be unequipped.[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		jsr     sub_8088
		bsr.w   loc_73B6
loc_6F3A:
		bra.s   loc_6F8A
loc_6F3C:
		move.w  (word_FFBC5C).l,d1
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   loc_6F8A
		jsr     j_PlayCursedItemMusic
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		move.w  d0,(MESSAGE_ARG_NAME_1).l
		bsr.w   sub_6FA0
		trap    #CREATE_MESSAGE_WINDOW
		txt     $13         ; "[Name] has been cursed....[Wait2]"
		trap    #CREATE_MESSAGE_WINDOW
		jsr     sub_8088
		bsr.w   loc_73B6
		move.w  (CURRENT_OBJECT).l,d0
		moveq   #STATUSEFFECT_CURSE,d1
		jsr     j_SetStatusEffects
loc_6F8A:
		movem.w (sp)+,d0-d1
loc_6F8E:
		movem.w d0-d1,-(sp)
		clr.w   d6
		bsr.w   sub_7054
loc_6F98:
		bsr.s   sub_6FA0
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_6CB6


; =============== S U B R O U T I N E =======================================

sub_6FA0:
		tst.w   (word_FFD692).l
		beq.s   @Return
		clr.w   d6
		bsr.w   sub_7054
		bsr.w   sub_70E8
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.l  #$90D200D,d1
		move.w  #$C05,d0
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		lea     wl_75A0(pc), a0
		move.w  #$606,d0
		move.l  #$20BFA0B,d1
		move.w  #4,d2
		jmp     j_MoveWindowWithSfx
@Return:
		rts

    ; End of function sub_6FA0


; =============== S U B R O U T I N E =======================================

sub_6FE6:
		bsr.w   sub_71C0
		lea     wl_75A0(pc), a0
		move.w  #$606,d0
loc_6FF2:
		move.l  #$FA0B020B,d1
loc_6FF8:
		move.w  #4,d2
loc_6FFC:
		jsr     j_MoveWindowWithSfx
		bsr.w   sub_70E8
loc_7006:
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
loc_700C:
		move.w  #$C05,d0
loc_7010:
		move.l  #$200D090D,d1
		move.w  #4,d2
loc_701A:
		jmp     j_MoveWindowWithSfx

    ; End of function sub_6FE6


; =============== S U B R O U T I N E =======================================

sub_7020:
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C05,d0
		move.l  #$90D,d1
		jsr     j_CreateWindow
		bra.w   loc_73B6

    ; End of function sub_7020


; =============== S U B R O U T I N E =======================================

sub_703A:
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a0
		move.w  #$C09,d0
		move.l  #$904,d1
		jsr     j_CreateWindow
		bra.w   loc_73B6

    ; End of function sub_703A


; =============== S U B R O U T I N E =======================================

sub_7054:
		lea     (SPRITE_00_PROPERTIES).l,a1
		lea     sprite_MenuSelection(pc), a0
		nop
		clr.w   d0
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		move.w  (a0)+,d0
		cmpi.w  #$A,d6
		bge.s   loc_7076
		moveq   #1,d0
loc_7076:
		btst    #INPUT_BIT_START,(P1_INPUT).l
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
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d7
		cmp.b   (byte_FFB529).l,d7
		beq.s   nullsub_70A4
		move.b  d7,(byte_FFB529).l

    ; End of function sub_7090


; =============== S U B R O U T I N E =======================================

nullsub_70A4:
		rts

    ; End of function nullsub_70A4


; =============== S U B R O U T I N E =======================================

sub_70A6:
		lea     (byte_FFA8C2).l,a0
		clr.w   d2
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d2
		lsl.w   #2,d2
		move.w  2(a0,d2.w),(word_FFBC5C).l
		move.w  (a0,d2.w),d2
loc_70C2:
		move.w  (CURRENT_OBJECT).l,d0
		tst.b   (CURRENT_MENU).l
		bne.s   loc_70D6
		move.w  #$100,d1
		bra.s   loc_70DA
loc_70D6:
		move.w  #$200,d1
loc_70DA:
		jmp     j_EquipItem

    ; End of function sub_70A6

		dc.b 0
		dc.b $AE
		dc.b 0
		dc.b $AE
		dc.b 0
		dc.b $62
		dc.b 0
		dc.b $88

; =============== S U B R O U T I N E =======================================

sub_70E8:
		bsr.w   sub_71A2
		lea     ItemNameWindowLayout(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$CC,d7 
loc_70FA:
		jsr     (j_CopyBytes).l
		bra.w   loc_72D8

    ; End of function sub_70E8


; =============== S U B R O U T I N E =======================================

BuildEquipMenuStatsWindow:
		
		lea     BattleEquipWindowLayout(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$D8,d7 
		jsr     (j_CopyBytes).l
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedAttack
		lea     (byte_FFB804).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedDefense
		lea     (byte_FFB834).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedMove
		lea     (byte_FFB864).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		move.w  (CURRENT_OBJECT).l,d2
		bsr.w   FindCombatantSlot
		jsr     j_GetModifiedAgility
		lea     (byte_FFB894).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_WriteTilesFromNumber
		rts

    ; End of function BuildEquipMenuStatsWindow


; =============== S U B R O U T I N E =======================================

sub_71A2:
		tst.b   (CURRENT_MENU).l
		bne.s   loc_71B0
		move.w  #$100,d1
		bra.s   loc_71B4
loc_71B0:
		move.w  #$200,d1
loc_71B4:
		move.w  (CURRENT_OBJECT).l,d0
		jmp     j_LoadEquippableItems

    ; End of function sub_71A2


; =============== S U B R O U T I N E =======================================

sub_71C0:
		bsr.s   sub_71A2
		move.w  (TABLE_AT_FFA8C0).l,d7
		subq.w  #1,d7
		lea     (byte_FFA8C2).l,a3
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
		lea     IconHighlightTiles_Equip(pc), a0
		move.w  #$200,d7
		jsr     (j_CopyBytes).l
loc_7282:
		lea     (FF3000_LOADING_SPACE).l,a0
		lea     ($F800).l,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_WaitForDmaQueueProcessing).l

    ; End of function sub_71C0


; =============== S U B R O U T I N E =======================================

sub_72A0:
		movea.l (p_ItemIcons).l,a0
		cmp.w   (TABLE_AT_FFA8C0).l,d1
		blt.s   loc_72C2
		adda.l  #$2F40,a0    ; +3F index
		cmpi.w  #3,d1
		bne.s   loc_72C0
		adda.l  #ICONTILES_BYTESIZE,a0 
loc_72C0:
		bra.s   return_72D6
loc_72C2:
		lsl.w   #2,d1
		move.w  2(a3,d1.w),d1
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,d7
		add.w   d1,d1
		add.w   d7,d1
		lsl.w   #6,d1
		adda.w  d1,a0
return_72D6:
		rts

    ; End of function sub_72A0


; START OF FUNCTION CHUNK FOR sub_70E8

loc_72D8:
		movem.l d7-a1,-(sp)
		lea     ItemNameWindowLayout(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$78,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     aWeaponring(pc), a0
		lea     (byte_FFB7F4).l,a1
		btst    #0,(CURRENT_MENU).l
		beq.s   loc_730A
		addq.w  #6,a0
loc_730A:
		moveq   #6,d7
		moveq   #-24,d1
		jsr     j_WriteTilesFromAscii
		clr.w   d1
		move.b  (CURRENT_DIAMOND_MENU_SELECTION).l,d1
		cmpi.w  #4,(TABLE_AT_FFA8C0).l
		beq.w   loc_7338
		cmpi.w  #3,d1
		bne.s   loc_7338
		lea     byte_758E(pc), a0
		nop
		moveq   #6,d7
		bra.s   loc_734C
loc_7338:
		lea     (byte_FFA8C2).l,a0
		lsl.w   #2,d1
		move.w  2(a0,d1.w),d1
		jsr     j_GetItemNameAddress
		move.w  d1,d7
loc_734C:
		lea     (byte_FFB80C).l,a1
		moveq   #-24,d1
		jmp     j_WriteTilesFromAscii

; END OF FUNCTION CHUNK FOR sub_70E8


; =============== S U B R O U T I N E =======================================

sub_735A:
		movem.l d7-a1,-(sp)
		lea     MemberNameWindowLayout(pc), a0
		lea     (WINDOW_LAYOUT_LOADING_SPACE).l,a1
		move.w  #$6C,d7 
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		lea     (byte_FFB804).l,a1
		move.l  a1,-(sp)
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetEntityStatsAddress
		moveq   #-36,d1
		moveq   #$A,d7
		jsr     j_WriteTilesFromAscii
		movea.l (sp)+,a1
		lea     $12(a1),a1
		move.w  (CURRENT_OBJECT).l,d0
		jsr     j_GetClass
		jsr     j_GetClassNameAddress
		move.w  d1,d7
		moveq   #-36,d1
		jsr     j_WriteTilesFromAscii
loc_73B6:
		lea     ($C000).l,a1
		move.w  #$780,d0
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		jmp     (j_EnableDmaQueueProcessing).l

    ; End of function sub_735A


; =============== S U B R O U T I N E =======================================

; Find force member D2 combatant slot number -> D0 if exists, else D0 = $FFFFFFFF

FindCombatantSlot:
		
		clr.w   d0
		moveq   #31,d7
@Loop:
		jsr     j_GetEntity
		cmp.b   d2,d1
		beq.w   @Return
		addq.w  #1,d0
		dbf     d7,@Loop
                
		moveq   #-1,d0
@Return:
		rts

    ; End of function FindCombatantSlot

sprite_MenuSelection:      ; sprite properties data
                vdpSprite 215, V4|H3|1, SELECTION|PALETTE3|PRIORITY_BIT, 159
                vdpSprite 227, V4|H3|1, SELECTION|PALETTE3|PRIORITY_BIT, 143
                vdpSprite 227, V4|H3|1, SELECTION|PALETTE3|PRIORITY_BIT, 175
                vdpSprite 239, V4|H3|1, SELECTION|PALETTE3|PRIORITY_BIT, 159

IconHighlightTiles_Equip:
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $AA
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $A0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0

byte_758E:      dc.b VDPTILE_ORANGE_UPPERCASE_R
		dc.b VDPTILE_ORANGE_UPPERCASE_E
		dc.b VDPTILE_ORANGE_UPPERCASE_M
		dc.b VDPTILE_ORANGE_UPPERCASE_O
		dc.b VDPTILE_ORANGE_UPPERCASE_V
		dc.b VDPTILE_ORANGE_UPPERCASE_E

aWeaponring:    dc.b 'WEAPONRING',0,0

wl_75A0:        dc.w $C000
		dc.w $C000
		dc.w $C7C0
		dc.w $C7C1
		dc.w $C000
		dc.w $C000
		dc.w $C7C6
		dc.w $C7C7
		dc.w $C7C2
		dc.w $C7C3
		dc.w $C7CE
		dc.w $C7CF
		dc.w $C7C8
		dc.w $C7C9
		dc.w $C7C4
		dc.w $C7C5
		dc.w $C7D0
		dc.w $C7D1
		dc.w $C7CA
		dc.w $C7CB
		dc.w $C7D6
		dc.w $C7D7
		dc.w $C7D2
		dc.w $C7D3
		dc.w $C7CC
		dc.w $C7CD
		dc.w $C7D8
		dc.w $C7D9
		dc.w $C7D4
		dc.w $C7D5
		dc.w $C000
		dc.w $C000
		dc.w $C7DA
		dc.w $C7DB
		dc.w $C000
		dc.w $C000

        include "data\graphics\tech\windowlayouts\battleequipwindow.asm"
        include "data\graphics\tech\windowlayouts\membernamelayout.asm"
        include "data\graphics\tech\windowlayouts\itemnamelayout.asm"

; =============== S U B R O U T I N E =======================================

sub_77A4:
		jsr     sub_80A4
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		cmpi.w  #$FFFF,d0
		beq.w   loc_78F4
		jsr     (j_CheckEventFlag).l
		bne.w   sub_7898
		bsr.w   sub_80C4
		cmpi.b  #ITEM_NOTHING_ITEM,d3
		beq.w   sub_7898
		clr.w   d7
		move.b  ((byte_FFB4C5-$1000000)).w,d7
		move.w  d7,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ITEM_NOTHING_ITEM,d3
		bgt.w   loc_78B0
		move.w  d3,((MESSAGE_ARG_NAME_2-$1000000)).w
		jsr     (j_OpenMessageWindow).l
		clr.w   ((SPEECH_SFX-$1000000)).w
		movem.w d1,-(sp)
		move.b  ((byte_FFB4C5-$1000000)).w,d0
		move.w  ((MESSAGE_ARG_NAME_2-$1000000)).w,d1
		jsr     j_GiveItemForCombatant
		movem.w (sp)+,d1
		bcs.w   loc_7872
		sndCom  MUSIC_ITEM
		txt     $48 ; "[Name] discovers a[Line][Item]![Wait2]"
		move.w  #$FB,d0 
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     (j_SetEventFlag).l
		bsr.w   sub_788C
		cmpi.w  #$26,((MESSAGE_ARG_NAME_2-$1000000)).w 
		bne.s   return_7870
		moveq   #$37,d0 
		jsr     (j_SetEventFlag).l
		moveq   #$2B,d0 
		jsr     (j_CheckEventFlag).l
		beq.s   return_7870
		moveq   #$25,d0 
		jsr     (j_SetEventFlag).l
		jsr     (j_OpenMessageWindow).l
		txt     $169        ; "Will Darksol release Dark[Line]Dragon from the bonds of the[Line]Ancients?[Wait2][Line]Or will [Hero] stop[Line]Darksol and save all of[Line]Rune from the ultimate evil?[Wait2][Line]The Shining Force hurries[Line]on to Prompt....[Wait2]"
		jsr     (j_CloseMessageWindow).l
		movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.w   d0
return_7870:
		rts
loc_7872:
		movem.w d1-d2,-(sp)
		txt     $48 ; "[Name] discovers a[Line][Item]![Wait2]"
		txt     $49 ; "But can't carry it![Wait2]"
		movem.w (sp)+,d1-d2
		jsr     sub_80C8

    ; End of function sub_77A4


; =============== S U B R O U T I N E =======================================

sub_788C:
		jsr     (j_CloseMessageWindow).l
		jmp     j_LoadCursorTiles

    ; End of function sub_788C


; =============== S U B R O U T I N E =======================================

sub_7898:
		jsr     (j_OpenMessageWindow).l
		txt     $4A ; "The treasure chest is empty.[Wait2]"
loc_78A4:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     (j_SetEventFlag).l
		bra.s   sub_788C
loc_78B0:
		subi.w  #$40,d3 
		add.w   d3,d3
		clr.l   d1
		move.w  tbl_BattleChestGoldAmounts(pc,d3.w),d1
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		jsr     j_IncreaseGold
		jsr     (j_OpenMessageWindow).l
		sndCom  MUSIC_ITEM
		txt     $4C ; "[Name] gains [Num] coins.[Wait2]"
		jsr     (j_PlayMusicAfterCurrentOne).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		bra.s   loc_78A4
tbl_BattleChestGoldAmounts:
		
		dc.w 50
		dc.w 10
		dc.w 20
		dc.w 30
		dc.w 40
		dc.w 50
		dc.w 60
		dc.w 50
		dc.w 60
loc_78F4:
		tst.b   ((byte_FFB4D7-$1000000)).w
		beq.s   return_7908
		jsr     (j_OpenMessageWindow).l
		txt     $4B ; "Nothing is found.[Wait2]"
		bsr.s   sub_788C
return_7908:
		rts

    ; End of function sub_7898


; =============== S U B R O U T I N E =======================================

optionMenu_Speed:
		
		lea     BattleOptionSpeedLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d0
		move.b  ((MESSAGE_SPEED-$1000000)).w,d0
		moveq   #$14,d1
loc_792A:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_793E
		addq.w  #1,d0
		andi.w  #3,d0
		sndCom  SFX_MENU_SELECTION
loc_793E:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_7952
		subq.w  #1,d0
		andi.w  #3,d0
		sndCom  SFX_MENU_SELECTION
loc_7952:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_79A8
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7982
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7982
		bsr.w   sub_7B1A
		jsr     (j_WaitForVInt).l
		bra.s   loc_792A
loc_7982:
		move.b  d0,((MESSAGE_SPEED-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     BattleOptionSpeedLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d0
		rts
loc_79A8:
		bset    #0,((byte_FFB4CA-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     BattleOptionSpeedLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #$FFFFFFFF,d0
		rts

    ; End of function optionMenu_Speed


; =============== S U B R O U T I N E =======================================

optionMenuAction_Message:
		
		lea     BattleOptionMessageLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d0
		move.b  ((DISPLAY_BATTLE_MESSAGES_TOGGLE-$1000000)).w,d0
		moveq   #$14,d1
loc_79F6:
		btst    #INPUT_BIT_RIGHT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_7A0A
		addq.w  #1,d0
		andi.w  #1,d0
		sndCom  SFX_MENU_SELECTION
loc_7A0A:
		btst    #INPUT_BIT_LEFT,(CURRENT_PLAYER_INPUT).l
		beq.s   loc_7A1E
		subq.w  #1,d0
		andi.w  #1,d0
		sndCom  SFX_MENU_SELECTION
loc_7A1E:
		btst    #INPUT_BIT_B,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7A78
		btst    #INPUT_BIT_C,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7A52
		btst    #INPUT_BIT_A,(CURRENT_PLAYER_INPUT).l
		bne.w   loc_7A52
		add.w   d0,d0
		bsr.w   sub_7B1A
		lsr.w   #1,d0
		jsr     (j_WaitForVInt).l
		bra.s   loc_79F6
loc_7A52:
		move.b  d0,((DISPLAY_BATTLE_MESSAGES_TOGGLE-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     BattleOptionMessageLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d0
		rts
loc_7A78:
		bset    #0,((byte_FFB4CA-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     BattleOptionMessageLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #-1,d0
		rts

    ; End of function optionMenuAction_Message


; =============== S U B R O U T I N E =======================================

; Battle menu action : Quit

optionMenuAction_Quit:
		
		lea     BattlefieldQuitLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_YesNoPrompt).l
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bge.w   loc_7AEE
		lea     BattlefieldQuitLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		bset    #0,((byte_FFB4CA-$1000000)).w
		moveq   #$FFFFFFFF,d0
		rts
loc_7AEE:
		lea     BattlefieldQuitLayout(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_SaveGame).l
		jsr     (j_FadeOutToBlack).l
		sndCom  SOUND_COMMAND_FADE_OUT
		bra.w   sub_3284        

    ; End of function optionMenuAction_Quit


; =============== S U B R O U T I N E =======================================

sub_7B1A:
		lea     (SPRITE_21_PROPERTIES).l,a0
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
		bne.s   return_7B56
		moveq   #$14,d1
return_7B56:
		rts

    ; End of function sub_7B1A

        include "data\graphics\tech\windowlayouts\battleoptionspeedwindow.asm"
        include "data\graphics\tech\windowlayouts\battleoptionmessagewindow.asm"
        include "data\graphics\tech\windowlayouts\battlefieldquitwindow.asm"
		align $8000
