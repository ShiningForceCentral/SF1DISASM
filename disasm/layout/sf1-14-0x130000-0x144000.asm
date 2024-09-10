
; GAME SECTION 14 :
; 0x130000..0x144000 : Game intro, title screen, text banks
; FREE SPACE : 22228 bytes.


p_pt_TextBanks: dc.l pt_TextBanks
		include "code\gameflow\start\gameintro.asm"		; Game intro
		include "data\scripting\text\textbanks\entries.asm"		; Text banks
byte_13E92A:    dcb.b $56D6,$FF
