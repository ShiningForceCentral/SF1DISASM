
; GAME SECTION 08 :
; Sprite sets, map sprite scripts, map data, tile animation data
; FREE SPACE : 7187 bytes.


p_pt_TileAnimations:
		dc.l pt_TileAnimations
p_pt_Maps:      dc.l pt_Maps
p_pt_SpriteSets:dc.l pt_SpriteSets

; =============== S U B R O U T I N E =======================================

sub_8000C:
		jmp     sub_80EE0(pc)   

    ; End of function sub_8000C

pt_SpriteSets:  dc.l SpriteSet00
		dc.l SpriteSet01
		dc.l SpriteSet01
		dc.l SpriteSet02
		dc.l SpriteSet03
		dc.l SpriteSet04
		dc.l SpriteSet05
		dc.l SpriteSet06
		dc.l SpriteSet07
		dc.l SpriteSet08
		dc.l SpriteSet09
		dc.l SpriteSet10
		dc.l SpriteSet11
		dc.l SpriteSet11
		dc.l SpriteSet12
		dc.l SpriteSet12
		dc.l SpriteSet13
		dc.l SpriteSet14
		dc.l SpriteSet15
		dc.l SpriteSet16
		dc.l SpriteSet16
		dc.l SpriteSet17
		dc.l SpriteSet18
		dc.l SpriteSet19
		dc.l SpriteSet20
		dc.l SpriteSet21
		dc.l SpriteSet22
		dc.l SpriteSet23
		dc.l SpriteSet23
		dc.l SpriteSet23
		dc.l SpriteSet23
		dc.l SpriteSet23
		dc.l SpriteSet23
		dc.l SpriteSet23
		dc.l SpriteSet24
		dc.l SpriteSet25
		dc.l SpriteSet25
		dc.l SpriteSet25
		dc.l SpriteSet26
		dc.l SpriteSet26
		dc.l SpriteSet26
		dc.l SpriteSet26
		dc.l SpriteSet26
		dc.l SpriteSet26
		dc.l SpriteSet26
		dc.l SpriteSet27
		dc.l SpriteSet28
		dc.l SpriteSet29
		dc.l SpriteSet30
		dc.l SpriteSet31
		dc.l SpriteSet32
		dc.l SpriteSet33
		dc.l SpriteSet34
		dc.l SpriteSet35
SpriteSet00:    incbin "data/maps/spritesets/mapspriteset00.bin"
SpriteSet01:    incbin "data/maps/spritesets/mapspriteset01.bin"
SpriteSet02:    incbin "data/maps/spritesets/mapspriteset02.bin"
SpriteSet03:    incbin "data/maps/spritesets/mapspriteset03.bin"
SpriteSet04:    incbin "data/maps/spritesets/mapspriteset04.bin"
SpriteSet05:    incbin "data/maps/spritesets/mapspriteset05.bin"
SpriteSet06:    incbin "data/maps/spritesets/mapspriteset06.bin"
SpriteSet07:    incbin "data/maps/spritesets/mapspriteset07.bin"
SpriteSet08:    incbin "data/maps/spritesets/mapspriteset08.bin"
SpriteSet09:    incbin "data/maps/spritesets/mapspriteset09.bin"
SpriteSet10:    incbin "data/maps/spritesets/mapspriteset10.bin"
SpriteSet11:    incbin "data/maps/spritesets/mapspriteset11.bin"
SpriteSet12:    incbin "data/maps/spritesets/mapspriteset12.bin"
SpriteSet13:    incbin "data/maps/spritesets/mapspriteset13.bin"
SpriteSet14:    incbin "data/maps/spritesets/mapspriteset14.bin"
SpriteSet15:    incbin "data/maps/spritesets/mapspriteset15.bin"
SpriteSet16:    incbin "data/maps/spritesets/mapspriteset16.bin"
SpriteSet17:    incbin "data/maps/spritesets/mapspriteset17.bin"
SpriteSet18:    incbin "data/maps/spritesets/mapspriteset18.bin"
SpriteSet19:    incbin "data/maps/spritesets/mapspriteset19.bin"
SpriteSet20:    incbin "data/maps/spritesets/mapspriteset20.bin"
SpriteSet21:    incbin "data/maps/spritesets/mapspriteset21.bin"
SpriteSet22:    incbin "data/maps/spritesets/mapspriteset22.bin"
SpriteSet23:    incbin "data/maps/spritesets/mapspriteset23.bin"
SpriteSet24:    incbin "data/maps/spritesets/mapspriteset24.bin"
SpriteSet25:    incbin "data/maps/spritesets/mapspriteset25.bin"
SpriteSet26:    incbin "data/maps/spritesets/mapspriteset26.bin"
SpriteSet27:    incbin "data/maps/spritesets/mapspriteset27.bin"
SpriteSet28:    incbin "data/maps/spritesets/mapspriteset28.bin"
SpriteSet29:    incbin "data/maps/spritesets/mapspriteset29.bin"
SpriteSet30:    incbin "data/maps/spritesets/mapspriteset30.bin"
SpriteSet31:    incbin "data/maps/spritesets/mapspriteset31.bin"
SpriteSet32:    incbin "data/maps/spritesets/mapspriteset32.bin"
SpriteSet33:    incbin "data/maps/spritesets/mapspriteset33.bin"
SpriteSet34:    incbin "data/maps/spritesets/mapspriteset34.bin"
SpriteSet35:    incbin "data/maps/spritesets/mapspriteset35.bin"

; =============== S U B R O U T I N E =======================================

; Load address into table at 80EFE based on byte D of sprite data

sub_80EE0:
		clr.w   d0
		move.b  $D(a0),d0
		beq.s   loc_80EF8
		tst.b   1(a0)
		bmi.s   loc_80EF8
		lsl.w   #2,d0
		movea.l pt_MapSpriteScripts(pc,d0.w),a1
		tst.b   d0
		rts
loc_80EF8:
		ori     #1,ccr
		rts

    ; End of function sub_80EE0

