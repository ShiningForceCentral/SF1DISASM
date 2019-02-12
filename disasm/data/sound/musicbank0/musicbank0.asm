
   cpu z80
   listing off
   phase	0
   include "..\musicmacros.asm"
   include "..\musicenums.asm"
   org 08000h

		; File Name   : D:\gendev\ShiningForceCentral\SF1RE-musicbanks\SF1RE\disasm\sound\musicbank0.bin
		dw Music_1
		dw Music_2
		dw Music_3
		dw Music_4
		dw Music_5
		dw Music_6
		dw Music_7
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		dw Music_32
		include "music05.asm"		; Music 05
		include "music01.asm"		; Music 01
		include "music02.asm"		; Music 02
		include "music03.asm"		; Music 03
		include "music04.asm"		; Music 04
		include "music06.asm"		; Music 06, 07, and 32 combined for optimization
