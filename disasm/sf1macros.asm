; ---------------------------------------------------------------------------
; Align and pad
; input: length to align to, value to use as padding (default is $FF)
; ---------------------------------------------------------------------------

align:  macro
            case narg
=0              ; If no arguments given, align to word boundary.
                dcb.b *%2,$FF
=1              ; If given an address argument only, pad with default $FF value.
                dcb.b \1-(*%\1),$FF
=?              ; If two arguments or more, pad with second argument value.
                dcb.b \1-(*%\1),\2
            endcase
        endm


; ---------------------------------------------------------------------------
; Traps
; ---------------------------------------------------------------------------

sndCom:     macro
                trap #SOUND_COMMAND
                dc.w \1
            endm

openTxt:    macro
                trap #OPEN_MESSAGE_WINDOW
            endm

closeTxt:   macro
                trap #CLOSE_MESSAGE_WINDOW
            endm

clearTxt:   macro
                trap #CREATE_MESSAGE_WINDOW
            endm

txt:        macro
                move.w #\1,d0
                trap #DISPLAY_MESSAGE
            endm

txtD0:      macro
                trap #DISPLAY_MESSAGE
            endm


; ---------------------------------------------------------------------------
; Data definition macros
; ---------------------------------------------------------------------------
    
defineBitfieldWithParam: macro Prefix,Bitfield,Param
    if (type(\Prefix\\Param)&32>0)
Value: = \Prefix\\Param
    else
Value: = \Param
    endif
Next: substr ,,"\Bitfield"
i:  = instr("\Next","|")
    while (i>0)
Symbol: substr ,i-1,"\Next"
    if (type(\Prefix\\Symbol)&32>0)
Value: = Value|\Prefix\\Symbol
    else
Value: = Value|\Symbol
    endif
Next: substr i+1,,"\Next"
i:  = instr("\Next","|")
    endw
    if (type(\Prefix\\Next)&32>0)
Value: = Value|\Prefix\\Next
    else
Value: = Value|\Next
    endif
    dc.\0 Value
    endm
    
defineBitfield: macro
    defineBitfieldWithParam.\0 \1,\2,0
    endm
    
defineShorthand: macro Prefix,Shorthand
    if (type(\Prefix\\Shorthand)&32>0)
    dc.\0 \Prefix\\Shorthand
    else
    dc.\0 \Shorthand
    endif
    endm


; ---------------------------------------------------------------------------
; 
; ---------------------------------------------------------------------------

spellEffect:macro
                defineShorthand.b RANGE_,\1
                defineShorthand.b EFFECT_,\2
            endm

mpCost:     macro
                dc.b \1
                dc.b 0
            endm

range:      macro
                dc.b \2
                dc.b \1
            endm

area:       macro
                dc.b \1
            endm

targetType: macro
                defineBitfield.b RANGE_GROUP_,\1
            endm

costume:    macro
                defineShorthand.b ALLY_,\1
                defineShorthand.b ITEM_,\2
                defineShorthand.b MAPSPRITE_,\3
            endm
    
shopList:   macro
                defineShorthand.b SHOPTYPE_,\1
            rept narg-1
                defineShorthand.b ITEM_,\2
            shift
            endr
                dc.b $FF
            endm
    
chestItem:  macro
                dc.b \1
                dc.b \2
                dc.b \3
                defineBitfield.b ITEM_,\4
            endm

defineName: macro
    case narg
=3  dc.b strlen(\1)+strlen(\3)+1
=?  dc.b strlen(\1)
    endcase
    rept narg
    dc.b \1
    shift
    endr
    endm
    
className: macro
    if (narg=3)
    defineName \1,\2,\3
    else
    defineName \1
    endif
    endm
    
enemyName: macro
    defineName \1
    endm
    
itemName: macro
    if (narg=3)
    defineName \1,\2,\3
    else
    defineName \1
    endif
    endm
    
spellName: macro
    if (narg=3)
    defineName \1,\2,\3
    else
    defineName \1
    endif
    endm
    
; ally definition

allyName:   macro
	case strlen(\1)
=1
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 9,0
=2
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 8,0
=3
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 7,0
=4
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 6,0
=5
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 5,0
=6
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 4,0
=7
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 3,0
=8
    rept narg
    dc.b \1
    shift
    endr
    dcb.b 2,0
=9
    rept narg
    dc.b \1
    shift
    endr
    dc.b 0
=?
    endcase
    endm
    
allyClass:  macro
                defineShorthand.b CLASS_,\1
            endm
    
startLevel: macro
                dc.b \1
            endm
    
startATK:   macro
                dc.b \1
            endm
    
startDEF:   macro
                dc.b \1
            endm
    
startAGI:   macro
                dc.b \1
            endm
    
startMOVE:  macro
                dc.b \1
            endm
    
startCRIT:  macro
                dc.b \1
            endm
    
startEXP:   macro
                dc.b \1
            endm
    
startHP:    macro
                dc.w \1,\1
            endm
    
startMP:    macro
                dc.b \1,\1
            endm
    
status:     macro
                defineBitfield.w STATUSEFFECT_,\1
            endm
    
