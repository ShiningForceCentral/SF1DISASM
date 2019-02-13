
   cpu z80
   listing off
   phase	0
   include "..\musicmacros.asm"
   include "..\musicenums.asm"
   org 08000h

		; File Name   : D:\gendev\ShiningForceCentral\SF1RE\disasm\sound\musicbank0.bin
		dw Music_33
		dw Music_34
		dw Music_35
		dw Music_36
		dw Music_37
		dw Music_38
		dw Music_39
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		include "music37.asm"		; Music 37
		include "music33.asm"		; Music 33
		include "music34.asm"		; Music 34
		include "music35.asm"		; Music 35
		include "music36.asm"		; Music 36
		include "music38.asm"		; Music 38, 39, and 64 combined for optimization
