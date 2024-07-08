; SF2CONST.ASM INCLUDED AT START OF SF2.ASM

; START OF SEGMENT SRAM OFFSETS FROM SRAM:00200000 TO 0:00204000
SRAM_START: equ $200001
SRAM_STRING: equ $200201
SAVE_FLAGS: equ $20022D
byte_20022F: equ $20022F
SAVE_SLOT_1_DATA: equ $200231
SAVE_SLOT_2_DATA: equ $201429
SAVE_SLOT_3_DATA: equ $202621
GAME_COMPLETED: equ $203819 ; 1 = sound test is activated
SRAM_END: equ $203FFF
; END OF SEGMENT SRAM OFFSETS FROM SRAM:00200000 TO 0:00204000

; START OF SEGMENT Z80 OFFSETS FROM Z80:A00000 TO 0:00A0FFFF
Z80_Memory: equ $A00000
Z80_CHANNEL_1_NOT_IN_USE: equ $A01303
Z80_SoundDriverFadeInData: equ $A01FFC
Z80_SoundDriverMusicLevel: equ $A01FFD
Z80_SoundDriverCommand: equ $A01FFF
; END OF SEGMENT Z80 OFFSETS FROM Z80:A00000 TO 0:00A0FFFF

; START OF SEGMENT IO OFFSETS FROM IO:A10000 TO 0:00A10FFF
HW_Info: equ $A10000 ; 7-MODE  (R)  0: Domestic Model
														;              1: Overseas Model
														; 6-VMOD  (R)  0: NTSC CPU clock 7.67 MHz
														;              1: PAL CPU clock 7.60 MHz
														; 5-DISK  (R)  0: FDD unit connected
														;              1: FDD unit not connected
														; 4-RSV   (R)  Currently not used
														; 3-0 VER (R)  MEGA DRIVE version ($0 to $F)
HW_Info_LO_BYTE: equ $A10001
DATA1: equ $A10002 ; PD7 (RW)
														; PD6 (RW) TH
														; PD5 (RW) TR
														; PD4 (RW) TL
														; PD3 (RW) RIGHT
														; PD2 (RW) LEFT
														; PD1 (RW) DOWN
														; PDO (RW) UP
														; 
DATA2: equ $A10004
DATA3: equ $A10006
CTRL1: equ $A10008 ; INT (RW) 0: TH-INT PROHIBITED
														;          1: TH-INT ALLOWED
														; PC6 (RW) 0: PD6 INPUT MODE
														;          1: OUTPUT MODE
														; PC5 (RW) 0: PD5 INPUT MODE
														;          1: OUTPUT MODE
														; PC4 (RW) 0: PD4 INPUT MODE
														;          1: OUTPUT MODE
														; PC3 (RW) 0: PD3 INPUT MODE
														;          1: OUTPUT MODE
														; PC2 (RW) 0: PD2 INPUT MODE
														;          1: OUTPUT MODE
														; PC1 (RW) 0: PD1 INPUT MODE
														;          1: OUTPUT MODE
														; PCO (RW) 0: PDO INPUT MODE
														;          1: OUTPUT MODE
CTRL2: equ $A1000A
CTRL3: equ $A1000C
TxDATA1: equ $A1000E
RxDATA1: equ $A10010
SCTRL1: equ $A10012
TxDATA2: equ $A10014
RxDATA2: equ $A10016
SCTRL2: equ $A10018
TxDATA3: equ $A1001A
RxDATA3: equ $A1001C
SCTRL3: equ $A1001E
; END OF SEGMENT IO OFFSETS FROM IO:A10000 TO 0:00A10FFF

; START OF SEGMENT Control OFFSETS FROM Control:A11000 TO 0:00A11FFF
MemMode: equ $A11000 ; D8 ( W)   0: ROM MODE
														;           1: D-RAM MODE
Z80BusReq: equ $A11100 ; D8 ( W)   0: BUSREQ CANCEL
														;           1: BUSREQ REQUEST
														;    ( R)   0: CPU FUNCTION STOP ACCESSIBLE
														;           1: FUNCTIONING
Z80BusReset: equ $A11200 ; D8 ( W)   0: RESET REQUEST
														;           1: RESET CANCEL
; END OF SEGMENT Control OFFSETS FROM Control:A11000 TO 0:00A11FFF

; START OF SEGMENT VDP OFFSETS FROM VDP:00C00000 TO 0:00C00012
VDP_Data: equ $C00000
VDP_Control: equ $C00004
HV_Counter: equ $C00008
PSG: equ $C00011
; END OF SEGMENT VDP OFFSETS FROM VDP:00C00000 TO 0:00C00012

; START OF SEGMENT RAM OFFSETS FROM RAM:FF0000 TO 0:01000000
PALETTE_1_CURRENT: equ $FF0000 ; RAM start
PALETTE_1_CURRENT_02: equ $FF0004
PALETTE_1_CURRENT_04: equ $FF0008
PALETTE_1_CURRENT_06: equ $FF000C
PALETTE_1_CURRENT_08: equ $FF0010
PALETTE_1_CURRENT_10: equ $FF0014
PALETTE_1_CURRENT_12: equ $FF0018
PALETTE_1_CURRENT_14: equ $FF001C
PALETTE_2_CURRENT: equ $FF0020
PALETTE_2_CURRENT_06: equ $FF002C ; 5 color entries patched into palette 2, used by spell animations
PALETTE_2_CURRENT_07: equ $FF002E
PALETTE_2_CURRENT_08: equ $FF0030
PALETTE_3_CURRENT: equ $FF0040
PALETTE_4_CURRENT: equ $FF0060
PALETTE_1_BASE: equ $FF0080
PALETTE_1_BASE_01: equ $FF0082
PALETTE_1_BASE_02: equ $FF0084
PALETTE_2_BASE: equ $FF00A0
PALETTE_2_BASE_01: equ $FF00A2
PALETTE_2_BASE_06: equ $FF00AC ; copy of spell animation palette
PALETTE_2_BASE_11: equ $FF00B6
PALETTE_3_BASE: equ $FF00C0
PALETTE_4_BASE: equ $FF00E0
HORIZONTAL_SCROLL_DATA: equ $FF0100
dword_FF01A0: equ $FF01A0
word_FF01E0: equ $FF01E0
word_FF031E: equ $FF031E
VERTICAL_SCROLL_DATA: equ $FF0500
DMA_QUEUE: equ $FF0550
VDP_COMMAND_QUEUE: equ $FF0780
byte_FF0B80: equ $FF0B80
SPRITE_00_PROPERTIES: equ $FF0C80 ; start of sprite properties table -- 64 entries, 8 bytes per entry : 
														;     0-1 = y
														;     2   = size
														;     3   = link
														;     4-5 = tile + flags
														;     6-7 = x
