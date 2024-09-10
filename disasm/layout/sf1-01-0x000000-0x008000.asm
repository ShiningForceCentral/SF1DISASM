
; GAME SECTION 01 :
; 0x000000..0x008000 : Technical layer, low level game engine, menu engine, ...
; FREE SPACE : 478 bytes.


		include "code\romheader.asm"		; ROM Header

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
		
		bra.w   OpenMessageWindow

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

j_TalkMenuAction:
		
		bra.w   TalkMenuAction

    ; End of function j_TalkMenuAction


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

		include "code\gameflow\start\initsystem.asm"		; System init functions
		include "code\gameflow\start\start.asm"		; Program start function
		include "code\common\tech\interrupts\trap0_soundcommand.asm"		; Trap 0 - Sound command
		include "code\common\tech\interrupts\errors.asm"		; Error interrupts
		include "code\common\tech\interrupts\trap5_.asm"		; Trap 5 - 
		include "code\common\tech\interrupts\trap6_.asm"		; Trap 6 - 
		include "code\common\tech\interrupts\trap7_.asm"		; Trap 7 - 
		include "code\common\tech\interrupts\trap8_displaymessage.asm"		; Trap 8 - Display message
		include "code\common\tech\interrupts\vintengine_1.asm"		; Vertical Interrupt Engine - Main Technical Engine - Triggered at each frame display
		include "data\graphics\tech\fadingdata.asm"		; Fading data table
		include "code\common\tech\interrupts\vintengine_2.asm"		; Vertical Interrupt Engine - Main Technical Engine - Triggered at each frame display
		include "code\common\scripting\text\asciinumber.asm"		; ASCII number function
		include "code\common\tech\input.asm"		; Input functions
		include "code\common\tech\randomnumbergenerator.asm"		; RNG function
		include "code\common\tech\sound\music.asm"		; Sound function
		include "code\common\tech\bytecopy.asm"		; Byte-copy function
		include "code\common\tech\graphics\graphics.asm"		; Graphics functions
		include "code\common\scripting\text\textfunctions.asm"		; Text functions
		include "code\common\tech\graphics\graphicsdecompressors.asm"		; Graphics decompression functions
		include "code\common\tech\interrupts\trap1_.asm"		; Trap 1 - 
		include "code\common\tech\interrupts\trap2_.asm"		; Trap 2 - 
		include "code\common\tech\interrupts\trap3_.asm"		; Trap 3 - 
		include "code\common\tech\interrupts\trap4_.asm"		; Trap 4 - 
		include "code\common\scripting\eventflags.asm"		; Event flags functions
		include "code\gameflow\start\initgame.asm"		; Game init functions

; =============== S U B R O U T I N E =======================================

debugMode_PlayEnding:
		
		jmp     j_PlayEnding

    ; End of function debugMode_PlayEnding

		include "code\specialscreens\readerscreen\readerfunctions_1.asm"		; Simone screen functions, part 1
		include "code\common\tech\sram\sramfunctions.asm"		; SRAM functions
		include "code\specialscreens\readerscreen\readerfunctions_2.asm"		; Simone screen functions, part 2
palettes_ReaderScreen:
		incbin "data/graphics/specialscreens/readerscreen/readerscreenpalettes.bin"
		include "data\graphics\specialscreens\readerscreen\shiningforcelogolayout.asm"		; Shining Force logo layout
		include "code\specialscreens\chapterscreen\chapterfunctions.asm"		; Display chapter screen functions
		include "code\common\scripting\battleexits.asm"		; Battle exit scripts functions
		include "data\graphics\specialscreens\chapterscreen\chapterscreenlayouts.asm"		; Chapter screen layouts
		include "code\gameflow\special\sub_4C0E.asm"		; Related to the battle test debug function
		include "code\gameflow\special\chaptertest.asm"		; Chapter test functions
		include "code\gameflow\special\battletest.asm"		; Battle test functions
table_BattleTestTargets:
		dc.b 1
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   2
		dc.b $FF
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   3
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		dc.b   2
		dc.b   5
		dc.b   3
		dc.b   0
		dc.b $3B 
		dc.b   6
		dc.b $FF
		dc.b   0
		dc.b   3
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   2
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   3
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   1
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $3B 
		dc.b   6
		dc.b $FF
		dc.b   0
		dc.b   8
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   6
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   7
		dc.b   4
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		include "code\gameflow\special\messagetest.asm"		; Message test functions
		include "data\graphics\tech\windowlayouts\testscreens.asm"		; Test screens window layouts
		include "code\common\menus\goldwindow.asm"		; Gold window functions
		include "data\graphics\tech\windowlayouts\gold.asm"		; Gold window layout
		include "code\common\menus\menuengine.asm"		; Menu engine
		include "code\gameflow\headquarters\headquartersfunctions.asm"		; Headquarters functions
		include "data\maps\global\headquartersmemberspositions.asm"		; Headquarters force members positions table
		include "code\gameflow\end\endingcutscenefunctions.asm"		; Ending cutscene functions
		include "data\scripting\ending\endingcutscenecombatantdata.asm"		; Ending cutscene combatant data table
		include "code\common\menus\menuactions.asm"		; Menu actions
		include "data\graphics\tech\windowlayouts\equipmenu.asm"		; Equip menu window layouts

