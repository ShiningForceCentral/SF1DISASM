
; ASM FILE code\gameflow\start\basetiles.asm :
; 0xCC030..0xCC05E : Base tiles loading

; =============== S U B R O U T I N E =======================================

LoadBaseTilesAndPalette:
		
		jsr     (j_DisableDisplayAndInterrupts).l
		lea     tiles_Base(pc), a0
		lea     (0).w,a1
		move.w  #$2000,d0
		jsr     (j_ApplyImmediateVramDmaOnCompressedTiles).l
		lea     palette_Base(pc), a0
		lea     (PALETTE_3_BASE).l,a1
		jsr     (j_CopyPalette).l
		jmp     (j_EnableDisplayAndInterrupts).l

    ; End of function LoadBaseTilesAndPalette

