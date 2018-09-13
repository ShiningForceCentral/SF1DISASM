

; ---------------------------------------------------------------------------

; enum BattleParty
BATTLE_PARTY_SLOTS_COUNTER: equ $B
BATTLE_PARTY_MAX_SIZE: equ $C

; ---------------------------------------------------------------------------

; enum Traps
SOUND_COMMAND: equ $0

; ---------------------------------------------------------------------------

; enum BattleSpriteID
BATTLE_SPRITE_ID_JOGURT: equ $12
BATTLE_SPRITE_ID_MAX_HERO: equ $13

; ---------------------------------------------------------------------------

; enum ClassID
CLASS_ID_MONK: equ $5
CLASS_ID_HEAL: equ $6
CLASS_ID_SMR: equ $E
CLASS_ID_MSMK: equ $15
CLASS_ID_VICR: equ $16
CLASS_ID_YGRT: equ $1E
CLASS_ID_LASER_EYE: equ $53
CLASS_ID_DARK_DRAGON: equ $5B
CLASS_ID_DARK_DRAGON_0: equ $68

; ---------------------------------------------------------------------------

; enum ClassEntry_Offsets
CLASS_OFFSET_MOVE_TYPE: equ $0
CLASS_OFFSET_ACTION_TYPE: equ $1
CLASS_OFFSET_RESISTANCES: equ $2
CLASS_OFFSET_FLAGS: equ $4
CLASS_OFFSET_RANGE_UNARMED: equ $5
CLASS_OFFSET_EFFECT_UNARMED: equ $6
CLASS_OFFSET_SPECIAL_ATTACK: equ $7

; ---------------------------------------------------------------------------

; enum ClassEntry_Flags
CLASS_FLAG_REGEN_HP: equ $7

; ---------------------------------------------------------------------------

; enum CombatantEntry
COM_ENTRY_SIZE: equ $10
COM_ENTRIES_COUNTER: equ $1F

; ---------------------------------------------------------------------------

; enum CombatantEntry_Offsets
COM_OFFSET_FORCE_ID: equ $0
COM_OFFSET_X: equ $1
COM_OFFSET_Y: equ $2
COM_OFFSET_ATT: equ $3
COM_OFFSET_DEF: equ $4
COM_OFFSET_AGI: equ $5
COM_OFFSET_MOVE: equ $6
COM_OFFSET_CRIT: equ $7
COM_OFFSET_DOUBLE_ATK: equ $8
COM_OFFSET_ITEMS: equ $9
COM_OFFSET_SPELLS: equ $C

; ---------------------------------------------------------------------------

; enum EffectEntry_Offsets
EFFECT_OFFSET_TYPE: equ $0
EFFECT_OFFSET_ANIM: equ $1
EFFECT_OFFSET_VALUE_1: equ $2
EFFECT_OFFSET_VALUE_2: equ $3
EFFECT_OFFSET_MESSAGE: equ $4
EFFECT_OFFSET_ROUTINE: equ $6

; ---------------------------------------------------------------------------

; enum EnemyEntry_Offsets
ENEMY_OFFSET_COINS: equ $0
ENEMY_OFFSET_CLASS_ID: equ $2
ENEMY_OFFSET_LEVEL: equ $3
ENEMY_OFFSET_ATT: equ $4
ENEMY_OFFSET_DEF: equ $5
ENEMY_OFFSET_AGI: equ $6
ENEMY_OFFSET_MOVE: equ $7
ENEMY_OFFSET_HP: equ $8
ENEMY_OFFSET_MP: equ $A
ENEMY_OFFSET_B: equ $B
ENEMY_OFFSET_MAP_SPRITE: equ $C
ENEMY_OFFSET_BATTLE_SPRITE: equ $D
ENEMY_OFFSET_BATTLE_PALETTE: equ $E
ENEMY_OFFSET_PORTRAIT: equ $F

; ---------------------------------------------------------------------------

; enum ForceDef
FORCE_ITEM_SLOTS_COUNTER: equ $3
FORCE_ITEM_SLOTS_NUMBER: equ $4
FORCE_NAME_COUNTER: equ $9
FORCE_PROJECTION_LEVEL: equ $14
FORCE_LEVEL_CAP: equ $14
FORCE_ENTRIES_COUNTER: equ $1E
FORCE_ENTRY_SIZE: equ $28
FORCE_STAT_CAP: equ $63
FORCE_LEVEL_CAP_PROMOTED: equ $63
FORCE_MASK_ID: equ $7F
FORCE_GOLD_CAP: equ $F423F

