
; ASM FILE data\stats\allies\charactergrowths.asm :
; 0x26C1A..0x26D70 : Ally growth tables
table_UnpromotedGrowths:
		incbin "data/stats/allies/unpromotedgrowths.bin"
table_PromotedGrowths:
		incbin "data/stats/allies/promotedgrowths.bin"
