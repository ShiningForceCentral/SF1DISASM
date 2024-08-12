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
    
txt:        macro
                move.w #\1,d0
                trap   #DISPLAY_MESSAGE
            endm
    
clstxt:     macro
                trap #CLOSE_MESSAGE_WINDOW
            endm


; ---------------------------------------------------------------------------
; Data definition macros
; ---------------------------------------------------------------------------
    
defineBitfieldWithParam: macro Prefix,Bitfield,Param
    if (type(\Prefix\\Param)&32>0)
Value: = \Prefix\\Param
    else
Value: = \Param
    endc
Next: substr ,,"\Bitfield"
i:  = instr("\Next","|")
    while (i>0)
Symbol: substr ,i-1,"\Next"
    if (type(\Prefix\\Symbol)&32>0)
Value: = Value|\Prefix\\Symbol
    else
Value: = Value|\Symbol
    endc
Next: substr i+1,,"\Next"
i:  = instr("\Next","|")
    endw
    if (type(\Prefix\\Next)&32>0)
Value: = Value|\Prefix\\Next
    else
Value: = Value|\Next
    endc
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
    endc
    endm


; ---------------------------------------------------------------------------
; 
; ---------------------------------------------------------------------------

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
                defineShorthand.b RANGE_TARGETS_,\1
            endm

costume:    macro
                defineShorthand.b ALLY_,\1
                defineShorthand.b ITEM_,\1
                defineShorthand.b MAPSPRITE_,\1
            endm
    
shopList:   macro
                defineShorthand.b SHOPTYPE_,\1
            rept narg-1
                defineShorthand.b ITEM_,\2
            shift
            endr
                dc.b $FF
            endm

speechSfx:  macro
                dc.b \1-SFX_DIALOG_BLEEP_1
            endm

creditsAlly:macro
                defineShorthand.b ALLY_,\1
                defineShorthand.b CLASS_,\2
                defineBitfield.b ITEM_,\3
            endm
    
vdpTile:    macro
            if (narg=0)
                   dc.w 0
               else
                   defineBitfield.w VDPTILE_,\1
               endc
            endm
    
vdpBaseTile: macro
                defineBitfieldWithParam.w VDPTILE_,\1,VDPTILE_PALETTE3|VDPTILE_PRIORITY_BIT
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
