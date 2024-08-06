
; ASM FILE data\stats\allies\allybattlesprites.asm :
; 0x2751C..0x27AC4 : Ally battlesprites table

table_EnemyDefs:

        ; GOBLIN
        enemyGold    12
        enemyClass   GOBLIN
        level        3
        baseATK      4
        baseDEF      6
        baseAGI      5
        movement     5
        baseHP       12
        baseMP       0
        dc.b         $0
        mapSprite    GOBLIN
        battleSprite GOBLIN, 0
        portrait     NONE
        
        ; BOWRIDER
        enemyGold    900
        enemyClass   BOWRIDER
        level        17
        baseATK      13
        baseDEF      11
        baseAGI      14
        movement     7
        baseHP       18
        baseMP       0
        dc.b         $0
        mapSprite    BOWRIDER
        battleSprite BOW_RIDER, 0
        portrait     NONE
        
        ; RUNE_KNIGHT
        enemyGold    45
        enemyClass   RUNE_KNIGHT
        level        5
        baseATK      7
        baseDEF      7
        baseAGI      7
        movement     7
        baseHP       14
        baseMP       0
        dc.b         $0
        mapSprite    RUNE_KNIGHT
        battleSprite KNIGHT_ENEMY, 0
        portrait     NONE
        
        ; SILVER_KNIGHT
        enemyGold    75
        enemyClass   SILVER_KNIGHT
        level        12
        baseATK      9
        baseDEF      12
        baseAGI      11
        movement     7
        baseHP       16
        baseMP       0
        dc.b         $0
        mapSprite    SILVER_KNIGHT
        battleSprite KNIGHT_ENEMY, 1
        portrait     NONE
        
        ; DURAHAN
        enemyGold    700
        enemyClass   DURAHAN_1
        level        21
        baseATK      19
        baseDEF      28
        baseAGI      13
        movement     5
        baseHP       22
        baseMP       0
        dc.b         $0
        mapSprite    DURAHAN
        battleSprite DULLAHAN, 0
        portrait     NONE
        
        ; DARK_DWARF
        enemyGold    25
        enemyClass   DARK_DWARF
        level        4
        baseATK      5
        baseDEF      8
        baseAGI      5
        movement     4
        baseHP       12
        baseMP       0
        dc.b         $0
        mapSprite    DARK_DWARF
        battleSprite DWARF, 0
        portrait     NONE
        
        ; HORSEMAN
        enemyGold    1550
        enemyClass   HORSEMAN
        level        30
        baseATK      18
        baseDEF      16
        baseAGI      17
        movement     7
        baseHP       24
        baseMP       0
        dc.b         $0
        mapSprite    HORSEMAN
        battleSprite BOW_RIDER, 1
        portrait     NONE
        
        ; SNIPER
        enemyGold    80
        enemyClass   SNIPER
        level        6
        baseATK      7
        baseDEF      5
        baseAGI      7
        movement     5
        baseHP       13
        baseMP       0
        dc.b         $0
        mapSprite    SNIPER
        battleSprite SNIPER, 0
        portrait     NONE
        
        ; DARK_ELF
        enemyGold    160
        enemyClass   DARK_ELF
        level        10
        baseATK      13
        baseDEF      9
        baseAGI      10
        movement     6
        baseHP       16
        baseMP       0
        dc.b         $0
        mapSprite    DARK_ELF
        battleSprite SNIPER, 1
        portrait     NONE
        
        ; LIZARDMAN
        enemyGold    150
        enemyClass   LIZARDMAN
        level        11
        baseATK      13
        baseDEF      12
        baseAGI      12
        movement     6
        baseHP       20
        baseMP       0
        dc.b         $0
        mapSprite    LIZARDMAN
        battleSprite LIZARDMAN, 0
        portrait     NONE
        
        ; DARK_MAGE
        enemyGold    170
        enemyClass   DARK_MAGE_1
        level        9
        baseATK      7
        baseDEF      8
        baseAGI      12
        movement     5
        baseHP       14
        baseMP       26
        dc.b         $0
        mapSprite    DARK_MAGE
        battleSprite MAGE_ENEMY, 0
        portrait     NONE
        
        ; DARK_PRIEST
        enemyGold    125
        enemyClass   DARK_PRIEST_1
        level        9
        baseATK      9
        baseDEF      9
        baseAGI      10
        movement     5
        baseHP       16
        baseMP       25
        dc.b         $0
        mapSprite    DARK_PRIEST
        battleSprite PRIEST, 0
        portrait     NONE
        
        ; HIGH_PRIEST
        enemyGold    750
        enemyClass   HIGH_PRIEST_1
        level        19
        baseATK      13
        baseDEF      14
        baseAGI      13
        movement     6
        baseHP       20
        baseMP       33
        dc.b         $0
        mapSprite    HIGH_PRIEST
        battleSprite PRIEST, 1
        portrait     NONE
        
        ; CERBERUS
        enemyGold    1700
        enemyClass   CERBERUS
        level        35
        baseATK      42
        baseDEF      26
        baseAGI      38
        movement     7
        baseHP       27
        baseMP       0
        dc.b         $0
        mapSprite    CERBERUS
        battleSprite HOUND, 0
        portrait     NONE
        
        ; HELLHOUND
        enemyGold    200
        enemyClass   HELLHOUND
        level        16
        baseATK      10
        baseDEF      13
        baseAGI      13
        movement     7
        baseHP       19
        baseMP       0
        dc.b         $0
        mapSprite    HELLHOUND
        battleSprite HOUND, 1
        portrait     NONE
        
        ; GARGOYLE
        enemyGold    440
        enemyClass   GARGOYLE
        level        18
        baseATK      26
        baseDEF      15
        baseAGI      20
        movement     6
        baseHP       18
        baseMP       20
        dc.b         $0
        mapSprite    GARGOYLE
        battleSprite GARGOYLE, 00
        portrait     NONE
        
        ; BELIAL
        enemyGold    680
        enemyClass   BELIAL
        level        23
        baseATK      26
        baseDEF      20
        baseAGI      22
        movement     6
        baseHP       21
        baseMP       35
        dc.b         $0
        mapSprite    BELIAL
        battleSprite GARGOYLE, 1
        portrait     NONE
        
        ; GOLEM
        enemyGold    380
        enemyClass   GOLEM
        level        20
        baseATK      28
        baseDEF      28
        baseAGI      16
        movement     4
        baseHP       17
        baseMP       0
        dc.b         $0
        mapSprite    GOLEM
        battleSprite GOLEM, 0
        portrait     NONE
        
        ; WEED
        enemyGold    750
        enemyClass   WEED
        level        20
        baseATK      25
        baseDEF      28
        baseAGI      16
        movement     4
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    WEED
        battleSprite GOLEM, 1
        portrait     NONE
        
        ; DARK_PRIEST2
        enemyGold    140
        enemyClass   DARK_PRIEST_2
        level        12
        baseATK      9
        baseDEF      8
        baseAGI      11
        movement     5
        baseHP       15
        baseMP       25
        dc.b         $0
        mapSprite    DARK_PRIEST
        battleSprite PRIEST, 0
        portrait     NONE
        
        ; ZOMBIE
        enemyGold    100
        enemyClass   ZOMBIE_1
        level        7
        baseATK      18
        baseDEF      13
        baseAGI      7
        movement     5
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    ZOMBIE
        battleSprite ZOMBIE, 0
        portrait     NONE
        
        ; DARK_MAGE2
        enemyGold    92
        enemyClass   DARK_MAGE_2
        level        5
        baseATK      6
        baseDEF      6
        baseAGI      9
        movement     5
        baseHP       13
        baseMP       26
        dc.b         $0
        mapSprite    DARK_MAGE
        battleSprite MAGE_ENEMY, 0
        portrait     NONE
        
        ; MASTER_MAGE
        enemyGold    850
        enemyClass   MASTER_MAGE
        level        18
        baseATK      7
        baseDEF      13
        baseAGI      26
        movement     5
        baseHP       22
        baseMP       32
        dc.b         $0
        mapSprite    MASTER_MAGE
        battleSprite MAGE_ENEMY, 1
        portrait     NONE
        
        ; DEMON_MASTER
        enemyGold    1520
        enemyClass   DEMON_MASTER_1
        level        21
        baseATK      17
        baseDEF      24
        baseAGI      45
        movement     6
        baseHP       27
        baseMP       46
        dc.b         $0
        mapSprite    DEMON_MASTER
        battleSprite MAGE_ENEMY, 2
        portrait     NONE
        
        ; GIANT_BAT
        enemyGold    60
        enemyClass   GIANT_BAT
        level        5
        baseATK      11
        baseDEF      6
        baseAGI      9
        movement     7
        baseHP       14
        baseMP       0
        dc.b         $0
        mapSprite    GIANT_BAT
        battleSprite BAT, 0
        portrait     NONE
        
        ; SEABAT
        enemyGold    350
        enemyClass   SEABAT
        level        17
        baseATK      20
        baseDEF      14
        baseAGI      14
        movement     7
        baseHP       22
        baseMP       0
        dc.b         $0
        mapSprite    SEABAT
        battleSprite BAT, 1
        portrait     NONE
        
        ; WORM
        enemyGold    400
        enemyClass   WORM
        level        17
        baseATK      20
        baseDEF      16
        baseAGI      16
        movement     4
        baseHP       17
        baseMP       0
        dc.b         $0
        mapSprite    WORM
        battleSprite WORM, 0
        portrait     NONE
        
        ; ICE_WORM
        enemyGold    1030
        enemyClass   ICE_WORM
        level        25
        baseATK      40
        baseDEF      25
        baseAGI      26
        movement     5
        baseHP       30
        baseMP       12
        dc.b         $0
        mapSprite    ICE_WORM
        battleSprite WORM, 1
        portrait     NONE
        
        ; MINOTAUR
        enemyGold    1500
        enemyClass   MINOTAUR_1
        level        32
        baseATK      46
        baseDEF      30
        baseAGI      31
        movement     5
        baseHP       31
        baseMP       0
        dc.b         $0
        mapSprite    MINOTAUR
        battleSprite MINOTAUR, 0
        portrait     NONE
        
        ; ARTILLERY
        enemyGold    450
        enemyClass   ARTILLERY_1
        level        16
        baseATK      24
        baseDEF      15
        baseAGI      14
        movement     4
        baseHP       14
        baseMP       0
        dc.b         $0
        mapSprite    ARTILLERY
        battleSprite TANK, 0
        portrait     NONE
        
        ; MANNEQUIN
        enemyGold    125
        enemyClass   MANNEQUIN
        level        8
        baseATK      16
        baseDEF      10
        baseAGI      8
        movement     5
        baseHP       16
        baseMP       0
        dc.b         $0
        mapSprite    MANNEQUIN
        battleSprite PUPPET, 0
        portrait     NONE
        
        ; EVIL_PUPPET
        enemyGold    100
        enemyClass   EVIL_PUPPET
        level        7
        baseATK      14
        baseDEF      10
        baseAGI      7
        movement     5
        baseHP       14
        baseMP       15
        dc.b         $0
        mapSprite    EVIL_PUPPET
        battleSprite PUPPET, 1
        portrait     NONE
        
        ; DIRE_CLOWN
        enemyGold    130
        enemyClass   DIRE_CLOWN
        level        8
        baseATK      18
        baseDEF      11
        baseAGI      7
        movement     5
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    DIRE_CLOWN
        battleSprite CLOWN, 0
        portrait     NONE
        
        ; DURAHAN2
        enemyGold    840
        enemyClass   DURAHAN_2
        level        25
        baseATK      19
        baseDEF      28
        baseAGI      13
        movement     6
        baseHP       22
        baseMP       0
        dc.b         $0
        mapSprite    DURAHAN
        battleSprite DULLAHAN, 0
        portrait     NONE
        
        ; SKELETON
        enemyGold    140
        enemyClass   SKELETON_1
        level        9
        baseATK      13
        baseDEF      16
        baseAGI      7
        movement     6
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    SKELETON
        battleSprite SKELETON, 0
        portrait     NONE
        
        ; HIGH_PRIEST2
        enemyGold    1340
        enemyClass   HIGH_PRIEST_2
        level        22
        baseATK      13
        baseDEF      14
        baseAGI      13
        movement     7
        baseHP       20
        baseMP       33
        dc.b         $0
        mapSprite    HIGH_PRIEST
        battleSprite PRIEST, 1
        portrait     NONE
        
        ; MARIONETTE
        enemyGold    200
        enemyClass   MARIONETTE
        level        12
        baseATK      25
        baseDEF      13
        baseAGI      13
        movement     6
        baseHP       35
        baseMP       100
        dc.b         $0
        mapSprite    MARIONETTE
        battleSprite MARIONETTE, 0
        portrait     NONE
        
        ; DEMON_MASTER2
        enemyGold    1850
        enemyClass   DEMON_MASTER_2
        level        31
        baseATK      17
        baseDEF      24
        baseAGI      50
        movement     6
        baseHP       27
        baseMP       46
        dc.b         $0
        mapSprite    DEMON_MASTER
        battleSprite MAGE_ENEMY, 2
        portrait     NONE
        
        ; ARMED_SKELETON
        enemyGold    2120
        enemyClass   ARMED_SKELETON
        level        40
        baseATK      36
        baseDEF      33
        baseAGI      32
        movement     5
        baseHP       36
        baseMP       0
        dc.b         $0
        mapSprite    ARMED_SKELETON
        battleSprite SKELE_SOLDIER, 0
        portrait     NONE
        
        ; PEGASUS_KNIGHT
        enemyGold    180
        enemyClass   PEGASUS_KNIGHT_1
        level        14
        baseATK      12
        baseDEF      16
        baseAGI      12
        movement     7
        baseHP       18
        baseMP       0
        dc.b         $0
        mapSprite    PEGASUS_KNIGHT
        battleSprite PEGASUS_KNIGHT, 0
        portrait     NONE
        
        ; ARTILLERY2
        enemyGold    450
        enemyClass   ARTILLERY_2
        level        18
        baseATK      24
        baseDEF      15
        baseAGI      14
        movement     4
        baseHP       14
        baseMP       0
        dc.b         $0
        mapSprite    ARTILLERY
        battleSprite TANK, 0
        portrait     NONE
        
        ; CHIMAERA
        enemyGold    2300
        enemyClass   CHIMAERA_1
        level        40
        baseATK      65
        baseDEF      30
        baseAGI      40
        movement     6
        baseHP       56
        baseMP       0
        dc.b         $0
        mapSprite    CHIMAERA
        battleSprite CHIMERA, 0
        portrait     NONE
        
        ; WYVERN
        enemyGold    1350
        enemyClass   WYVERN
        level        27
        baseATK      39
        baseDEF      30
        baseAGI      31
        movement     7
        baseHP       32
        baseMP       0
        dc.b         $0
        mapSprite    WYVERN
        battleSprite WYVERN, 0
        portrait     NONE
        
        ; BLUE_DRAGON
        enemyGold    2500
        enemyClass   BLUE_DRAGON
        level        50
        baseATK      63
        baseDEF      32
        baseAGI      42
        movement     5
        baseHP       50
        baseMP       0
        dc.b         $0
        mapSprite    BLUE_DRAGON
        battleSprite DRAGON, 0
        portrait     NONE
        
        ; CONCH
        enemyGold    230
        enemyClass   CONCH
        level        15
        baseATK      20
        baseDEF      15
        baseAGI      16
        movement     6
        baseHP       21
        baseMP       0
        dc.b         $0
        mapSprite    CONCH
        battleSprite SHELLFISH, 0
        portrait     NONE
        
        ; SHELLFISH
        enemyGold    270
        enemyClass   SHELLFISH
        level        17
        baseATK      23
        baseDEF      16
        baseAGI      23
        movement     6
        baseHP       25
        baseMP       0
        dc.b         $0
        mapSprite    SHELLFISH
        battleSprite SHELLFISH, 1
        portrait     NONE
        
        ; ARTILLERY3
        enemyGold    180
        enemyClass   ARTILLERY_3
        level        14
        baseATK      24
        baseDEF      15
        baseAGI      14
        movement     4
        baseHP       14
        baseMP       0
        dc.b         $0
        mapSprite    ARTILLERY
        battleSprite TANK, 0
        portrait     NONE
        
        ; STEEL_CLAW
        enemyGold    1220
        enemyClass   STEEL_CLAW
        level        40
        baseATK      43
        baseDEF      31
        baseAGI      31
        movement     5
        baseHP       25
        baseMP       0
        dc.b         $0
        mapSprite    STEEL_CLAW
        battleSprite STEEL_CLAW, 0
        portrait     NONE
        
        ; TORCH_EYE
        enemyGold    1350
        enemyClass   TORCH_EYE
        level        40
        baseATK      42
        baseDEF      32
        baseAGI      27
        movement     6
        baseHP       28
        baseMP       0
        dc.b         $0
        mapSprite    TORCH_EYE
        battleSprite TORCH_EYE, 0
        portrait     NONE
        
        ; JET
        enemyGold    1430
        enemyClass   JET
        level        40
        baseATK      45
        baseDEF      32
        baseAGI      33
        movement     7
        baseHP       28
        baseMP       0
        dc.b         $0
        mapSprite    JET
        battleSprite JET, 0
        portrait     NONE
        
        ; DARKSOL
        enemyGold    0
        enemyClass   DARKSOL
        level        99
        baseATK      40
        baseDEF      35
        baseAGI      54
        movement     6
        baseHP       150
        baseMP       100
        dc.b         $0
        mapSprite    DARKSOL
        battleSprite DARKSOL, 0
        portrait     DARKSOL
        
        ; LASER_EYE
        enemyGold    350
        enemyClass   LASER_EYE
        level        22
        baseATK      14
        baseDEF      19
        baseAGI      27
        movement     0
        baseHP       30
        baseMP       0
        dc.b         $0
        mapSprite    LASER_EYE
        battleSprite LASER_EYE, 0
        portrait     NONE
        
        ; ELLIOTT
        enemyGold    450
        enemyClass   ELLIOTT
        level        20
        baseATK      20
        baseDEF      17
        baseAGI      16
        movement     5
        baseHP       60
        baseMP       0
        dc.b         $0
        mapSprite    ELLIOTT
        battleSprite ELLIOTT, 0
        portrait     ELLIOTT
        
        ; BALBAZAK
        enemyGold    520
        enemyClass   BALBAZAK
        level        25
        baseATK      18
        baseDEF      18
        baseAGI      20
        movement     5
        baseHP       65
        baseMP       0
        dc.b         $0
        mapSprite    BALBAZAK
        battleSprite BALBAZAK, 0
        portrait     BALBAZAK
        
        ; MISHAELA
        enemyGold    1500
        enemyClass   MISHAELA
        level        30
        baseATK      42
        baseDEF      30
        baseAGI      35
        movement     6
        baseHP       65
        baseMP       100
        dc.b         $0
        mapSprite    MISHAELA
        battleSprite MISHAELA, 0
        portrait     MISHAELA
        
        ; CHAOS
        enemyGold    2000
        enemyClass   CHAOS
        level        40
        baseATK      50
        baseDEF      35
        baseAGI      32
        movement     6
        baseHP       65
        baseMP       0
        dc.b         $0
        mapSprite    CHAOS
        battleSprite CHAOS, 0
        portrait     CHAOS
        
        ; RAMLADU
        enemyGold    3000
        enemyClass   RAMLADU
        level        60
        baseATK      67
        baseDEF      40
        baseAGI      49
        movement     6
        baseHP       99
        baseMP       100
        dc.b         $0
        mapSprite    RAMLADU
        battleSprite RAMLADU, 0
        portrait     RAMLADU
        
        ; CAIN
        enemyGold    1200
        enemyClass   CAIN
        level        25
        baseATK      25
        baseDEF      30
        baseAGI      29
        movement     6
        baseHP       70
        baseMP       24
        dc.b         $0
        mapSprite    CAIN
        battleSprite CAIN, 0
        portrait     CAIN
        
        ; COLOSSUS
        enemyGold    2500
        enemyClass   COLOSSUS_1
        level        99
        baseATK      50
        baseDEF      40
        baseAGI      37
        movement     4
        baseHP       65
        baseMP       100
        dc.b         $0
        mapSprite    COLOSSUS
        battleSprite COLOSSUS, 0
        portrait     COLOSSUS
        
        ; DARK_DRAGON
        enemyGold    0
        enemyClass   DARK_DRAGON_1
        level        99
        baseATK      65
        baseDEF      40
        baseAGI      60
        movement     0
        baseHP       280
        baseMP       100
        dc.b         $0
        mapSprite    DARK_DRAGON
        battleSprite DARK_DRAGON, 0
        portrait     DARK_DRAGON
        
        ; COLOSSUS2
        enemyGold    0
        enemyClass   COLOSSUS_2
        level        99
        baseATK      50
        baseDEF      40
        baseAGI      37
        movement     4
        baseHP       65
        baseMP       100
        dc.b         $0
        mapSprite    COLOSSUS
        battleSprite COLOSSUS, 0
        portrait     COLOSSUS
        
        ; COLOSSUS3
        enemyGold    0
        enemyClass   COLOSSUS_3
        level        99
        baseATK      50
        baseDEF      40
        baseAGI      37
        movement     4
        baseHP       65
        baseMP       100
        dc.b         $0
        mapSprite    COLOSSUS
        battleSprite COLOSSUS, 0
        portrait     COLOSSUS
        
        ; DARK_MAGE3
        enemyGold    120
        enemyClass   DARK_MAGE_3
        level        8
        baseATK      6
        baseDEF      6
        baseAGI      9
        movement     5
        baseHP       13
        baseMP       26
        dc.b         $0
        mapSprite    DARK_MAGE
        battleSprite MAGE_ENEMY, 0
        portrait     NONE
        
        ; ZOMBIE2
        enemyGold    140
        enemyClass   ZOMBIE_2
        level        10
        baseATK      18
        baseDEF      13
        baseAGI      7
        movement     5
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    ZOMBIE
        battleSprite ZOMBIE, 0
        portrait     NONE
        
        ; SKELETON2
        enemyGold    160
        enemyClass   SKELETON_2
        level        12
        baseATK      13
        baseDEF      16
        baseAGI      7
        movement     6
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    SKELETON
        battleSprite SKELETON, 0
        portrait     NONE
        
        ; GHOUL
        enemyGold    200
        enemyClass   GHOUL
        level        15
        baseATK      23
        baseDEF      14
        baseAGI      9
        movement     6
        baseHP       25
        baseMP       0
        dc.b         $0
        mapSprite    GHOUL
        battleSprite ZOMBIE, 1
        portrait     NONE
        
        ; PEGASUS_KNIGHT2
        enemyGold    250
        enemyClass   PEGASUS_KNIGHT_2
        level        17
        baseATK      12
        baseDEF      11
        baseAGI      12
        movement     7
        baseHP       18
        baseMP       0
        dc.b         $0
        mapSprite    PEGASUS_KNIGHT
        battleSprite PEGASUS_KNIGHT, 0
        portrait     NONE
        
        ; DARK_MAGE4
        enemyGold    850
        enemyClass   DARK_MAGE_4
        level        21
        baseATK      7
        baseDEF      13
        baseAGI      26
        movement     5
        baseHP       22
        baseMP       32
        dc.b         $0
        mapSprite    MASTER_MAGE
        battleSprite MAGE_ENEMY, 1
        portrait     NONE
        
        ; DURAHAN3
        enemyGold    750
        enemyClass   DURAHAN_3
        level        20
        baseATK      19
        baseDEF      28
        baseAGI      13
        movement     5
        baseHP       22
        baseMP       0
        dc.b         $0
        mapSprite    DURAHAN
        battleSprite DULLAHAN, 0
        portrait     NONE
        
        ; MINOTAUR2
        enemyGold    1500
        enemyClass   MINOTAUR_2
        level        32
        baseATK      46
        baseDEF      30
        baseAGI      31
        movement     5
        baseHP       31
        baseMP       0
        dc.b         $0
        mapSprite    MINOTAUR
        battleSprite MINOTAUR, 0
        portrait     NONE
        
        ; CHIMAERA2
        enemyGold    2300
        enemyClass   CHIMAERA_2
        level        45
        baseATK      65
        baseDEF      30
        baseAGI      40
        movement     6
        baseHP       56
        baseMP       0
        dc.b         $0
        mapSprite    CHIMAERA
        battleSprite CHIMERA, 0
        portrait     NONE
        
        ; SKELETON3
        enemyGold    320
        enemyClass   SKELETON_3
        level        17
        baseATK      13
        baseDEF      16
        baseAGI      7
        movement     6
        baseHP       15
        baseMP       0
        dc.b         $0
        mapSprite    SKELETON
        battleSprite SKELETON, 0
        portrait     NONE
        
        ; DARK_DRAGON2
        enemyGold    0
        enemyClass   DARK_DRAGON_2
        level        99
        baseATK      67
        baseDEF      40
        baseAGI      52
        movement     0
        baseHP       240
        baseMP       100
        dc.b         $0
        mapSprite    DARK_DRAGON
        battleSprite DARK_DRAGON, 0
        portrait     DARK_DRAGON
        
        