SPRITE_00_SIZE: equ $FF0C82
SPRITE_00_LINK: equ $FF0C83 ; linked sprite index
SPRITE_00_X: equ $FF0C86
SPRITE_01_PROPERTIES: equ $FF0C88
SPRITE_01_SIZE: equ $FF0C8A
SPRITE_02_SIZE: equ $FF0C92
SPRITE_03_PROPERTIES: equ $FF0C98
SPRITE_07_PROPERTIES: equ $FF0CB8
SPRITE_16_PROPERTIES: equ $FF0D00
SPRITE_19_PROPERTIES: equ $FF0D18
SPRITE_20_PROPERTIES: equ $FF0D20
SPRITE_21_PROPERTIES: equ $FF0D28
SPRITE_21_LINK: equ $FF0D2B
SPRITE_22_PROPERTIES: equ $FF0D30
SPRITE_22_TILE_FLAGS: equ $FF0D34
SPRITE_22_X: equ $FF0D36
SPRITE_23_PROPERTIES: equ $FF0D38
SPRITE_24_PROPERTIES: equ $FF0D40
SPRITE_25_PROPERTIES: equ $FF0D48
SPRITE_32_PROPERTIES: equ $FF0D80
SPRITE_32_X: equ $FF0D86
SPRITE_53_SIZE: equ $FF0E2A
SPRITE_54_PROPERTIES: equ $FF0E30
SPRITE_54_X: equ $FF0E36
LOADED_NUMBER: equ $FF0E80 ; numeric value to write tiles from
byte_FF0E85: equ $FF0E85
VINT_PARAMS: equ $FF0E94
VDP_COMMAND_COUNTER: equ $FF0E95
DMA_QUEUE_SIZE: equ $FF0E96
P1_INPUT: equ $FF0E97 ; 80=start, 40=A, 20=C, 10=B, 8=right, 4=left, 2=down, 1=up
P2_INPUT: equ $FF0E98 ; 80=start, 40=A, 20=C, 10=B, 8=right, 4=left, 2=down, 1=up
CURRENT_PLAYER_INPUT: equ $FF0E99 ; Contains P1_INPUT when INPUT_REPEAT_DELAYER counter max reached
byte_FF0E9A: equ $FF0E9A
byte_FF0E9B: equ $FF0E9B
FRAME_COUNTER: equ $FF0E9C
byte_FF0E9D: equ $FF0E9D
SOUND_COMMAND_QUEUE: equ $FF0E9E ; up to 4 word values :
														; xx FC : update music volume to xx