pt_MapSpriteScripts:
		dc.l MapSpriteScript00
		dc.l MapSpriteScript01
		dc.l MapSpriteScript02
		dc.l MapSpriteScript03
		dc.l MapSpriteScript04
		dc.l MapSpriteScript05
		dc.l MapSpriteScript06
		dc.l MapSpriteScript07
		dc.l MapSpriteScript08
		dc.l MapSpriteScript09
		dc.l MapSpriteScript10
		dc.l MapSpriteScript11
		dc.l MapSpriteScript12
		dc.l MapSpriteScript13
		dc.l MapSpriteScript14
		dc.l MapSpriteScript15
		dc.l MapSpriteScript16
		dc.l MapSpriteScript17
		dc.l MapSpriteScript18
		dc.l MapSpriteScript19
		dc.l MapSpriteScript20
		dc.l MapSpriteScript21
		dc.l MapSpriteScript22
		dc.l MapSpriteScript23
		dc.l MapSpriteScript24
		dc.l MapSpriteScript25
		dc.l MapSpriteScript26
		dc.l MapSpriteScript27
		dc.l MapSpriteScript28
		dc.l MapSpriteScript29
		dc.l MapSpriteScript30
		dc.l MapSpriteScript31
		dc.l MapSpriteScript32
		dc.l MapSpriteScript33
		dc.l MapSpriteScript34
		dc.l MapSpriteScript35
		dc.l MapSpriteScript36
		dc.l MapSpriteScript37
		dc.l MapSpriteScript38
		dc.l MapSpriteScript39
		dc.l MapSpriteScript40
		dc.l MapSpriteScript41
		dc.l MapSpriteScript42
		dc.l MapSpriteScript43
		dc.l MapSpriteScript44
		dc.l MapSpriteScript45
		dc.l MapSpriteScript46
		dc.l MapSpriteScript47
		dc.l MapSpriteScript48
		dc.l MapSpriteScript49
		dc.l MapSpriteScript50
		dc.l MapSpriteScript51
		dc.l MapSpriteScript52
		dc.l MapSpriteScript53
		dc.l MapSpriteScript54
		dc.l MapSpriteScript55
		dc.l MapSpriteScript56
		dc.l MapSpriteScript57
		dc.l MapSpriteScript58
		dc.l MapSpriteScript59
		dc.l MapSpriteScript60
		dc.l MapSpriteScript61
		dc.l MapSpriteScript62
		dc.l MapSpriteScript63
		dc.l MapSpriteScript64
		dc.l MapSpriteScript65
		dc.l MapSpriteScript66
		dc.l MapSpriteScript67
		dc.l MapSpriteScript68
		dc.l MapSpriteScript69
		dc.l MapSpriteScript70
		dc.l MapSpriteScript71
		dc.l MapSpriteScript72
		dc.l MapSpriteScript73
		dc.l MapSpriteScript74
		dc.l MapSpriteScript75
		dc.l MapSpriteScript76
		dc.l MapSpriteScript77
		dc.l MapSpriteScript78
		dc.l MapSpriteScript79
		dc.l MapSpriteScript80
		dc.l MapSpriteScript81
		dc.l MapSpriteScript82
		dc.l MapSpriteScript83
		dc.l MapSpriteScript84
		dc.l MapSpriteScript85
		dc.l MapSpriteScript86
		dc.l MapSpriteScript87
		dc.l MapSpriteScript88
		dc.l MapSpriteScript89
		dc.l MapSpriteScript90
		dc.l MapSpriteScript91
		dc.l MapSpriteScript92
		dc.l MapSpriteScript93
		dc.l MapSpriteScript94
		dc.l MapSpriteScript95
		dc.l MapSpriteScript96
		dc.l MapSpriteScript97
		dc.l MapSpriteScript98
		dc.l MapSpriteScript99
		dc.l MapSpriteScript100
		dc.l MapSpriteScript101
		dc.l MapSpriteScript102
		dc.l MapSpriteScript103
		dc.l MapSpriteScript104
		dc.l MapSpriteScript105
		dc.l MapSpriteScript106
		dc.l MapSpriteScript107
		dc.l MapSpriteScript108
		dc.l MapSpriteScript109
		dc.l MapSpriteScript110
		dc.l MapSpriteScript111
		dc.l MapSpriteScript112
		dc.l MapSpriteScript113
		dc.l MapSpriteScript114
		dc.l MapSpriteScript115
		dc.l MapSpriteScript116
		dc.l MapSpriteScript117
		dc.l MapSpriteScript118
		dc.l MapSpriteScript119
		dc.l MapSpriteScript120
		dc.l MapSpriteScript121
		dc.l MapSpriteScript122
		dc.l MapSpriteScript123
		dc.l MapSpriteScript124
		dc.l MapSpriteScript125
		dc.l MapSpriteScript126
		dc.l MapSpriteScript127
		dc.l MapSpriteScript128
		dc.l MapSpriteScript129
		dc.l MapSpriteScript130
		dc.l MapSpriteScript131
		dc.l MapSpriteScript132
		dc.l MapSpriteScript133
		dc.l MapSpriteScript134
		dc.l MapSpriteScript135
		dc.l MapSpriteScript136
		dc.l MapSpriteScript137
		dc.l MapSpriteScript138
		dc.l MapSpriteScript139
		dc.l MapSpriteScript140
		dc.l MapSpriteScript141
		dc.l MapSpriteScript142
		dc.l MapSpriteScript143
		dc.l MapSpriteScript144
		dc.l MapSpriteScript145
		dc.l MapSpriteScript146
		dc.l MapSpriteScript147
		dc.l MapSpriteScript148
		dc.l MapSpriteScript149
		dc.l MapSpriteScript150
		dc.l MapSpriteScript151
		dc.l MapSpriteScript152
		dc.l MapSpriteScript153
		dc.l MapSpriteScript154
		dc.l MapSpriteScript155
		dc.l MapSpriteScript156
		dc.l MapSpriteScript157
		dc.l MapSpriteScript158
		dc.l MapSpriteScript159
		dc.l MapSpriteScript160
		dc.l MapSpriteScript161
		dc.l MapSpriteScript162
		dc.l MapSpriteScript163
		dc.l MapSpriteScript164
		dc.l MapSpriteScript165
		dc.l MapSpriteScript166
		dc.l MapSpriteScript167
		dc.l MapSpriteScript168
		dc.l MapSpriteScript169
		dc.l MapSpriteScript170
		dc.l MapSpriteScript171
MapSpriteScript00:
		incbin "data/scripting/mapspritescripts/mapspritescript00.bin"
MapSpriteScript01:
		incbin "data/scripting/mapspritescripts/mapspritescript01.bin"
MapSpriteScript02:
		incbin "data/scripting/mapspritescripts/mapspritescript02.bin"
