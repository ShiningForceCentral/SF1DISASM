
; ASM FILE data\graphics\tech\windowlayouts\miscmessages\entries.asm :
; 0xD39A..0xD3BE : Misc message window layout
pt_MiscMessageWindowLayouts:
		dc.l layout_MiscMessageWindow0
		dc.l layout_MiscMessageWindow1
		dc.l layout_MiscMessageWindow2
		dc.l layout_MiscMessageWindow3
		dc.l layout_MiscMessageWindow4
		dc.l layout_MiscMessageWindow5
		dc.l layout_MiscMessageWindow6
		dc.l layout_MiscMessageWindow7
		dc.l layout_MiscMessageWindow8
                
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage0.asm"		; Misc message window layout 0
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage1.asm"		; Misc message window layout 1
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage2.asm"		; Misc message window layout 2
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage3.asm"		; Misc message window layout 3
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage4.asm"		; Misc message window layout 4
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage5.asm"		; Misc message window layout 5
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage6.asm"		; Misc message window layout 6
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage7.asm"		; Misc message window layout 7
		include "data\graphics\tech\windowlayouts\miscmessages\miscmessage8.asm"		; Misc message window layout 8
