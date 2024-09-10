
; ASM FILE data\stats\allies\spelllearningdata.asm :
; 0x26D70..0x26E16 : Ally spell tables

table_SpellLearningData:

        caster ANRI
        spellList &
            1, BLAZE, &
            5, FREEZE, &
            8, BLAZE|LV_2, &
            10, MUDDLE, &
            13, FREEZE|LV_2, &
            16, FREEZE|LV_3, &
            19, BOLT, &
            23, FREEZE|LV_4, &
            26, BOLT|LV_2
            
        caster ALEF
        spellList &
            1, BLAZE, &
            3, FREEZE, &
            6, BLAZE|LV_2, &
            9, FREEZE|LV_2, &
            12, BOLT, &
            17, BOLT|LV_2, &
            22, BOLT|LV_3, &
            26, DESOUL, &
            30, BOLT|LV_4
            
        caster TAO
        spellList &
            1, BLAZE, &
            4, BLAZE|LV_2, &
            8, SLEEP, &
            12, BLAZE|LV_3, &
            16, DISPEL, &
            20, BLAZE|LV_4, &
            27, BOOST
            
        caster LOWE
        spellList &
            1, HEAL, &
            4, DETOX, &
            7, HEAL|LV_2, &
            10, SLOW, &
            13, QUICK, &
            16, HEAL|LV_3, &
            19, SLOW|LV_2, &
            22, HEAL|LV_4, &
            25, QUICK|LV_2
            
        caster KHRIS
        spellList &
            1, HEAL, &
            5, HEAL|LV_2, &
            8, SLOW, &
            12, QUICK, &
            16, HEAL|LV_3, &
            20, AURA, &
            21, HEAL|LV_4, &
            28, AURA|LV_2
            
        caster TORASU
        spellList &
            1, HEAL, &
            4, DETOX, &
            7, HEAL|LV_2, &
            12, SHIELD, &
            16, AURA, &
            20, AURA|LV_2, &
            24, AURA|LV_3, &
            28, AURA|LV_4
            
        caster GONG
        spellList &
            1, HEAL, &
            8, HEAL|LV_2, &
            16, HEAL|LV_3, &
            24, HEAL|LV_4, &
            30, AURA
            
        caster DOMINGO
        spellList &
            1, FREEZE, &
            4, FREEZE|LV_2, &
            7, MUDDLE, &
            13, FREEZE|LV_3, &
            17, DESOUL, &
            20, BOOST, &
            26, FREEZE|LV_4
            
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

