
; GAME SECTION 05 :
; Region check, variable width font, portraits
; FREE SPACE : 1224 bytes.


p_VariableWidthFont:
		dc.l VariableWidthFont
p_pt_Portraits: dc.l pt_Portraits

; =============== S U B R O U T I N E =======================================

CheckRegionLock:
		
		jmp     *+4(pc)
		move.b  #$80,d1
		bne.s   loc_2C014
		rts
loc_2C014:
		move.b  (HW_Info_LO_BYTE).l,d0
		andi.b  #$C0,d0
		cmp.b   d0,d1
		bne.s   loc_2C024
		rts
loc_2C024:
		jsr     (j_DisableDisplayAndInterrupts).l
		lea     aDevelopedForUseOnlyWi(pc), a0
		lea     (REGION_LOCK_STRING_1).l,a1
		bsr.w   CopyRegionLockString
		move.b  #$80,d1
		cmpi.b  #$80,d1
		bne.s   loc_2C052
		lea     aNtscGenesis(pc), a0
		lea     (REGION_LOCK_STRING_2).l,a1
		bsr.w   CopyRegionLockString
		bra.s   loc_2C060
loc_2C052:
		lea     aPalAndFrenchSe(pc), a0
		lea     (REGION_LOCK_STRING_2).l,a1
		bsr.w   CopyRegionLockString
loc_2C060:
		lea     aSystems_(pc), a0
		lea     (REGION_LOCK_STRING_3).l,a1
		bsr.w   CopyRegionLockString
		jsr     (j_EnableDisplayAndInterrupts).l
		lea     (PLANE_A_MAP_LAYOUT).l,a0
		lea     ($C000).l,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDma).l
		clr.l   (PALETTE_1_CURRENT_02).l
		clr.l   (PALETTE_1_CURRENT_04).l
		clr.l   (PALETTE_1_CURRENT_06).l
		clr.l   (PALETTE_1_CURRENT_08).l
		clr.l   (PALETTE_1_CURRENT_10).l
		clr.l   (PALETTE_1_CURRENT_12).l
		clr.l   (PALETTE_1_CURRENT_14).l
		jsr     (j_ApplyVIntCramDma).l
		jsr     (j_EnableDmaQueueProcessing).l
loc_2C0C2:
		jsr     (j_WaitForVInt).l
		bra.s   loc_2C0C2

    ; End of function CheckRegionLock


; =============== S U B R O U T I N E =======================================

CopyRegionLockString:
		
		clr.w   d0
		move.b  (a0)+,d0
		bne.s   loc_2C0D2
		rts
loc_2C0D2:
		move.w  d0,(a1)+
		bra.s   CopyRegionLockString

    ; End of function CopyRegionLockString

aDevelopedForUseOnlyWi:
		dc.b '  DEVELOPED FOR USE ONLY WITH',0
aNtscGenesis:   dc.b '         NTSC GENESIS',0
aPalAndFrenchSe:dc.b 'PAL AND FRENCH SECAM MEGA DRIVE',0
aSystems_:      dc.b '           SYSTEMS.',0
VariableWidthFont:
		incbin "data/graphics/tech/fonts/variablewidthfont.bin"
                include "data\graphics\portraits\entries.asm"
		align $8000