; =============== S U B R O U T I N E =======================================

sub_77A4:
		jsr     sub_80A4
		move.w  d0,((CURRENT_OBJECT-$1000000)).w
		cmpi.w  #-1,d0
		beq.w   loc_78F4
		jsr     (j_CheckEventFlag).l
		bne.w   sub_7898
		bsr.w   sub_80C4
		cmpi.b  #ITEM_NOTHING,d3
		beq.w   sub_7898
		clr.w   d7
		move.b  ((byte_FFB4C5-$1000000)).w,d7
		move.w  d7,((MESSAGE_ARG_NAME_1-$1000000)).w
		cmpi.b  #ITEM_NOTHING,d3
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
		txt     72              ; "[Name] discovers a[Line][Item]![Wait2]"
		move.w  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		jsr     (j_PlayMusicAfterCurrentOne).l
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     (j_SetEventFlag).l
		bsr.w   sub_788C
		cmpi.w  #$26,((MESSAGE_ARG_NAME_2-$1000000)).w 
		bne.s   return_7870
		moveq   #55,d0
		jsr     (j_SetEventFlag).l
		moveq   #43,d0
		jsr     (j_CheckEventFlag).l
		beq.s   return_7870
		moveq   #37,d0
		jsr     (j_SetEventFlag).l
		jsr     (j_OpenMessageWindow).l
		txt     361             ; "Will Darksol release Dark[Line]Dragon from the bonds of the[Line]Ancients?[Wait2][Line]Or will [Hero] stop[Line]Darksol and save all of[Line]Rune from the ultimate evil?[Wait2][Line]The Shining Force hurries[Line]on to Prompt....[Wait2]"
		jsr     (j_CloseMessageWindow).l
		movea.l (dword_FF0EFE).l,sp
		jsr     (j_FadeOutToBlack).l
		clr.l   (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l
		clr.w   d0
return_7870:
		rts
loc_7872:
		movem.w d1-d2,-(sp)
		txt     72              ; "[Name] discovers a[Line][Item]![Wait2]"
		txt     73              ; "But can't carry it![Wait2]"
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
		txt     74              ; "The treasure chest is empty.[Wait2]"
loc_78A4:
		move.w  ((CURRENT_OBJECT-$1000000)).w,d0
		jsr     (j_SetEventFlag).l
		bra.s   sub_788C
loc_78B0:
		subi.w  #64,d3
		add.w   d3,d3
		clr.l   d1
		move.w  table_BattleChestGoldAmounts(pc,d3.w),d1
		move.l  d1,((MESSAGE_ARG_NUMBER-$1000000)).w
		jsr     j_IncreaseGold
		jsr     (j_OpenMessageWindow).l
		sndCom  MUSIC_ITEM
		txt     76              ; "[Name] gains [Num] coins.[Wait2]"
		jsr     (j_PlayMusicAfterCurrentOne).l
		sndCom  SOUND_COMMAND_PLAY_PREVIOUS_MUSIC
		bra.s   loc_78A4
table_BattleChestGoldAmounts:
		
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
		txt     75              ; "Nothing is found.[Wait2]"
		bsr.s   sub_788C
return_7908:
		rts

    ; End of function sub_7898


; =============== S U B R O U T I N E =======================================

optionMenu_Speed:
		
		lea     layout_OptionsSpeedWindow(pc), a0
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
		lea     layout_OptionsSpeedWindow(pc), a0
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
		lea     layout_OptionsSpeedWindow(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #-1,d0
		rts

    ; End of function optionMenu_Speed


; =============== S U B R O U T I N E =======================================

optionMenuAction_Message:
		
		lea     layout_OptionsMessageWindow(pc), a0
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
		lea     layout_OptionsMessageWindow(pc), a0
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
		lea     layout_OptionsMessageWindow(pc), a0
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
		
		lea     layout_BattlefieldQuitWindow(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		jsr     (j_YesNoPrompt).l
		tst.b   ((CURRENT_DIAMOND_MENU_SELECTION-$1000000)).w
		bge.w   loc_7AEE
		lea     layout_BattlefieldQuitWindow(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     j_MoveWindowWithSfx
		bset    #0,((byte_FFB4CA-$1000000)).w
		moveq   #-1,d0
		rts
loc_7AEE:
		lea     layout_BattlefieldQuitWindow(pc), a0
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

		include "data\graphics\tech\windowlayouts\battleoptions.asm"		; Battle options window layouts
		align $8000