MUSIC_STACK_LENGTH: equ $FF0EA6 ; up to $A
MUSIC_STACK: equ $FF0EA7 ; history of music previously played
WAIT_FOR_MUSIC_END: equ $FF0EB1 ; if set, check if music's being played
LAST_DIRECTIONAL_INPUT: equ $FF0EB2
INPUT_REPEAT_DELAYER: equ $FF0EB3 ; applies a delay before using input again when hold
SECONDS_COUNTER_FRAMES: equ $FF0EB6
FADING_SETTING: equ $FF0EB7 ; screen effect / transition
FADING_COUNTER_MAX: equ $FF0EB9
FADING_POINTER: equ $FF0EBA ; decremented when value $8x
FADING_COUNTER: equ $FF0EBB ; has to be 01 to start fade routine
FADING_PALETTE_FLAGS: equ $FF0EBC ; palette fading bitfield (1=1st palette, 2=2nd, 4=3rd, 8=4th)
VINT_ENABLED: equ $FF0EBD ; bit7 is set when VInt is enabled
VINT_WAIT_TOGGLE: equ $FF0EBE
TEMP_DMA_VALUE: equ $FF0EC0
RANDOM_SEED: equ $FF0EC2 ; RNG result
word_FF0EC4: equ $FF0EC4
word_FF0EC6: equ $FF0EC6
VDP_REG00_STATUS: equ $FF0EC8
VDP_REG01_STATUS: equ $FF0ECA
VDP_REG01_VALUE: equ $FF0ECB
VDP_REG0B_VALUE: equ $FF0EDF
VDP_REG10_VALUE: equ $FF0EE9
VDP_COMMAND_QUEUE_POINTER: equ $FF0EEE
DMA_QUEUE_POINTER: equ $FF0EF2
VINT_CONTEXTUAL_FUNCTION_ADDRESS: equ $FF0EF6
dword_FF0EFE: equ $FF0EFE
PRIMARY_WALKING_DIRECTION: equ $FF0F02 ; first direction moved (same as above) if still moving (or holding move buttons)
byte_FF0F03: equ $FF0F03
byte_FF0FFC: equ $FF0FFC
byte_FF0FFD: equ $FF0FFD
FF0FFE_LOADING_SPACE: equ $FF0FFE
byte_FF10FE: equ $FF10FE
byte_FF113E: equ $FF113E
FF3000_LOADING_SPACE: equ $FF3000 ; RAM used for decompressing graphics
byte_FF3001: equ $FF3001
byte_FF3004: equ $FF3004
byte_FF3120: equ $FF3120
byte_FF3240: equ $FF3240
byte_FF329C: equ $FF329C
byte_FF3303: equ $FF3303
byte_FF33BC: equ $FF33BC
byte_FF3423: equ $FF3423
byte_FF3800: equ $FF3800
byte_FF4000: equ $FF4000
byte_FF4240: equ $FF4240
byte_FF4480: equ $FF4480
byte_FF46C0: equ $FF46C0
byte_FF4800: equ $FF4800
byte_FF4900: equ $FF4900
MAP_SPRITE_POSITION: equ $FF5000
MAP_SPRITE_FACING: equ $FF5002
MAP_SPRITE_GFX: equ $FF5003
MAP_SPRITE_X_RELATIVE_TO_PLAYER: equ $FF5004
MAP_SPRITE_Y_RELATIVE_TO_PLAYER: equ $FF5006
byte_FF5009: equ $FF5009 ; map sprite something something frame?
FRAMES_BETWEEN_EVENT_STEPS: equ $FF500A
word_FF500C: equ $FF500C ; map sprite event command frame?
byte_FF500F: equ $FF500F ; map sprite lock counter?
byte_FF5010: equ $FF5010
byte_FF5011: equ $FF5011
word_FF5014: equ $FF5014
word_FF501A: equ $FF501A
byte_FF501C: equ $FF501C
byte_FF501D: equ $FF501D
byte_FF501F: equ $FF501F
byte_FF5020: equ $FF5020
byte_FF5021: equ $FF5021
byte_FF5022: equ $FF5022
word_FF502A: equ $FF502A
word_FF502C: equ $FF502C
byte_FF502F: equ $FF502F
word_FF5030: equ $FF5030
byte_FF5032: equ $FF5032
word_FF5034: equ $FF5034
word_FF503A: equ $FF503A
byte_FF503C: equ $FF503C
word_FF5040: equ $FF5040
byte_FF5042: equ $FF5042
word_FF5046: equ $FF5046
word_FF504A: equ $FF504A
word_FF504C: equ $FF504C
byte_FF5050: equ $FF5050
byte_FF5051: equ $FF5051
dword_FF5054: equ $FF5054
word_FF505A: equ $FF505A
word_FF505C: equ $FF505C
word_FF5060: equ $FF5060
word_FF506A: equ $FF506A
word_FF506C: equ $FF506C
word_FF5070: equ $FF5070
word_FF507A: equ $FF507A
byte_FF507D: equ $FF507D
word_FF5080: equ $FF5080
byte_FF5082: equ $FF5082
word_FF508A: equ $FF508A
byte_FF508C: equ $FF508C
byte_FF508D: equ $FF508D
word_FF5090: equ $FF5090
word_FF509A: equ $FF509A
byte_FF509D: equ $FF509D
word_FF50A0: equ $FF50A0
byte_FF50A2: equ $FF50A2
word_FF50A4: equ $FF50A4
word_FF50A6: equ $FF50A6
word_FF50AA: equ $FF50AA
word_FF50AC: equ $FF50AC
unk_FF50B0: equ $FF50B0
byte_FF50B1: equ $FF50B1
byte_FF50B3: equ $FF50B3
word_FF50B4: equ $FF50B4
word_FF50BA: equ $FF50BA
byte_FF50BD: equ $FF50BD
word_FF50C0: equ $FF50C0
word_FF50CA: equ $FF50CA
byte_FF50CD: equ $FF50CD
byte_FF50D0: equ $FF50D0
byte_FF50D1: equ $FF50D1
byte_FF50D2: equ $FF50D2
word_FF50DA: equ $FF50DA
byte_FF50DD: equ $FF50DD
byte_FF50E0: equ $FF50E0
byte_FF50E1: equ $FF50E1
byte_FF50E2: equ $FF50E2
word_FF50EA: equ $FF50EA
byte_FF50EC: equ $FF50EC
byte_FF50ED: equ $FF50ED
byte_FF50F0: equ $FF50F0
byte_FF50F1: equ $FF50F1
byte_FF50F2: equ $FF50F2
byte_FF50F9: equ $FF50F9
byte_FF50FD: equ $FF50FD
word_FF5100: equ $FF5100
byte_FF5102: equ $FF5102
byte_FF510C: equ $FF510C
byte_FF510D: equ $FF510D
byte_FF5111: equ $FF5111
byte_FF511D: equ $FF511D
byte_FF5121: equ $FF5121
word_FF512A: equ $FF512A
byte_FF512D: equ $FF512D
byte_FF5130: equ $FF5130
byte_FF5131: equ $FF5131
word_FF513A: equ $FF513A
byte_FF513D: equ $FF513D
byte_FF5140: equ $FF5140
byte_FF5141: equ $FF5141
byte_FF5150: equ $FF5150
byte_FF5151: equ $FF5151
byte_FF5152: equ $FF5152
byte_FF5153: equ $FF5153
word_FF515A: equ $FF515A
byte_FF515C: equ $FF515C
byte_FF515D: equ $FF515D
byte_FF515F: equ $FF515F
byte_FF5160: equ $FF5160
byte_FF5161: equ $FF5161
byte_FF5162: equ $FF5162
word_FF516A: equ $FF516A
byte_FF516C: equ $FF516C
byte_FF516F: equ $FF516F
byte_FF5170: equ $FF5170
byte_FF5171: equ $FF5171
byte_FF5172: equ $FF5172
byte_FF5180: equ $FF5180
byte_FF5181: equ $FF5181
byte_FF5182: equ $FF5182
byte_FF518D: equ $FF518D
byte_FF5190: equ $FF5190
byte_FF5191: equ $FF5191
word_FF5196: equ $FF5196
byte_FF519D: equ $FF519D
byte_FF51A1: equ $FF51A1
byte_FF51A3: equ $FF51A3
word_FF51B0: equ $FF51B0
byte_FF51B2: equ $FF51B2
byte_FF51B3: equ $FF51B3
word_FF51B4: equ $FF51B4
word_FF51B6: equ $FF51B6
byte_FF51B9: equ $FF51B9
byte_FF51C1: equ $FF51C1
byte_FF51D0: equ $FF51D0
word_FF51DA: equ $FF51DA
byte_FF51DD: equ $FF51DD
byte_FF51E0: equ $FF51E0
word_FF51EA: equ $FF51EA
byte_FF51ED: equ $FF51ED
byte_FF5200: equ $FF5200
byte_FF524E: equ $FF524E
byte_FF529C: equ $FF529C
MAP_DATA: equ $FF52EA
byte_FF6000: equ $FF6000
byte_FF72EA: equ $FF72EA
byte_FF92EA: equ $FF92EA
CURRENT_CHAPTER: equ $FF9C00
CURRENT_REGION: equ $FF9C01
CURRENT_MAP: equ $FF9C02
CURRENT_MAP_VERSION: equ $FF9C03
MESSAGE_SPEED: equ $FF9C05
DISPLAY_BATTLE_MESSAGES_TOGGLE: equ $FF9C06 ; 1 = do not display
CURRENT_BATTLE_TURN: equ $FF9C07 ; current position in turn order list
TURN_ORDER: equ $FF9C08
SCREEN_POSITION: equ $FF9C48
CURSOR_POSITION: equ $FF9C4A ; XXYY
EGRESS_LOCATION: equ $FF9C4C
VICTORY_EXIT: equ $FF9C4D
EVENT_FLAGS: equ $FF9C4E
byte_FF9C51: equ $FF9C51
byte_FF9C52: equ $FF9C52
byte_FF9C53: equ $FF9C53
byte_FF9C54: equ $FF9C54
byte_FF9C56: equ $FF9C56
byte_FF9C57: equ $FF9C57
byte_FF9C58: equ $FF9C58
byte_FF9C59: equ $FF9C59
byte_FF9C5A: equ $FF9C5A
byte_FF9C5B: equ $FF9C5B
byte_FF9C5C: equ $FF9C5C
byte_FF9C5D: equ $FF9C5D
byte_FF9C5F: equ $FF9C5F
byte_FF9C60: equ $FF9C60
byte_FF9C6E: equ $FF9C6E
LASER_EYE_COUNTDOWN: equ $FF9C7E
WORLD_CUTSCENE_SCRIPT: equ $FF9C86 ; world cutscene script
byte_FF9C87: equ $FF9C87
byte_FF9C88: equ $FF9C88
FORCE_MEMBER_FLAGS: equ $FF9C8A
CURRENT_GOLD: equ $FF9C8E
FORCE_MEMBERS_DATA: equ $FF9C92
PROMOTED_AT_LEVELS: equ $FFA16A
BATTLE_PARTY_MEMBERS: equ $FFA18A
DEALS_ITEMS: equ $FFA196
COMBATANT_DATA: equ $FFA1B6
COMBATANT_1_ENTITY: equ $FFA1C6
COMBATANT_1_Y: equ $FFA1C8
SAVED_BATTLE_DATA: equ $FFA3B6
byte_FFA476: equ $FFA476
byte_FFA496: equ $FFA496
PASSABILITY_FLAGS: equ $FFA4C0 ; passability flags table : bit 0 = allowed to pass through, bit 1 = allowed to stay
TABLE_AT_FFA8C0: equ $FFA8C0 ; uses:
														;  - distance to position table
														;  - targets list length
														;  - shop inventory (also other item lists?)