MapSpriteScript03:
		incbin "data/scripting/mapspritescripts/mapspritescript03.bin"
MapSpriteScript04:
		incbin "data/scripting/mapspritescripts/mapspritescript04.bin"
MapSpriteScript05:
		incbin "data/scripting/mapspritescripts/mapspritescript05.bin"
MapSpriteScript06:
		incbin "data/scripting/mapspritescripts/mapspritescript06.bin"
MapSpriteScript07:
		incbin "data/scripting/mapspritescripts/mapspritescript07.bin"
MapSpriteScript08:
		incbin "data/scripting/mapspritescripts/mapspritescript08.bin"
MapSpriteScript09:
		incbin "data/scripting/mapspritescripts/mapspritescript09.bin"
MapSpriteScript10:
		incbin "data/scripting/mapspritescripts/mapspritescript10.bin"
MapSpriteScript11:
		incbin "data/scripting/mapspritescripts/mapspritescript11.bin"
MapSpriteScript12:
		incbin "data/scripting/mapspritescripts/mapspritescript12.bin"
MapSpriteScript13:
		incbin "data/scripting/mapspritescripts/mapspritescript13.bin"
MapSpriteScript14:
		incbin "data/scripting/mapspritescripts/mapspritescript14.bin"
MapSpriteScript15:
		incbin "data/scripting/mapspritescripts/mapspritescript15.bin"
MapSpriteScript16:
		incbin "data/scripting/mapspritescripts/mapspritescript16.bin"
MapSpriteScript17:
		incbin "data/scripting/mapspritescripts/mapspritescript17.bin"
MapSpriteScript18:
		incbin "data/scripting/mapspritescripts/mapspritescript18.bin"
MapSpriteScript19:
		incbin "data/scripting/mapspritescripts/mapspritescript19.bin"
MapSpriteScript20:
		incbin "data/scripting/mapspritescripts/mapspritescript20.bin"
MapSpriteScript21:
		incbin "data/scripting/mapspritescripts/mapspritescript21.bin"
MapSpriteScript22:
		incbin "data/scripting/mapspritescripts/mapspritescript22.bin"
MapSpriteScript23:
		incbin "data/scripting/mapspritescripts/mapspritescript23.bin"
MapSpriteScript24:
		incbin "data/scripting/mapspritescripts/mapspritescript24.bin"
MapSpriteScript25:
		incbin "data/scripting/mapspritescripts/mapspritescript25.bin"
MapSpriteScript26:
		incbin "data/scripting/mapspritescripts/mapspritescript26.bin"
MapSpriteScript27:
		incbin "data/scripting/mapspritescripts/mapspritescript27.bin"
MapSpriteScript28:
		incbin "data/scripting/mapspritescripts/mapspritescript28.bin"
MapSpriteScript29:
		incbin "data/scripting/mapspritescripts/mapspritescript29.bin"
MapSpriteScript30:
		incbin "data/scripting/mapspritescripts/mapspritescript30.bin"
MapSpriteScript31:
		incbin "data/scripting/mapspritescripts/mapspritescript31.bin"
MapSpriteScript32:
		incbin "data/scripting/mapspritescripts/mapspritescript32.bin"
MapSpriteScript33:
		incbin "data/scripting/mapspritescripts/mapspritescript33.bin"
MapSpriteScript34:
		incbin "data/scripting/mapspritescripts/mapspritescript34.bin"
MapSpriteScript35:
		incbin "data/scripting/mapspritescripts/mapspritescript35.bin"
MapSpriteScript36:
		incbin "data/scripting/mapspritescripts/mapspritescript36.bin"
MapSpriteScript37:
		incbin "data/scripting/mapspritescripts/mapspritescript37.bin"
MapSpriteScript38:
		incbin "data/scripting/mapspritescripts/mapspritescript38.bin"
MapSpriteScript39:
		incbin "data/scripting/mapspritescripts/mapspritescript39.bin"
MapSpriteScript40:
		incbin "data/scripting/mapspritescripts/mapspritescript40.bin"
MapSpriteScript41:
		incbin "data/scripting/mapspritescripts/mapspritescript41.bin"
MapSpriteScript42:
		incbin "data/scripting/mapspritescripts/mapspritescript42.bin"
MapSpriteScript43:
		incbin "data/scripting/mapspritescripts/mapspritescript43.bin"
MapSpriteScript44:
		incbin "data/scripting/mapspritescripts/mapspritescript44.bin"
MapSpriteScript45:
		incbin "data/scripting/mapspritescripts/mapspritescript45.bin"
MapSpriteScript46:
		incbin "data/scripting/mapspritescripts/mapspritescript46.bin"
MapSpriteScript47:
		incbin "data/scripting/mapspritescripts/mapspritescript47.bin"
MapSpriteScript48:
		incbin "data/scripting/mapspritescripts/mapspritescript48.bin"
MapSpriteScript49:
		incbin "data/scripting/mapspritescripts/mapspritescript49.bin"
MapSpriteScript50:
		incbin "data/scripting/mapspritescripts/mapspritescript50.bin"
MapSpriteScript51:
		incbin "data/scripting/mapspritescripts/mapspritescript51.bin"
MapSpriteScript52:
		incbin "data/scripting/mapspritescripts/mapspritescript52.bin"
MapSpriteScript53:
		incbin "data/scripting/mapspritescripts/mapspritescript53.bin"
MapSpriteScript54:
		incbin "data/scripting/mapspritescripts/mapspritescript54.bin"
MapSpriteScript55:
		incbin "data/scripting/mapspritescripts/mapspritescript55.bin"
MapSpriteScript56:
		incbin "data/scripting/mapspritescripts/mapspritescript56.bin"
MapSpriteScript57:
		incbin "data/scripting/mapspritescripts/mapspritescript57.bin"
MapSpriteScript58:
		incbin "data/scripting/mapspritescripts/mapspritescript58.bin"
MapSpriteScript59:
		incbin "data/scripting/mapspritescripts/mapspritescript59.bin"
MapSpriteScript60:
		incbin "data/scripting/mapspritescripts/mapspritescript60.bin"
MapSpriteScript61:
		incbin "data/scripting/mapspritescripts/mapspritescript61.bin"
MapSpriteScript62:
		incbin "data/scripting/mapspritescripts/mapspritescript62.bin"
MapSpriteScript63:
		incbin "data/scripting/mapspritescripts/mapspritescript63.bin"
