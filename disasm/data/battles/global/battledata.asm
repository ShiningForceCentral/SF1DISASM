
; ASM FILE data\stats\battles\global\battledata.asm :
; 0x1F806..0x1F914 : Position/enemy/ai data for battles

; Syntax allyPosition    x, y
;        enemyPosition   x, y, [SPAWN_]enum, # of spawns
;        enemyCombatant  [ENEMY_]enum, [ITEM_]enum, [ITEM_]enum, [SPELL_]enum
;        battleCommand   [REGION_]bitfield, [COMMAND_]enum, parameter 1, parameter 2

table_BattleData:

        ; Battle 0
        numberAllies  7
        allyPostion   8, 17
        allyPostion   9, 17
        allyPostion   7, 18
        allyPostion   8, 18
        allyPostion   9, 18
        allyPostion   7, 19
        allyPostion   8, 19
        
        ; Battle 0
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 0
        numberEnemies 8
        enemyPosition 8, 8, REGION_0, 1
        enemyPosition 9, 5, REGION_0, 1
        enemyPosition 6, 5, REGION_0, 1
        enemyPosition 3, 6, REGION_0, 1
        enemyPosition 12, 6, REGION_0, 1
        enemyPosition 9, 9, REGION_0, 1
        enemyPosition 7, 7, REGION_0, 1
        enemyPosition 11, 6, REGION_0, 1
        
        ; Battle 0 AI
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 8, 4
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 7, 5
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 8, 5
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 7, 6
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 8, 6
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 9, 10
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 8, 10
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 10, 9
        dc.b $FF
        
        
        ; Battle 1
        numberAllies  9
        allyPostion   26, 24
        allyPostion   25, 23
        allyPostion   26, 23
        allyPostion   25, 22
        allyPostion   26, 22
        allyPostion   25, 21
        allyPostion   26, 21
        allyPostion   25, 24
        allyPostion   25, 25
        
        ; Battle 2
        numberAllies  9
        allyPostion   9, 23
        allyPostion   11, 21
        allyPostion   11, 22
        allyPostion   11, 23
        allyPostion   10, 22
        allyPostion   10, 23
        allyPostion   9, 24
        allyPostion   8, 23
        allyPostion   8, 24
        
        
        dc.b $7, $15  ; allyPosition  7, 21
        dc.b $7, $14  ; allyPosition  7, 20
        dc.b $7, $16  ; allyPosition  7, 22
        dc.b $7, $17  ; allyPosition  7, 23
        dc.b $7, $14  ; allyPosition  7, 20
        dc.b $6, $14  ; allyPosition  6, 20
        dc.b $5, $14  ; allyPosition  5, 20
        dc.b $4, $1, $1E, $19  ; battleCommand REGION_2, CHARGE, 30, 25

        
        ; Battle 1
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOBLIN, SHORT_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 1
        numberEnemies 11
        enemyPosition 16, 17, REGION_0, 1
        enemyPosition 16, 16, REGION_0, 1
        enemyPosition 11, 22, REGION_0, 1
        enemyPosition 19, 17, REGION_0, 1
        enemyPosition 20, 17, REGION_0, 1
        enemyPosition 19, 16, REGION_0, 1
        enemyPosition 20, 16, REGION_0, 1
        enemyPosition 21, 16, REGION_0, 1
        enemyPosition 27, 17, REGION_0, 1
        enemyPosition 27, 18, REGION_0, 1
        enemyPosition 28, 18, REGION_0, 1
        
        ; Battle 1 AI
        dc.b $2
        battleCommand REGION_3|REGION_4, MOVE_TO, 12, 20
        battleCommand REGION_1|REGION_2, MOVE_TO, 16, 16
        dc.b $2
        battleCommand REGION_3|REGION_4, MOVE_TO, 12, 22
        battleCommand REGION_1|REGION_2, MOVE_TO, 16, 17
        dc.b $2
        battleCommand REGION_4, MOVE_TO, 12, 21
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 11, 21
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 25, 12
        battleCommand REGION_1, MOVE_TO, 21, 14
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 26, 12
        battleCommand REGION_1, MOVE_TO, 22, 14
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 25, 12
        battleCommand REGION_1, MOVE_TO, 21, 13
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 26, 12
        battleCommand REGION_1, MOVE_TO, 22, 13
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 25, 13
        battleCommand REGION_1, MOVE_TO, 23, 13
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 25, 12
        battleCommand REGION_1, MOVE_TO, 28, 14
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 25, 13
        battleCommand REGION_1, MOVE_TO, 27, 15
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 26, 12
        battleCommand REGION_1, MOVE_TO, 28, 15
        dc.b $FF
        
        
        ; Battle 2
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 2
        numberEnemies  15
        enemyPosition 21, 18, REGION_0, 1
        enemyPosition 20, 17, REGION_0, 1
        enemyPosition 8, 6, REGION_0, 1
        enemyPosition 9, 5, REGION_0, 1
        enemyPosition 10, 6, REGION_0, 1
        enemyPosition 20, 6, REGION_0, 1
        enemyPosition 20, 5, REGION_0, 1
        enemyPosition 18, 4, REGION_0, 1
        enemyPosition 17, 5, REGION_0, 1
        enemyPosition 17, 6, REGION_0, 1
        enemyPosition 11, 11, REGION_0, 1
        enemyPosition 10, 13, REGION_0, 1
        enemyPosition 9, 14, REGION_0, 1
        enemyPosition 13, 14, REGION_0, 1
        enemyPosition 16, 14, REGION_0, 1
        
        ; Battle 2 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 8, 6
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 9, 5
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 10, 6
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 20, 6
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 20, 5
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 18, 4
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 17, 5
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 17, 6
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        
        ; Battle 3
        numberAllies  10
        allyPostion   6, 28
        allyPostion   5, 28
        allyPostion   7, 28
        allyPostion   4, 29
        allyPostion   5, 29
        allyPostion   6, 29
        allyPostion   7, 29
        allyPostion   5, 30
        allyPostion   6, 30
        allyPostion   7, 30
        
        ; Battle 3
        enemyCombatant CAIN, SWORD_OF_DARKNESS|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RUNE_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SNIPER, WOODEN_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SNIPER, WOODEN_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, SHIELD_RING, BLAZE|LV_2
        dc.b $FF
        
        ; Battle 3
        numberEnemies  17
        enemyPosition 16, 2, REGION_15, 1
        enemyPosition 15, 255, REGION_15, 1
        enemyPosition 21, 15, REGION_0, 1
        enemyPosition 20, 12, REGION_0, 1
        enemyPosition 15, 13, REGION_0, 1
        enemyPosition 16, $10, REGION_0, 1
        enemyPosition 20, $12, REGION_0, 1
        enemyPosition 21, $12, REGION_0, 1
        enemyPosition 22, $12, REGION_0, 1
        enemyPosition 23, $12, REGION_0, 1
        enemyPosition 12, $4, REGION_0, 1
        enemyPosition 13, $4, REGION_0, 1
        enemyPosition 14, $4, REGION_0, 1
        enemyPosition 15, $4, REGION_0, 1
        enemyPosition 16, $4, REGION_0, 1
        enemyPosition 18, $4, REGION_0, 1
        enemyPosition 17, $4, REGION_0, 1
        
        ; Battle 3 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $C5, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $BE, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $B7, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $B0, $FF
        dc.b $4
        battleCommand REGION_4, MOVE_TO, 18, 14
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 20, 18
        battleCommand REGION_1, MOVE_TO, 19, 22
        dc.b $4
        battleCommand REGION_4, MOVE_TO, 19, 14
        battleCommand REGION_2, MOVE_TO, 21, 18
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 20, 22
        dc.b $4
        battleCommand REGION_4, MOVE_TO, 20, 14
        battleCommand REGION_2, MOVE_TO, 22, 18
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 21, 22
        dc.b $4
        battleCommand REGION_4, MOVE_TO, 21, 14
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 21, 17
        battleCommand REGION_1, MOVE_TO, 20, 21
        dc.b $3
        battleCommand REGION_2|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 18, 5
        battleCommand REGION_1, MOVE_TO, 14, 9
        dc.b $4
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 14, 9
        battleCommand REGION_3, MOVE_TO, 17, 5
        battleCommand REGION_1, MOVE_TO, 13, 9
        dc.b $4
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 15, 9
        battleCommand REGION_3, MOVE_TO, 20, 5
        battleCommand REGION_1, MOVE_TO, 16, 9
        dc.b $3
        battleCommand REGION_2|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 19, 5
        battleCommand REGION_1, MOVE_TO, 15, 9
        dc.b $3
        battleCommand REGION_3|REGION_4, MOVE_TO, 20, 15
        battleCommand REGION_2, MOVE_TO, 19, 11
        battleCommand REGION_1, MOVE_TO, 17, 5
        dc.b $3
        battleCommand REGION_3|REGION_4, MOVE_TO, 22, 15
        battleCommand REGION_2, MOVE_TO, 19, 13
        battleCommand REGION_1, MOVE_TO, 17, 7
        dc.b $3
        battleCommand REGION_3|REGION_4, MOVE_TO, 21, 15
        battleCommand REGION_2, MOVE_TO, 19, 12
        battleCommand REGION_1, MOVE_TO, 17, 6
        dc.b $FF
        
        aiPath &
            20, 12, &
            15, 13, &
            16, 16, &
            21, 15
        dc.b $F7
        dc.b $FF
        dc.b $FF
        dc.b $FF
        
        
        ; Battle 4
        numberAllies  11
        allyPostion   26, 28
        allyPostion   25, 28
        allyPostion   24, 26
        allyPostion   24, 27
        allyPostion   24, 28
        allyPostion   24, 29
        allyPostion   26, 26
        allyPostion   26, 27
        allyPostion   26, 29
        allyPostion   27, 29
        allyPostion   28, 29
        
        dc.b $1
        dc.b $4
        dc.b $4
        dc.b $1
        dc.b $1B
        dc.b $A
        
        ; Battle 4
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant SNIPER, WOODEN_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SNIPER, WOODEN_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DWARF, HAND_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 4
        numberEnemies  16
        enemyPosition 6, 4, REGION_0, 1
        enemyPosition 4, 5, REGION_0, 1
        enemyPosition 6, 5, REGION_0, 1
        enemyPosition 8, 5, REGION_0, 1
        enemyPosition 7, 7, REGION_0, 1
        enemyPosition 4, 7, REGION_0, 1
        enemyPosition 11, 10, REGION_0, 1
        enemyPosition 13, 11, REGION_0, 1
        enemyPosition 9, 12, REGION_0, 1
        enemyPosition 15, 8, REGION_0, 1
        enemyPosition 6, 11, REGION_0, 1
        enemyPosition 7, 18, REGION_0, 1
        enemyPosition 16, 9, REGION_0, 1
        enemyPosition 12, 22, REGION_0, 1
        enemyPosition 13, 23, REGION_0, 1
        enemyPosition 12, 24, REGION_0, 1
        
        ; Battle 4 AI
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 6, 4
        dc.b $3
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 5, 6
        battleCommand REGION_1|REGION_2, MOVE_TO, 4, 5
        dc.b $3
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 7, 4
        battleCommand REGION_1|REGION_2, MOVE_TO, 6, 5
        dc.b $3
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 6, 5
        battleCommand REGION_1|REGION_2, MOVE_TO, 8, 5
        dc.b $3
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 6, 6
        battleCommand REGION_1|REGION_2, MOVE_TO, 7, 7
        dc.b $3
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 5, 7
        battleCommand REGION_1|REGION_2, MOVE_TO, 4, 7
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 11, 10
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 11
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 9, 12
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $39, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $32, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $2B, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $24, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 22
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 23
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 24
        dc.b $FF
        
        aiPath &
            11, 13, &
            9, 14, &
            11, 17, &
            13, 14
        dc.b $F7
        dc.b $FF
        dc.b $FF
        
        
        ; Battle 5
        numberAllies  12
        allyPostion   6, 14
        allyPostion   7, 15
        allyPostion   7, 16
        allyPostion   5, 14
        allyPostion   6, 15
        allyPostion   6, 16
        allyPostion   4, 14
        allyPostion   5, 15
        allyPostion   5, 16
        allyPostion   4, 15
        allyPostion   4, 16
        allyPostion   3, 15
        
        ; Battle 5
        enemyCombatant SKELETON_3, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_MAGE_2, WOODEN_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, BLAZE|LV_2
        enemyCombatant SNIPER, WOODEN_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SNIPER, WOODEN_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 5
        numberEnemies  15
        enemyPosition 24, 6, REGION_0, 1
        enemyPosition 23, 5, REGION_0, 1
        enemyPosition 24, 5, REGION_0, 1
        enemyPosition 25, 5, REGION_0, 1
        enemyPosition 21, 16, REGION_0, 1
        enemyPosition 20, 17, REGION_0, 1
        enemyPosition 22, 17, REGION_0, 1
        enemyPosition 19, 18, REGION_0, 1
        enemyPosition 21, 18, REGION_0, 1
        enemyPosition 14, 11, REGION_0, 1
        enemyPosition 14, 12, REGION_0, 1
        enemyPosition 14, 13, REGION_0, 1
        enemyPosition 13, 14, REGION_0, 1
        enemyPosition 7, 12, REGION_0, 1
        enemyPosition 8, 13, REGION_0, 1
        
        ; Battle 5 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 24, 4
        dc.b $2
        battleCommand REGION_4, MOVE_TO, 23, 7
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 23, 5
        dc.b $2
        battleCommand REGION_4, MOVE_TO, 24, 7
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 24, 5
        dc.b $2
        battleCommand REGION_4, MOVE_TO, 23, 6
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 25, 5
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 17, 11
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 16, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 17, 13
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 19, 12
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4, MOVE_TO, 12, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 13
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4, MOVE_TO, 11, 12
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, MOVE_TO, 12, 12
        battleCommand REGION_1, MOVE_TO, 7, 12
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, MOVE_TO, 12, 12
        battleCommand REGION_1, MOVE_TO, 8, 13
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 6
        numberAllies  12
        allyPostion   15, 23
        allyPostion   14, 21
        allyPostion   15, 21
        allyPostion   16, 21
        allyPostion   17, 21
        allyPostion   14, 22
        allyPostion   15, 22
        allyPostion   16, 22
        allyPostion   17, 22
        allyPostion   16, 23
        allyPostion   15, 24
        allyPostion   16, 24
        
        ; Battle 6
        enemyCombatant MISHAELA, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MARIONETTE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, FREEZE|LV_3
        enemyCombatant DIRE_CLOWN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DIRE_CLOWN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant EVIL_PUPPET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, FREEZE|LV_1
        enemyCombatant MANNEQUIN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant EVIL_PUPPET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, FREEZE|LV_1
        enemyCombatant EVIL_PUPPET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, FREEZE|LV_1
        enemyCombatant MANNEQUIN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MANNEQUIN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GIANT_BAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 6
        numberEnemies  13
        enemyPosition 16, 8, REGION_15, 1
        enemyPosition 15, 8, REGION_0, 1
        enemyPosition 13, 9, REGION_0, 1
        enemyPosition 17, 9, REGION_0, 1
        enemyPosition 12, 12, REGION_0, 1
        enemyPosition 16, 12, REGION_0, 1
        enemyPosition 19, 12, REGION_0, 1
        enemyPosition 10, 20, REGION_0, 1
        enemyPosition 10, 21, REGION_0, 1
        enemyPosition 11, 20, REGION_0, 1
        enemyPosition 25, 14, REGION_0, 1
        enemyPosition 26, 15, REGION_0, 1
        enemyPosition 25, 16, REGION_0, 1
        
        ; Battle 6 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 15, 8
        dc.b $2
        battleCommand REGION_2, MOVE_TO, 14, 9
        battleCommand REGION_1, MOVE_TO, 13, 9
        dc.b $2
        battleCommand REGION_2, MOVE_TO, 16, 9
        battleCommand REGION_1, MOVE_TO, 17, 9
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 12
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 12
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 19, 12
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 7
        numberAllies  12
        allyPostion   7, 6
        allyPostion   7, 11
        allyPostion   6, 11
        allyPostion   6, 12
        allyPostion   8, 12
        allyPostion   7, 12
        allyPostion   6, 13
        allyPostion   8, 13
        allyPostion   7, 13
        allyPostion   6, 14
        allyPostion   8, 14
        allyPostion   7, 14
        
        ; Battle 7
        enemyCombatant DARKSOL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GHOUL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ZOMBIE_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 7
        numberEnemies  11
        enemyPosition 8, 11, REGION_14, 1
        enemyPosition 3, 7, REGION_0, 1
        enemyPosition 6, 7, REGION_0, 1
        enemyPosition 2, 8, REGION_0, 1
        enemyPosition 4, 7, REGION_0, 1
        enemyPosition 10, 7, REGION_0, 1
        enemyPosition 11, 7, REGION_0, 1
        enemyPosition 9, 8, REGION_0, 1
        enemyPosition 11, 8, REGION_0, 1
        enemyPosition 3, 10, REGION_0, 1
        enemyPosition 11, 10, REGION_0, 1
        
        ; Battle 7 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, $3, $7
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 8
        numberAllies  12
        allyPostion   6, 3
        allyPostion   5, 5
        allyPostion   6, 5
        allyPostion   4, 4
        allyPostion   5, 4
        allyPostion   6, 4
        allyPostion   7, 4
        allyPostion   8, 4
        allyPostion   4, 3
        allyPostion   5, 3
        allyPostion   7, 3
        allyPostion   8, 3
        
        ; Battle 8
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_1
        enemyCombatant DARK_MAGE_1, POWER_STAFF|EQUIPPED, SHIELD_RING, BLAZE|LV_2
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_1
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_1
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_MAGE_1, POWER_STAFF|EQUIPPED, SHIELD_RING, BLAZE|LV_2
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_1
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 8
        numberEnemies  16
        enemyPosition 10, 23, REGION_0, 1
        enemyPosition $8, 10, REGION_0, 1
        enemyPosition $8, 16, REGION_0, 1
        enemyPosition $7, 16, REGION_0, 1
        enemyPosition 14, 16, REGION_0, 1
        enemyPosition 16, 20, REGION_0, 1
        enemyPosition 17, 19, REGION_0, 1
        enemyPosition 18, 20, REGION_0, 1
        enemyPosition 15, 16, REGION_0, 1
        enemyPosition 18, 17, REGION_0, 1
        enemyPosition 14, 6, REGION_0, 1
        enemyPosition 15, 6, REGION_0, 1
        enemyPosition 17, 11, REGION_0, 1
        enemyPosition 17, 12, REGION_0, 1
        enemyPosition 10, 11, REGION_0, 1
        enemyPosition 10, 25, REGION_0, 1
        
        ; Battle 8 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 11, 23
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $3
        battleCommand REGION_4|REGION_5, MOVE_TO, 10, 23
        battleCommand REGION_3, MOVE_TO, 8, 21
        battleCommand REGION_1|REGION_2, MOVE_TO, 8, 16
        dc.b $3
        battleCommand REGION_4|REGION_5, MOVE_TO, 10, 24
        battleCommand REGION_3, MOVE_TO, 8, 21
        battleCommand REGION_1|REGION_2, MOVE_TO, 7, 16
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, MOVE_TO, 14, 21
        battleCommand REGION_1|REGION_2, MOVE_TO, 14, 19
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, MOVE_TO, 14, 20
        battleCommand REGION_1|REGION_2, MOVE_TO, 16, 20
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 17, 16
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 16
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2|REGION_3, MOVE_TO, 17, 15
        battleCommand REGION_1, MOVE_TO, 15, 16
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2|REGION_3, MOVE_TO, 18, 15
        battleCommand REGION_1, MOVE_TO, 18, 17
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 17, 8
        battleCommand REGION_1|REGION_2, MOVE_TO, 14, 6
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 18, 9
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 6
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 17, 9
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 17, 10
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 10, 25
        dc.b $FF
        
        
        ; Battle 9
        numberAllies  12
        allyPostion   17, 26
        allyPostion   17, 27
        allyPostion   18, 26
        allyPostion   18, 27
        allyPostion   17, 28
        allyPostion   18, 28
        allyPostion   19, 26
        allyPostion   19, 27
        allyPostion   17, 29
        allyPostion   18, 29
        allyPostion   20, 28
        allyPostion   20, 27
        
        dc.b $1
        dc.b $17
        dc.b $2
        
        ; Battle 9
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, MEDICAL_HERB, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, MEDICAL_HERB, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, MEDICAL_HERB, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL_LV_1
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, MEDICAL_HERB, NOTHING|LV_4
        enemyCombatant SKELETON_1, MIDDLE_SWORD|EQUIPPED, MEDICAL_HERB, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL_LV_1
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 9
        numberEnemies  15
        enemyPosition 13, 22, REGION_0, 1
        enemyPosition 12, 23, REGION_0, 1
        enemyPosition 15, 23, REGION_0, 1
        enemyPosition 15, 19, REGION_0, 1
        enemyPosition 17, 19, REGION_0, 1
        enemyPosition 16, 17, REGION_0, 1
        enemyPosition 16, 18, REGION_0, 1
        enemyPosition 15, 17, REGION_0, 1
        enemyPosition 17, 17, REGION_0, 1
        enemyPosition 23, 9, REGION_0, 1
        enemyPosition 24, 10, REGION_0, 1
        enemyPosition 27, 20, REGION_0, 1
        enemyPosition 26, 21, REGION_0, 1
        enemyPosition 23, 3, REGION_0, 1
        enemyPosition 22, 3, REGION_0, 1
        
        ; Battle 9 AI
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 22
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 23
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 15, 23
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 10, 21
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 18, 22
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 17
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 18
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 18
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 17, 19
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 17, 11
        battleCommand REGION_1, MOVE_TO, 23, 9
        dc.b $3
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 18, 12
        battleCommand REGION_1, MOVE_TO, 24, 10
        dc.b $4
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 9, 7
        battleCommand REGION_2, MOVE_TO, 12, 11
        battleCommand REGION_1, MOVE_TO, 18, 16
        dc.b $4
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 8, 8
        battleCommand REGION_2, MOVE_TO, 11, 12
        battleCommand REGION_1, MOVE_TO, 17, 17
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 23, 3
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 22, 3
        dc.b $FF
        
        
        ; Battle 10: Laser Eye
        numberAllies  12
        allyPostion   2, 18
        allyPostion   5, 15
        allyPostion   4, 15
        allyPostion   3, 16
        allyPostion   4, 16
        allyPostion   5, 16
        allyPostion   5, 17
        allyPostion   4, 17
        allyPostion   3, 17
        allyPostion   2, 17
        allyPostion   4, 18
        allyPostion   3, 18
        
        ; Battle 10: Laser Eye
        enemyCombatant GOBLIN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LASER_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_1
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV1
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_ELF, STEEL_ARROW|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 10: Laser Eye
        numberEnemies  17
        enemyPosition 36, 16, REGION_15, 1
        enemyPosition 32, 6, REGION_0, 1
        enemyPosition 37, 16, REGION_0, 1
        enemyPosition 35, 8, REGION_0, 1
        enemyPosition 34, 8, REGION_0, 1
        enemyPosition 32, 8, REGION_0, 1
        enemyPosition 22, 6, REGION_0, 1
        enemyPosition 22, 7, REGION_0, 1
        enemyPosition 16, 4, REGION_0, 1
        enemyPosition 17, 2, REGION_0, 1
        enemyPosition 20, 3, REGION_0, 1
        enemyPosition 16, 6, REGION_0, 1
        enemyPosition 20, 7, REGION_0, 1
        enemyPosition 18, 10, REGION_0, 1
        enemyPosition 19, 10, REGION_0, 1
        enemyPosition 21, 10, REGION_0, 1
        enemyPosition 9, 6, REGION_0, 1
        
        ; Battle 10 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 32, 6
        dc.b $2
        battleCommand REGION_4|REGION_5, MOVE_TO, 36, 15
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 35, 10
        dc.b $2
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 35, 8
        dc.b $2
        battleCommand REGION_4|REGION_5, MOVE_TO, 36, 16
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 34, 8
        dc.b $3
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 29, 7
        battleCommand REGION_1, MOVE_TO, 32, 8
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 22, 6
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 22, 7
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 16, 6
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 6
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 27, 10
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 10
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 28, 11
        battleCommand REGION_1|REGION_2, MOVE_TO, 19, 10
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 30, 11
        battleCommand REGION_1|REGION_2, MOVE_TO, 21, 10
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 11: Elliott
        numberAllies  12
        allyPostion   6, 6
        allyPostion   6, 5
        allyPostion   6, 4
        allyPostion   6, 3
        allyPostion   6, 2
        allyPostion   5, 6
        allyPostion   5, 5
        allyPostion   5, 4
        allyPostion   5, 3
        allyPostion   5, 2
        allyPostion   4, 5
        allyPostion   4, 4
        
        dc.b $1
        dc.b $2D
        dc.b $4
        dc.b $1
        dc.b $2A
        dc.b $A
        
        ; Battle 11: Elliott
        enemyCombatant ELLIOTT, LONG_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ATILLERY_3, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, HEAT_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LIZARDMAN, MIDDLE_AXE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 11: Elliott
        numberEnemies  18
        enemyPosition 41, 9, REGION_0, 1
        enemyPosition 40, 10, REGION_0, 1
        enemyPosition 40, 8, REGION_0, 1
        enemyPosition 39, 7, REGION_0, 1
        enemyPosition 39, 8, REGION_0, 1
        enemyPosition 39, 10, REGION_0, 1
        enemyPosition 39, 11, REGION_0, 1
        enemyPosition 38, 7, REGION_0, 1
        enemyPosition 38, 9, REGION_0, 1
        enemyPosition 38, 11, REGION_0, 1
        enemyPosition 34, 8, REGION_0, 1
        enemyPosition 34, 10, REGION_0, 1
        enemyPosition 36, 9, REGION_0, 1
        enemyPosition 34, 7, REGION_0, 1
        enemyPosition 35, 8, REGION_0, 1
        enemyPosition 35, 9, REGION_0, 1
        enemyPosition 35, 10, REGION_0, 1
        enemyPosition 34, 11, REGION_0, 1
        
        ; Battle 11 AI
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 41, 9
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 40, 10
        dc.b $3
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_3, MOVE_TO, 41, 10
        battleCommand REGION_1|REGION_2, MOVE_TO, 40, 8
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 39, 7
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 39, 8
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 39, 10
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 39, 11
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 28, 7
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 26, 8
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 28, 9
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, MOVE_TO, $0, $7
        battleCommand REGION_1, MOVE_TO, 30, 7
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, MOVE_TO, $0, $9
        battleCommand REGION_1, MOVE_TO, 30, 9
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 25, 7
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 27, 6
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 27, 7
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 27, 8
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 28, 9
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 28, 10
        dc.b $FF
        
        
        ; Battle 12
        numberAllies  12
        allyPostion   7, 36
        allyPostion   6, 36
        allyPostion   5, 36
        allyPostion   4, 36
        allyPostion   5, 37
        allyPostion   6, 37
        allyPostion   7, 37
        allyPostion   8, 35
        allyPostion   9, 35
        allyPostion   5, 38
        allyPostion   6, 38
        allyPostion   7, 38
        
        dc.b $1
        dc.b $9
        dc.b $7
        dc.b $1
        dc.b $10
        dc.b $C
        
        ; Battle 12
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant ATILLERY_3, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 12
        numberEnemies  15
        enemyPosition 9, 8, REGION_0, 1
        enemyPosition 8, 9, REGION_0, 1
        enemyPosition 10, 9, REGION_0, 1
        enemyPosition 3, 9, REGION_0, 1
        enemyPosition 5, 9, REGION_0, 1
        enemyPosition 16, 12, REGION_0, 1
        enemyPosition 12, 15, REGION_0, 1
        enemyPosition 12, 14, REGION_0, 1
        enemyPosition 14, 17, REGION_0, 1
        enemyPosition 16, 18, REGION_0, 1
        enemyPosition 7, 19, REGION_0, 1
        enemyPosition 11, 26, REGION_0, 1
        enemyPosition 9, 22, REGION_0, 1
        enemyPosition 7, 31, REGION_0, 1
        enemyPosition 6, 33, REGION_0, 1
        
        ; Battle 12 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 9, 8
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 8, 8
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 8, 9
        dc.b $3
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 5, 13
        battleCommand REGION_1, MOVE_TO, 3, 9
        dc.b $3
        battleCommand REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 5, 12
        battleCommand REGION_1, MOVE_TO, 4, 9
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 16, 12
        dc.b $2
        battleCommand REGION_3|REGION_4|REGION_5, MOVE_TO, 12, 15
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 15
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 12, 16
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 14, 17
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 18
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 7, 19
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 11, 26
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 9, 22
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 6, 32
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 13: Balbazak
        numberAllies  12
        allyPostion   5, 14
        allyPostion   6, 14
        allyPostion   4, 15
        allyPostion   5, 15
        allyPostion   6, 15
        allyPostion   7, 15
        allyPostion   3, 16
        allyPostion   4, 16
        allyPostion   5, 16
        allyPostion   6, 16
        allyPostion   7, 16
        allyPostion   8, 16
        
        ; Battle 13: Balbazak
        enemyCombatant BALBAZAK, STEEL_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant EVIL_PUPPET, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ATILLERY_3, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ATILLERY_3, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ATILLERY_3, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_PRIEST_1, POWER_STAFF|EQUIPPED, SHIELD_RING|EQUIPPED, HEAL|LV_1
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SILVER_KNIGHT, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 13: Balbazak
        numberEnemies 15
        enemyPosition 11, 5, REGION_0, 1
        enemyPosition 7, 5, REGION_0, 1
        enemyPosition 8, 6, REGION_0, 1
        enemyPosition 5, 7, REGION_0, 1
        enemyPosition 6, 7, REGION_0, 1
        enemyPosition 7, 7, REGION_0, 1
        enemyPosition 4, 8, REGION_0, 1
        enemyPosition 6, 8, REGION_0, 1
        enemyPosition 5, 10, REGION_0, 1
        enemyPosition 6, 10, REGION_0, 1
        enemyPosition 10, 9, REGION_0, 1
        enemyPosition 14, 8, REGION_0, 1
        enemyPosition 12, 11, REGION_0, 1
        enemyPosition 11, 13, REGION_0, 1
        enemyPosition 15, 12, REGION_0, 1
        
        ; Battle 13 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 11, 5
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 11, 6
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 10, 5
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 14
        numberAllies  12
        allyPostion   15, 9
        allyPostion   11, 10
        allyPostion   11, 9
        allyPostion   17, 10
        allyPostion   12, 9
        allyPostion   13, 9
        allyPostion   16, 9
        allyPostion   12, 10
        allyPostion   13, 10
        allyPostion   14, 9
        allyPostion   15, 10
        allyPostion   16, 10
        
        ; Battle 14
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SHELLFISH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SHELLFISH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 14
        numberEnemies  12
        enemyPosition 6, 2, REGION_0, 1
        enemyPosition 8, 3, REGION_0, 1
        enemyPosition 3, 6, REGION_0, 1
        enemyPosition 23, 2, REGION_0, 1
        enemyPosition 24, 4, REGION_0, 1
        enemyPosition 5, 14, REGION_0, 1
        enemyPosition 7, 23, REGION_0, 1
        enemyPosition 7, 24, REGION_0, 1
        enemyPosition 21, 29, REGION_0, 1
        enemyPosition 22, 27, REGION_0, 1
        enemyPosition 23, 15, REGION_0, 1
        enemyPosition 25, 14, REGION_0, 1
        
        ; Battle 14 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 10, 14
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 20
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 20
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 18, 14
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 23, 15
        dc.b $FF
        
        
        ; Battle 15
        numberAllies  12
        allyPostion   15, 28
        allyPostion   15, 24
        allyPostion   13, 25
        allyPostion   14, 25
        allyPostion   15, 25
        allyPostion   16, 25
        allyPostion   17, 25
        allyPostion   15, 26
        allyPostion   15, 27
        allyPostion   14, 28
        allyPostion   16, 28
        allyPostion   15, 29
        
        ; Battle 15
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, $4A
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_3, SHIELD_RING|EQUIPPED, LONG_SWORD|EQUIPPED, NOTHING|LV_4
        enemyCombatant WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_3, SHIELD_RING|EQUIPPED, LONG_SWORD|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_3, SHIELD_RING|EQUIPPED, LONG_SWORD|EQUIPPED, NOTHING|LV_4
        enemyCombatant WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_3, SHIELD_RING|EQUIPPED, LONG_SWORD|EQUIPPED, NOTHING|LV_4
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SKELETON_3, SHIELD_RING|EQUIPPED, LONG_SWORD|EQUIPPED, NOTHING|LV_4
        enemyCombatant HELLHOUND, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 15
        numberEnemies  18
        enemyPosition 15, 3, REGION_0, 1
        enemyPosition 14, 4, REGION_0, 1
        enemyPosition 16, 4, REGION_0, 1
        enemyPosition 14, 9, REGION_0, 1
        enemyPosition 15, 10, REGION_0, 1
        enemyPosition 17, 10, REGION_0, 1
        enemyPosition 6, 16, REGION_0, 1
        enemyPosition 8, 16, REGION_0, 1
        enemyPosition 14, 17, REGION_0, 1
        enemyPosition 15, 16, REGION_0, 1
        enemyPosition 16, 15, REGION_0, 1
        enemyPosition 15, 14, REGION_0, 1
        enemyPosition 25, 16, REGION_0, 1
        enemyPosition 22, 16, REGION_0, 1
        enemyPosition 29, 17, REGION_0, 1
        enemyPosition 29, 23, REGION_0, 1
        enemyPosition 2, 20, REGION_0, 1
        enemyPosition 3, 26, REGION_0, 1
        
        ; Battle 15 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 15, 3
        dc.b $2
        battleCommand REGION_10, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4, MOVE_TO, 14, 4
        dc.b $2
        battleCommand REGION_10, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4, MOVE_TO, 16, 4
        dc.b $3
        battleCommand REGION_10, MOVE_TO, 14, 3
        battleCommand REGION_4, MOVE_TO, 14, 7
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 14, 9
        dc.b $3
        battleCommand REGION_10, MOVE_TO, 15, 4
        battleCommand REGION_4, MOVE_TO, 15, 7
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 15, 10
        dc.b $3
        battleCommand REGION_10, MOVE_TO, 16, 3
        battleCommand REGION_4, MOVE_TO, 16, 7
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 16, 9
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2|REGION_3, MOVE_TO, 11, 16
        battleCommand REGION_1, MOVE_TO, 7, 20
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2|REGION_3, MOVE_TO, 11, 14
        battleCommand REGION_1, MOVE_TO, 7, 19
        dc.b $2
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 14, 17
        dc.b $2
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 15, 17
        dc.b $2
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 16, 17
        dc.b $2
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 15, 18
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2|REGION_3, MOVE_TO, 20, 15
        battleCommand REGION_1, MOVE_TO, 24, 20
        dc.b $3
        battleCommand REGION_4|REGION_5, CHARGE, $FF, $FF
        battleCommand REGION_2|REGION_3, MOVE_TO, 20, 16
        battleCommand REGION_1, MOVE_TO, 23, 20
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        
        ; Battle 16
        numberAllies  12
        allyPostion   15, 9
        allyPostion   11, 10
        allyPostion   11, 9
        allyPostion   17, 10
        allyPostion   12, 9
        allyPostion   13, 9
        allyPostion   16, 9
        allyPostion   12, 10
        allyPostion   13, 10
        allyPostion   14, 9
        allyPostion   15, 10
        allyPostion   16, 10
        
        ; Battle 16
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant PEGASUS_KNIGHT_1, BRONZE_LANCE|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SEABAT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CONCH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SHELLFISH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SHELLFISH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SHELLFISH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant SHELLFISH, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 16
        numberEnemies  18
        enemyPosition 14, 21, REGION_0, 1
        enemyPosition 4, 20, REGION_0, 1
        enemyPosition 24, 20, REGION_0, 1
        enemyPosition 13, 21, REGION_0, 1
        enemyPosition 15, 21, REGION_0, 1
        enemyPosition 14, 22, REGION_0, 1
        enemyPosition 13, 21, REGION_0, 1
        enemyPosition 15, 21, REGION_0, 1
        enemyPosition 14, 26, REGION_0, 1
        enemyPosition 13, 27, REGION_0, 1
        enemyPosition 15, 27, REGION_0, 1
        enemyPosition 14, 27, REGION_0, 1
        enemyPosition 12, 22, REGION_0, 1
        enemyPosition 19, 22, REGION_0, 1
        enemyPosition 14, 26, REGION_0, 1
        enemyPosition 13, 27, REGION_0, 1
        enemyPosition 15, 27, REGION_0, 1
        enemyPosition 14, 27, REGION_0, 1
        
        ; Battle 16 AI
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 14, 23
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 22
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 22
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $54, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $51, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $4E, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $4B, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 17
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 19, 17
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $1E, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $1B, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $18, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $15, $FF
        dc.b $FF
        
        aiPath &
            17, 24, &
            17, 19
        dc.b $FF
            
        aiPath &
            12, 23, &
            13, 19
        dc.b $FF
            
        aiPath &
            18, 25, &
            18, 20

        aiPath &
            13, 23, &
            13, 18
        dc.b $FF
        dc.b $FF
        dc.b $FF
        
        
        ; Battle 17 & 19
        numberAllies  12
        allyPostion   2, 13
        allyPostion   5, 11
        allyPostion   5, 12
        allyPostion   5, 13
        allyPostion   4, 11
        allyPostion   4, 12
        allyPostion   4, 13
        allyPostion   3, 11
        allyPostion   3, 12
        allyPostion   3, 13
        allyPostion   2, 11
        allyPostion   2, 12
        
        dc.b $C
        dc.b $1C
        dc.b $3
        dc.b $19
        dc.b $2
        dc.b $19
        dc.b $3
        dc.b $19
        dc.b $4
        dc.b $1A
        dc.b $2
        dc.b $1A
        dc.b $3
        dc.b $1A
        dc.b $4
        dc.b $1B
        dc.b $2
        dc.b $1B
        dc.b $3
        dc.b $1B
        dc.b $4
        dc.b $1C
        dc.b $2
        dc.b $1C
        dc.b $4
        dc.b $C
        dc.b $F
        dc.b $1E
        dc.b $F
        dc.b $1C
        dc.b $10
        dc.b $1C
        dc.b $11
        dc.b $1C
        dc.b $12
        dc.b $1C
        dc.b $F
        dc.b $1D
        dc.b $10
        dc.b $1D
        dc.b $11
        dc.b $1D
        dc.b $12
        dc.b $1D
        dc.b $10
        dc.b $1E
        dc.b $11
        dc.b $1E
        dc.b $12
        dc.b $1E
        
        ; Battle 17
        enemyCombatant DURAHAN_1, BROAD_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant ARTILLERY_2, SHIELD_RING, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARTILLERY_2, SHIELD_RING, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant MASTER_MAGE, HOLY_STAFF, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant MASTER_MAGE, HOLY_STAFF, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARTILLERY_2, SHIELD_RING, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARTILLERY_2, SHIELD_RING, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARTILLERY_2, SHIELD_RING, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 17
        numberEnemies 19
        enemyPosition 27, 2, REGION_0, 1
        enemyPosition 28, 2, REGION_0, 1
        enemyPosition 28, 3, REGION_0, 1
        enemyPosition 27, 3, REGION_0, 1
        enemyPosition 28, 4, REGION_0, 1
        enemyPosition 22, 3, REGION_3, 1
        enemyPosition 23, 3, REGION_3, 1
        enemyPosition 24, 4, REGION_3, 1
        enemyPosition 25, 5, REGION_3, 1
        enemyPosition 25, 6, REGION_3, 1
        enemyPosition 17, 5, REGION_2, 1
        enemyPosition 19, 6, REGION_2, 1
        enemyPosition 20, 7, REGION_2, 1
        enemyPosition 18, 5, REGION_2, 1
        enemyPosition 20, 6, REGION_2, 1
        enemyPosition 20, $8, REGION_2, 1
        enemyPosition 15, 7, REGION_0, 1
        enemyPosition 16, 8, REGION_0, 1
        enemyPosition 17, 9, REGION_0, 1
        
        ; Battle 17 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 27, 2
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 28, 2
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 28, 3
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 27, 3
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3, MOVE_TO, 28, 4
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 18
        numberAllies  12
        allyPostion   2, 16
        allyPostion   4, 15
        allyPostion   4, 16
        allyPostion   4, 17
        allyPostion   4, 18
        allyPostion   3, 16
        allyPostion   3, 17
        allyPostion   3, 18
        allyPostion   2, 17
        allyPostion   2, 18
        allyPostion   1, 16
        allyPostion   1, 17
        
        ; Battle 18
        enemyCombatant CAIN, SWORD_OF_DARKNESS|EQUIPPED, BROAD_SWORD, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant DURAHAN_1, BROAD_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DURAHAN_1, BROAD_SWORD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_2
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        dc.b $FF
        
        dc.b $F
        
        ; Battle 18
        numberEnemies 15
        enemyPosition 24, 9, REGION_0, 1
        enemyPosition 25, 9, REGION_0, 1
        enemyPosition 23, 10, REGION_0, 1
        enemyPosition 26, 10, REGION_0, 1
        enemyPosition 25, 10, REGION_0, 1
        enemyPosition 15, 16, REGION_0, 1
        enemyPosition 15, 15, REGION_0, 1
        enemyPosition 16, 16, REGION_0, 1
        enemyPosition 13, 15, REGION_0, 1
        enemyPosition 13, 16, REGION_0, 1
        enemyPosition 13, 17, REGION_0, 1
        enemyPosition 13, 18, REGION_0, 1
        enemyPosition 4, 6, REGION_0, 1
        enemyPosition 5, 7, REGION_0, 1
        enemyPosition 6, 6, REGION_0, 1
        
        ; Battle 18 AI
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 24, 15
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 24, 14
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 23, 14
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 23, 16
        battleCommand REGION_1, MOVE_TO, 25, 14
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 24, 16
        battleCommand REGION_1, MOVE_TO, 24, 13
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 14, 16
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 14, 15
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 14, 17
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 15
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 15
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 15
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 15
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 5, 12
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 6, 11
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 7, 10
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 19
        enemyCombatant BOWRIDER, ASSAULT_SHELL|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BOWRIDER, ASSAULT_SHELL|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        dc.b $FF
        
        ; Battle 19
        numberEnemies  18
        enemyPosition 15, 29, REGION_0, 1
        enemyPosition 15, 30, REGION_0, 1
        enemyPosition 17, 30, REGION_0, 1
        enemyPosition 26, 29, REGION_0, 1
        enemyPosition 28, 30, REGION_0, 1
        enemyPosition 30, 25, REGION_0, 1
        enemyPosition 18, 19, REGION_0, 1
        enemyPosition 24, 19, REGION_0, 1
        enemyPosition 25, 17, REGION_0, 1
        enemyPosition 21, 15, REGION_0, 1
        enemyPosition 19, 14, REGION_0, 1
        enemyPosition 18, 12, REGION_0, 1
        enemyPosition 12, 12, REGION_0, 1
        enemyPosition 23, 10, REGION_0, 1
        enemyPosition 25, 9, REGION_0, 1
        enemyPosition 12, 22, REGION_0, 1
        enemyPosition 15, 23, REGION_0, 1
        enemyPosition 19, 22, REGION_0, 1
        
        ; Battle 19 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        dc.b $FF
        
        
        ; Battle 20: Mishaela
        numberAllies  12
        allyPostion   14, 26
        allyPostion   13, 26
        allyPostion   12, 26
        allyPostion   15, 26
        allyPostion   11, 26
        allyPostion   16, 26
        allyPostion   13, 27
        allyPostion   14, 27
        allyPostion   12, 27
        allyPostion   15, 27
        allyPostion   11, 27
        allyPostion   16, 27
        
        ; Battle 20: Mishaela
        enemyCombatant MISHAELA, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, BOLT|LV_2
        enemyCombatant DURAHAN_2, BROAD_SWORD|EQUIPPED, SHIELD_RING|EQUIPPED, NOTHING|LV_4
        enemyCombatant DURAHAN_2, BROAD_SWORD|EQUIPPED, SHIELD_RING|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant MASTER_MAGE, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_4
        enemyCombatant BOWRIDER, ASSAULT_SHELL|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BOWRIDER, ASSAULT_SHELL|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BOWRIDER, ASSAULT_SHELL|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, BOLT|LV_1
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, BOLT|LV_1
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, BOLT|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        enemyCombatant GARGOYLE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, MUDDLE|LV_1
        dc.b $FF
        
        ; Battle 20: Mishaela
        numberEnemies 17
        enemyPosition 14, 15, REGION_0, 1
        enemyPosition 13, 15, REGION_0, 1
        enemyPosition 15, 15, REGION_0, 1
        enemyPosition 21, 10, REGION_0, 1
        enemyPosition 22, 10, REGION_0, 1
        enemyPosition 23, 10, REGION_0, 1
        enemyPosition 22, 11, REGION_0, 1
        enemyPosition 23, 11, REGION_0, 1
        enemyPosition 17, 20, REGION_0, 1
        enemyPosition 18, 20, REGION_0, 1
        enemyPosition 19, 20, REGION_0, 1
        enemyPosition 10, 4, REGION_0, 1
        enemyPosition 14, 7, REGION_0, 1
        enemyPosition 18, 4, REGION_0, 1
        enemyPosition 8, 20, REGION_0, 1
        enemyPosition 9, 20, REGION_0, 1
        enemyPosition 10, 20, REGION_0, 1
        
        ; Battle 20 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, FOLLOW_PATH, $87, $FF
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, FOLLOW_PATH, $88, $FF
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, FOLLOW_PATH, $89, $FF
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 22, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 23, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 23, 13
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 21, 13
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 22, 13
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 17, 20
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 18, 20
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 19, 20
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, FOLLOW_PATH, $42, $FF
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, FOLLOW_PATH, $3D, $FF
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, FOLLOW_PATH, $38, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        aiPath &
            20, 15, &
            20, 11, &
            14, 11, &
            14, 4
        dc.b $FF

        aiPath &
            19, 15, &
            21, 11, &
            15, 11, &
            13, 5
        dc.b $FF
            
        aiPath &
            21, 15, &
            19, 11, &
            14, 10, &
            16, 4
        dc.b $FF
            
        aiPath &
            14, 3, &
            10, 4, &
            10, 6, &
            14, 7, &
            18, 6, &
            18, 4
        dc.b $F3
        dc.b $FF
        dc.b $FF
        dc.b $FF
        
        
        ; Battle 21
        numberAllies  12
        allyPostion   4, 4
        allyPostion   9, 4
        allyPostion   9, 5
        allyPostion   8, 3
        allyPostion   8, 4
        allyPostion   7, 3
        allyPostion   7, 4
        allyPostion   6, 3
        allyPostion   6, 4
        allyPostion   5, 3
        allyPostion   5, 4
        allyPostion   4, 3
        
        numberAllies  12
        allyPostion   24, 14
        allyPostion   24, 13
        allyPostion   23, 13
        allyPostion   22, 13
        allyPostion   25, 13
        allyPostion   26, 13
        allyPostion   27, 13
        allyPostion   23, 14
        allyPostion   22, 14
        allyPostion   25, 14
        allyPostion   26, 14
        allyPostion   25, 15
        
        ; Battle 21
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DURAHAN_2, BROAD_SWORD|EQUIPPED, SHIELD_RING|EQUIPPED, NOTHING|LV_4
        enemyCombatant DURAHAN_2, BROAD_SWORD|EQUIPPED, SHIELD_RING|EQUIPPED, NOTHING|LV_4
        enemyCombatant DURAHAN_2, BROAD_SWORD|EQUIPPED, SHIELD_RING|EQUIPPED, NOTHING|LV_4
        enemyCombatant DURAHAN_2, DOOM_BLADE|EQUIPPED, SHIELD_RING|EQUIPPED, NOTHING|LV_4
        enemyCombatant WYVERN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant WYVERN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED $B
        enemyCombatant BELIAL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED $B
        dc.b $FF
        
        ; Battle 21
        numberEnemies 13
        enemyPosition 27, 7, REGION_0, 1
        enemyPosition 25, 6, REGION_0, 1
        enemyPosition 25, 8, REGION_0, 1
        enemyPosition 22, 6, REGION_0, 1
        enemyPosition 20, 6, REGION_0, 1
        enemyPosition 18, 4, REGION_0, 1
        enemyPosition 17, 6, REGION_0, 1
        enemyPosition 29, 8, REGION_0, 1
        enemyPosition 28, 11, REGION_0, 1
        enemyPosition 17, 12, REGION_0, 1
        enemyPosition 21, 13, REGION_0, 1
        enemyPosition 16, 10, REGION_0, 1
        enemyPosition 15, 8, REGION_0, 1
        
        ; Battle 21 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        
        ; Battle 22
        numberAllies  12
        allyPostion   15, 25
        allyPostion   19, 25
        allyPostion   19, 26
        allyPostion   18, 25
        allyPostion   18, 26
        allyPostion   17, 25
        allyPostion   17, 26
        allyPostion   16, 25
        allyPostion   16, 26
        allyPostion   16, 27
        allyPostion   15, 26
        allyPostion   15, 27
        
        
        dc.b $1, $F, $3
        
        ; Battle 22
        enemyCombatant DEMON_MASTER_2, DEMON_ROD|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_3
        enemyCombatant WYVERN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant WYVERN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 22
        numberEnemies  18
        enemyPosition 15, 5, REGION_0, 1
        enemyPosition 20, 3, REGION_0, 1
        enemyPosition 10, 5, REGION_0, 1
        enemyPosition 18, 12, REGION_0, 1
        enemyPosition 5, 9, REGION_0, 1
        enemyPosition 5, 16, REGION_0, 1
        enemyPosition 12, 19, REGION_0, 1
        enemyPosition 8, 15, REGION_0, 1
        enemyPosition 18, 15, REGION_0, 1
        enemyPosition 3, 11, REGION_0, 1
        enemyPosition 25, 8, REGION_0, 1
        enemyPosition 24, 11, REGION_0, 1
        enemyPosition 19, 9, REGION_0, 1
        enemyPosition 25, 11, REGION_0, 1
        enemyPosition 5, 14, REGION_0, 1
        enemyPosition 5, 17, REGION_0, 1
        enemyPosition 12, 21, REGION_0, 1
        enemyPosition 17, 19, REGION_0, 1
        
        ; Battle 22 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 15, 4
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, FOLLOW_PATH, $8B, $FF
        dc.b $2
        battleCommand REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2|REGION_3, FOLLOW_PATH, $86, $FF
        dc.b $2
        battleCommand REGION_3|REGION_4, MOVE_TO, 14, 14
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 12
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 5, 10
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 5, 15
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 19
        dc.b $2
        battleCommand REGION_3|REGION_4, MOVE_TO, 6, 11
        battleCommand REGION_1|REGION_2, MOVE_TO, 8, 15
        dc.b $2
        battleCommand REGION_3|REGION_4, MOVE_TO, 14, 13
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 15
        dc.b $2
        battleCommand REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 4, 11
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $44, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $3D, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $36, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 26, 13
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 5, 11
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 7, 21
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 17, 20
        dc.b $2
        battleCommand REGION_2|REGION_3|REGION_4, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 21, 18
        dc.b $FF
        
        aiPath &
            11, 2, &
            20, 3, &
            19, 6, &
            10, 5
        dc.b $F7

        aiPath &
            25, 8, &
            24, 11, &
            19, 9
        dc.b $F9
        dc.b $FF
        dc.b $FF
        dc.b $FF
        
        
        ; Battle 23: Chaos
        numberAllies  12
        allyPostion   10, 14
        allyPostion   9, 12
        allyPostion   10, 12
        allyPostion   11, 12
        allyPostion   9, 13
        allyPostion   8, 14
        allyPostion   10, 13
        allyPostion   11, 13
        allyPostion   12, 13
        allyPostion   9, 14
        allyPostion   11, 14
        allyPostion   12, 14
        
        ; Battle 23: Chaos
        enemyCombatant CHAOS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DEMON_MASTER_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED MUDDLE|LV_3
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DEMON_MASTER_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED FREEZE|LV3
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DEMON_MASTER_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED FREEZE|LV3
        enemyCombatant ICE_WORM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 23: Chaos
        numberEnemies 18
        enemyPosition 7, 1, REGION_0, 1
        enemyPosition 6, 1, REGION_0, 1
        enemyPosition 8, 1, REGION_0, 1
        enemyPosition 5, 3, REGION_0, 1
        enemyPosition 6, 4, REGION_0, 1
        enemyPosition 7, 4, REGION_0, 1
        enemyPosition 8, 3, REGION_0, 1
        enemyPosition 12, 3, REGION_0, 1
        enemyPosition 13, 4, REGION_0, 1
        enemyPosition 14, 3, REGION_0, 1
        enemyPosition 6, 7, REGION_0, 1
        enemyPosition 4, 8, REGION_0, 1
        enemyPosition 3, 7, REGION_0, 1
        enemyPosition 2, 10, REGION_0, 1
        enemyPosition 13, 8, REGION_0, 1
        enemyPosition 9, 8, REGION_0, 1
        enemyPosition 21, 10, REGION_0, 1
        enemyPosition 21, 11, REGION_0, 1
        
        ; Battle 23 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        
        ; Battle 24
        numberAllies  12
        allyPostion   3, 6
        allyPostion   5, 8
        allyPostion   4, 8
        allyPostion   3, 8
        allyPostion   2, 8
        allyPostion   5, 7
        allyPostion   4, 7
        allyPostion   3, 7
        allyPostion   2, 7
        allyPostion   1, 7
        allyPostion   4, 6
        allyPostion   2, 6
        
        ; Battle 24
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_2, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DEMON_MASTER_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_3
        enemyCombatant DEMON_MASTER_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, FREEZE|LV_3
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 24
        numberEnemies 18
        enemyPosition 15, 30, REGION_0, 1
        enemyPosition 8, 25, REGION_0, 1
        enemyPosition 12, 24, REGION_0, 1
        enemyPosition 13, 23, REGION_0, 1
        enemyPosition 8, 23, REGION_0, 1
        enemyPosition 11, 22, REGION_0, 1
        enemyPosition 19, 24, REGION_0, 1
        enemyPosition 17, 22, REGION_0, 1
        enemyPosition 12, 18, REGION_0, 1
        enemyPosition 14, 17, REGION_0, 1
        enemyPosition 9, 13, REGION_0, 1
        enemyPosition 11, 12, REGION_0, 1
        enemyPosition 11, 20, REGION_0, 1
        enemyPosition 13, 20, REGION_0, 1
        enemyPosition 15, 20, REGION_0, 1
        enemyPosition 26, 20, REGION_0, 1
        enemyPosition 25, 21, REGION_0, 1
        enemyPosition 24, 22, REGION_0, 1
        
        ; Battle 24 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 15, 30
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        
        ; Battle 25: Ramladu 1
        numberAllies  12
        allyPostion   11, 25
        allyPostion   8, 26
        allyPostion   9, 26
        allyPostion   10, 26
        allyPostion   12, 26
        allyPostion   13, 26
        allyPostion   8, 27
        allyPostion   9, 27
        allyPostion   10, 27
        allyPostion   11, 27
        allyPostion   12, 27
        allyPostion   13, 27
        
        ; Battle 25: Ramladu 1
        enemyCombatant RAMLADU, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_2, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CERBERUS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_2, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, ATLAS|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 25: Ramladu 1
        numberEnemies 20
        enemyPosition 16, 2, REGION_14, 1
        enemyPosition 7, 9, REGION_0, 1
        enemyPosition 6, 10, REGION_0, 1
        enemyPosition 7, 10, REGION_0, 1
        enemyPosition 8, 10, REGION_0, 1
        enemyPosition 19, 9, REGION_0, 1
        enemyPosition 18, 10, REGION_0, 1
        enemyPosition 19, 10, REGION_0, 1
        enemyPosition 20, 10, REGION_0, 1
        enemyPosition 12, 12, REGION_0, 1
        enemyPosition 13, 12, REGION_0, 1
        enemyPosition 14, 12, REGION_0, 1
        enemyPosition 11, 11, REGION_0, 1
        enemyPosition 13, 11, REGION_0, 1
        enemyPosition 15, 11, REGION_0, 1
        enemyPosition 9, 14, REGION_0, 1
        enemyPosition 12, 15, REGION_0, 1
        enemyPosition 15, 16, REGION_0, 1
        enemyPosition 8, 18, REGION_0, 1
        enemyPosition 11, 19, REGION_0, 1
        
        ; Battle 25 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 7, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 6, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 7, 13
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 8, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 19, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 18, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 19, 13
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 20, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 11, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 12
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 11, 13
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 13
        dc.b $1
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 13
        dc.b $1
        battleCommand REGION_1|REGION_2, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 13, 14
        dc.b $1
        battleCommand REGION_1|REGION_2, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 12, 14
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 14, 14
        dc.b $FF
        
        
        ; Battle 26: Ramladu 2
        numberAllies  12
        allyPostion   16, 13
        allyPostion   14, 14
        allyPostion   13, 14
        allyPostion   15, 14
        allyPostion   12, 14
        allyPostion   16, 14
        allyPostion   14, 15
        allyPostion   13, 15
        allyPostion   15, 15
        allyPostion   12, 15
        allyPostion   16, 15
        allyPostion   11, 15
        
        dc.b $1, $B, $25
        
        ; Battle 26: Ramladu 2
        enemyCombatant RAMLADU, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, AURA|LV_3
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 26: Ramladu 2
        numberEnemies 13
        enemyPosition 16, 5, REGION_0, 1
        enemyPosition 10, 19, REGION_0, 1
        enemyPosition 10, 21, REGION_0, 1
        enemyPosition 10, 23, REGION_0, 1
        enemyPosition 16, 19, REGION_0, 1
        enemyPosition 16, 21, REGION_0, 1
        enemyPosition 16, 23, REGION_0, 1
        enemyPosition 12, 19, REGION_0, 1
        enemyPosition 12, 21, REGION_0, 1
        enemyPosition 12, 23, REGION_0, 1
        enemyPosition 14, 19, REGION_0, 1
        enemyPosition 14, 21, REGION_0, 1
        enemyPosition 14, 23, REGION_0, 1
        
        ; Battle 26 AI
        dc.b $2
        battleCommand REGION_2, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 5
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        
        ; Battle 27: Colossus
        numberAllies  12
        allyPostion   16, 27
        allyPostion   15, 28
        allyPostion   17, 28
        allyPostion   14, 28
        allyPostion   18, 28
        allyPostion   13, 28
        allyPostion   19, 28
        allyPostion   16, 29
        allyPostion   15, 29
        allyPostion   17, 29
        allyPostion   14, 29
        allyPostion   18, 29
        
        dc.b $1, $10, $5
        
        ; Battle 27: Colossus
        enemyCombatant COLOSSUS_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, BOLT|LV_3
        enemyCombatant COLOSSUS_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, FREEZE|LV_3
        enemyCombatant COLOSSUS_3, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|BROKEN|EQUIPPED, BLAZE|LV_3
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant JET, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HORSEMAN, BUSTER_SHOT|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHIMAERA_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 27: Colossus
        numberEnemies 20
        enemyPosition 16, 3, REGION_0, 1
        enemyPosition 15, 3, REGION_0, 1
        enemyPosition 17, 3, REGION_0, 1
        enemyPosition 16, 11, REGION_0, 1
        enemyPosition 16, 12, REGION_0, 1
        enemyPosition 16, 13, REGION_0, 1
        enemyPosition 10, 15, REGION_0, 1
        enemyPosition 12, 15, REGION_0, 1
        enemyPosition 20, 14, REGION_0, 1
        enemyPosition 21, 14, REGION_0, 1
        enemyPosition 22, 14, REGION_0, 1
        enemyPosition 11, 15, REGION_0, 1
        enemyPosition 11, 14, REGION_0, 1
        enemyPosition 10, 13, REGION_0, 1
        enemyPosition 25, 20, REGION_0, 1
        enemyPosition 24, 21, REGION_0, 1
        enemyPosition 23, 22, REGION_0, 1
        enemyPosition 8, 22, REGION_0, 1
        enemyPosition 7, 23, REGION_0, 1
        enemyPosition 6, 24, REGION_0, 1
        
        ; Battle 27 AI
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 16, 3
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $79, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, FOLLOW_PATH, $76, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 11
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 12
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 13
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, $E, $12
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, $12, $12
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 15, 17
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 16, 17
        dc.b $2
        battleCommand REGION_2|REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1, MOVE_TO, 17, 17
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $FF
        
        aiPath &
            11, 7, &
            8, 10
        dc.b $FF

        aiPath &
            20, 7, &
            22, 10
        dc.b $FF
        dc.b $FF
        dc.b $FF
        dc.b $FF
        
        
        ; Battle 28: Darksol
        numberAllies  12
        allyPostion   15, 27
        allyPostion   14, 28
        allyPostion   16, 28
        allyPostion   15, 28
        allyPostion   14, 29
        allyPostion   16, 29
        allyPostion   15, 29
        allyPostion   13, 30
        allyPostion   17, 30
        allyPostion   14, 30
        allyPostion   16, 30
        allyPostion   15, 30
        
        ; Battle 28: Darksol
        enemyCombatant DARKSOL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BLUE_DRAGON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant STEEL_CLAW, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant HIGH_PRIEST_1, HOLY_STAFF|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, HEAL|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant TORCH_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 28: Darksol
        numberEnemies 18
        enemyPosition 15, 13, REGION_0, 1
        enemyPosition 13, 14, REGION_0, 1
        enemyPosition 17, 14, REGION_0, 1
        enemyPosition 3, 27, REGION_0, 1
        enemyPosition 27, 22, REGION_0, 1
        enemyPosition 14, 17, REGION_0, 1
        enemyPosition 15, 16, REGION_0, 1
        enemyPosition 16, 17, REGION_0, 1
        enemyPosition 9, 16, REGION_0, 1
        enemyPosition 8, 15, REGION_0, 1
        enemyPosition 10, 15, REGION_0, 1
        enemyPosition 28, 19, REGION_0, 1
        enemyPosition 28, 18, REGION_0, 1
        enemyPosition 28, 17, REGION_0, 1
        enemyPosition 10, 21, REGION_0, 1
        enemyPosition 10, 22, REGION_0, 1
        enemyPosition 21, 21, REGION_0, 1
        enemyPosition 20, 22, REGION_0, 1
        
        ; Battle 28 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 15, 13
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 13, 14
        dc.b $2
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_1|REGION_2, MOVE_TO, 17, 14
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $2
        battleCommand REGION_3, MOVE_TO, 14, 14
        battleCommand REGION_1|REGION_2, MOVE_TO, 14, 17
        dc.b $2
        battleCommand REGION_3, MOVE_TO, 15, 14
        battleCommand REGION_1|REGION_2, MOVE_TO, 15, 16
        dc.b $2
        battleCommand REGION_3, MOVE_TO, 16, 14
        battleCommand REGION_1|REGION_2, MOVE_TO, 14, 17
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 5, 17
        battleCommand REGION_1, MOVE_TO, 9, 16
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 6, 18
        battleCommand REGION_1, MOVE_TO, 8, 15
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 5, 19
        battleCommand REGION_1, MOVE_TO, 10, 15
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 21, 16
        battleCommand REGION_1, MOVE_TO, 25, 17
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 21, 15
        battleCommand REGION_1, MOVE_TO, 24, 18
        dc.b $3
        battleCommand REGION_3, CHARGE, $FF, $FF
        battleCommand REGION_2, MOVE_TO, 20, 15
        battleCommand REGION_1, MOVE_TO, 25, 19
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 13, 22
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 13, 24
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 17, 22
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 17, 24
        dc.b $FF
        
        
        ; Battle 29: Dark Dragon
        numberAllies  12
        allyPostion   15, 15
        allyPostion   8, 15
        allyPostion   9, 15
        allyPostion   10, 15
        allyPostion   9, 16
        allyPostion   20, 15
        allyPostion   21, 15
        allyPostion   22, 15
        allyPostion   21, 16
        allyPostion   14, 16
        allyPostion   15, 16
        allyPostion   16, 16
        
        ; Battle 29: Dark Dragon
        enemyCombatant DARK_DRAGON_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DRAGON_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DRAGON_2, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, GREAT_AXE|EQUIPPED, GREAT_AXE, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 29: Dark Dragon
        numberEnemies 5
        enemyPosition 15, 10, REGION_0, 1
        enemyPosition 12, 8, REGION_0, 1
        enemyPosition 18, 8, REGION_0, 1
        enemyPosition 10, 9, REGION_0, 15
        enemyPosition 20, 9, REGION_0, 15
        
        ; Battle 29 AI
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 15, 12
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 12, 11
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, MOVE_TO, 18, 11
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        dc.b $1
        battleCommand REGION_1|REGION_2|REGION_3|REGION_4|REGION_5|REGION_6|REGION_7, CHARGE, $FF, $FF
        
        dc.b $FF
        dc.b $FF
        dc.b $1
        dc.b $7
        dc.b $34
        dc.b $1
        dc.b $6
        dc.b $5
        dc.b $1
        dc.b $4
        dc.b $4
        dc.b $1
        dc.b $1D
        dc.b $4
        dc.b $1
        dc.b $25
        dc.b $8
        dc.b $FF
        dc.b $1
        dc.b $21
        dc.b $8
        dc.b $1
        dc.b $1B
        dc.b $9
        dc.b $1
        dc.b $29
        dc.b $1
        dc.b $1
        dc.b $1E
        dc.b $B
        
        
        ; Battle 30
        numberAllies  12
        allyPostion   1, 1
        allyPostion   2, 1
        allyPostion   3, 1
        allyPostion   4, 1
        allyPostion   5, 1
        allyPostion   6, 1
        allyPostion   7, 1
        allyPostion   8, 1
        allyPostion   9, 1
        allyPostion   10, 1
        allyPostion   11, 1
        allyPostion   12, 1
        
        ; Battle 30
        enemyCombatant PEGASUS_KNIGHT_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MINOTAUR_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant GOLEM, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ELLIOTT, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant ARMED_SKELETON, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BALBAZAK, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant LASER_EYE, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CAIN, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant BOWRIDER, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant MISHAELA, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant CHAOS, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant RAMLADU, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant COLOSSUS_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARKSOL, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        enemyCombatant DARK_DRAGON_1, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING_ITEM|BROKEN|EQUIPPED, NOTHING|LV_4
        dc.b $FF
        
        ; Battle 30
        numberEnemies 15
        enemyPosition 1, 2, REGION_0, 1
        enemyPosition 2, 2, REGION_0, 1
        enemyPosition 3, 2, REGION_0, 1
        enemyPosition 4, 2, REGION_0, 1
        enemyPosition 5, 2, REGION_0, 1
        enemyPosition 6, 2, REGION_0, 1
        enemyPosition 7, 2, REGION_0, 1
        enemyPosition 8, 2, REGION_0, 1
        enemyPosition 9, 2, REGION_0, 1
        enemyPosition 10, 2, REGION_0, 1
        enemyPosition 11, 2, REGION_0, 1
        enemyPosition 12, 2, REGION_0, 1
        enemyPosition 13, 2, REGION_0, 1
        enemyPosition 14, 2, REGION_0, 1
        enemyPosition 15, 2, REGION_0, 1
        
        dc.w $FFFF
        
        
        
