
; ASM FILE data\stats\items\itemdata.asm :
; 0x25916..0x25D06 : Item definitions

ItemData:

    ; MEDICAL_HERB
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE
        equipEffect  NONE, 0
        useEffect    ITEM, MEDICAL_HERB
        turnEffect   NONE, 00
        attackEffect NONE, 00
        price        10
    
    ; HEALING_SEED
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE
        equipEffect  NONE, 0
        useEffect    ITEM, HEALING_SEED
        turnEffect   NONE, 00
        attackEffect NONE, 00
        price        200
    
    ; ANTIDOTE
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE
        equipEffect  NONE, 0
        useEffect    ITEM, ANTIDOTE
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        20
    
    ; SHOWER_OF_CURE
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE|RARE
        equipEffect  NONE, 0
        useEffect    AURA_4, SHOWER_OF_CURE
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        5000
    
    ; ANGEL_WING
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE
        equipEffect  NONE, 0
        useEffect    EGRESS, EGRESS
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        40
    
    ; POWER_POTION
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE|RARE
        equipEffect  NONE, 0
        useEffect    ITEM, POWER_POTION
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        500
    
    ; DEFENSE_POTION
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE|RARE
        equipEffect  NONE, 0
        useEffect    ITEM, DEFENSE_POTION
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        500
    
    ; LEGS_OF_HASTE
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE|RARE
        equipEffect  NONE, 0
        useEffect    ITEM, LEGS_OF_HASTE
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        500
    
    ; TURBO_PEPPER
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE|RARE
        equipEffect  NONE, 0
        useEffect    ITEM, TURBO_PEPPER
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1500
    
    ; BREAD_OF_LIFE
        equipFlags   ALL
        itemType     USEABLE|CONSUMABLE|RARE
        equipEffect  NONE, 0
        useEffect    ITEM, BREAD_OF_LIFE
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        500
    
    ; POWER_RING
        equipFlags   ALL
        itemType     RING|USEABLE|BREAKABLE|RARE
        equipEffect  INCREASE_ATK, 4
        useEffect    BOOST, BOOST
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1000
    
    ; SHIELD_RING
        equipFlags   ALL
        itemType     RING|USEABLE|BREAKABLE|RARE
        equipEffect  INCREASE_DEF, 4
        useEffect    QUICK_1, QUICK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1000
    
    ; SPEED_RING
        equipFlags   ALL
        itemType     RING|USEABLE|BREAKABLE|RARE
        equipEffect  INCREASE_AGI, 4
        useEffect    EGRESS, EGRESS
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1200
    
    ; MOBILITY_RING
        equipFlags   ALL
        itemType     RING|BREAKABLE|RARE
        equipEffect  INCREASE_MOV, 2
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1000
    
    ; WHITE_RING
        equipFlags   SDMN|HEAL|HERO|VICR
        itemType     RING|USEABLE|BREAKABLE|RARE
        equipEffect  INCREASE_DEF, 6
        useEffect    AURA_2, AURA_2
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        20000
    
    ; BLACK_RING
        equipFlags   SDMN|KNT|WARR|SKNT_1|WKNT|SMR|NINJ|HERO|PLDN|GLDR|SBRN|SKYL
        itemType     RING|USEABLE|BREAKABLE|RARE|CURSED
        equipEffect  INCREASE_ATK, 6
        useEffect    BLAZE_2, BLAZE_2
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        8500
    
    ; EVIL_RING
        equipFlags   SDMN|KNT|WARR|SKNT_1|WKNT|SMR|NINJ|HERO|PLDN|GLDR|SBRN|SKYL
        itemType     RING|USEABLE|BREAKABLE|RARE|CURSED|EVIL
        equipEffect  INCREASE_ATK, 8
        useEffect    BOLT_3, BOLT_3
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        15000
    
    ; SUGOI_MIZUGI
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        200
    
    ; ORB_OF_LIGHT
        equipFlags   ALL
        itemType     RARE|CANNOT_DROP
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1000
    
    ; MOON_STONE
        equipFlags   ALL
        itemType     RARE|CANNOT_DROP
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1200
    
    ; LUNAR_DEW
        equipFlags   ALL
        itemType     RARE|CANNOT_DROP
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        1500
    
    ; KITUI_HUKU
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        200
    
    ; DOMINGO_EGG
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        2000
    
    ; KENJI
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        4
    
    ; TEPPOU
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        4
    
    ; KAKU_CHAN
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        4
    
    ; YOUJI
        equipFlags   ALL
        itemType     RARE
        equipEffect  NONE, 0
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        4
    
    ; GREAT_AXE
        equipFlags   GLDR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 26
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        10000
    
    ; KINDAN_NO_HAKO
        equipFlags   SDMN|MAGE|HEAL|HERO|WIZD|VICR
        itemType     USEABLE|BREAKABLE|RARE
        equipEffect  NONE, 0
        useEffect    KINDAN_NOHAKO, KINDAN_NO_HAKO
        turnEffect   NONE, 0
        attackEffect NONE, ATTACK
        price        65000
    
    ; SHORT_SWORD
        equipFlags   SDMN|WARR|BDMN|SMR|NINJ|HERO|GLDR|SKYW
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 5
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        100
    
    ; MIDDLE_SWORD
        equipFlags   SDMN|WARR|BDMN|SMR|NINJ|HERO|GLDR|SKYW
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 8
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        250
    
    ; LONG_SWORD
        equipFlags   SDMN|BDMN|HERO|SKYW
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 12
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        750
    
    ; STEEL_SWORD
        equipFlags   HERO|SKYW
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 16
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        2500
    
    ; BROAD_SWORD
        equipFlags   HERO|SKYW
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 20
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        4800
    
    ; DOOM_BLADE
        equipFlags   SMR|NINJ|HERO|SKYW
        itemType     WEAPON|RARE
        equipEffect  INCREASE_ATK, 25
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, DOOM_BLADE_ATTACK
        price        7200
    
    ; KATANA
        equipFlags   SMR|NINJ|HERO|SKYW
        itemType     WEAPON|RARE
        equipEffect  INCREASE_ATK_AND_CRIT, 30
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        12000
    
    ; ELVEN_ARROW
        equipFlags   ACHR|ASKT|BWMS|SKNT_2
        itemType     WEAPON|RARE
        equipEffect  INCREASE_ATK, 18
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect ARROW_LONG, ATTACK
        price        3200
    
    ; SWORD_OF_DARKNESS
        equipFlags   HERO|SKYW
        itemType     WEAPON|USEABLE|RARE|CURSED|CANNOT_DROP
        equipEffect  INCREASE_ATK, 40
        useEffect    DESOUL_1, DESOUL_1
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        24000
    
    ; SWORD_OF_LIGHT
        equipFlags   HERO
        itemType     WEAPON|USEABLE|RARE|CANNOT_DROP
        equipEffect  INCREASE_ATK, 36
        useEffect    BOLT_2, BOLT_2
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        32000
    
    ; CHAOS_BREAKER
        equipFlags   HERO|SKYW
        itemType     WEAPON|USEABLE|RARE|CANNOT_DROP
        equipEffect  INCREASE_ATK, 40
        useEffect    FREEZE_3, FREEZE_3
        turnEffect   NONE, 0
        attackEffect MELEE, CHAOS_BREAKER_ATTACK
        price        18000
    
    ; BRONZE_LANCE
        equipFlags   KNT|SKNT_1|WKNT|PLDN|SBRN|SKYL
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 9
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        300
    
    ; STEEL_LANCE
        equipFlags   PLDN|SBRN|SKYL
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 18
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        3000
    
    ; CHROME_LANCE
        equipFlags   PLDN|SBRN|SKYL
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 22
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        4500
    
    ; DEVIL_LANCE
        equipFlags   PLDN|SBRN|SKYL
        itemType     WEAPON|BREAKABLE|RARE|CURSED|EVIL
        equipEffect  INCREASE_ATK, 35
        useEffect    SHIELD, SHIELD
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        11000
    
    ; HALBERD
        equipFlags   PLDN|SBRN|SKYL
        itemType     WEAPON|USEABLE|BREAKABLE|RARE
        equipEffect  INCREASE_ATK, 25
        useEffect    BOLT_1, BOLT_1
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        8500
    
    ; SPEAR
        equipFlags   KNT|SKNT_1|WKNT|PLDN|SBRN|SKYL
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 6
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect SPEAR_AND_LASER, ATTACK
        price        150
    
    ; POWER_SPEAR
        equipFlags   KNT|SKNT_1|WKNT|PLDN|SBRN|SKYL
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 15
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect SPEAR_AND_LASER, ATTACK
        price        900
    
    ; VALKYRIE
        equipFlags   PLDN|SBRN|SKYL
        itemType     WEAPON|RARE
        equipEffect  INCREASE_ATK, 35
        useEffect    NONE, ATTACK
        turnEffect   RECOVER_HP, 5
        attackEffect SPEAR_AND_LASER, ATTACK
        price        14000
    
    ; HAND_AXE
        equipFlags   WARR|GLDR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 7
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        200
    
    ; MIDDLE_AXE
        equipFlags   WARR|GLDR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 11
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        600
    
    ; BATTLE_AXE
        equipFlags   GLDR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 16
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        2600
    
    ; HEAT_AXE
        equipFlags   GLDR
        itemType     WEAPON|USEABLE|BREAKABLE|RARE
        equipEffect  INCREASE_ATK, 22
        useEffect    BLAZE_2, BLAZE_2
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        6500
    
    ; ATLAS
        equipFlags   GLDR
        itemType     WEAPON|USEABLE|BREAKABLE|RARE|CANNOT_DROP
        equipEffect  INCREASE_ATK, 33
        useEffect    BLAZE_3, BLAZE_3
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        15000
    
    ; WOODEN_STAFF
        equipFlags   MAGE|HEAL|WIZD|VICR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 4
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        80
    
    ; GUARDIAN_STAFF
        equipFlags   WIZD|VICR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 18
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        3200
    
    ; HOLY_STAFF
        equipFlags   VICR
        itemType     WEAPON|RARE
        equipEffect  INCREASE_ATK, 26
        useEffect    NONE, ATTACK
        turnEffect   RECOVER_HP, 5
        attackEffect MELEE, ATTACK
        price        8000
    
    ; POWER_STAFF
        equipFlags   MAGE|HEAL|WIZD|VICR
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 12
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        500
    
    ; DEMON_ROD
        equipFlags   WIZD|VICR
        itemType     WEAPON|USEABLE|BREAKABLE|RARE|CURSED|EVIL
        equipEffect  INCREASE_ATK, 35
        useEffect    DEMON_ROD, DEMON_ROD_USE
        turnEffect   NONE, 0
        attackEffect MELEE, ATTACK
        price        11800
    
    ; YOGURT_RING
        equipFlags   ALL
        itemType     RING|USEABLE|BREAKABLE|RARE
        equipEffect  YOGURTIZE, 0
        useEffect    ITEM, YOGURT_RING
        turnEffect   NONE, 0
        attackEffect NONE, NONE
        price        39
    
    ; WOODEN_ARROW
        equipFlags   ACHR|ASKT|BWMS|SKNT_2
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 8
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect ARROW_SHORT, ATTACK
        price        320
    
    ; STEEL_ARROW
        equipFlags   ACHR|ASKT|BWMS|SKNT_2
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 13
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect ARROW_SHORT, ATTACK
        price        1200
    
    ; ASSAULT_SHELL
        equipFlags   BWMS|SKNT_2
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 27
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect ARROW_LONG, ATTACK
        price        4500
    
    ; BUSTER_SHOT
        equipFlags   BWMS|SKNT_2
        itemType     WEAPON
        equipEffect  INCREASE_ATK, 35
        useEffect    NONE, ATTACK
        turnEffect   NONE, 0
        attackEffect ARROW_LONG, ATTACK
        price        12400