MapSpriteScript64:
		incbin "data/scripting/mapspritescripts/mapspritescript64.bin"
MapSpriteScript65:
		incbin "data/scripting/mapspritescripts/mapspritescript65.bin"
MapSpriteScript66:
		incbin "data/scripting/mapspritescripts/mapspritescript66.bin"
MapSpriteScript67:
		incbin "data/scripting/mapspritescripts/mapspritescript67.bin"
MapSpriteScript68:
		incbin "data/scripting/mapspritescripts/mapspritescript68.bin"
MapSpriteScript69:
		incbin "data/scripting/mapspritescripts/mapspritescript69.bin"
MapSpriteScript70:
		incbin "data/scripting/mapspritescripts/mapspritescript70.bin"
MapSpriteScript71:
		incbin "data/scripting/mapspritescripts/mapspritescript71.bin"
MapSpriteScript72:
		incbin "data/scripting/mapspritescripts/mapspritescript72.bin"
MapSpriteScript73:
		incbin "data/scripting/mapspritescripts/mapspritescript73.bin"
MapSpriteScript74:
		incbin "data/scripting/mapspritescripts/mapspritescript74.bin"
MapSpriteScript75:
		incbin "data/scripting/mapspritescripts/mapspritescript75.bin"
MapSpriteScript76:
		incbin "data/scripting/mapspritescripts/mapspritescript76.bin"
MapSpriteScript77:
		incbin "data/scripting/mapspritescripts/mapspritescript77.bin"
MapSpriteScript78:
		incbin "data/scripting/mapspritescripts/mapspritescript78.bin"
MapSpriteScript79:
		incbin "data/scripting/mapspritescripts/mapspritescript79.bin"
MapSpriteScript80:
		incbin "data/scripting/mapspritescripts/mapspritescript80.bin"
MapSpriteScript81:
		incbin "data/scripting/mapspritescripts/mapspritescript81.bin"
MapSpriteScript82:
		incbin "data/scripting/mapspritescripts/mapspritescript82.bin"
MapSpriteScript83:
		incbin "data/scripting/mapspritescripts/mapspritescript83.bin"
MapSpriteScript84:
		incbin "data/scripting/mapspritescripts/mapspritescript84.bin"
MapSpriteScript85:
		incbin "data/scripting/mapspritescripts/mapspritescript85.bin"
MapSpriteScript86:
		incbin "data/scripting/mapspritescripts/mapspritescript86.bin"
MapSpriteScript87:
		incbin "data/scripting/mapspritescripts/mapspritescript87.bin"
MapSpriteScript88:
		incbin "data/scripting/mapspritescripts/mapspritescript88.bin"
MapSpriteScript89:
		incbin "data/scripting/mapspritescripts/mapspritescript89.bin"
MapSpriteScript90:
		incbin "data/scripting/mapspritescripts/mapspritescript90.bin"
MapSpriteScript91:
		incbin "data/scripting/mapspritescripts/mapspritescript91.bin"
MapSpriteScript92:
		incbin "data/scripting/mapspritescripts/mapspritescript92.bin"
MapSpriteScript93:
		incbin "data/scripting/mapspritescripts/mapspritescript93.bin"
MapSpriteScript94:
		incbin "data/scripting/mapspritescripts/mapspritescript94.bin"
MapSpriteScript95:
		incbin "data/scripting/mapspritescripts/mapspritescript95.bin"
MapSpriteScript96:
		incbin "data/scripting/mapspritescripts/mapspritescript96.bin"
MapSpriteScript97:
		incbin "data/scripting/mapspritescripts/mapspritescript97.bin"
MapSpriteScript98:
		incbin "data/scripting/mapspritescripts/mapspritescript98.bin"
MapSpriteScript99:
		incbin "data/scripting/mapspritescripts/mapspritescript99.bin"
MapSpriteScript100:
		incbin "data/scripting/mapspritescripts/mapspritescript100.bin"
MapSpriteScript101:
		incbin "data/scripting/mapspritescripts/mapspritescript101.bin"
MapSpriteScript102:
		incbin "data/scripting/mapspritescripts/mapspritescript102.bin"
MapSpriteScript103:
		incbin "data/scripting/mapspritescripts/mapspritescript103.bin"
MapSpriteScript104:
		incbin "data/scripting/mapspritescripts/mapspritescript104.bin"
MapSpriteScript105:
		incbin "data/scripting/mapspritescripts/mapspritescript105.bin"
MapSpriteScript106:
		incbin "data/scripting/mapspritescripts/mapspritescript106.bin"
MapSpriteScript107:
		incbin "data/scripting/mapspritescripts/mapspritescript107.bin"
MapSpriteScript108:
		incbin "data/scripting/mapspritescripts/mapspritescript108.bin"
MapSpriteScript109:
		incbin "data/scripting/mapspritescripts/mapspritescript109.bin"
MapSpriteScript110:
		incbin "data/scripting/mapspritescripts/mapspritescript110.bin"
MapSpriteScript111:
		incbin "data/scripting/mapspritescripts/mapspritescript111.bin"
MapSpriteScript112:
		incbin "data/scripting/mapspritescripts/mapspritescript112.bin"
MapSpriteScript113:
		incbin "data/scripting/mapspritescripts/mapspritescript113.bin"
MapSpriteScript114:
		incbin "data/scripting/mapspritescripts/mapspritescript114.bin"
MapSpriteScript115:
		incbin "data/scripting/mapspritescripts/mapspritescript115.bin"
MapSpriteScript116:
		incbin "data/scripting/mapspritescripts/mapspritescript116.bin"
MapSpriteScript117:
		incbin "data/scripting/mapspritescripts/mapspritescript117.bin"
MapSpriteScript118:
		incbin "data/scripting/mapspritescripts/mapspritescript118.bin"
MapSpriteScript119:
		incbin "data/scripting/mapspritescripts/mapspritescript119.bin"
MapSpriteScript120:
		incbin "data/scripting/mapspritescripts/mapspritescript120.bin"
MapSpriteScript121:
		incbin "data/scripting/mapspritescripts/mapspritescript121.bin"
MapSpriteScript122:
		incbin "data/scripting/mapspritescripts/mapspritescript122.bin"
MapSpriteScript123:
		incbin "data/scripting/mapspritescripts/mapspritescript123.bin"
MapSpriteScript124:
		incbin "data/scripting/mapspritescripts/mapspritescript124.bin"