byte_FFA8C2: equ $FFA8C2 ; uses:
														; 
														;     - target positions
SHOP_INVENTORY_LENGTH: equ $FFA93E
word_FFA940: equ $FFA940 ; currently highlighted shop inventory slot
word_FFA942: equ $FFA942 ; current shop inventory page
word_FFA944: equ $FFA944
TARGETS_LIST: equ $FFA946
byte_FFA947: equ $FFA947
TARGET_PRIORITY_TABLE: equ $FFA988
word_FFA9CA: equ $FFA9CA
word_FFA9CC: equ $FFA9CC
AFTER_TURN_MESSAGE_INDEX: equ $FFA9CE ; index of message displayed after a battle turn
AFTER_TURN_MESSAGE_ARG_NAME_1: equ $FFA9D0
AFTER_TURN_MESSAGE_ARG_NAME_2: equ $FFA9D2
AFTER_TURN_MESSAGE_ARG_NUMBER: equ $FFA9D4
EFFECT_HP_CHANGE: equ $FFA9D8 ; battle action : HP change
EFFECT_MP_CHANGE: equ $FFA9DA ; battle action : MP change (?)
EFFECT_STATUS_CHANGE: equ $FFA9DC ; battle action : status effects change
EFFECT_REACTION: equ $FFA9DE
BATTLE_MESSAGE_INDEX_1: equ $FFA9E0
BATTLE_MESSAGE_ARG_NAME_1: equ $FFA9E2
BATTLE_MESSAGE_ARG_NUMBER_1: equ $FFA9E6
BATTLE_MESSAGE_INDEX_2: equ $FFA9EA
BATTLE_MESSAGE_ARG_NAME_2: equ $FFA9EC
BATTLE_MESSAGE_ARG_NUMBER_2: equ $FFA9F0
STATS_TO_GAIN: equ $FFA9F4
SPELLS_TO_LEARN: equ $FFA9FA
TERRAIN_DATA: equ $FFACC0
byte_FFB0C0: equ $FFB0C0
CAMERA_XSPEED: equ $FFB4C0
CAMERA_YSPEED: equ $FFB4C1
CURSOR_XSPEED: equ $FFB4C2
CURSOR_YSPEED: equ $FFB4C3
UPDATE_SCREEN_TOGGLE: equ $FFB4C4
byte_FFB4C5: equ $FFB4C5
ACTOR_BLINKING_TOGGLE: equ $FFB4C6
AREA_CURSOR_INDEX: equ $FFB4C7 ; targeting cursor index
byte_FFB4C8: equ $FFB4C8
byte_FFB4C9: equ $FFB4C9 ; combatant index
byte_FFB4CA: equ $FFB4CA
byte_FFB4CB: equ $FFB4CB
byte_FFB4CC: equ $FFB4CC
byte_FFB4CD: equ $FFB4CD
byte_FFB4CE: equ $FFB4CE
byte_FFB4CF: equ $FFB4CF
byte_FFB4D0: equ $FFB4D0
byte_FFB4D1: equ $FFB4D1
byte_FFB4D2: equ $FFB4D2
byte_FFB4D3: equ $FFB4D3
byte_FFB4D4: equ $FFB4D4
byte_FFB4D5: equ $FFB4D5 ; facing searchable? (in battle) (menu type?)
SPRITE_DIRECTION: equ $FFB4D6
byte_FFB4D7: equ $FFB4D7
byte_FFB4D8: equ $FFB4D8
byte_FFB4DA: equ $FFB4DA
byte_FFB4DB: equ $FFB4DB
byte_FFB4E1: equ $FFB4E1
dword_FFB4EA: equ $FFB4EA
byte_FFB4EE: equ $FFB4EE
byte_FFB4F1: equ $FFB4F1
byte_FFB4F2: equ $FFB4F2
byte_FFB4F3: equ $FFB4F3
word_FFB510: equ $FFB510
CASTER_INDEX: equ $FFB51A ; start of spell cast setup data
BATTLE_ACTION_TYPE: equ $FFB51B ; battle action type : 
														;     0 = attack
														;     1 = cast spell
														;     2 = use item
														;     3 = ?
