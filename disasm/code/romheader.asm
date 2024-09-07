
; ASM FILE code\romheader.asm :
; 0x0..0x200 : ROM Header
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
