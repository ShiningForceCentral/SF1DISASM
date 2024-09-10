
; GAME SECTION 05 :
; 0x02C000..0x038000 : Region check, variable width font, portraits
; FREE SPACE : 1224 bytes.


p_font_VariableWidth:
		dc.l font_VariableWidth
p_pt_Portraits: dc.l pt_Portraits
		include "code\gameflow\start\regioncheck.asm"		; Region check functions
font_VariableWidth:
		incbin "data/graphics/tech/fonts/variablewidthfont.bin"
		include "data\graphics\portraits\entries.asm"		; Portraits
		align $8000
