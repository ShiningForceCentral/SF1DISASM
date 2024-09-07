
; ASM FILE data\graphics\tech\fadingdata.asm :
; 0xB4C..0xB9C : Fading data table
table_FadingData:
		                ; $80 : end
		dc.b $FA, $FB, $FC, $FD, $FE, $FF, 0, $80
		dc.b $FF, $FE, $FD, $FC, $FB, $FA, $F9, $80
		dc.b 6, 5, 4, 3, 2, 1, 0, $80
		dc.b 1, 2, 3, 4, 5, 6, 7, $80
		dc.b 1, 1, 1, 0, $FF, $FE, $FE, $FE, $FF, 0, $88, 0, 0, 0, 0, 0, 5, $FE, 5, $FE, 5, $FE, 5, $FE, 0, $80
		dc.b 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $FF, $FF, $FE, $80
		dc.b $FF, 0, $80
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
