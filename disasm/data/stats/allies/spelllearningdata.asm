
; ASM FILE data\stats\allies\spelllearningdata.asm :
; 0x26D70..0x26E16 : Ally spell tables

SpellLearningData:

        caster ANRI
        spellList &
            1, BLAZE, &
            5, FREEZE, &
            8, BLAZE|LV2, &
            10, MUDDLE, &
            13, FREEZE|LV2, &
            16, FREEZE|LV3, &
            19, BOLT, &
            23, FREEZE|LV4, &
            26, BOLT|LV2
            
        caster ALEF
        spellList &
            1, BLAZE, &
            3, FREEZE, &
            6, BLAZE|LV2, &
            9, FREEZE|LV2, &
            12, BOLT, &
            17, BOLT|LV2, &
            22, BOLT|LV3, &
            26, DESOUL, &
            30, BOLT|LV4
            
        caster TAO
        spellList &
            1, BLAZE, &
            4, BLAZE|LV2, &
            8, SLEEP, &
            12, BLAZE|LV3, &
            16, DISPEL, &
            20, BLAZE|LV4, &
            27, BOOST
            
        caster LOWE
        spellList &
            1, HEAL, &
            4, DETOX, &
            7, HEAL|LV2, &
            10, SLOW, &
            13, QUICK, &
            16, HEAL|LV3, &
            19, SLOW|LV2, &
            22, HEAL|LV4, &
            25, QUICK|LV2
            
        caster KHRIS
        spellList &
            1, HEAL, &
            5, HEAL|LV2, &
            8, SLOW, &
            12, QUICK, &
            16, HEAL|LV3, &
            20, AURA, &
            21, HEAL|LV4, &
            28, AURA|LV2
            
        caster TORASU
        spellList &
            1, HEAL, &
            4, DETOX, &
            7, HEAL|LV2, &
            12, SHIELD, &
            16, AURA, &
            20, AURA|LV2, &
            24, AURA|LV3, &
            28, AURA|LV4
            
        caster GONG
        spellList &
            1, HEAL, &
            8, HEAL|LV2, &
            16, HEAL|LV3, &
            24, HEAL|LV4, &
            30, AURA
            
        caster DOMINGO
        spellList &
            1, FREEZE, &
            4, FREEZE|LV2, &
            7, MUDDLE, &
            13, FREEZE|LV3, &
            17, DESOUL, &
            20, BOOST, &
            26, FREEZE|LV4
            
        caster MAX
        spellList &
            1, EGRESS
            
        caster ARTHUR
        spellList &
            15, BLAZE, &
            20, FREEZE, &
            25, BOLT
            
        caster HANZOU
        spellList &
            1, SLEEP, &
            4, DISPEL, &
            7, DESOUL, &
            15, SHIELD, &
            25, DESOUL
            
            dc.w $FFFF

            