SPELL_INDEX: equ $FFB51C ; or item slot
TARGET_INDEX: equ $FFB51D
TARGET_X: equ $FFB51E
TARGET_Y: equ $FFB51F ; end of spell cast setup data
byte_FFB520: equ $FFB520
byte_FFB521: equ $FFB521
byte_FFB522: equ $FFB522
byte_FFB523: equ $FFB523
byte_FFB524: equ $FFB524
byte_FFB525: equ $FFB525
CURRENT_MENU: equ $FFB526
CURRENT_DIAMOND_MENU_SELECTION: equ $FFB528
byte_FFB529: equ $FFB529
byte_FFB52A: equ $FFB52A
byte_FFB52B: equ $FFB52B
byte_FFB535: equ $FFB535
byte_FFB536: equ $FFB536
byte_FFB537: equ $FFB537
byte_FFB538: equ $FFB538
byte_FFB539: equ $FFB539
byte_FFB53A: equ $FFB53A
byte_FFB53B: equ $FFB53B
SPEECH_SOUND_TOGGLE: equ $FFB53C
SAVE_GAME_DISABLED_TOGGLE: equ $FFB53D ; 1 = save game function is disabled
byte_FFB53E: equ $FFB53E
byte_FFB540: equ $FFB540 ; weapon sprite animation data?
byte_FFB541: equ $FFB541
byte_FFB542: equ $FFB542
byte_FFB543: equ $FFB543
word_FFB544: equ $FFB544
word_FFB546: equ $FFB546
word_FFB548: equ $FFB548
word_FFB54A: equ $FFB54A
word_FFB54C: equ $FFB54C
byte_FFB54E: equ $FFB54E
word_FFB56A: equ $FFB56A
word_FFB56C: equ $FFB56C
byte_FFB56E: equ $FFB56E
word_FFB58A: equ $FFB58A
byte_FFB58C: equ $FFB58C
IS_DISPLAYING_PORTRAIT: equ $FFB5AC
CURRENTLY_TYPEWRITING: equ $FFB5AD ; flag for whether or not we're done with typewritering
word_FFB5AE: equ $FFB5AE
byte_FFB5B0: equ $FFB5B0
byte_FFB5B1: equ $FFB5B1
byte_FFB5BB: equ $FFB5BB ; caster side : 1 = force, 2 = enemy?
IS_SPELLANIM_PLAYING: equ $FFB5BC
IS_SPELLANIM_FINISHED: equ $FFB5BD
SPELLANIM_VERSION: equ $FFB5BE ; spell animation version
SPELLANIM_TYPE: equ $FFB5BF ; spell animation type
SPELLENTITY_PROPERTIES: equ $FFB5C0 ; Start of spell object properties table : 4 words per entry
														;  0: X position
														;  1: Y position
														;  2: is slot in use?
														;  3: frame number