; ---------------------------------------------------------------------------

; enum ForceID
FORCE_ID_ANRI: equ $A
FORCE_ID_TAO: equ $C
FORCE_ID_JOGURT: equ $1D
FORCE_ID_NOVA: equ $1E

; ---------------------------------------------------------------------------

; enum ForceEntry_Offsets
FORCE_OFFSET_NAME: equ $0
FORCE_OFFSET_CLASS_ID: equ $A
FORCE_OFFSET_LEVEL: equ $B
FORCE_OFFSET_ATT: equ $C
FORCE_OFFSET_DEF: equ $D
FORCE_OFFSET_AGI: equ $E
FORCE_OFFSET_MOVE: equ $F
FORCE_OFFSET_CRIT: equ $10
FORCE_OFFSET_EXP: equ $11
FORCE_OFFSET_HP_MAX: equ $12
FORCE_OFFSET_HP_MAX_LO_BYTE: equ $13
FORCE_OFFSET_HP_CURRENT: equ $14
FORCE_OFFSET_MP_MAX: equ $16
FORCE_OFFSET_MP_CURRENT: equ $17
FORCE_OFFSET_FLAGS_STATUS: equ $18
FORCE_OFFSET_ITEMS: equ $1A
FORCE_OFFSET_SPELLS: equ $1E

; ---------------------------------------------------------------------------

; enum ForceEntry_StatusDef
FORCE_STATUS_MASK_SHIELD: equ $C000

; ---------------------------------------------------------------------------

; enum ForceEntry_StatusFlags
FORCE_STATUS_FLAG_POISON: equ $0
FORCE_STATUS_FLAG_SLEEP: equ $1
FORCE_STATUS_FLAG_CURSE: equ $2
FORCE_STATUS_FLAG_JOGURT: equ $3
FORCE_STATUS_FLAG_MUDDLE: equ $4
FORCE_STATUS_FLAG_DISPEL: equ $6
FORCE_STATUS_FLAG_QUICK: equ $8
FORCE_STATUS_FLAG_SLOW: equ $A
FORCE_STATUS_FLAG_BOOST: equ $C
FORCE_STATUS_FLAG_SHIELD: equ $E

; ---------------------------------------------------------------------------

; enum ItemDef
ITEM_FLAG_EQUIPPED: equ $7
ITEM_MASK_ID: equ $3F
ITEM_MASK_ID_AND_CURSED_FLAG: equ $7F
ITEM_MASK_EQUIPPED_FLAG: equ $80

; ---------------------------------------------------------------------------

; enum ItemID
ITEM_ID_SUGOI_MIZUGI: equ $11
ITEM_ID_KITUI_HUKU: equ $15
ITEM_ID_KINDAN_NOHAKO: equ $1C
ITEM_ID_DOOM_BLADE: equ $22
ITEM_ID_HEAT_AXE: equ $33
ITEM_ID_ATLAS: equ $34
ITEM_ID_DEMON_ROD: equ $39
ITEM_ID_YOGURT_RING: equ $3A

; ---------------------------------------------------------------------------

; enum ItemEntry_Offsets
ITEM_OFFSET_FLAGS_EQUIP: equ $0
ITEM_OFFSET_FLAGS_TYPE: equ $4
ITEM_OFFSET_EQUIP_EFFECT: equ $6
ITEM_OFFSET_EQUIP_VALUE: equ $7
ITEM_OFFSET_RANGE_USE: equ $8
ITEM_OFFSET_EFFECT_USE: equ $9
ITEM_OFFSET_RANGE_ATK: equ $C
ITEM_OFFSET_EFFECT_ATK: equ $D
ITEM_OFFSET_PRICE: equ $E

; ---------------------------------------------------------------------------

; enum MapSpriteID
MAP_SPRITE_ID_JOGURT: equ $1D
MAP_SPRITE_ID_MAX_HERO: equ $1E
MAP_SPRITE_ID_NOVA: equ $39
MAP_SPRITE_ID_ANRI_OUTFIT: equ $3A
MAP_SPRITE_ID_TAO_OUTFIT: equ $3B

; ---------------------------------------------------------------------------

; enum RangeEntry_Offsets
RANGE_OFFSET_MAX: equ $0
RANGE_OFFSET_MIN: equ $1
RANGE_OFFSET_AREA: equ $2
RANGE_OFFSET_GROUP: equ $3
RANGE_OFFSET_ROUTINE: equ $4

; ---------------------------------------------------------------------------

