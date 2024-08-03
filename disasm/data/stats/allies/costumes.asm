
; ASM FILE data\stats\allies\costumes.asm :
; 0x..0x : Character costume data

tbl_OutfitItems:
        ; costume [ALLY_]enum, [ITEM_]enum, [MAPSPRITE_]enum
        costume ANRI, KITUI_HUKU, ANRI_OUTFIT
        costume TAO, SUGOI_MIZUGI, TAO_OUTFIT
        dc.w $FFFF