word_FFB5C2: equ $FFB5C2
word_FFB5C4: equ $FFB5C4
word_FFB5C8: equ $FFB5C8
word_FFB5CA: equ $FFB5CA
word_FFB5D0: equ $FFB5D0
word_FFB5D4: equ $FFB5D4
word_FFB5E0: equ $FFB5E0
word_FFB5E4: equ $FFB5E4
word_FFB610: equ $FFB610
word_FFB658: equ $FFB658
word_FFB6B8: equ $FFB6B8 ; related to screen shake effect
SCREEN_ADJUSTED_CURSOR_X: equ $FFB7C0
SCREEN_ADJUSTED_CURSOR_Y: equ $FFB7C2
CURRENT_OBJECT: equ $FFB7C4 ; entity, combatant, chest, etc., currently being interacted with
word_FFB7C6: equ $FFB7C6 ; item slot to give
word_FFB7C8: equ $FFB7C8 ; force member index to give item to
word_FFB7CA: equ $FFB7CA
WINDOW_SIZE: equ $FFB7D4 ; window size
WINDOW_POSITION: equ $FFB7D6 ; window position
word_FFB7D8: equ $FFB7D8 ; window width ?
WINDOW_LAYOUT_LOADING_SPACE: equ $FFB7DA ; window layout data
byte_FFB7EC: equ $FFB7EC
CURRENT_SPEAKER_NAME_VDPTILES: equ $FFB7F0 ; used when speaking to force members in headquarters
byte_FFB7F4: equ $FFB7F4
byte_FFB7FC: equ $FFB7FC
byte_FFB804: equ $FFB804
byte_FFB808: equ $FFB808 ; member status window : class name
byte_FFB80A: equ $FFB80A
byte_FFB80C: equ $FFB80C
byte_FFB810: equ $FFB810
byte_FFB816: equ $FFB816
byte_FFB822: equ $FFB822
byte_FFB82C: equ $FFB82C ; member status window : status effects indicators
byte_FFB82E: equ $FFB82E
byte_FFB834: equ $FFB834
byte_FFB83A: equ $FFB83A ; magic menu window : spell name
														; item menu window : item name
byte_FFB84C: equ $FFB84C ; member status window : status effects indicators (2nd row)
byte_FFB84E: equ $FFB84E
byte_FFB850: equ $FFB850
byte_FFB854: equ $FFB854
byte_FFB858: equ $FFB858
byte_FFB860: equ $FFB860
byte_FFB864: equ $FFB864
byte_FFB86C: equ $FFB86C
byte_FFB86E: equ $FFB86E ; member status window : LV
byte_FFB87C: equ $FFB87C
byte_FFB884: equ $FFB884 ; member status window : ATTACK
byte_FFB886: equ $FFB886
byte_FFB88C: equ $FFB88C ; magic menu window : MP cost
byte_FFB894: equ $FFB894
byte_FFB8C0: equ $FFB8C0 ; member status window : current HP
byte_FFB8C4: equ $FFB8C4 ; member status window : max HP
byte_FFB8DC: equ $FFB8DC ; member status window : DEFENSE
byte_FFB918: equ $FFB918 ; member status window : current MP
byte_FFB91C: equ $FFB91C ; member status window : max MP
byte_FFB934: equ $FFB934 ; member status window : MOVE
byte_FFB96A: equ $FFB96A
byte_FFB974: equ $FFB974
byte_FFB976: equ $FFB976 ; member status window : EX
byte_FFB980: equ $FFB980
byte_FFB98C: equ $FFB98C ; member status window : AGILITY
byte_FFB9A0: equ $FFB9A0
byte_FFB9A8: equ $FFB9A8
byte_FFB9AE: equ $FFB9AE
byte_FFB9D6: equ $FFB9D6
byte_FFBA0C: equ $FFBA0C
byte_FFBA1A: equ $FFBA1A ; member status window : spells start
byte_FFBA2C: equ $FFBA2C
byte_FFBA42: equ $FFBA42
byte_FFBA46: equ $FFBA46
byte_FFBA58: equ $FFBA58
MAP_WIDTH: equ $FFBC52
MAP_HEIGHT: equ $FFBC54
word_FFBC58: equ $FFBC58
word_FFBC5A: equ $FFBC5A
word_FFBC5C: equ $FFBC5C
word_FFBC5E: equ $FFBC5E
word_FFBC60: equ $FFBC60 ; tileset animation?
word_FFBC62: equ $FFBC62
word_FFBC64: equ $FFBC64
word_FFBC66: equ $FFBC66 ; tileset animation frame (water and such)
word_FFBC68: equ $FFBC68 ; tileset animation?
ENEMY_BATTLE_SPRITE: equ $FFBC6A
ENEMY_BATTLE_PALETTE: equ $FFBC6C
ALLY_BATTLE_SPRITE: equ $FFBC6E ; battle sprite number?
ALLY_BATTLE_PALETTE: equ $FFBC70
BATTLESCENE_ENEMY: equ $FFBC72
BATTLESCENE_ALLY: equ $FFBC74
word_FFBC76: equ $FFBC76 ; animation type?
word_FFBC78: equ $FFBC78 ; copy of equipped weapon index used during battlescene command execution
ENEMY_BATTLESPRITE_ANIMATION_SPEED: equ $FFBC7A
ENEMY_BATTLESPRITE_ANIMATION_COUNTER: equ $FFBC7C
ALLY_BATTLESPRITE_ANIMATION_SPEED: equ $FFBC7E
ALLY_BATTLESPRITE_ANIMATION_COUNTER: equ $FFBC80
ENEMY_BATTLE_ANIMATION: equ $FFBC82
ALLY_BATTLE_ANIMATION: equ $FFBC86
word_FFBC8A: equ $FFBC8A
word_FFBC8C: equ $FFBC8C
BATTLE_SCENE_ACTORS: equ $FFBC8E ; start of battlescene data table
ENTITIES_KILLED_BY_LAST_ATTACK_LIST: equ $FFC08E ; indexes of characters/enemies killed by last attack
byte_FFC0AA: equ $FFC0AA
word_FFC0B2: equ $FFC0B2
MEMBERS_LIST_SYMBOL: equ $FFC0B6 ; VDP tile entry for either the "Cl", "Fw", or "Eq" symbols displayed in some instances of the members list screen
CURRENT_SAVE_SLOT: equ $FFC0B8
word_FFC0BA: equ $FFC0BA
SPEECH_SFX: equ $FFC0BE
byte_FFC0C0: equ $FFC0C0
byte_FFC0D0: equ $FFC0D0
byte_FFC140: equ $FFC140
DONT_SEND_SOUND_COMMANDS: equ $FFC141 ; don't play sound if !=0 ?
word_FFC1C4: equ $FFC1C4
word_FFC1C6: equ $FFC1C6
ROM_CHECKSUM: equ $FFC1C8
DEBUG_MODE_ACTIVATED: equ $FFC1CA
DEBUG_MODE_UNLOCKED: equ $FFC1CB
MOVE_COSTS: equ $FFC200 ; move costs table : -1 = blocked space
TARGETING_GROUP_BITFIELD: equ $FFC600 ; targeting group flags
														; 
														;     bit 0 = friends
														;     bit 1 = foes
														;     bit 2 = target all of the above (e.g., Aura level 4)
