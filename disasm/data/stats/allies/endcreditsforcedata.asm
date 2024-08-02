
; ASM FILE data\stats\allies\endcreditsforcedata.asm :
; 0x26EE4..0x26F0A : Ally data for credits scenes

EndingCreditsForceData:
    creditsAlly MAX, HERO, CHAOS_BREAKER|EQUIPPED
    creditsAlly MAE, PLDN, VALKYRIE|EQUIPPED
    creditsAlly GORT, GLDR, ATLAS|EQUIPPED
    creditsAlly GUNTZ, SBRN, HALBERD|EQUIPPED
    creditsAlly TAO, VICR, HOLY_STAFF|EQUIPPED
    creditsAlly HANS, BWMS, STEEL_ARROW|EQUIPPED
    creditsAlly LYLE, SKNT_2, BUSTER_SHOT|EQUIPPED
    creditsAlly AMON, SKYW, SWORD_OF_DARKNESS|EQUIPPED
    creditsAlly BLEU, GRDR, NOTHING_ITEM|BROKEN
    creditsAlly ZYLO, WFBN, NOTHING_ITEM|BROKEN
    dc.w $FFFF

    