MapSpriteScript125:
		incbin "data/scripting/mapspritescripts/mapspritescript125.bin"
MapSpriteScript126:
		incbin "data/scripting/mapspritescripts/mapspritescript126.bin"
MapSpriteScript127:
		incbin "data/scripting/mapspritescripts/mapspritescript127.bin"
MapSpriteScript128:
		incbin "data/scripting/mapspritescripts/mapspritescript128.bin"
MapSpriteScript129:
		incbin "data/scripting/mapspritescripts/mapspritescript129.bin"
MapSpriteScript130:
		incbin "data/scripting/mapspritescripts/mapspritescript130.bin"
MapSpriteScript131:
		incbin "data/scripting/mapspritescripts/mapspritescript131.bin"
MapSpriteScript132:
		incbin "data/scripting/mapspritescripts/mapspritescript132.bin"
MapSpriteScript133:
		incbin "data/scripting/mapspritescripts/mapspritescript133.bin"
MapSpriteScript134:
		incbin "data/scripting/mapspritescripts/mapspritescript134.bin"
MapSpriteScript135:
		incbin "data/scripting/mapspritescripts/mapspritescript135.bin"
MapSpriteScript136:
		incbin "data/scripting/mapspritescripts/mapspritescript136.bin"
MapSpriteScript137:
		incbin "data/scripting/mapspritescripts/mapspritescript137.bin"
MapSpriteScript138:
		incbin "data/scripting/mapspritescripts/mapspritescript138.bin"
MapSpriteScript139:
		incbin "data/scripting/mapspritescripts/mapspritescript139.bin"
MapSpriteScript140:
		incbin "data/scripting/mapspritescripts/mapspritescript140.bin"
MapSpriteScript141:
		incbin "data/scripting/mapspritescripts/mapspritescript141.bin"
MapSpriteScript142:
		incbin "data/scripting/mapspritescripts/mapspritescript142.bin"
MapSpriteScript143:
		incbin "data/scripting/mapspritescripts/mapspritescript143.bin"
MapSpriteScript144:
		incbin "data/scripting/mapspritescripts/mapspritescript144.bin"
MapSpriteScript145:
		incbin "data/scripting/mapspritescripts/mapspritescript145.bin"
MapSpriteScript146:
		incbin "data/scripting/mapspritescripts/mapspritescript146.bin"
MapSpriteScript147:
		incbin "data/scripting/mapspritescripts/mapspritescript147.bin"
MapSpriteScript148:
		incbin "data/scripting/mapspritescripts/mapspritescript148.bin"
MapSpriteScript149:
		incbin "data/scripting/mapspritescripts/mapspritescript149.bin"
MapSpriteScript150:
		incbin "data/scripting/mapspritescripts/mapspritescript150.bin"
MapSpriteScript151:
		incbin "data/scripting/mapspritescripts/mapspritescript151.bin"
MapSpriteScript152:
		incbin "data/scripting/mapspritescripts/mapspritescript152.bin"
MapSpriteScript153:
		incbin "data/scripting/mapspritescripts/mapspritescript153.bin"
MapSpriteScript154:
		incbin "data/scripting/mapspritescripts/mapspritescript154.bin"
MapSpriteScript155:
		incbin "data/scripting/mapspritescripts/mapspritescript155.bin"
MapSpriteScript156:
		incbin "data/scripting/mapspritescripts/mapspritescript156.bin"
MapSpriteScript157:
		incbin "data/scripting/mapspritescripts/mapspritescript157.bin"
MapSpriteScript158:
		incbin "data/scripting/mapspritescripts/mapspritescript158.bin"
MapSpriteScript159:
		incbin "data/scripting/mapspritescripts/mapspritescript159.bin"
MapSpriteScript160:
		incbin "data/scripting/mapspritescripts/mapspritescript160.bin"
MapSpriteScript161:
		incbin "data/scripting/mapspritescripts/mapspritescript161.bin"
MapSpriteScript162:
		incbin "data/scripting/mapspritescripts/mapspritescript162.bin"
MapSpriteScript163:
		incbin "data/scripting/mapspritescripts/mapspritescript163.bin"
MapSpriteScript164:
		incbin "data/scripting/mapspritescripts/mapspritescript164.bin"
MapSpriteScript165:
		incbin "data/scripting/mapspritescripts/mapspritescript165.bin"
MapSpriteScript166:
		incbin "data/scripting/mapspritescripts/mapspritescript166.bin"
MapSpriteScript167:
		incbin "data/scripting/mapspritescripts/mapspritescript167.bin"
MapSpriteScript168:
		incbin "data/scripting/mapspritescripts/mapspritescript168.bin"
MapSpriteScript169:
		incbin "data/scripting/mapspritescripts/mapspritescript169.bin"
MapSpriteScript170:
		incbin "data/scripting/mapspritescripts/mapspritescript170.bin"
MapSpriteScript171:
		incbin "data/scripting/mapspritescripts/mapspritescript171.bin"