BATTLE_HEADER_POINTER: equ $FFC602 ; start of battle pointers
AI_REGIONS_POINTER: equ $FFC606
dword_FFC60A: equ $FFC60A
ENEMY_DATA_POINTER: equ $FFC60E
dword_FFC612: equ $FFC612
ENEMIES_LIST_POINTER: equ $FFC616
FORCE_POSITIONS_POINTER: equ $FFC61A
ENEMY_POSITIONS_POINTER: equ $FFC61E
ENEMY_BEHAVIORS_POINTER: equ $FFC622
ENEMY_DATA: equ $FFC628
byte_FFCB28: equ $FFCB28
word_FFCB38: equ $FFCB38
word_FFCB3A: equ $FFCB3A
word_FFCB3C: equ $FFCB3C
CURRENT_ATTACK_TYPE: equ $FFCB3E ; 0 = regular
														; 1 = special (e.g., elemental breaths, laser, machine gun, demon blaze)
CURRENT_BATTLEACTION_TYPE: equ $FFCB3F ; 0 = attack
														; 1 = cast spell
														; 2 = use item
CURRENT_ITEM_OR_SPELL: equ $FFCB40
CURRENT_RANGE: equ $FFCB42
CURRENT_EFFECT: equ $FFCB43
TARGETING_RANGE_BITFIELD: equ $FFCB44 ; bit 0: target friends
														; bit 1: target foes
														; bit 2: affect all targeted group members on map (e.g., Aura level 4)