; enum SoundCommands
SOUND_COMMAND_INIT_DRIVER: equ $20
SOUND_COMMAND_WAIT_MUSIC_END: equ $F0
SOUND_COMMAND_PLAY_PREVIOUS_MUSIC: equ $FB
SOUND_COMMAND_FADE_OUT: equ $FD
SOUND_COMMAND_GET_D0_PARAMETER: equ $FFFF

; ---------------------------------------------------------------------------

; enum Music
MUSIC_NOTHING: equ $0
MUSIC_JOIN: equ $1
MUSIC_CURSED_ITEM: equ $2
MUSIC_TOWN: equ $3
MUSIC_SUSPEND: equ $4
MUSIC_SIMONE: equ $5
MUSIC_ATTACK: equ $6
MUSIC_INTRO: equ $7
MUSIC_MAIN_THEME: equ $8
MUSIC_BATTLE_1: equ $9
MUSIC_BATTLE_2: equ $A
MUSIC_SAD_THEME: equ $B
MUSIC_PROMOTION: equ $C
MUSIC_ITEM: equ $D
MUSIC_SAVE: equ $E
MUSIC_MAX_DIED: equ $F
MUSIC_BATTLE_3: equ $10
MUSIC_NOTHING_0: equ $11
MUSIC_HQ: equ $12
MUSIC_SHIP: equ $13
MUSIC_CHAPTER_END: equ $14
MUSIC_REVIVE: equ $15
MUSIC_SAD_JOIN: equ $16
MUSIC_DARKSOL_BATTLE: equ $17
MUSIC_SAD_TOWN: equ $18
MUSIC_NOTHING_1: equ $19
MUSIC_NOTHING_2: equ $1A
MUSIC_NOTHING_3: equ $1B
MUSIC_NOTHING_4: equ $1C
MUSIC_NOTHING_5: equ $1D
MUSIC_NOTHING_6: equ $1E
MUSIC_EARTHQUAKE: equ $1F
MUSIC_STOP: equ $20
MUSIC_BATTLE_4: equ $21
MUSIC_CASTLE: equ $22
MUSIC_TITLE: equ $23
MUSIC_FINAL_BATTLE: equ $24
MUSIC_RISE_OF_THE_CASTLE: equ $25
MUSIC_CREDITS: equ $26
MUSIC_ENDING: equ $27

; ---------------------------------------------------------------------------

; enum Sfx
SFX_MENU_SWITCH: equ $41
SFX_MENU_SELECTION: equ $42
SFX_VALIDATION: equ $43
SFX_REFUSAL: equ $44
SFX_DIALOG_BLEEP_1: equ $45
SFX_DIALOG_BLEEP_2: equ $46
SFX_DIALOG_BLEEP_3: equ $47
SFX_DIALOG_BLEEP_4: equ $48
SFX_DIALOG_BLEEP_5: equ $49
SFX_DIALOG_BLEEP_6: equ $4A
SFX_DIALOG_BLEEP_7: equ $4B
SFX_DIALOG_BLEEP_8: equ $4C
SFX_SPELL_CAST: equ $4D
SFX_HIT: equ $4E
SFX_NOTHING: equ $4F
SFX_NOTHING_0: equ $50
SFX_TINKLING: equ $51
SFX_MONSTER_1: equ $52
SFX_MONSTER_2: equ $53
SFX_MONSTER_3: equ $54
SFX_WARP: equ $55
SFX_DOOR_OPEN_HIGH_PITCH: equ $56
SFX_BOLT_SPELL: equ $57
SFX_DOOR_OPEN: equ $58
SFX_DEMON_SMILE: equ $59
SFX_CRIT: equ $5A
SFX_JOGURT: equ $5B
SFX_TRAIN_WHISTLE: equ $5C
SFX_LASER: equ $5D
SFX_SWORDS_HIT: equ $5E
SFX_FIRE_BREATH: equ $5F
SFX_MACHINE_GUN: equ $60
SFX_TREASURE_CHEST: equ $61
SFX_WALKING: equ $62
SFX_FALLING: equ $63
SFX_BOW_MASTER: equ $64
SFX_HEALING: equ $65
SFX_DESOUL_HOVERING: equ $66
SFX_ELECTRIC_BREATH: equ $67
SFX_METALLIC: equ $68
SFX_ENERGY_WAVE: equ $69

; ---------------------------------------------------------------------------

; enum SpellDef
SPELL_MASK_ID: equ $3F

; ---------------------------------------------------------------------------

; enum StatGrowthDef
STAT_GROWTH_MASK_VALUE: equ $3F
STAT_GROWTH_MASK_CURVE: equ $C0