pt_Maps:
        dc.l Map00Section0
		dc.l Map00Section1
		dc.l Map00Section2
		dc.l Map00Section3
		dc.l Map00Section4
		dc.l Map00Section5
		dc.w 5
		dc.b 1
		dc.b $38|MAP_CHAPTER_1             ; 0000 0xxx = chapter association
		dc.l 0

		dc.l Map00Section0
		dc.l Map01Section1
		dc.l Map01Section2
		dc.l Map01Section3
		dc.l Map01Section4
		dc.l Map01Section5
		dc.w 5
		dc.b 6
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map02Section1
		dc.l Map02Section2
		dc.l Map02Section3
		dc.l Map02Section4
		dc.l Map02Section5
		dc.w 4
		dc.b 0
		dc.b 8|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map02Section1
		dc.l Map02Section2
		dc.l Map02Section3
		dc.l Map03Section4
		dc.l Map02Section5
		dc.w 4
		dc.b 0
		dc.b 8|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map04Section1
		dc.l Map04Section2
		dc.l Map04Section3
		dc.l Map04Section4
		dc.l Map04Section5
		dc.w 5
		dc.b 3
		dc.b $80|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map05Section1
		dc.l Map04Section2
		dc.l Map05Section3
		dc.l Map05Section4
		dc.l Map05Section5
		dc.w 5
		dc.b 2
		dc.b $58|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map04Section1
		dc.l Map04Section2
		dc.l Map04Section3
		dc.l Map06Section4
		dc.l Map06Section5
		dc.w $4A
		dc.b 3
		dc.b $18|MAP_CHAPTER_2
		dc.l 0

		dc.l Map00Section0
		dc.l Map07Section1
		dc.l Map01Section2
		dc.l Map01Section3
		dc.l Map07Section4
		dc.l Map07Section5
		dc.w 5
		dc.b 7
		dc.b 0|MAP_CHAPTER_3
		dc.l 0

		dc.l Map00Section0
		dc.l Map08Section1
		dc.l Map08Section2
		dc.l Map08Section3
		dc.l Map08Section4
		dc.l Map08Section5
		dc.w 4
		dc.b 5
		dc.b 0|MAP_CHAPTER_2
		dc.l 0

		dc.l Map00Section0
		dc.l Map09Section1
		dc.l Map09Section2
		dc.l Map09Section3
		dc.l Map09Section4
		dc.l Map00Section5
		dc.w $207
		dc.b 4
		dc.b $28|MAP_CHAPTER_4
		dc.l 0

		dc.l Map00Section0
		dc.l Map09Section1
		dc.l Map09Section2
		dc.l Map09Section3
		dc.l Map10Section4
		dc.l Map00Section5
		dc.w $D3
		dc.b 4
		dc.b $20|MAP_CHAPTER_4
		dc.l 0

		dc.l Map00Section0
		dc.l Map05Section1
		dc.l Map04Section2
		dc.l Map05Section3
		dc.l Map11Section4
		dc.l Map11Section5
		dc.w 5
		dc.b 2
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map09Section1
		dc.l Map09Section2
		dc.l Map09Section3
		dc.l Map12Section4
		dc.l Map12Section5
		dc.w $4A
		dc.b 4
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map13Section1
		dc.l Map13Section2
		dc.l Map13Section3
		dc.l Map13Section4
		dc.l Map02Section5
		dc.w $4A
		dc.b 9
		dc.b 0|MAP_CHAPTER_2
		dc.l 0

		dc.l Map00Section0
		dc.l Map00Section1
		dc.l Map00Section2
		dc.l Map00Section3
		dc.l Map14Section4
		dc.l Map02Section5
		dc.w 5
		dc.b 1
		dc.b $10|MAP_CHAPTER_8
		dc.l 0

		dc.l Map00Section0
		dc.l Map15Section1
		dc.l Map13Section2
		dc.l Map13Section3
		dc.l Map15Section4
		dc.l Map15Section5
		dc.w $29D
		dc.b 8
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map00Section0
		dc.l Map08Section1
		dc.l Map08Section2
		dc.l Map08Section3
		dc.l Map16Section4
		dc.l Map16Section5
		dc.w 5
		dc.b 5
		dc.b 0|MAP_CHAPTER_7
		dc.l 0

		dc.l Map00Section0
		dc.l Map01Section1
		dc.l Map01Section2
		dc.l Map01Section3
		dc.l Map17Section4
		dc.l Map01Section5
		dc.w 5
		dc.b 6
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map18Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map18Section4
		dc.l Map18Section5
		dc.w $FFFF
		dc.b $10
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map18Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map19Section4
		dc.l Map18Section5
		dc.w $2B1
		dc.b $10
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map18Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map20Section4
		dc.l Map18Section5
		dc.w $11E
		dc.b $10
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map18Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map21Section4
		dc.l Map18Section5
		dc.w $2E8
		dc.b $10
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map18Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map22Section4
		dc.l Map18Section5
		dc.w $89
		dc.b $10
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map18Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map23Section4
		dc.l Map18Section5
		dc.w 2
		dc.b $10
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map18Section0
		dc.l Map24Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map24Section4
		dc.l Map24Section5
		dc.w $61
		dc.b $11
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map25Section0
		dc.l Map25Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map25Section4
		dc.l Map25Section5
		dc.w 2
		dc.b $21
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map25Section0
		dc.l Map26Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map26Section4
		dc.l Map26Section5
		dc.w 3
		dc.b $20
		dc.b 0|MAP_CHAPTER_2
		dc.l 0

		dc.l Map25Section0
		dc.l Map25Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map27Section4
		dc.l Map27Section5
		dc.w 6
		dc.b $21
		dc.b 0|MAP_CHAPTER_6
		dc.l 0

		dc.l Map25Section0
		dc.l Map26Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map28Section4
		dc.l Map28Section5
		dc.w $340
		dc.b $20
		dc.b 0|MAP_CHAPTER_3
		dc.l 0

		dc.l Map29Section0
		dc.l Map29Section1
		dc.l Map29Section2
		dc.l Map29Section3
		dc.l Map29Section4
		dc.l Map00Section5
		dc.w 4
		dc.b $33
		dc.b 0|MAP_CHAPTER_4
		dc.l 0

		dc.l Map29Section0
		dc.l Map30Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map30Section4
		dc.l Map04Section5
		dc.w $7D
		dc.b $30
		dc.b $10|MAP_CHAPTER_7
		dc.l 0

		dc.l Map29Section0
		dc.l Map31Section1
		dc.l Map31Section2
		dc.l Map31Section3
		dc.l Map31Section4
		dc.l Map04Section5
		dc.w 4
		dc.b $31
		dc.b $28|MAP_CHAPTER_6
		dc.l 0

		dc.l Map29Section0
		dc.l Map32Section1
		dc.l Map32Section2
		dc.l Map32Section3
		dc.l Map32Section4
		dc.l Map32Section5
		dc.w $96
		dc.b $37
		dc.b $30|MAP_CHAPTER_5
		dc.l 0

		dc.l Map29Section0
		dc.l Map30Section1
		dc.l Map18Section2
		dc.l Map18Section3
		dc.l Map33Section4
		dc.l Map33Section5
		dc.w 4
		dc.b $30
		dc.b $20|MAP_CHAPTER_6
		dc.l 0

		dc.l Map29Section0
		dc.l Map34Section1
		dc.l Map29Section2
		dc.l Map34Section3
		dc.l Map34Section4
		dc.l Map02Section5
		dc.w 4
		dc.b $32
		dc.b 0|MAP_CHAPTER_7
		dc.l 0

		dc.l Map29Section0
		dc.l Map35Section1
		dc.l Map32Section2
		dc.l Map35Section3
		dc.l Map35Section4
		dc.l Map35Section5
		dc.w $294
		dc.b $34
		dc.b 0|MAP_CHAPTER_3
		dc.l 0

		dc.l Map29Section0
		dc.l Map36Section1
		dc.l Map32Section2
		dc.l Map35Section3
		dc.l Map36Section4
		dc.l Map02Section5
		dc.w $96
		dc.b $35
		dc.b $30|MAP_CHAPTER_7
		dc.l 0

		dc.l Map29Section0
		dc.l Map37Section1
		dc.l Map32Section2
		dc.l Map37Section3
		dc.l Map37Section4
		dc.l Map37Section5
		dc.w $294
		dc.b $36
		dc.b 0|MAP_CHAPTER_8
		dc.l 0

		dc.l Map29Section0
		dc.l Map38Section1
		dc.l Map02Section3
		dc.l Map00Section4
		dc.l Map38Section4
		dc.l Map11Section5
		dc.w 4
		dc.b $38
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map29Section0
		dc.l Map39Section1
		dc.l Map02Section3
		dc.l Map00Section4
		dc.l Map39Section4
		dc.l Map39Section5
		dc.w $294
		dc.b $39
		dc.b 0|MAP_CHAPTER_8
		dc.l 0

		dc.l Map40Section0
		dc.l Map40Section1
		dc.l Map02Section3
		dc.l Map00Section4
		dc.l Map40Section4
		dc.l Map40Section5
		dc.w 6
		dc.b $40
		dc.b 0|MAP_CHAPTER_1
		dc.l 0

		dc.l Map40Section0
		dc.l Map40Section1
		dc.l Map02Section3
		dc.l Map00Section4
		dc.l Map41Section4
		dc.l Map41Section5
		dc.w $35B
		dc.b $40
		dc.b 0|MAP_CHAPTER_5
		dc.l 0

		dc.l Map42Section0
		dc.l Map42Section1
		dc.l Map02Section3
		dc.l Map00Section4
		dc.l Map42Section4
		dc.l Map42Section5
		dc.w $294
		dc.b $50
		dc.b 0|MAP_CHAPTER_5
		dc.l 0

		dc.l Map42Section0
		dc.l Map43Section1
		dc.l Map02Section3
		dc.l Map00Section4
		dc.l Map43Section4
		dc.l Map43Section5
		dc.w $294
		dc.b $51
		dc.b 0|MAP_CHAPTER_8
		dc.l 0