CURRENT_RANGE_MAX_DISTANCE: equ $FFCB46
CURRENT_RANGE_MIN_DISTANCE: equ $FFCB48
TRIGGERED_AI_REGIONS: equ $FFCB4A
PRIORITY_ROUTINE_ADDRESS: equ $FFCB4C
EXPERIENCE_TO_GAIN: equ $FFCB50
COINS_TO_GAIN: equ $FFCB52
ITEM_DROPPED_FLAG: equ $FFCB54 ; whether to drop item? other flags?
ITEM_TO_DROP: equ $FFCB56
word_FFCB58: equ $FFCB58 ; amount of damage to inflict
MP_COST_OF_SPELL_BEING_CAST: equ $FFCB5A
NUMBER_OF_ATTACKS: equ $FFCB5C
DAMAGE_MULTIPLIER: equ $FFCB5E ; critical hit damage multiplier, in units of 0.5
SELECTED_ITEM_SLOT: equ $FFCB60 ; currently selected item slot number
SELECTED_ITEM_ENTRY: equ $FFCB62 ; currently selected item index
BATTLE_MESSAGE_OFFSET: equ $FFCB65 ; battle message offset (+463)
SPECIAL_ATTACK_PERCENT: equ $FFCB66
SPECIAL_ATTACK_INDEX: equ $FFCB67
BATTLE_SCENE_ALLY: equ $FFCB68
BATTLE_SCENE_ENEMY: equ $FFCB69
CURSED_ITEMS_SETTINGS: equ $FFCB6A ; bit 0 set = chance to paralyze, bit 1 set = chance to inflict damage back to attacker
byte_FFCB6B: equ $FFCB6B
byte_FFCB6C: equ $FFCB6C
OPPONENT_TARGET_INDEX: equ $FFCB6E ; Are actor and target on the same team? (Equals $FFFF if true.)
BATTLESCENE_MESSAGE_INDEX: equ $FFCB70 ; start of battlescene data (10 bytes)
BATTLESCENE_ACTOR_INDEX: equ $FFCB72 ; battlescene actor's combatant index
BATTLESCENE_ITEM_OR_SPELL_INDEX: equ $FFCB74 ; index of item or spell being used
BATTLESCENE_SPELL_LEVEL: equ $FFCB76
dword_FFCB7A: equ $FFCB7A
CANNOT_USE_ITEM_FLAG: equ $FFCB7E
IS_ASLEEP_FLAG: equ $FFCB80 ; set to 1 if true
IS_POISONED_FLAG: equ $FFCB81
FORCE_MEMBERS_LIST_LENGTH: equ $FFCB82 ; force members list length
FORCE_MEMBERS_LIST: equ $FFCB84 ; force members list
byte_FFCB85: equ $FFCB85
BATTLESCENE_SPRITE_INDEX: equ $FFCBA6
BATTLESCENE_PALETTE_INDEX: equ $FFCBA8
BATTLESCENE_ANIMATION_INDEX: equ $FFCBAA
word_FFCBAC: equ $FFCBAC
EQUIPPED_WEAPON_INDEX: equ $FFCBAE
WEAPON_SPRITE_INDEX: equ $FFCBB0
BATTLE_ANIMATION_TYPE: equ $FFCBB2 ; related to: special attacks, critical hits, and Max's Dark Dragon finisher
byte_FFCBB3: equ $FFCBB3
DISPLAYED_EMEMY_NAME: equ $FFCBB4
DEBUG_SPECIAL_ATTACK: equ $FFCBC6
DEBUG_DOUBLE_ATTACK: equ $FFCBC7 ; always double attack if != 0
DEBUG_CRACK_ITEM: equ $FFCBC8 ; item always crack when set
DEBUG_EFFECT_FAILURE: equ $FFCBC9 ; status effect application always succeeds if != 0
PLANE_A_MAP_LAYOUT: equ $FFD000 ; Plane A layout
byte_FFD040: equ $FFD040
word_FFD082: equ $FFD082
word_FFD0BC: equ $FFD0BC
byte_FFD140: equ $FFD140
byte_FFD1C0: equ $FFD1C0
REGION_LOCK_STRING_1: equ $FFD488
REGION_LOCK_STRING_2: equ $FFD608
word_FFD692: equ $FFD692
REGION_LOCK_STRING_3: equ $FFD788
word_FFD902: equ $FFD902
byte_FFD940: equ $FFD940
byte_FFD980: equ $FFD980
word_FFD984: equ $FFD984
byte_FFD9C0: equ $FFD9C0
byte_FFDC86: equ $FFDC86
byte_FFE000: equ $FFE000
CURRENT_SHOP: equ $FFF000
byte_FFF001: equ $FFF001
word_FFF002: equ $FFF002
dword_FFF006: equ $FFF006
byte_FFF00A: equ $FFF00A
byte_FFF00B: equ $FFF00B
byte_FFF00C: equ $FFF00C
byte_FFF00D: equ $FFF00D
byte_FFF00E: equ $FFF00E
MAP_WIDTH_0: equ $FFF800
MAP_HEIGHT_0: equ $FFF801
TEXT_X_POSITION: equ $FFF802
TEXT_Y_POSITION: equ $FFF803
byte_FFF804: equ $FFF804
COMPRESSED_STRING_LENGTH: equ $FFF805
byte_FFF806: equ $FFF806
byte_FFF807: equ $FFF807 ; map something something...?
DIALOG_INDEX: equ $FFF808
DECODED_TEXT_SYMBOL: equ $FFF809 ; determines which huffman tree to use for next symbol decoding
byte_FFF80A: equ $FFF80A
byte_FFF80B: equ $FFF80B
MAP_SPRITES_LIST: equ $FFF80C
TEMP_INPUT_STATES: equ $FFF818
byte_FFF819: equ $FFF819
byte_FFF81A: equ $FFF81A
byte_FFF81B: equ $FFF81B
byte_FFF81C: equ $FFF81C ; gets set to $FF before clearing GUI layer?
byte_FFF81D: equ $FFF81D
byte_FFF81F: equ $FFF81F
byte_FFF820: equ $FFF820
byte_FFF821: equ $FFF821 ; diagonal input? 1=UR, 2=DR, 3=DL, 4=UL?
word_FFF830: equ $FFF830
word_FFF832: equ $FFF832
word_FFF834: equ $FFF834 ; some form of counter?
word_FFF842: equ $FFF842
MESSAGE_ARG_NAME_1: equ $FFF844
MESSAGE_ARG_NAME_2: equ $FFF846
MESSAGE_ARG_NAME_3: equ $FFF848
DIALOG_STRING_TO_PRINT: equ $FFF84C
byte_FFF88C: equ $FFF88C
word_FFF8CC: equ $FFF8CC
TILE_NUMBER: equ $FFF8CE
TILE_EVENT: equ $FFF8D0
word_FFF8D2: equ $FFF8D2 ; tile roof group?
word_FFF8D4: equ $FFF8D4 ; tile roof group?
word_FFF8D6: equ $FFF8D6 ; offset based on tile position?
word_FFF8D8: equ $FFF8D8
STRING_BYTE: equ $FFF8DA
STRING_BIT_COUNTER: equ $FFF8DC
word_FFF8DE: equ $FFF8DE
word_FFF8E0: equ $FFF8E0
word_FFF8E2: equ $FFF8E2
word_FFF8E4: equ $FFF8E4
word_FFF8EA: equ $FFF8EA
word_FFF8EC: equ $FFF8EC
MESSAGE_ARG_NUMBER: equ $FFF900 ; contains current number loaded for printing
CURRENT_MESSAGE_ASCII_BYTE_ADDRESS: equ $FFF904 ; address of current ASCII byte in RAM (for printing names in messages)
COMPRESSED_STRING_POINTER: equ $FFF908 ; address of current Huffman-encoded script byte
CURRENT_MESSAGE_NAME_INDEX_ADDRESS: equ $FFF90C ; address of current name index in RAM
dword_FFF910: equ $FFF910
dword_FFF914: equ $FFF914
dword_FFF918: equ $FFF918
dword_FFF91C: equ $FFF91C
dword_FFF920: equ $FFF920
dword_FFF924: equ $FFF924
dword_FFF928: equ $FFF928
MAP_SPRITE_DATA_POINTER: equ $FFF92C
dword_FFF938: equ $FFF938
dword_FFF93C: equ $FFF93C
ERRCODE_DWORD0: equ $FFFFF8
ERRCODE_DWORD1: equ $FFFFFC
; END OF SEGMENT RAM OFFSETS FROM RAM:FF0000 TO 0:01000000