items:      macro
                defineBitfield.b ITEM_,\1
                defineBitfield.b ITEM_,\2
                defineBitfield.b ITEM_,\3
                defineBitfield.b ITEM_,\4
            endm
    
spells:     macro
                defineBitfield.b SPELL_,\1
                defineBitfield.b SPELL_,\2
                defineBitfield.b SPELL_,\3
                defineBitfield.b SPELL_,\4
                dcb.b 6,0
            endm
			
; enemy definition

enemyGold:  macro
                dc.w \1
            endm
    
enemyClass: macro
                defineShorthand.b CLASS_,\1
            endm
    
level:      macro
                dc.b \1
            endm
    
baseATK:    macro
                dc.b \1
            endm
    
baseDEF:    macro
                dc.b \1
            endm
    
baseAGI:    macro
                dc.b \1
            endm
    
baseHP:     macro
                dc.w \1
            endm
    
baseMP:     macro
                dc.b \1
            endm
    
movement:   macro
                dc.b \1
            endm
    
mapSprite:  macro
                defineShorthand.b MAPSPRITE_,\1
            endm
    
allyBattlesprite: macro
                defineShorthand.b ALLYBATTLESPRITE_,\1
                dc.b \2
            endm
    
battlesprite: macro
                defineShorthand.b ENEMYBATTLESPRITE_,\1
                dc.b \2
            endm
    
portrait:   macro
                defineShorthand.b PORTRAIT_,\1
            endm
			
; item definition
    
equipFlags: macro
    defineBitfield.l EQUIPFLAG_,\1
    endm
    
itemType: macro
    defineBitfield.w ITEMTYPE_,\1
    endm
    
equipEffect: macro
    defineShorthand.b EQUIPEFFECT_,\1
    dc.b \2
    endm
    
useEffect: macro
    defineShorthand.b RANGE_,\1
    defineShorthand.b EFFECT_,\2
    endm
    
turnEffect: macro
    defineShorthand.b EQUIPEFFECT_,\1
    dc.b \2
    endm
    
attackEffect: macro
    defineShorthand.b RANGE_,\1
    defineShorthand.b EFFECT_,\2
    endm
    
price: macro
    dc.w \1
    endm
    
moveType: macro
    defineShorthand.b MOVE_TYPE_,\1
    endm
    
actionType: macro
    defineShorthand.b AI_ACTION_,\1
    endm
    
resistance: macro
    defineBitfield.w RESISTANCE_,\1
    endm
    
aiSetting: macro
    defineBitfield.b CLASS_PROPERTY_,\1
    endm
    
specialAttack: macro
    defineShorthand.b SPECIAL_,\1
    endm
    
atkGrowth: macro
    dc.b \1+GROWTHCURVE_\2
    endm
    
defGrowth: macro
    dc.b \1+GROWTHCURVE_\2
    endm
    
agiGrowth: macro
    dc.b \1+GROWTHCURVE_\2
    endm
    
hpGrowth: macro
    dc.b \1+GROWTHCURVE_\2
    endm
    
mpGrowth: macro
    dc.b \1+GROWTHCURVE_\2
    endm
    
critGrowth: macro
    dc.b \1+GROWTHCURVE_\2
    endm
    
caster: macro
    defineShorthand.b ALLY_,\1
    endm
    
spellList: macro
    dc.b narg/2
    rept narg/2
    dc.b \1
    defineBitfield.b SPELL_,\2
    shift
    shift
    endr
    endm
    
weaponsprite: macro
    defineShorthand.b WEAPONSPRITE_,\1
    endm
    
numberAllies: macro
    dc.b \1
    endm
    
allyPosition: macro
    dc.b \1
	dc.b \2
    endm
    
enemyCombatant: macro
    defineShorthand.b ENEMY_,\1
    defineBitfield.b ITEM_,\2
    defineBitfield.b ITEM_,\3
    defineBitfield.b SPELL_,\4
    endm
    
numberEnemies: macro
    dc.b \1
    endm
    
enemyPosition: macro
    dc.b \1
	dc.b \2
    defineShorthand.b SPAWN_,\3
	dc.b \4
    endm
    
battleCommand: macro
    dc.b \1
	defineShorthand.b COMMAND_\2
    dc.b \3
	dc.b \4
    endm
    
aiPath:     macro
                rept narg/2
                dc.b \1
                dc.b \2
                shift
                shift
                endr
                dc.b 255
            endm

speechSfx:  macro
                dc.b \1-SFX_DIALOG_BLEEP_1
            endm

creditsAlly: macro
                defineShorthand.b ALLY_,\1
                defineShorthand.b CLASS_,\2
                defineBitfield.b ITEM_,\3
            endm
    
vdpTile: macro
            if (narg=0)
                dc.w 0
            else
                defineBitfield.w VDPTILE_,\1
            endif
        endm
    
vdpBaseTile: macro
            if (narg=0)
                dc.w VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT
            else
                defineBitfieldWithParam.w VDPTILE_,\1,VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT
            endif
        endm

vdpSprite:  macro
                dc.w \1
                defineBitfield.w VDPSPRITESIZE_,\2
                vdpTile \3
                dc.w \4
            endm

hqPosition:  macro
                defineShorthand.b FACING_,\1  ; facing
                dc.b \2  ; X
                dc.b \3  ; Y
            endm