Map00Section0:  incbin "data/maps/entries/map00/section0.bin"
Map18Section0:  incbin "data/maps/entries/map18/section0.bin"
Map25Section0:  incbin "data/maps/entries/map25/section0.bin"
Map29Section0:  incbin "data/maps/entries/map29/section0.bin"
Map40Section0:  incbin "data/maps/entries/map40/section0.bin"
Map42Section0:  incbin "data/maps/entries/map42/section0.bin"
Map02Section1:  incbin "data/maps/entries/map02/section1.bin"
Map00Section1:  incbin "data/maps/entries/map00/section1.bin"
Map05Section1:  incbin "data/maps/entries/map05/section1.bin"
Map04Section1:  incbin "data/maps/entries/map04/section1.bin"
Map09Section1:  incbin "data/maps/entries/map09/section1.bin"
Map08Section1:  incbin "data/maps/entries/map08/section1.bin"
Map01Section1:  incbin "data/maps/entries/map01/section1.bin"
Map07Section1:  incbin "data/maps/entries/map07/section1.bin"
Map15Section1:  incbin "data/maps/entries/map15/section1.bin"
Map13Section1:  incbin "data/maps/entries/map13/section1.bin"
Map18Section1:  incbin "data/maps/entries/map18/section1.bin"
Map24Section1:  incbin "data/maps/entries/map24/section1.bin"
Map26Section1:  incbin "data/maps/entries/map26/section1.bin"
Map25Section1:  incbin "data/maps/entries/map25/section1.bin"
Map30Section1:  incbin "data/maps/entries/map30/section1.bin"
Map31Section1:  incbin "data/maps/entries/map31/section1.bin"
Map34Section1:  incbin "data/maps/entries/map34/section1.bin"
Map29Section1:  incbin "data/maps/entries/map29/section1.bin"
Map35Section1:  incbin "data/maps/entries/map35/section1.bin"
Map36Section1:  incbin "data/maps/entries/map36/section1.bin"
Map37Section1:  incbin "data/maps/entries/map37/section1.bin"
Map32Section1:  incbin "data/maps/entries/map32/section1.bin"
Map38Section1:  incbin "data/maps/entries/map38/section1.bin"
Map39Section1:  incbin "data/maps/entries/map39/section1.bin"
Map40Section1:  incbin "data/maps/entries/map40/section1.bin"
Map42Section1:  incbin "data/maps/entries/map42/section1.bin"
Map43Section1:  incbin "data/maps/entries/map43/section1.bin"
Map02Section2:  incbin "data/maps/entries/map02/section2.bin"
Map00Section2:  incbin "data/maps/entries/map00/section2.bin"
Map04Section2:  incbin "data/maps/entries/map04/section2.bin"
Map09Section2:  incbin "data/maps/entries/map09/section2.bin"
Map08Section2:  incbin "data/maps/entries/map08/section2.bin"
Map01Section2:  incbin "data/maps/entries/map01/section2.bin"
Map13Section2:  incbin "data/maps/entries/map13/section2.bin"
Map18Section2:  incbin "data/maps/entries/map18/section2.bin"
Map31Section2:  incbin "data/maps/entries/map31/section2.bin"
Map29Section2:  incbin "data/maps/entries/map29/section2.bin"
Map32Section2:  incbin "data/maps/entries/map32/section2.bin"
Map02Section3:  incbin "data/maps/entries/map02/section3.bin"
Map00Section3:  incbin "data/maps/entries/map00/section3.bin"
Map05Section3:  incbin "data/maps/entries/map05/section3.bin"
Map04Section3:  incbin "data/maps/entries/map04/section3.bin"
Map09Section3:  incbin "data/maps/entries/map09/section3.bin"
Map08Section3:  incbin "data/maps/entries/map08/section3.bin"
Map01Section3:  incbin "data/maps/entries/map01/section3.bin"
Map13Section3:  incbin "data/maps/entries/map13/section3.bin"
Map18Section3:  incbin "data/maps/entries/map18/section3.bin"
Map31Section3:  incbin "data/maps/entries/map31/section3.bin"
Map34Section3:  incbin "data/maps/entries/map34/section3.bin"
Map29Section3:  incbin "data/maps/entries/map29/section3.bin"
Map35Section3:  incbin "data/maps/entries/map35/section3.bin"
Map37Section3:  incbin "data/maps/entries/map37/section3.bin"
Map32Section3:  incbin "data/maps/entries/map32/section3.bin"
Map00Section4:  incbin "data/maps/entries/map00/section4.bin"
Map01Section4:  incbin "data/maps/entries/map01/section4.bin"
Map02Section4:  incbin "data/maps/entries/map02/section4.bin"
Map03Section4:  incbin "data/maps/entries/map03/section4.bin"
Map04Section4:  incbin "data/maps/entries/map04/section4.bin"
Map05Section4:  incbin "data/maps/entries/map05/section4.bin"
Map06Section4:  incbin "data/maps/entries/map06/section4.bin"
Map07Section4:  incbin "data/maps/entries/map07/section4.bin"
Map08Section4:  incbin "data/maps/entries/map08/section4.bin"
Map09Section4:  incbin "data/maps/entries/map09/section4.bin"
Map10Section4:  incbin "data/maps/entries/map10/section4.bin"
Map11Section4:  incbin "data/maps/entries/map11/section4.bin"
Map12Section4:  incbin "data/maps/entries/map12/section4.bin"
Map13Section4:  incbin "data/maps/entries/map13/section4.bin"
Map14Section4:  incbin "data/maps/entries/map14/section4.bin"
Map15Section4:  incbin "data/maps/entries/map15/section4.bin"
Map16Section4:  incbin "data/maps/entries/map16/section4.bin"
Map17Section4:  incbin "data/maps/entries/map17/section4.bin"
Map18Section4:  incbin "data/maps/entries/map18/section4.bin"
Map19Section4:  incbin "data/maps/entries/map19/section4.bin"
Map20Section4:  incbin "data/maps/entries/map20/section4.bin"
Map21Section4:  incbin "data/maps/entries/map21/section4.bin"
Map22Section4:  incbin "data/maps/entries/map22/section4.bin"
Map23Section4:  incbin "data/maps/entries/map23/section4.bin"
Map24Section4:  incbin "data/maps/entries/map24/section4.bin"
Map25Section4:  incbin "data/maps/entries/map25/section4.bin"
Map26Section4:  incbin "data/maps/entries/map26/section4.bin"
Map27Section4:  incbin "data/maps/entries/map27/section4.bin"
Map28Section4:  incbin "data/maps/entries/map28/section4.bin"
Map29Section4:  incbin "data/maps/entries/map29/section4.bin"
Map30Section4:  incbin "data/maps/entries/map30/section4.bin"
Map31Section4:  incbin "data/maps/entries/map31/section4.bin"
Map32Section4:  incbin "data/maps/entries/map32/section4.bin"
Map33Section4:  incbin "data/maps/entries/map33/section4.bin"
Map34Section4:  incbin "data/maps/entries/map34/section4.bin"
Map35Section4:  incbin "data/maps/entries/map35/section4.bin"
Map36Section4:  incbin "data/maps/entries/map36/section4.bin"
Map37Section4:  incbin "data/maps/entries/map37/section4.bin"
Map38Section4:  incbin "data/maps/entries/map38/section4.bin"
Map39Section4:  incbin "data/maps/entries/map39/section4.bin"
Map40Section4:  incbin "data/maps/entries/map40/section4.bin"
Map41Section4:  incbin "data/maps/entries/map41/section4.bin"
Map42Section4:  incbin "data/maps/entries/map42/section4.bin"
Map43Section4:  incbin "data/maps/entries/map43/section4.bin"
Map00Section5:  incbin "data/maps/entries/map00/section5.bin"
Map01Section5:  incbin "data/maps/entries/map01/section5.bin"
Map02Section5:  incbin "data/maps/entries/map02/section5.bin"
Map04Section5:  incbin "data/maps/entries/map04/section5.bin"
Map05Section5:  incbin "data/maps/entries/map05/section5.bin"
Map06Section5:  incbin "data/maps/entries/map06/section5.bin"
Map07Section5:  incbin "data/maps/entries/map07/section5.bin"
Map08Section5:  incbin "data/maps/entries/map08/section5.bin"
Map11Section5:  incbin "data/maps/entries/map11/section5.bin"
Map12Section5:  incbin "data/maps/entries/map12/section5.bin"
Map15Section5:  incbin "data/maps/entries/map15/section5.bin"
Map16Section5:  incbin "data/maps/entries/map16/section5.bin"
Map18Section5:  incbin "data/maps/entries/map18/section5.bin"
Map24Section5:  incbin "data/maps/entries/map24/section5.bin"
Map25Section5:  incbin "data/maps/entries/map25/section5.bin"
Map26Section5:  incbin "data/maps/entries/map26/section5.bin"
Map27Section5:  incbin "data/maps/entries/map27/section5.bin"
Map28Section5:  incbin "data/maps/entries/map28/section5.bin"
Map32Section5:  incbin "data/maps/entries/map32/section5.bin"
Map33Section5:  incbin "data/maps/entries/map33/section5.bin"
Map35Section5:  incbin "data/maps/entries/map35/section5.bin"
Map37Section5:  incbin "data/maps/entries/map37/section5.bin"
Map39Section5:  incbin "data/maps/entries/map39/section5.bin"
Map40Section5:  incbin "data/maps/entries/map40/section5.bin"
Map41Section5:  incbin "data/maps/entries/map41/section5.bin"
Map42Section5:  incbin "data/maps/entries/map42/section5.bin"
Map43Section5:  incbin "data/maps/entries/map43/section5.bin"
pt_TileAnimations:
		dc.l TileAnimation0
		dc.l TileAnimation1
		dc.l TileAnimation2
		dc.l TileAnimation3
		dc.l TileAnimation4
		dc.l TileAnimation5
TileAnimation0: incbin "data/graphics/maps/tileanimations/tileanimation0.bin"
TileAnimation1: incbin "data/graphics/maps/tileanimations/tileanimation1.bin"
TileAnimation2: incbin "data/graphics/maps/tileanimations/tileanimation2.bin"
TileAnimation3: incbin "data/graphics/maps/tileanimations/tileanimation3.bin"
TileAnimation4: incbin "data/graphics/maps/tileanimations/tileanimation4.bin"
TileAnimation5: incbin "data/graphics/maps/tileanimations/tileanimation5.bin"
		align $4000
