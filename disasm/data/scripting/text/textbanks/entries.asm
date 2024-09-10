
; ASM FILE data\scripting\text\textbanks\entries.asm :
; 0x131A1C..0x13E92A : Text banks
TextBank00:     incbin "data/scripting/text/textbank00.bin"
TextBank01:     incbin "data/scripting/text/textbank01.bin"
TextBank02:     incbin "data/scripting/text/textbank02.bin"
TextBank03:     incbin "data/scripting/text/textbank03.bin"
TextBank04:     incbin "data/scripting/text/textbank04.bin"
TextBank05:     incbin "data/scripting/text/textbank05.bin"
TextBank06:     incbin "data/scripting/text/textbank06.bin"
TextBank07:     incbin "data/scripting/text/textbank07.bin"
TextBank08:     incbin "data/scripting/text/textbank08.bin"
pt_TextBanks:   dc.l TextBank00
		dc.l TextBank01
		dc.l TextBank02
		dc.l TextBank03
		dc.l TextBank04
		dc.l TextBank05
		dc.l TextBank06
		dc.l TextBank07
		dc.l TextBank08
