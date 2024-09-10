
; ASM FILE code\gameflow\battle\spellanimations.asm :
; 0x12647E..0x128F98 : Spell animation functions

; =============== S U B R O U T I N E =======================================

; In: D0 = spell animation index

ExecuteSpellAnimation:
		
		tst.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bne.w   return_1266BE
		tst.b   d0
		bmi.w   return_1266BE
		move.w  d0,d7
		add.w   d7,d7
		move.w  rjt_SpellAnimationSetups(pc,d7.w),d7
		jmp     rjt_SpellAnimationSetups(pc,d7.w)

    ; End of function ExecuteSpellAnimation

rjt_SpellAnimationSetups:
		dc.w sa00_HealingFairy_Mirrored-rjt_SpellAnimationSetups
		dc.w sa01_HealingFairy-rjt_SpellAnimationSetups
		dc.w sa00_HealingFairy_Mirrored-rjt_SpellAnimationSetups
		dc.w sa01_HealingFairy-rjt_SpellAnimationSetups
		dc.w sa04_Detox_Mirrored-rjt_SpellAnimationSetups
		dc.w sa05_Detox-rjt_SpellAnimationSetups
		dc.w sa06_Quick-rjt_SpellAnimationSetups
		dc.w sa06_Quick-rjt_SpellAnimationSetups
		dc.w sa08_Slow-rjt_SpellAnimationSetups
		dc.w sa09_Slow_Mirrored-rjt_SpellAnimationSetups
		dc.w sa10_Boost-rjt_SpellAnimationSetups
		dc.w sa10_Boost-rjt_SpellAnimationSetups
		dc.w sa12_Dispel-rjt_SpellAnimationSetups
		dc.w sa13_Dispel_Mirrored-rjt_SpellAnimationSetups
		dc.w sa14_Shield-rjt_SpellAnimationSetups
		dc.w sa14_Shield-rjt_SpellAnimationSetups
		dc.w sa16_Muddle-rjt_SpellAnimationSetups
		dc.w sa17_Muddle_Mirrored-rjt_SpellAnimationSetups
		dc.w sa18_Blaze1-rjt_SpellAnimationSetups
		dc.w sa19_Blaze1_Mirrored-rjt_SpellAnimationSetups
		dc.w sa20_Blaze2-rjt_SpellAnimationSetups
		dc.w sa21_Blaze2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa22_Blaze3-rjt_SpellAnimationSetups
		dc.w sa23_Blaze3_Mirrored-rjt_SpellAnimationSetups
		dc.w sa24_Blaze4-rjt_SpellAnimationSetups
		dc.w sa25_Blaze4_Mirrored-rjt_SpellAnimationSetups
		dc.w sa26_Freeze1-rjt_SpellAnimationSetups
		dc.w sa27_Freeze1_Mirrored-rjt_SpellAnimationSetups
		dc.w sa28_Freeze2-rjt_SpellAnimationSetups
		dc.w sa29_Freeze2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa30_Freeze3-rjt_SpellAnimationSetups
		dc.w sa31_Freeze3_Mirrored-rjt_SpellAnimationSetups
		dc.w sa32_Freeze4-rjt_SpellAnimationSetups
		dc.w sa33_Freeze4_Mirrored-rjt_SpellAnimationSetups
		dc.w sa34_Bolt1-rjt_SpellAnimationSetups
		dc.w sa35_Bolt1_Mirrored-rjt_SpellAnimationSetups
		dc.w sa36_Bolt2-rjt_SpellAnimationSetups
		dc.w sa37_Bolt2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa38_Bolt3-rjt_SpellAnimationSetups
		dc.w sa39_Bolt3_Mirrored-rjt_SpellAnimationSetups
		dc.w sa40_Bolt4-rjt_SpellAnimationSetups
		dc.w sa41_Bolt4_Mirrored-rjt_SpellAnimationSetups
		dc.w sa42_Desoul-rjt_SpellAnimationSetups
		dc.w sa43_Desoul_Mirrored-rjt_SpellAnimationSetups
		dc.w sa44_Sleep-rjt_SpellAnimationSetups
		dc.w sa45_Sleep_Mirrored-rjt_SpellAnimationSetups
		dc.w sa46_FireBreath-rjt_SpellAnimationSetups
		dc.w sa47_IceBreath-rjt_SpellAnimationSetups
		dc.w nullsub_126532-rjt_SpellAnimationSetups
		dc.w sa49_MachineGun-rjt_SpellAnimationSetups
		dc.w sa46_FireBreath-rjt_SpellAnimationSetups
		dc.w sa46_FireBreath-rjt_SpellAnimationSetups
		dc.w sa47_IceBreath-rjt_SpellAnimationSetups
		dc.w nullsub_126532-rjt_SpellAnimationSetups
		dc.w sa54_AssaultShell_Mirrored-rjt_SpellAnimationSetups
		dc.w sa55_GreenLaser1_Mirrored-rjt_SpellAnimationSetups
		dc.w nullsub_126532-rjt_SpellAnimationSetups
		dc.w sa57_GreenLaser2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa58_LaserEye-rjt_SpellAnimationSetups
		dc.w sa57_GreenLaser2_Mirrored-rjt_SpellAnimationSetups
		dc.w sa60_DemonBlaze1-rjt_SpellAnimationSetups
		dc.w sa61_DemonBlaze2-rjt_SpellAnimationSetups
		dc.w sa62_CriticalHit-rjt_SpellAnimationSetups
		dc.w sa63_DemonSmile-rjt_SpellAnimationSetups
		dc.w sa64_AssaultShell-rjt_SpellAnimationSetups
		dc.w sa65_YellowLightningBreath-rjt_SpellAnimationSetups
		dc.w sa66_GreenLaser1-rjt_SpellAnimationSetups
		dc.w sa67_PowerFist-rjt_SpellAnimationSetups
		dc.w sa68_SwordBeam-rjt_SpellAnimationSetups
		dc.w sa69_Crossbow1-rjt_SpellAnimationSetups
		dc.w sa70_BusterShot-rjt_SpellAnimationSetups
		dc.w sa71_YellowFlyingDragons-rjt_SpellAnimationSetups
		dc.w sa72_BlueLightningBreath-rjt_SpellAnimationSetups
		dc.w sa73_BlueLaser-rjt_SpellAnimationSetups
		dc.w sa74_BlueFlyingDragons-rjt_SpellAnimationSetups
		dc.w sa75_Crossbow2-rjt_SpellAnimationSetups
		dc.w sa76_Crossbow3-rjt_SpellAnimationSetups

; =============== S U B R O U T I N E =======================================

nullsub_126532:
		
		rts

    ; End of function nullsub_126532


; =============== S U B R O U T I N E =======================================

sa00_HealingFairy_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa00_HealingFairy_Mirrored


; =============== S U B R O U T I N E =======================================

sa01_HealingFairy:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa01_HealingFairy


; =============== S U B R O U T I N E =======================================

sa04_Detox_Mirrored:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa04_Detox_Mirrored


; =============== S U B R O U T I N E =======================================

sa05_Detox:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Healing

    ; End of function sa05_Detox


; =============== S U B R O U T I N E =======================================

sa06_Quick:
		moveq   #QUICK_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function sa06_Quick


; =============== S U B R O U T I N E =======================================

sa08_Slow:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Slow

    ; End of function sa08_Slow


; =============== S U B R O U T I N E =======================================

sa09_Slow_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Slow

    ; End of function sa09_Slow_Mirrored


; =============== S U B R O U T I N E =======================================

sa10_Boost:
		moveq   #BOOST_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function sa10_Boost


; =============== S U B R O U T I N E =======================================

sa12_Dispel:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Dispel

    ; End of function sa12_Dispel


; =============== S U B R O U T I N E =======================================

sa13_Dispel_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Dispel

    ; End of function sa13_Dispel_Mirrored


; =============== S U B R O U T I N E =======================================

sa14_Shield:
		moveq   #SHIELD_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function sa14_Shield


; =============== S U B R O U T I N E =======================================

sa16_Muddle:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Muddle

    ; End of function sa16_Muddle


; =============== S U B R O U T I N E =======================================

sa17_Muddle_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Muddle

    ; End of function sa17_Muddle_Mirrored


; =============== S U B R O U T I N E =======================================

sa18_Blaze1:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa18_Blaze1


; =============== S U B R O U T I N E =======================================

sa19_Blaze1_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa19_Blaze1_Mirrored


; =============== S U B R O U T I N E =======================================

sa20_Blaze2:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa20_Blaze2


; =============== S U B R O U T I N E =======================================

sa21_Blaze2_Mirrored:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa21_Blaze2_Mirrored


; =============== S U B R O U T I N E =======================================

sa22_Blaze3:
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa22_Blaze3


; =============== S U B R O U T I N E =======================================

sa23_Blaze3_Mirrored:
		
		moveq   #$FFFFFF83,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa23_Blaze3_Mirrored


; =============== S U B R O U T I N E =======================================

sa24_Blaze4:
		moveq   #4,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa24_Blaze4


; =============== S U B R O U T I N E =======================================

sa25_Blaze4_Mirrored:
		
		moveq   #$FFFFFF84,d3
		bra.w   SetupSpellAnimation_Blaze

    ; End of function sa25_Blaze4_Mirrored


; =============== S U B R O U T I N E =======================================

sa26_Freeze1:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa26_Freeze1


; =============== S U B R O U T I N E =======================================

sa27_Freeze1_Mirrored:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa27_Freeze1_Mirrored


; =============== S U B R O U T I N E =======================================

sa28_Freeze2:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa28_Freeze2


; =============== S U B R O U T I N E =======================================

sa29_Freeze2_Mirrored:
		
		moveq   #2,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa29_Freeze2_Mirrored


; =============== S U B R O U T I N E =======================================

sa30_Freeze3:
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa30_Freeze3


; =============== S U B R O U T I N E =======================================

sa31_Freeze3_Mirrored:
		
		moveq   #3,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa31_Freeze3_Mirrored


; =============== S U B R O U T I N E =======================================

sa32_Freeze4:
		moveq   #4,d3
		bra.w   SetupSpellAnimation_Freeze

    ; End of function sa32_Freeze4


; =============== S U B R O U T I N E =======================================

sa33_Freeze4_Mirrored:
		
		moveq   #4,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa33_Freeze4_Mirrored


; =============== S U B R O U T I N E =======================================

sa34_Bolt1:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa34_Bolt1


; =============== S U B R O U T I N E =======================================

sa35_Bolt1_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa35_Bolt1_Mirrored


; =============== S U B R O U T I N E =======================================

sa36_Bolt2:
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa36_Bolt2


; =============== S U B R O U T I N E =======================================

sa37_Bolt2_Mirrored:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa37_Bolt2_Mirrored


; =============== S U B R O U T I N E =======================================

sa38_Bolt3:
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa38_Bolt3


; =============== S U B R O U T I N E =======================================

sa39_Bolt3_Mirrored:
		
		moveq   #$FFFFFF83,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa39_Bolt3_Mirrored


; =============== S U B R O U T I N E =======================================

sa40_Bolt4:
		moveq   #4,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa40_Bolt4


; =============== S U B R O U T I N E =======================================

sa41_Bolt4_Mirrored:
		
		moveq   #$FFFFFF84,d3
		bra.w   SetupSpellAnimation_Bolt

    ; End of function sa41_Bolt4_Mirrored


; =============== S U B R O U T I N E =======================================

sa42_Desoul:
		clr.w   d3
		bra.w   SetupSpellAnimation_Desoul

    ; End of function sa42_Desoul


; =============== S U B R O U T I N E =======================================

sa43_Desoul_Mirrored:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Desoul

    ; End of function sa43_Desoul_Mirrored


; =============== S U B R O U T I N E =======================================

sa44_Sleep:
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Sleep

    ; End of function sa44_Sleep


; =============== S U B R O U T I N E =======================================

sa45_Sleep_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_Sleep

    ; End of function sa45_Sleep_Mirrored


; =============== S U B R O U T I N E =======================================

sa46_FireBreath:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_FireBreath

    ; End of function sa46_FireBreath


; =============== S U B R O U T I N E =======================================

sa47_IceBreath:
		
		moveq   #4,d3
		bra.w   SetupSpellAnimation_IceBreath

    ; End of function sa47_IceBreath


; =============== S U B R O U T I N E =======================================

sa49_MachineGun:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_MachineGun

    ; End of function sa49_MachineGun


; =============== S U B R O U T I N E =======================================

sa55_GreenLaser1_Mirrored:
		
		moveq   #$FFFFFF80,d3
		bra.w   SetupSpellAnimation_GreenLaser

    ; End of function sa55_GreenLaser1_Mirrored


; =============== S U B R O U T I N E =======================================

sa57_GreenLaser2_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_GreenLaser

    ; End of function sa57_GreenLaser2_Mirrored


; =============== S U B R O U T I N E =======================================

sa58_LaserEye:
		
		moveq   #$FFFFFF82,d3
		bra.w   SetupSpellAnimation_LaserEye

    ; End of function sa58_LaserEye


; =============== S U B R O U T I N E =======================================

sa69_Crossbow1:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_Crossbow

    ; End of function sa69_Crossbow1


; =============== S U B R O U T I N E =======================================

sa75_Crossbow2:
		
		moveq   #2,d3
		bra.w   SetupSpellAnimation_Crossbow

    ; End of function sa75_Crossbow2


; =============== S U B R O U T I N E =======================================

sa76_Crossbow3:
		
		moveq   #3,d3
		bra.w   SetupSpellAnimation_Crossbow

    ; End of function sa76_Crossbow3


; =============== S U B R O U T I N E =======================================

sa62_CriticalHit:
		
		 
		sndCom  SFX_CRITICAL_HIT
		rts

    ; End of function sa62_CriticalHit


; =============== S U B R O U T I N E =======================================

sa63_DemonSmile:
		
		 
		sndCom  SFX_DEMON_SMILE
		rts

    ; End of function sa63_DemonSmile


; =============== S U B R O U T I N E =======================================

sa54_AssaultShell_Mirrored:
		
		moveq   #$FFFFFF81,d3
		bra.w   SetupSpellAnimation_AssaultShell

    ; End of function sa54_AssaultShell_Mirrored


; =============== S U B R O U T I N E =======================================

sa64_AssaultShell:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_AssaultShell

    ; End of function sa64_AssaultShell

		rts

; =============== S U B R O U T I N E =======================================

sa60_DemonBlaze1:
		
		moveq   #1,d3
		bra.w   SetupSpellAnimation_DemonBlaze

    ; End of function sa60_DemonBlaze1


; =============== S U B R O U T I N E =======================================

sa61_DemonBlaze2:
		
		moveq   #2,d3
		bra.w   SetupSpellAnimation_DemonBlaze

    ; End of function sa61_DemonBlaze2


; =============== S U B R O U T I N E =======================================

; In: D2 = spell cast effect color index

PlaySpellCastEffect:
		
		 
		sndCom  SFX_SPELL_CAST
loc_12668A:
		add.w   d2,d2
		move.w  table_SpellCastEffectColors(pc,d2.w),d4
		moveq   #4,d7
@Loop:
		move.w  d4,(PALETTE_1_CURRENT).l
		jsr     (j_ApplyVIntCramDma).l
		moveq   #5,d0
		jsr     (j_Sleep).l
		clr.w   (PALETTE_1_CURRENT).l
		jsr     (j_ApplyVIntCramDma).l
		moveq   #5,d0
		jsr     (j_Sleep).l
		dbf     d7,@Loop
return_1266BE:
		
		rts

    ; End of function PlaySpellCastEffect

table_SpellCastEffectColors:
		dc.w $6CC
		dc.w $8E
		dc.w $E04
		dc.w $444
		dc.w $2E
		dc.w $82A
		dc.w $E42
		dc.w $2EE
		dc.w $2E4
		dc.w $24E
		dc.w $888
		dc.w $E00
		dc.w $4E0

; =============== S U B R O U T I N E =======================================

sub_1266DA:
		lea     byte_1266F0(pc), a0
		nop
		moveq   #$20,d0 
		jsr     sub_1271EC(pc)
		nop
		jsr     sub_1271EC(pc)
		nop
		rts

    ; End of function sub_1266DA

byte_1266F0:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b $90
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 0
		dc.b 2
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $90
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 0
		dc.b 2

; =============== S U B R O U T I N E =======================================

sub_126704:
		moveq   #$20,d0 
		moveq   #$13,d7
loc_126708:
		lea     byte_126720(pc), a0
		nop
		jsr     sub_1271EC(pc)
		nop
		dbf     d7,loc_126708
                
		jsr     (sub_320).l
		rts

    ; End of function sub_126704

byte_126720:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 0
		dc.b 0

; =============== S U B R O U T I N E =======================================

; In: D0 = 
;     D1 = sprite layer
;     D2 = number of graphics pieces to load
;     D3 = X offset
;     D4 = Y offset

LoadSpellEntityLayout:
		
		move.b  #1,((byte_FFB5B0-$1000000)).w
		movem.l d0-a1,-(sp)
loc_126734:
		move.b  (a0)+,d5
		ext.w   d5
		move.b  (a0)+,d6
		ext.w   d6
		clr.w   d7
		move.b  (a0)+,d7
		add.w   d3,d5
		addi.w  #$80,d5 
		add.w   d4,d6
		addi.w  #$80,d6 
		addi.w  #$5C0,d7
		cmpi.w  #$90,d6 
		bgt.s   loc_126758
		clr.w   d6
loc_126758:
		movem.l a0,-(sp)
		lea     ((byte_FFC0AA-$1000000)).w,a1
		movem.l a1,-(sp)
		move.w  d5,(a1)+
		move.w  d6,(a1)+
		move.w  d7,(a1)+
		move.b  (a0)+,(a1)+
		move.b  ((byte_FFB5B0-$1000000)).w,(a1)+
		move.b  (a0)+,(a1)+
		move.b  d1,(a1)
		movem.l (sp)+,a0
		jsr     sub_1271EC(pc)
		nop
		movem.l (sp)+,a0
		addq.l  #2,a0
		dbf     d2,loc_126734
                
		movem.l (sp)+,d0-a1
		rts

    ; End of function LoadSpellEntityLayout


; =============== S U B R O U T I N E =======================================

CopyPalettes:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		lea     (PALETTE_1_BASE).l,a1
		moveq   #31,d7
@Loop:
		move.l  (a0)+,(a1)+
		dbf     d7,@Loop
                
		movem.l (sp)+,a0-a1
		rts

    ; End of function CopyPalettes


; =============== S U B R O U T I N E =======================================

; Call copy palettes function, then apply dark screen tint effect

SetupScreenTint_Dark:
		
		bsr.s   CopyPalettes

    ; End of function SetupScreenTint_Dark


; =============== S U B R O U T I N E =======================================

TintScreen_Dark:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
@Loop:
		lsr     (a0)+
		dbf     d7,@Loop
                
		movem.l (sp)+,a0-a1
		rts

    ; End of function TintScreen_Dark


; =============== S U B R O U T I N E =======================================

RefreshScreenTint_Dark:
		
		bsr.w   CopySpellPalette
		bsr.s   TintScreen_Dark
RestoreSpellPalette:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_2_BASE_06).l,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		movem.l (sp)+,a0-a1
		rts

    ; End of function RefreshScreenTint_Dark


; =============== S U B R O U T I N E =======================================

CopySpellPalette:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_2_BASE_06).l,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a1)+,(a0)+
		move.l  (a1)+,(a0)+
		move.w  (a1)+,(a0)+
		lea     (PALETTE_1_CURRENT).l,a0
		lea     (PALETTE_1_BASE).l,a1
		moveq   #31,d7
@Loop:
		move.l  (a1)+,(a0)+
		dbf     d7,@Loop
                
		movem.l (sp)+,a0-a1
		rts

    ; End of function CopySpellPalette

		movem.l d0-d1/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #31,d7
		bra.s   loc_126836

; =============== S U B R O U T I N E =======================================

; Call copy palettes function, then apply greyscale screen tint effect

SetupScreenTint_Grey:
		
		bsr.w   CopyPalettes

    ; End of function SetupScreenTint_Grey


; =============== S U B R O U T I N E =======================================

TintScreen_Grey:
		
		movem.l d0-d1/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
loc_126836:
		move.w  (a0),d0
		andi.w  #$F,d0          ; take red component of color
		lsr.w   #1,d0           ; half it
		move.w  (a0),d1
		andi.w  #$F0,d1 ; take green component of color
		lsr.w   #4,d1
		add.w   d1,d0           ; add to red
		move.w  (a0),d1
		andi.w  #$F00,d1        ; take blue component of color
		lsr.w   #8,d1
		lsr.w   #2,d1           ; divide it by 4
		add.w   d1,d0
		lsl.w   #1,d0           ; add to green/red
		ext.l   d0
		divu.w  #3,d0
		cmpi.w  #$E,d0
		ble.s   @Continue
		moveq   #$E,d0          ; cap at maximum intensity
@Continue:
		move.w  d0,d1
		lsl.w   #4,d1
		or.w    d1,d0
		lsl.w   #4,d1
		or.w    d1,d0
		move.w  d0,(a0)+
		dbf     d7,loc_126836
                
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function TintScreen_Grey


; =============== S U B R O U T I N E =======================================

sub_12687A:
		movem.l d0-d1/d6-a1,-(sp)
		move.w  #$30,d7 
		add.w   d7,(VERTICAL_SCROLL_DATA).l
		add.w   d7,(VERTICAL_SCROLL_DATA+2).l
		moveq   #$3F,d6 
		lea     (SPRITE_00_PROPERTIES).l,a1
loc_126896:
		sub.w   d7,(a1)
		addq.l  #8,a1
		dbf     d6,loc_126896
                
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		lea     (PALETTE_1_BASE).l,a0
		moveq   #$3F,d7 
loc_1268B2:
		move.w  (a0),d0
		andi.w  #$F,d0
		lsr.w   #1,d0
		move.w  (a0),d1
		andi.w  #$F0,d1 
		lsr.w   #4,d1
		add.w   d1,d0
		move.w  (a0),d1
		andi.w  #$F00,d1
		lsr.w   #8,d1
		lsr.w   #2,d1
		add.w   d1,d0
		lsl.w   #1,d0
		ext.l   d0
		divu.w  #3,d0
		cmpi.w  #$E,d0
		ble.s   loc_1268E0
		moveq   #$E,d0
loc_1268E0:
		move.w  d0,d1
		lsl.w   #4,d1
		or.w    d1,d0
		or.w    d1,d0
		lsl.w   #4,d1
		or.w    d1,d0
		move.w  d0,(a0)+
		dbf     d7,loc_1268B2
                
		jsr     (j_ApplyVIntCramDma).w
		movem.l (sp)+,d0-d1/d6-a1
		rts

    ; End of function sub_12687A


; =============== S U B R O U T I N E =======================================

RefreshScreenTint_Grey:
		
		bsr.w   CopySpellPalette
		bsr.w   TintScreen_Grey
		bra.w   RestoreSpellPalette

    ; End of function RefreshScreenTint_Grey


; =============== S U B R O U T I N E =======================================

; Call copy palettes function, then apply red screen tint effect

SetupScreenTint_Red:
		
		bsr.w   CopyPalettes

    ; End of function SetupScreenTint_Red


; =============== S U B R O U T I N E =======================================

TintScreen_Red:
		
		movem.l d0/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
@Loop:
		move.w  (a0),d0
		andi.w  #$E,d0          ; take only red component of color
		lsl.w   #1,d0           ; double it
		cmpi.w  #$E,d0
		ble.s   @Continue
		moveq   #$E,d0          ; cap at full red
@Continue:
		lsr     (a0)
		andi.w  #$EE0,(a0)      ; half other colors
		or.w    d0,(a0)+        ; mix in new red value
		dbf     d7,@Loop
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function TintScreen_Red


; =============== S U B R O U T I N E =======================================

RefreshScreenTint_Red:
		
		bsr.w   CopySpellPalette
		bsr.s   TintScreen_Red
		bra.w   RestoreSpellPalette

    ; End of function RefreshScreenTint_Red

		bsr.w   CopyPalettes

; =============== S U B R O U T I N E =======================================

TintScreen_Blue:
		
		movem.l d0/a0,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		moveq   #$3F,d7 
@Loop:
		move.w  (a0),d0
		andi.w  #$E00,d0        ; take blue component of color
		lsl.w   #1,d0           ; double it
		cmpi.w  #$E00,d0
		ble.s   @Continue
		move.w  #$E00,d0        ; cap at maximum intensity
@Continue:
		lsr     (a0)
		andi.w  #$EE,(a0) ; half other colors
		or.w    d0,(a0)+        ; mix in new blue value
		dbf     d7,@Loop
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function TintScreen_Blue

		bsr.w   CopySpellPalette
		bsr.s   TintScreen_Blue
		bra.w   RestoreSpellPalette

; =============== S U B R O U T I N E =======================================

RestorePalettes:
		
		movem.l a0-a1,-(sp)
		lea     (PALETTE_1_CURRENT).l,a0
		lea     (PALETTE_1_BASE).l,a1
		moveq   #31,d7
loc_126994:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_126994
                
		jsr     (j_ApplyVIntCramDma).w
		movem.l (sp)+,a0-a1
		rts

    ; End of function RestorePalettes


; =============== S U B R O U T I N E =======================================

sub_1269A4:
		movem.l a0-a1,-(sp)
		lea     (PALETTE_3_CURRENT).l,a0
		lea     (PALETTE_3_BASE).l,a1
		moveq   #7,d7
loc_1269B6:
		move.l  (a1)+,(a0)+
		dbf     d7,loc_1269B6
                
		jsr     (j_ApplyVIntCramDma).w
		movem.l (sp)+,a0-a1
		rts

    ; End of function sub_1269A4

SpellPalette_Bolt:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bolt.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_Bolt:
		
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_Bolt(pc), a0
		andi.w  #7,d3
		subq.w  #1,d3
		mulu.w  #$A,d3
		adda.w  d3,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Bolt).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_Bolt


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Bolt:
		
		bsr.s   LoadSpellGraphics_Bolt
		bsr.w   sub_1266DA
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_BOLT,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		move.w  #$80,d6 
		move.w  #$60,d5 
		moveq   #1,d4
		clr.w   d3
		bsr.w   LoadSpellEntity 
		moveq   #BOLT_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Bolt

SpellPalette_Blaze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-blaze.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_Blaze:
		
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Red
		lea     SpellPalette_Blaze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Blaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_Blaze


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Blaze:
		
		bsr.s   LoadSpellGraphics_Blaze
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		clr.b   ((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   CreateMainBlazeEntity
		moveq   #BLAZE_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Blaze


; =============== S U B R O U T I N E =======================================

ClearSpellEntities:
		
		movem.l d7-a0,-(sp)
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #31,d7
@Loop:
		clr.l   (a0)+
		clr.l   (a0)+
		dbf     d7,@Loop
                
		movem.l (sp)+,d7-a0
		rts

    ; End of function ClearSpellEntities


; =============== S U B R O U T I N E =======================================

CreateMainBlazeEntity:
		
		movem.l d0/d3-a0,-(sp)
		moveq   #32,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		move.w  d7,d3
		tst.w   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   @Mirrored       ; branch if animation is played on enemy side
		move.w  #$B8,d6 
		move.w  #$A0,d5 
		bra.s   @Continue
@Mirrored:
		move.w  #$48,d6 
		move.w  #$90,d5 
@Continue:
		moveq   #1,d4
		bsr.w   LoadSpellEntity 
		movem.l (sp)+,d0/d3-a0
		rts

    ; End of function CreateMainBlazeEntity


; =============== S U B R O U T I N E =======================================

; In: D3 = frame number
;     D4 = is slot in use?
;     D5 = Y position
;     D6 = X position

LoadSpellEntity:
		
		movem.l d7-a0,-(sp)
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
@Loop:
		tst.w   4(a0)
		bne.w   @NextSlot       ; keep testing until free slot is found
		move.w  d6,(a0)+
		move.w  d5,(a0)+
		move.w  d4,(a0)+
		move.w  d3,(a0)+
		bra.s   @Done
@NextSlot:
		addq.l  #8,a0
		dbf     d7,@Loop
@Done:
		movem.l (sp)+,d7-a0
		rts

    ; End of function LoadSpellEntity


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_AssaultShell:
		
		move.w  d3,-(sp)
		sndCom  SFX_HIT
		lea     SpellPalette_Blaze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Blaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.w  (sp)+,d3
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_ASSAULT_SHELL,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function SetupSpellAnimation_AssaultShell

SpellPalette_Freeze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-freeze.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_Freeze:
		
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Grey
		lea     SpellPalette_Freeze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Freeze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$420,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_Freeze


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Freeze:
		
		bsr.s   LoadSpellGraphics_Freeze
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_FREEZE,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #FREEZE_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Freeze


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_IceBreath:
		
		bsr.s   LoadSpellGraphics_Freeze
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_ICE_BREATH,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #ICE_BREATH_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_IceBreath

SpellPalette_DemonBlaze:
		incbin "data/graphics/battles/spells/palettes/spellpalette-demonblaze.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_DemonBlaze:
		
		movem.l d3,-(sp)
		sndCom  SFX_FIRE_BREATH
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_DemonBlaze(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_DemonBlaze).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).w
		jsr     (j_WaitForDmaQueueProcessing).w
		bsr.w   ClearSpellEntities
		movem.l (sp)+,d3
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_DEMON_BLAZE,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #6,d2
		bra.w   loc_12668A

    ; End of function SetupSpellAnimation_DemonBlaze

SpellPalette_Desoul:
		incbin "data/graphics/battles/spells/palettes/spellpalette-desoul.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Desoul:
		
		bsr.w   SetupScreenTint_Grey
		lea     SpellPalette_Desoul(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Desoul).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).w
		jsr     (j_WaitForDmaQueueProcessing).w
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.w  #$28,((word_FFB658-$1000000)).w 
		move.b  #SPELLANIM_TYPE_DESOUL,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #DESOUL_SPELLCAST_COLOR,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Desoul


; =============== S U B R O U T I N E =======================================

sub_126CF0:
		lea     byte_126D1E(pc), a0
		nop
		moveq   #5,d7
loc_126CF8:
		move.l  a0,-(sp)
		movem.w d3-d4/d7,-(sp)
		moveq   #$20,d0 
		moveq   #1,d1
		clr.w   d2
		bsr.w   LoadSpellEntityLayout
		moveq   #2,d0
		jsr     (j_Sleep).l
		movem.w (sp)+,d3-d4/d7
		movea.l (sp)+,a0
		addq.l  #5,a0
		dbf     d7,loc_126CF8
                
		rts

    ; End of function sub_126CF0

byte_126D1E:    dc.b $F0
		dc.b $F0
		dc.b $20
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $30
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $40
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $50
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $60
		dc.b $F
		dc.b 0
		dc.b $F0
		dc.b $F0
		dc.b $70
		dc.b $F
		dc.b 0

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Dispel:
		
		bsr.w   CopyPalettes
		move.w  #$8E4,(PALETTE_2_CURRENT_07).l
		move.w  #$260,(PALETTE_2_CURRENT_08).l
		moveq   #DISPEL_SPELLCAST_COLOR,d2
		bra.s   loc_126D9A

    ; End of function SetupSpellAnimation_Dispel


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Muddle:
		
		bsr.w   CopyPalettes
		move.w  #$4EE,(PALETTE_2_CURRENT_07).l
		move.w  #$6AA,(PALETTE_2_CURRENT_08).l
		moveq   #MUDDLE_SPELLCAST_COLOR,d2
		bra.s   loc_126D9A

    ; End of function SetupSpellAnimation_Muddle


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Slow:
		
		bsr.w   CopyPalettes
		move.w  #$444,(PALETTE_2_CURRENT_07).l
		move.w  #$222,(PALETTE_2_CURRENT_08).l
		moveq   #SLOW_SPELLCAST_COLOR,d2
		bra.s   loc_126D9A

    ; End of function SetupSpellAnimation_Slow


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Sleep:
		
		bsr.w   CopyPalettes
		move.w  #$88E,(PALETTE_2_CURRENT_07).l
		move.w  #$44A,(PALETTE_2_CURRENT_08).l
		moveq   #SLEEP_SPELLCAST_COLOR,d2
loc_126D9A:
		move.w  #$EEE,(PALETTE_2_CURRENT_06).l
		movem.w d2-d3,-(sp)
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_Status).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		movem.w (sp)+,d2-d3
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_DEBUFF,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Sleep

SpellPalette_Healing:
		incbin "data/graphics/battles/spells/palettes/spellpalette-healing.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Healing:
		
		move.w  d3,-(sp)
		lea     SpellPalette_Healing(pc), a0
		andi.w  #7,d3
		subq.w  #1,d3
		mulu.w  #$A,d3
		adda.w  d3,a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_HealAuraDetox).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$800,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_HEALING,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		move.w  d3,-(sp)
		clr.w   d6
		clr.w   d5
		moveq   #1,d4
		move.w  #$B0,d3 
		bsr.w   LoadSpellEntity 
		move.w  (sp)+,d3
		andi.w  #7,d3
		subq.w  #1,d3
		move.w  d3,d2
		bra.w   PlaySpellCastEffect

    ; End of function SetupSpellAnimation_Healing

SpellPalette_MachineGun:
		incbin "data/graphics/battles/spells/palettes/spellpalette-machinegun.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_MachineGun:
		
		 
		sndCom  SFX_MACHINE_GUN
		lea     SpellPalette_MachineGun(pc), a0
		moveq   #SPELLANIM_TYPE_MACHINE_GUN,d4
		bra.w   loc_126EA0

    ; End of function SetupSpellAnimation_MachineGun

SpellPalette_Crossbow:
		incbin "data/graphics/battles/spells/palettes/spellpalette-crossbow.bin"

; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_Crossbow:
		
		lea     SpellPalette_Crossbow(pc), a0
		moveq   #SPELLANIM_TYPE_CROSSBOW,d4
loc_126EA0:
		movem.l d3-d4,-(sp)
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_MachineGun).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		movem.l (sp)+,d3-d4
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  d4,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function SetupSpellAnimation_Crossbow

SpellPalette_BlueFlyingDragons:
		incbin "data/graphics/battles/spells/palettes/spellpalette-blueflyingdragons.bin"

; =============== S U B R O U T I N E =======================================

sa74_BlueFlyingDragons:
		
		lea     SpellPalette_BlueFlyingDragons(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
loc_126F10:
		movea.l (p_SpellTiles_FlyingDragon).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #$81,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_FLYING_DRAGONS,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa74_BlueFlyingDragons

SpellPalette_YellowFlyingDragons:
		incbin "data/graphics/battles/spells/palettes/spellpalette-yellowflyingdragons.bin"

; =============== S U B R O U T I N E =======================================

sa71_YellowFlyingDragons:
		
		lea     SpellPalette_YellowFlyingDragons(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		bra.w   loc_126F10

    ; End of function sa71_YellowFlyingDragons

SpellPalette_YellowLightningBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-yellowlightningbreath.bin"

; =============== S U B R O U T I N E =======================================

sa65_YellowLightningBreath:
		
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_YellowLightningBreath(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #0,((SPELLANIM_VERSION-$1000000)).w
byte_126F98:
		sndCom  SFX_LIGHTNING_BREATH
		movea.l (p_SpellTiles_LightningBreath).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #SPELLANIM_TYPE_LIGHTNING_BREATH,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa65_YellowLightningBreath

SpellPalette_BlueLightningBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bluelightningbreath.bin"

; =============== S U B R O U T I N E =======================================

sa72_BlueLightningBreath:
		
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_BlueLightningBreath(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #1,((SPELLANIM_VERSION-$1000000)).w
		bra.w   byte_126F98

    ; End of function sa72_BlueLightningBreath

SpellPalette_GreenLaser:
		incbin "data/graphics/battles/spells/palettes/spellpalette-greenlaser.bin"

; =============== S U B R O U T I N E =======================================

sa66_GreenLaser1:
		
		moveq   #0,d3

    ; End of function sa66_GreenLaser1


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_GreenLaser:
		
		 
		sndCom  SFX_LASER
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_GreenLaser(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
loc_12702C:
		movea.l (p_SpellTiles_Laser).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$C00,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #SPELLANIM_TYPE_LASER,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function SetupSpellAnimation_GreenLaser

SpellPalette_BlueLaser:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bluelaser.bin"

; =============== S U B R O U T I N E =======================================

sa73_BlueLaser:
		
		moveq   #1,d3

    ; End of function sa73_BlueLaser


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_LaserEye:
		
		 
		sndCom  SFX_LASER
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_BlueLaser(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		bra.w   loc_12702C

    ; End of function SetupSpellAnimation_LaserEye

SpellPalette_BusterShot:
		incbin "data/graphics/battles/spells/palettes/spellpalette-bustershot.bin"

; =============== S U B R O U T I N E =======================================

sa70_BusterShot:
		
		 
		sndCom  SFX_HIT
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_BusterShot(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_BusterShot).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #1,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_BUSTER_SHOT,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa70_BusterShot

SpellPalette_EnergyBlast:
		incbin "data/graphics/battles/spells/palettes/spellpalette-energyblast.bin"

; =============== S U B R O U T I N E =======================================

sa68_SwordBeam:
		
		lea     SpellPalette_EnergyBlast(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #SPELLANIM_TYPE_ENERGY_WAVE,((SPELLANIM_TYPE-$1000000)).w
byte_12711A:
		sndCom  SFX_SWORD_BEAM
		movea.l (p_SpellTiles_EnergyBlast).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$5A0,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		bsr.w   ClearSpellEntities
		move.b  #1,((SPELLANIM_VERSION-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		rts

    ; End of function sa68_SwordBeam

		dc.w $CEE               ; unused green sword beam palette
		dc.w $AEE
		dc.w $C0
		dc.w $80
		dc.w $40

; =============== S U B R O U T I N E =======================================

sa67_PowerFist:
		
		 
		sndCom  SFX_SWORD_BEAM
		bsr.w   SetupScreenTint_Dark
		lea     SpellPalette_EnergyBlast(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		move.b  #SPELLANIM_TYPE_ENERGY_BLAST,((SPELLANIM_TYPE-$1000000)).w
		bra.s   byte_12711A

    ; End of function sa67_PowerFist

SpellPalette_FireBreath:
		incbin "data/graphics/battles/spells/palettes/spellpalette-firebreath.bin"

; =============== S U B R O U T I N E =======================================

LoadSpellGraphics_FireBreath:
		
		 
		sndCom  SFX_FIRE_BREATH
		move.w  d3,-(sp)
		bsr.w   SetupScreenTint_Red
		lea     SpellPalette_FireBreath(pc), a0
		lea     (PALETTE_2_CURRENT_06).l,a1
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		jsr     (j_ApplyVIntCramDma).l
		movea.l (p_SpellTiles_FireBreath).l,a0
		move.w  #$B800,d0
		movea.w d0,a1
		move.w  #$420,d0
		moveq   #2,d1
		jsr     (j_ApplyVIntVramDmaOnCompressedTiles).l
		jsr     (j_WaitForDmaQueueProcessing).l
		move.w  (sp)+,d3
		rts

    ; End of function LoadSpellGraphics_FireBreath


; =============== S U B R O U T I N E =======================================

; In: D3 = spell animation version

SetupSpellAnimation_FireBreath:
		
		bsr.s   LoadSpellGraphics_FireBreath
		bsr.w   ClearSpellEntities
		move.b  d3,((SPELLANIM_VERSION-$1000000)).w
		move.b  #SPELLANIM_TYPE_FIRE_BREATH,((SPELLANIM_TYPE-$1000000)).w
		clr.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		move.b  #1,((IS_SPELLANIM_PLAYING-$1000000)).w
		moveq   #4,d2
		rts

    ; End of function SetupSpellAnimation_FireBreath


; =============== S U B R O U T I N E =======================================

sub_1271EC:
		movem.l d0-d3/a1-a2,-(sp)
		lea     ((byte_FFB4DA-$1000000)).w,a2
		lea     (SPRITE_00_PROPERTIES).l,a1
		move.w  d0,d2
		move.w  d0,d3
		addq.w  #1,d2
		rol.w   #3,d0
		ext.l   d0
		adda.l  d0,a1
		move.w  (a0)+,6(a1)
		move.w  (a0)+,(a1)
		move.w  (a0)+,d0
		move.b  (a0)+,d1
		ext.w   d1
		rol.w   #8,d1
		or.w    d2,d1
		move.w  d1,2(a1)
		move.b  (a0)+,d1
		ext.w   d1
		ror.w   #3,d1
		move.b  (a0)+,d2
		ext.w   d2
		ror.w   #5,d2
		or.w    d1,d0
		or.w    d2,d0
		ori.w   #$8000,d0
		move.w  d0,4(a1)
		move.b  (a0)+,(a2,d3.w)
		movem.l (sp)+,d0-d3/a1-a2
		addq.w  #1,d0
		rts

    ; End of function sub_1271EC


; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation:
		
		tst.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bne.w   loc_127248
		rts
loc_127248:
		clr.w   d7
		move.b  ((SPELLANIM_TYPE-$1000000)).w,d7
		add.w   d7,d7
		move.w  rjt_SpellAnimationUpdates(pc,d7.w),d7
		jmp     rjt_SpellAnimationUpdates(pc,d7.w)

    ; End of function UpdateSpellAnimation

rjt_SpellAnimationUpdates:
		dc.w spellanimationUpdate_Blaze-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Freeze-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_IceBreath-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_FlyingDragons-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_AssaultShell-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Desoul-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Debuff-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Bolt-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_Healing-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_Healing-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_FireBreath-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_DemonBlaze-rjt_SpellAnimationUpdates
		dc.w nullsub_127284-rjt_SpellAnimationUpdates
		dc.w nullsub_127284-rjt_SpellAnimationUpdates
		dc.w nullsub_127284-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_MachineGun-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Crossbow-rjt_SpellAnimationUpdates
		dc.w UpdateSpellAnimation_LightningBreath-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_Laser-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_BusterShot-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_SwordBeam-rjt_SpellAnimationUpdates
		dc.w spellanimationUpdate_PowerFist-rjt_SpellAnimationUpdates

; =============== S U B R O U T I N E =======================================

nullsub_127284:
		
		rts

    ; End of function nullsub_127284


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Bolt:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$22,d0 
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127378
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		addq.w  #1,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #7,SPELLENTITY_OFFSET_FRAME(a0)
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		moveq   #3,d2
		moveq   #1,d1
		move.w  d7,-(sp)
		moveq   #7,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d3
		subq.l  #3,d3
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d4
		subq.l  #3,d4
		move.w  (sp)+,d7
		lea     SpellEntityLayout_Bolt2(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #2,d6
		bgt.s   loc_1272E0
		addq.w  #4,d7
loc_1272E0:
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bpl.s   loc_1272EA
		move.w  #$120,d3
loc_1272EA:
		mulu.w  #$14,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
		lea     ((word_FFB5E0-$1000000)).w,a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		cmpi.w  #3,d7
		blt.s   loc_12730A
		subq.w  #1,d7
loc_12730A:
		moveq   #$26,d0 
loc_12730C:
		movem.l d0/d7-a0,-(sp)
		tst.w   4(a0)
		beq.w   loc_127378
		clr.w   d2
		move.w  (a0),d3
		move.w  2(a0),d4
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		subq.w  #1,d6
		lsl.w   #2,d6
		move.l  a0,-(sp)
		lea     word_12743A(pc), a0
		move.w  2(a0,d6.w),d5
		move.w  (a0,d6.w),d6
		movea.l (sp)+,a0
		jsr     (j_GenerateRandomNumber).l
		add.w   d5,d7
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12734E
		moveq   #2,d1
		bra.s   loc_127350
loc_12734E:
		moveq   #1,d1
loc_127350:
		subq.w  #1,4(a0)
		bne.s   loc_127362
		clr.l   (a0)
		clr.l   4(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127362:
		move.w  6(a0),d6
		add.w   d6,(a0)
		lea     SpellEntityLayout_Bolt1(pc), a0
		mulu.w  #$19,d7
		adda.w  d7,a0
		moveq   #4,d2
		bsr.w   LoadSpellEntityLayout
loc_127378:
		movem.l (sp)+,d0/d7-a0
		addq.w  #5,d0
		addq.w  #8,a0
		dbf     d7,loc_12730C
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_12739C
		moveq   #16,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_12739C
		move.w  #$2EC,(PALETTE_1_CURRENT).l
loc_12739C:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1273AC
		bsr.w   loc_1273E0
		bra.w   loc_1273D8
loc_1273AC:
		lea     ((word_FFB5E4-$1000000)).w,a0
		clr.w   d0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		cmpi.w  #3,d7
		blt.s   loc_1273C4
		subq.w  #1,d7
loc_1273C4:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1273C4
                
		tst.w   d0
		bne.s   loc_1273D8
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_1273D8:
		jsr     (j_ApplyVIntCramDma).l
		rts
loc_1273E0:
		moveq   #10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   return_127438
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_1273F8
		move.w  #$B0,d5 
		bra.s   loc_1273FC
loc_1273F8:
		move.w  #$A0,d5 
loc_1273FC:
		moveq   #16,d6
		jsr     (j_GenerateRandomNumber).l
		sub.w   d6,d5
		moveq   #2,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		move.w  d7,d3
		move.w  #64,d6
		jsr     (j_GenerateRandomNumber).w
		move.w  d7,d6
		addi.w  #32,d6
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12742E
		addi.w  #$80,d6 
loc_12742E:
		moveq   #$A,d4
		bsr.w   LoadSpellEntity 
		sndCom  SFX_BOLT_SPELL
return_127438:
		
		rts

    ; End of function spellanimationUpdate_Bolt

word_12743A:    dc.w 4
		dc.w 0
		dc.w 4
		dc.w 4
		dc.w 8
		dc.w 0
		dc.w $C
		dc.w 0
SpellEntityLayout_Bolt1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-bolt1.bin"
SpellEntityLayout_Bolt2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-bolt2.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Blaze:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$20,d0         ; loop through animation entities
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1277BC
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		addq.w  #1,SPELLENTITY_OFFSET_FRAME(a0)
						; increment main blaze frame
		andi.w  #$F,SPELLENTITY_OFFSET_FRAME(a0)
		lsr.w   #2,d7
		move.w  (a0),d3         ; D3 = X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
						; D4 = Y position
		moveq   #1,d2           ; set number of graphics pieces : 2 pieces
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12769C      ; branch if animation is cast on enemy side
		moveq   #2,d1           ; change layer of pieces (reversed)
		bra.s   loc_12769E
loc_12769C:
		moveq   #1,d1           ; change layer of pieces
loc_12769E:
		lea     SpellEntityLayout_BlazeMain(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #2,d6
		bgt.s   loc_1276B2      ; branch if spell level is greater than 2
		addq.w  #2,d7           ; change size of main fire?
loc_1276B2:
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1276BC
		move.w  #$120,d3
loc_1276BC:
		mulu.w  #$A,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
		lea     ((word_FFB5D0-$1000000)).w,a0
						; start at falling fireballs
		moveq   #$11,d7
		moveq   #$22,d0 
loc_1276CE:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1277BC      ; branch if fireball does not exist
		clr.w   d2
		move.w  (a0),d3         ; D3 = X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
						; D4 = Y position
		add.w   SPELLENTITY_OFFSET_FRAME(a0),d4
		addq.w  #8,SPELLENTITY_OFFSET_Y(a0)
						; fall 8 pixels per frame
		moveq   #$14,d7         ; default to small fireballs
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #4,d6
		bne.s   loc_1276FC
		clr.w   d7              ; switch to big fireballs if level 4
loc_1276FC:
		cmpi.b  #3,d6
		bne.s   loc_127704
		moveq   #$A,d7          ; switch to medium fireballs if level 3
loc_127704:
		movem.w d7,-(sp)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).l
		lsr.w   #1,d7
		movem.w (sp)+,d7
		beq.s   loc_12771A
		addq.w  #5,d7           ; random gfx variant : 50% chance of each?
loc_12771A:
		cmpi.w  #$10,SPELLENTITY_OFFSET_FRAME(a0)
		bgt.s   loc_127726
		clr.w   d1              ; at beginning, put at layer 0 so it goes behind UI
		bra.s   loc_127734
loc_127726:
		cmpi.w  #$20,SPELLENTITY_OFFSET_FRAME(a0) 
		bgt.s   loc_127732      
		moveq   #1,d1           ; then shift up
		bra.s   loc_127734
loc_127732:
		moveq   #2,d1           ; shift up more?
loc_127734:
		cmpi.w  #$100,SPELLENTITY_OFFSET_Y(a0)
		blt.s   loc_127748      
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7              ; remove if goes too far down screen
		move.w  #$FFD8,d4
loc_127748:
		cmpi.w  #$80,SPELLENTITY_OFFSET_Y(a0) 
						; check for hitting ground?
		bne.s   loc_127768
		move.w  #$6E,(PALETTE_1_CURRENT).l 
						; flicker bg orange
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		move.w  d7,((word_FFB6B8-$1000000)).w
						; shake screen
loc_127768:
		cmpi.w  #$80,SPELLENTITY_OFFSET_Y(a0) 
		blt.s   loc_12778A      ; branch if haven't hit yet
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
						; after hitting, do explosion animation
		subi.w  #$80,d7 
		lsr.w   #5,d7
		addq.w  #6,d7
		mulu.w  #5,d7
		move.w  #$80,d4 
		add.w   SPELLENTITY_OFFSET_FRAME(a0),d4
		bra.s   loc_1277A6
loc_12778A:
		move.w  d7,-(sp)
		moveq   #$FFFFFFFC,d6
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_127796      
		neg.w   d6              ; move to the right if cast by enemy
loc_127796:
		add.w   d6,(a0)         ; start by moving left 5 pixels
		moveq   #9,d6
		jsr     (j_GenerateRandomNumber).l
		subq.l  #4,d7           ; then add a random number -4 to 4
		add.w   d7,(a0)         ; total offset should be left 1 to 9 pixels
		move.w  (sp)+,d7
loc_1277A6:
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_1277B0
		addi.w  #$32,d7 ; adjust graphics if cast by enemy
loc_1277B0:
		lea     SpellEntityLayout_BlazeFireball(pc), a0
		adda.w  d7,a0
		clr.w   d2
		bsr.w   LoadSpellEntityLayout
loc_1277BC:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0           ; loop to next fireball
		addq.w  #8,a0
		dbf     d7,loc_1276CE
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_1277E0      ; branch if animation ending
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_1277E0
		move.w  #$C,(PALETTE_1_CURRENT).l
						; red screen flash?
loc_1277E0:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1277F0      
		bsr.w   CreateFireballObject; if not, spawn new fireballs
		bra.w   loc_12780C
loc_1277F0:
		lea     ((word_FFB5D4-$1000000)).w,a0
						; animation cleanup
		clr.w   d0
		moveq   #$11,d7
loc_1277F8:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1277F8
                
		tst.w   d0              ; see if any fireballs are still falling
		bne.s   loc_12780C
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
						; if not, we can set the animation as finished
		bsr.w   RestorePalettes
loc_12780C:
		jsr     (j_ApplyVIntCramDma).l
		bsr.w   sub_1283E2      ; end of frame cleanup
		rts

    ; End of function spellanimationUpdate_Blaze


; =============== S U B R O U T I N E =======================================

CreateFireballObject:
		
		moveq   #$14,d7
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d6
		andi.w  #7,d6
		cmpi.b  #1,d6
		beq.w   @Return         ; don't spawn anything at level 1
		moveq   #10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   @Return         ; only spawn new one some % of the time
		move.w  #128,d6
		jsr     (j_GenerateRandomNumber).w
		move.w  d7,d6           ; random starting X position
		addi.w  #32,d6
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		blt.s   @Mirrored       
		addi.w  #$40,d6 ; offset starting X position when cast by ally
@Mirrored:
		moveq   #$FFFFFFE0,d5   ; fixed starting Y position
		move.w  d6,-(sp)
		moveq   #32,d6
		jsr     (j_GenerateRandomNumber).w
		move.w  d7,d3           ; random starting frame
		move.w  (sp)+,d6
		moveq   #1,d4           ; set exists flag
		bsr.w   LoadSpellEntity 
@Return:
		rts

    ; End of function CreateFireballObject

SpellEntityLayout_BlazeFireball:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-blazefireball.bin"
SpellEntityLayout_BlazeMain:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-blazemain.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_AssaultShell:
		
		clr.w   (PALETTE_1_CURRENT).l
		clr.w   (VERTICAL_SCROLL_DATA).l
		move.w  #$100,(VERTICAL_SCROLL_DATA+2).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127920:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_12796C
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		clr.w   d2
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d1
		subq.w  #1,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		addq.w  #1,d7
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		cmpi.w  #$28,d7 
		movem.l (sp)+,d7
		bne.s   loc_12795C
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		bra.w   loc_12796C
loc_12795C:
		lsr.w   #2,d7
		lea     SpellEntityLayout_AssaultShell(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_12796C:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127920
                
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1279A4
		bsr.w   SpawnNewEntity_AssaultShell
		moveq   #32,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_1279A0
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		add.w   d7,(VERTICAL_SCROLL_DATA).l
		add.w   d7,(VERTICAL_SCROLL_DATA+2).l
loc_1279A0:
		bra.w   loc_1279C0
loc_1279A4:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_1279AC:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1279AC
                
		tst.w   d0
		bne.s   loc_1279C0
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_1279C0:
		jsr     (j_ApplyVIntCramDma).l
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
		rts

    ; End of function spellanimationUpdate_AssaultShell


; =============== S U B R O U T I N E =======================================

SpawnNewEntity_AssaultShell:
		
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   return_127A3A
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		move.w  #96,d6
		jsr     (j_GenerateRandomNumber).w
		andi.w  #32,d7
		move.w  d7,d3
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		blt.s   loc_127A0C
		moveq   #2,d4
		move.w  #40,d0
		move.w  #144,d1
		bra.s   loc_127A16
loc_127A0C:
		moveq   #3,d4
		move.w  #160,d0
		move.w  #160,d1
loc_127A16:
		moveq   #64,d6
		jsr     (j_GenerateRandomNumber).w
		add.w   d7,d0
		moveq   #32,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d1
		move.w  d0,d6
		move.w  d1,d5
		bsr.w   LoadSpellEntity 
		sndCom  SFX_TREASURE_CHEST
		move.w  #$EE,(PALETTE_1_CURRENT).l 
return_127A3A:
		
		rts

    ; End of function SpawnNewEntity_AssaultShell

SpellEntityLayout_AssaultShell:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-assaultshell.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_DemonBlaze:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$B,d7
		moveq   #$20,d0 
loc_127A7C:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127B02
		move.w  (a0),d3
		addi.w  #$64,d3 
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		add.w   d7,(a0)
		movem.l d7,-(sp)
		lsr.w   #3,d7
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		sub.w   d7,SPELLENTITY_OFFSET_Y(a0)
		movem.l (sp)+,d7
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_127AB2
		move.w  d7,SPELLENTITY_OFFSET_EXISTS(a0)
loc_127AB2:
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d2
		andi.b  #7,d2
		cmpi.b  #1,d2
		bne.s   loc_127AC4
		moveq   #1,d2
		bra.s   loc_127AC6
loc_127AC4:
		clr.l   d2
loc_127AC6:
		moveq   #2,d1
		cmpi.w  #-32,d3
		blt.w   loc_127AD8
		cmpi.w  #$120,d3
		ble.w   loc_127AE8
loc_127AD8:
		move.l  #0,(a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127AE8:
		lea     SpellEntityLayout_DemonBlaze1(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d5
		andi.b  #7,d5
		cmpi.b  #1,d5
		beq.s   loc_127AFE
		lea     SpellEntityLayout_DemonBlaze2(pc), a0
loc_127AFE:
		bsr.w   LoadSpellEntityLayout
loc_127B02:
		movem.l (sp)+,d0/d7-a0
		addq.w  #2,d0
		addq.w  #8,a0
		dbf     d7,loc_127A7C
                
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127B1C
		bsr.w   SpawnNewEntity_Barrage
		bra.s   loc_127B38
loc_127B1C:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$B,d7
loc_127B24:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127B24
                
		tst.w   d0
		bne.s   loc_127B38
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127B38:
		jsr     (j_ApplyVIntCramDma).w
		bne.s   return_127B4A
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_127B4A:
		
		rts

    ; End of function spellanimationUpdate_DemonBlaze

SpellEntityLayout_DemonBlaze1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-demonblaze1.bin"
SpellEntityLayout_DemonBlaze2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-demonblaze2.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_FlyingDragons:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127B6A:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127BDE
		move.w  (a0),d3         ; D3 = X position
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		btst    #7,((SPELLANIM_VERSION-$1000000)).w
		beq.s   loc_127B88
		sub.w   d7,(a0)
		bra.s   loc_127B8A
loc_127B88:
		add.w   d7,(a0)
loc_127B8A:
		movem.l d7,-(sp)
		lsr.w   #3,d7
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
						; D4 = Y position
		btst    #7,((SPELLANIM_VERSION-$1000000)).w
		beq.s   loc_127BA2
		sub.w   d7,SPELLENTITY_OFFSET_Y(a0)
		bra.s   loc_127BA6
loc_127BA2:
		add.w   d7,SPELLENTITY_OFFSET_Y(a0)
loc_127BA6:
		movem.l (sp)+,d7
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_127BB6      
		move.w  d7,SPELLENTITY_OFFSET_EXISTS(a0)
loc_127BB6:
		clr.w   d2              ; set number of graphics pieces : 1 piece
		moveq   #1,d1           ; set layer of pieces
		cmpi.w  #$120,d3
		bgt.w   loc_127BCA
		cmpi.w  #-32,d3
		bge.w   loc_127BD6
loc_127BCA:
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127BD6:
		lea     SpellEntityLayout_FlyingDragons(pc), a0
		bsr.w   LoadSpellEntityLayout
loc_127BDE:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127B6A
                
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127BFA
		bsr.w   SpawnNewEntity_Barrage
		bra.w   loc_127C16
loc_127BFA:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127C02:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127C02
                
		tst.w   d0
		bne.s   loc_127C16
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127C16:
		jsr     (j_ApplyVIntCramDma).w
		bne.s   return_127C28
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_127C28:
		
		rts

    ; End of function spellanimationUpdate_FlyingDragons


; =============== S U B R O U T I N E =======================================

SpawnNewEntity_Barrage:
		
		movem.l d7,-(sp)
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_127C72
		btst    #7,((SPELLANIM_VERSION-$1000000)).w
		bne.w   loc_127C78
		moveq   #4,d4
		clr.w   d3
		moveq   #24,d6
		jsr     (j_GenerateRandomNumber).w
		movem.l d7,-(sp)
		moveq   #48,d6
		jsr     (j_GenerateRandomNumber).w
		move.w  #$90,d5 
		sub.w   d7,d5
		movem.l (sp)+,d6
loc_127C62:
		bsr.w   LoadSpellEntity 
		sndCom  SFX_BOW_MASTER
		move.w  #$CCC,(PALETTE_1_CURRENT).l
loc_127C72:
		movem.l (sp)+,d7
		rts
loc_127C78:
		clr.w   d3
		moveq   #24,d6
		jsr     (j_GenerateRandomNumber).w
		addi.w  #232,d7
		movem.l d7,-(sp)
		moveq   #96,d6
		jsr     (j_GenerateRandomNumber).w
		move.w  #144,d5
		sub.w   d7,d5
		movem.l (sp)+,d6
		moveq   #1,d4
		bra.s   loc_127C62

    ; End of function SpawnNewEntity_Barrage

SpellEntityLayout_FlyingDragons:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-flyingdragons.bin"
byte_127CA6:    dc.b 0
		dc.b 1
		dc.b 1
		dc.b 0

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Freeze:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127CB8:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127D98
		clr.w   d2
		move.w  (a0),d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		jsr     (sub_314).l
		addi.w  #$48,d7 
		move.w  d7,d3
		move.w  (a0),d7
		lsr.w   #1,d7
		add.w   d7,d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		lsr.w   #2,d6
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$80,d7 
		move.w  d7,d4
		move.w  (a0),d7
		lsr.w   #1,d7
		sub.w   d7,d4
		subq.w  #8,SPELLENTITY_OFFSET_Y(a0)
		andi.w  #$FF,SPELLENTITY_OFFSET_Y(a0)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_127D14
		subq.w  #1,(a0)
		beq.w   loc_127D7C
loc_127D14:
		cmpi.w  #$10,(a0)
		bgt.s   loc_127D20
		moveq   #1,d1
		bra.w   loc_127D32
loc_127D20:
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		lsr.w   #6,d7
		move.l  a0,-(sp)
		lea     byte_127CA6(pc), a0
		move.b  (a0,d7.w),d1
		movea.l (sp)+,a0
loc_127D32:
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		subq.w  #1,d7
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127D6A
		cmpi.b  #2,((SPELLANIM_VERSION-$1000000)).w
		bgt.s   loc_127D56
		cmpi.w  #7,d7
		bne.s   loc_127D54
		moveq   #$17,d7
loc_127D54:
		bra.s   loc_127D6A
loc_127D56:
		move.w  d7,d6
		andi.w  #$3F,d6 
		cmpi.w  #$F,d6
		bne.s   loc_127D6A
		andi.w  #$40,d7 
		ori.w   #$2F,d7 
loc_127D6A:
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$3F,d7 
		movem.l (sp)+,d7
		bne.s   loc_127D88
loc_127D7C:
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_127D88:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Freeze(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_127D98:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127CB8
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_127DBC
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_127DBC
		move.w  #$EA0,(PALETTE_1_CURRENT).l
loc_127DBC:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127DCC
		bsr.w   sub_127DEE
		bra.w   loc_127DE8
loc_127DCC:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127DD4:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127DD4
                
		tst.w   d0
		bne.s   loc_127DE8
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127DE8:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_Freeze


; =============== S U B R O U T I N E =======================================

sub_127DEE:
		movem.l d7,-(sp)
		clr.w   d7
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		subq.l  #1,d7
		add.w   d7,d7
		move.w  off_127E04(pc,d7.w),d7
		jmp     off_127E04(pc,d7.w)

    ; End of function sub_127DEE

off_127E04:     dc.w sub_127E12-off_127E04; variation 1
		dc.w sub_127E12-off_127E04; variation 2
		dc.w sub_127E0C-off_127E04; variation 3
		dc.w sub_127E18-off_127E04; variation 4

; =============== S U B R O U T I N E =======================================

sub_127E0C:
		moveq   #$37,d3 
		bra.w   loc_127E2A

    ; End of function sub_127E0C


; =============== S U B R O U T I N E =======================================

sub_127E12:
		moveq   #$27,d3 
		bra.w   loc_127E2A

    ; End of function sub_127E12


; =============== S U B R O U T I N E =======================================

sub_127E18:
		move.w  #192,d6
		jsr     (j_GenerateRandomNumber).w
		andi.w  #64,d7
		addi.w  #55,d7
		move.w  d7,d3
loc_127E2A:
		moveq   #32,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_127E6E
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #32,d6
		jsr     (j_GenerateRandomNumber).w
		addi.w  #96,d7
		movem.l d7,-(sp)
		move.w  #256,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   LoadSpellEntity 
		sndCom  SFX_TINKLING
		move.w  #$A20,(PALETTE_1_CURRENT).l
loc_127E6E:
		movem.l (sp)+,d7
		rts

    ; End of function sub_127E18


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_FireBreath:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127E82:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_127F30
		clr.w   d2
		move.w  (a0),d6         ; D6 = X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		moveq   #$38,d3 
		sub.w   d6,d3
		move.w  d3,d4
		add.w   d3,d3
		add.w   d4,d3
		lsr.w   #2,d3
		move.w  d7,-(sp)
		lsr.w   #1,d6
		jsr     (sub_314).l
		addi.w  #$80,d7 
		sub.w   d3,d7
		move.w  d7,d3
		move.w  (sp)+,d7
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$70,d7 
		move.w  d7,d4
		subi.w  #$C,SPELLENTITY_OFFSET_Y(a0)
		andi.w  #$FF,SPELLENTITY_OFFSET_Y(a0)
		addq.w  #1,(a0)
		moveq   #2,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		movem.l d7,-(sp)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		movem.l (sp)+,d7
		bne.s   loc_127EF2
		addq.w  #1,d7
loc_127EF2:
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$38,d7 
		movem.l (sp)+,d7
		bne.s   loc_127F20
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		movem.l d0,-(sp)
		move.w  #$6E,(PALETTE_1_CURRENT).l 
		movem.l (sp)+,d0
loc_127F20:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Freeze(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_127F30:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127E82
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_127F54
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_127F54
		move.w  #$C,(PALETTE_1_CURRENT).l
loc_127F54:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_127F64
		bsr.w   SpawnNewEntity_FireBreath
		bra.w   loc_127F80
loc_127F64:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_127F6C:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_127F6C
                
		tst.w   d0
		bne.s   loc_127F80
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_127F80:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_FireBreath


; =============== S U B R O U T I N E =======================================

SpawnNewEntity_FireBreath:
		
		movem.l d7,-(sp)
		clr.w   d3
		moveq   #10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_127FC0
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #16,d6
		jsr     (j_GenerateRandomNumber).w
		movem.l d7,-(sp)
		move.w  #256,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   LoadSpellEntity 
loc_127FC0:
		movem.l (sp)+,d7
		rts

    ; End of function SpawnNewEntity_FireBreath


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_IceBreath:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_127FD4:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_12809A
		clr.w   d2
		move.w  (a0),d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		moveq   #$38,d3 
		sub.w   d6,d3
		move.w  d3,d4
		add.w   d3,d3
		add.w   d4,d3
		lsr.w   #2,d3
		move.w  d7,-(sp)
		jsr     (sub_314).l
		addi.w  #$80,d7 
		sub.w   d3,d7
		move.w  d7,d3
		move.w  (sp)+,d7
		lsr.w   #1,d6
		subi.w  #$40,d7 
		jsr     (sub_314).l
		addi.w  #$70,d7 
		move.w  d7,d4
		subq.w  #8,SPELLENTITY_OFFSET_Y(a0)
		andi.w  #$FF,SPELLENTITY_OFFSET_Y(a0)
		addq.w  #1,(a0)
		moveq   #2,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		movem.l d7,-(sp)
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		movem.l (sp)+,d7
		bne.s   loc_128042
		addq.w  #1,d7
loc_128042:
		cmpi.b  #2,((SPELLANIM_VERSION-$1000000)).w
		bgt.s   loc_128058
		cmpi.w  #$28,d7 
		bne.s   loc_128058
		movem.l (sp)+,d7
		bra.w   loc_12806A
loc_128058:
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$3F,d7 
		cmpi.w  #$38,d7 
		movem.l (sp)+,d7
		bne.s   loc_12808A
loc_12806A:
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		movem.l d0,-(sp)
		sndCom  SFX_TINKLING
		move.w  #$EA0,(PALETTE_1_CURRENT).l
		movem.l (sp)+,d0
loc_12808A:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Freeze(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_12809A:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_127FD4
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_1280BE
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_1280BE
		move.w  #$EA0,(PALETTE_1_CURRENT).l
loc_1280BE:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_1280CE
		bsr.w   sub_1280F0
		bra.w   loc_1280EA
loc_1280CE:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_1280D6:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_1280D6
                
		tst.w   d0
		bne.s   loc_1280EA
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_1280EA:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_IceBreath


; =============== S U B R O U T I N E =======================================

sub_1280F0:
		movem.l d7,-(sp)
		clr.w   d7
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		subq.l  #1,d7
		add.w   d7,d7
		move.w  off_128106(pc,d7.w),d7
		jmp     off_128106(pc,d7.w)

    ; End of function sub_1280F0

off_128106:     dc.w sub_12810E-off_128106; variation 1
		dc.w sub_12810E-off_128106; variation 2
		dc.w sub_12810E-off_128106; variation 3
		dc.w sub_128114-off_128106; variation 4

; =============== S U B R O U T I N E =======================================

sub_12810E:
		clr.w   d3
		bra.w   loc_128122

    ; End of function sub_12810E


; =============== S U B R O U T I N E =======================================

sub_128114:
		move.w  #192,d6
		jsr     (j_GenerateRandomNumber).w
		andi.w  #64,d7
		move.w  d7,d3
loc_128122:
		moveq   #16,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_128156
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		addq.w  #1,d7
		move.w  d7,d4
		moveq   #16,d6
		jsr     (j_GenerateRandomNumber).w
		movem.l d7,-(sp)
		move.w  #256,d6
		jsr     (j_GenerateRandomNumber).w
		sub.w   d7,d5
		movem.l (sp)+,d6
		bsr.w   LoadSpellEntity 
loc_128156:
		movem.l (sp)+,d7
		rts

    ; End of function sub_128114

SpellEntityLayout_Freeze:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-freeze.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Desoul:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((word_FFB658-$1000000)).w,a0
		tst.w   (a0)
		beq.w   loc_12825C
		movem.l a0,-(sp)
		move.w  #$80,d3 
		move.w  (a0),d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		jsr     (sub_314).l
		add.w   d7,d3
		move.w  #$60,d4 
		lsr.w   #2,d6
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		subi.w  #$40,d7 
		jsr     (sub_314).l
		add.w   d7,d4
		move.w  SPELLENTITY_OFFSET_Y(a0),d7
		lsr.w   #6,d7
		andi.w  #3,d7
		moveq   #$20,d0 
		bsr.w   sub_12829E
		movem.l (sp)+,a0
		moveq   #8,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_128258
		addq.w  #1,(a0)
loc_128258:
		addq.w  #2,SPELLENTITY_OFFSET_Y(a0)
loc_12825C:
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.s   loc_12826E
		move.w  #$888,(PALETTE_1_CURRENT).l
loc_12826E:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_128298
		lea     ((word_FFB658-$1000000)).w,a0
		tst.w   (a0)
		beq.w   loc_12828C
		addq.w  #2,(a0)
		cmpi.w  #$12C,(a0)
		ble.w   loc_128298
		clr.w   (a0)
loc_12828C:
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   sub_126704
		bsr.w   RestorePalettes
loc_128298:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_Desoul


; =============== S U B R O U T I N E =======================================

sub_12829E:
		add.w   d7,d7
		move.w  off_1282A8(pc,d7.w),d7
		jmp     off_1282A8(pc,d7.w)

    ; End of function sub_12829E

off_1282A8:     dc.w sub_1282B8-off_1282A8
		dc.w sub_1282B0-off_1282A8
		dc.w sub_1282B0-off_1282A8
		dc.w sub_1282B8-off_1282A8

; =============== S U B R O U T I N E =======================================

sub_1282B0:
		lea     SpellEntityLayout_Desoul1(pc), a0
		moveq   #1,d1
		bra.s   loc_1282BE

    ; End of function sub_1282B0


; =============== S U B R O U T I N E =======================================

sub_1282B8:
		lea     SpellEntityLayout_Desoul2(pc), a0
		clr.w   d1
loc_1282BE:
		moveq   #1,d2
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bne.s   loc_1282C8
		addq.w  #1,d1
loc_1282C8:
		bra.w   LoadSpellEntityLayout

    ; End of function sub_1282B8

SpellEntityLayout_Desoul1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-desoul1.bin"
SpellEntityLayout_Desoul2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-desoul2.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Debuff:
		
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_1282E8:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_12833A
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		clr.w   d2
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d1
		subq.w  #1,d1
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		movem.l d7,-(sp)
		addq.w  #1,d7
		move.w  d7,SPELLENTITY_OFFSET_FRAME(a0)
		andi.w  #$1F,d7
		cmpi.w  #$18,d7
		movem.l (sp)+,d7
		bne.s   loc_12832A
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		move.w  #-32,d4
		clr.w   d7
loc_12832A:
		lsr.w   #2,d7
		lea     SpellEntityLayout_Debuff(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_12833A:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_1282E8
                
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_128356
		bsr.w   sub_12837A
		bra.w   return_128378
loc_128356:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_12835E:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_12835E
                
		tst.w   d0
		bne.s   return_128378
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
		jsr     (j_ApplyVIntCramDma).l
return_128378:
		
		rts

    ; End of function spellanimationUpdate_Debuff


; =============== S U B R O U T I N E =======================================

sub_12837A:
		movem.l d7,-(sp)
		clr.w   d3
		moveq   #16,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_1283BE
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_12839C
		move.w  #$D0,d0 
		moveq   #$70,d1 
		moveq   #3,d4
		bra.s   loc_1283A2
loc_12839C:
		moveq   #$60,d0 
		moveq   #$60,d1 
		moveq   #2,d4
loc_1283A2:
		moveq   #48,d6
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d0
		moveq   #48,d6
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d1
		move.w  d0,d6
		move.w  d1,d5
		bsr.w   LoadSpellEntity 
loc_1283BE:
		movem.l (sp)+,d7
		rts

    ; End of function sub_12837A

SpellEntityLayout_Debuff:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-debuff.bin"

; =============== S U B R O U T I N E =======================================

sub_1283E2:
		move.w  ((word_FFB6B8-$1000000)).w,d6
		bne.s   loc_1283F0
		clr.w   d0
		bra.w   loc_12840C
		bra.s   loc_12840C
loc_1283F0:
		subq.w  #1,d6
		move.w  d6,((word_FFB6B8-$1000000)).w
		jsr     (j_GenerateRandomNumber).l
		move.w  d7,d0
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).l
		lsr.w   #1,d7
		bne.s   loc_12840C
		neg.w   d0
loc_12840C:
		move.w  d0,d6
		addi.w  #$100,d6
		lea     (VERTICAL_SCROLL_DATA).l,a0
		move.w  d0,(a0)+
		move.w  d6,(a0)+
		jsr     (j_UpdateVdpVScrollData).l
		rts

    ; End of function sub_1283E2


; =============== S U B R O U T I N E =======================================

sub_128424:
		move.w  #120,d6
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		jsr     (sub_314).l
		addi.w  #96,d7
		move.w  d7,d3
		move.w  d3,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d6
		subi.w  #72,d7
		jsr     (sub_314).l
		addi.w  #64,d7
		move.w  d7,d4
		move.w  d4,SPELLENTITY_OFFSET_Y(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #6,d7
		add.w   d7,d7
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d1
		lsr.w   #2,d1
		andi.w  #1,d1
		or.w    d1,d7
		subq.w  #2,SPELLENTITY_OFFSET_FRAME(a0)
		cmpi.w  #64,SPELLENTITY_OFFSET_FRAME(a0)
		bne.s   return_12847A
		move.w  #2,SPELLENTITY_OFFSET_EXISTS(a0)
return_12847A:
		
		rts

    ; End of function sub_128424


; =============== S U B R O U T I N E =======================================

sub_12847C:
		move.w  #60,d6
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		jsr     (sub_314).l
		addi.w  #156,d7
		move.w  d7,d3
		move.w  d3,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d6
		subi.w  #72,d7
		jsr     (sub_314).l
		addi.w  #64,d7
		move.w  d7,d4
		move.w  d4,SPELLENTITY_OFFSET_Y(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #6,d7
		add.w   d7,d7
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d1
		lsr.w   #2,d1
		andi.w  #1,d1
		or.w    d1,d7
		subq.w  #2,SPELLENTITY_OFFSET_FRAME(a0)
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bpl.s   loc_1284D8
		cmpi.w  #192,SPELLENTITY_OFFSET_FRAME(a0)
		bne.s   loc_1284D8
		move.w  #3,SPELLENTITY_OFFSET_EXISTS(a0)
loc_1284D8:
		andi.w  #$FF,SPELLENTITY_OFFSET_FRAME(a0)
		rts

    ; End of function sub_12847C


; =============== S U B R O U T I N E =======================================

sub_1284E0:
		move.w  #120,d6
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		jsr     (sub_314).l
		addi.w  #216,d7
		move.w  d7,d3
		move.w  d3,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d6
		subi.w  #72,d7
		jsr     (sub_314).l
		addi.w  #64,d7
		move.w  d7,d4
		move.w  d4,SPELLENTITY_OFFSET_Y(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #6,d7
		add.w   d7,d7
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d1
		lsr.w   #2,d1
		andi.w  #1,d1
		or.w    d1,d7
		subq.w  #2,SPELLENTITY_OFFSET_FRAME(a0)
		cmpi.w  #64,SPELLENTITY_OFFSET_FRAME(a0)
		bne.s   return_128534
		clr.w   SPELLENTITY_OFFSET_EXISTS(a0)
return_128534:
		
		rts

    ; End of function sub_1284E0


; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation_Healing:
		
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #32,d0
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		beq.w   loc_128592
		subq.w  #1,d7
		add.w   d7,d7
		move.w  off_128554(pc,d7.w),d7
		jsr     off_128554(pc,d7.w)
		bra.w   loc_12855A
off_128554:
		dc.w sub_128424+$10000-off_128554
		dc.w sub_12847C+$10000-off_128554
		dc.w sub_1284E0+$10000-off_128554
loc_12855A:
		blt.s   loc_128560
		moveq   #2,d1
		bra.s   loc_12856E
loc_128560:
		moveq   #1,d1
		move.w  d3,d2
		move.w  #128,d3
		sub.w   d2,d3
		eori.w  #1,d7
loc_12856E:
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d2
		andi.w  #7,d2
		cmpi.w  #2,d2
		bne.s   loc_12857E
		addq.w  #8,d7
loc_12857E:
		moveq   #1,d2
		lea     SpellEntityLayout_Healing1(pc), a0
		mulu.w  #$A,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
		bsr.w   sub_128618
loc_128592:
		lea     ((word_FFB5C8-$1000000)).w,a0
		moveq   #19,d7
		moveq   #34,d0
loc_12859A:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1285EC
		move.w  (a0),d3
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		lsr.w   #2,d7
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bpl.s   loc_1285BC
		moveq   #1,d1
		bra.s   loc_1285BE
loc_1285BC:
		moveq   #2,d1
loc_1285BE:
		cmpi.w  #32,SPELLENTITY_OFFSET_FRAME(a0)
		blt.s   loc_1285D4
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
		bra.s   loc_1285DC
loc_1285D4:
		addq.w  #1,SPELLENTITY_OFFSET_Y(a0)
		addq.w  #1,SPELLENTITY_OFFSET_FRAME(a0)
loc_1285DC:
		lea     SpellEntityLayout_Healing2(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		clr.w   d2
		bsr.w   LoadSpellEntityLayout
loc_1285EC:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_12859A
                
		tst.b   ((IS_SPELLANIM_FINISHED-$1000000)).w
		bpl.s   return_128616
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #20,d7
loc_128606:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128606
                
		tst.w   d0
		bne.s   return_128616
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
return_128616:
		
		rts

    ; End of function UpdateSpellAnimation_Healing


; =============== S U B R O U T I N E =======================================

sub_128618:
		move.w  d7,-(sp)
		tst.w   ((word_FFB5C4-$1000000)).w
		beq.s   loc_12865A
		moveq   #10,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_12865A
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d0
		move.w  ((word_FFB5C2-$1000000)).w,d1
		moveq   #48,d6
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d0
		addi.w  #24,d0
		jsr     (j_GenerateRandomNumber).l
		sub.w   d7,d1
		addi.w  #24,d1
		move.w  d0,d6
		move.w  d1,d5
		moveq   #1,d4
		clr.w   d3
		bsr.w   LoadSpellEntity 
loc_12865A:
		move.w  (sp)+,d7
		rts

    ; End of function sub_128618

SpellEntityLayout_Healing1:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-healing1.bin"
SpellEntityLayout_Healing2:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-healing2.bin"

; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation_MachineGun:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_12873E:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_128788
		moveq   #1,d1           ; set sprite layer
		clr.w   d2              ; set number of graphics pieces : 1 piece
		move.w  (a0),d3         ; set entity's X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		addi.w  #$10,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		add.w   d7,SPELLENTITY_OFFSET_Y(a0)
		clr.w   d7
		cmpi.w  #$150,(a0)
		blt.s   loc_128774
		addi.w  #$50,d4 
		move.w  d4,(a0)
		clr.l   SPELLENTITY_OFFSET_Y(a0)
		moveq   #2,d7
loc_128774:
		lea     SpellEntityLayout_MachineGun(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		subi.w  #$34,d3 
		addq.w  #2,d4
		bsr.w   LoadSpellEntityLayout
loc_128788:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_12873E
                
		bra.w   loc_128808

    ; End of function UpdateSpellAnimation_MachineGun


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Crossbow:
		
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$13,d7
		moveq   #$20,d0 
loc_1287A6:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   loc_1287FC
		moveq   #1,d1           ; set sprite layer
		clr.w   d2              ; set number of graphics pieces : 1 piece
		move.w  (a0),d3         ; set entity's X position
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		cmpi.b  #2,((SPELLANIM_VERSION-$1000000)).w
		bne.s   loc_1287CA
		subi.w  #$C,d4
		bra.s   loc_1287CE
loc_1287CA:
		bcs.s   loc_1287CE
		subq.w  #8,d4
loc_1287CE:
		subi.w  #$10,(a0)
		move.w  SPELLENTITY_OFFSET_FRAME(a0),d7
		add.w   d7,SPELLENTITY_OFFSET_Y(a0)
		clr.w   d7
		cmpi.w  #$40,(a0) 
		bgt.s   loc_1287EE
		clr.l   (a0)
		clr.l   SPELLENTITY_OFFSET_Y(a0)
		moveq   #2,d7
		addi.w  #$40,d4 
loc_1287EE:
		lea     SpellEntityLayout_MachineGun(pc), a0
		mulu.w  #5,d7
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_1287FC:
		movem.l (sp)+,d0/d7-a0
		addq.w  #1,d0
		addq.w  #8,a0
		dbf     d7,loc_1287A6
loc_128808:
		cmpi.w  #$1E,((word_FFB610-$1000000)).w
		bge.s   loc_128818
		bsr.w   sub_12883E
		bra.w   loc_128838
loc_128818:
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		bne.s   loc_128838
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$13,d7
loc_128828:
		add.w   (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128828
                
		tst.w   d0
		bne.s   loc_128838
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
loc_128838:
		jsr     (j_ApplyVIntCramDma).w
		rts

    ; End of function spellanimationUpdate_Crossbow


; =============== S U B R O U T I N E =======================================

sub_12883E:
		moveq   #3,d6
		jsr     (j_GenerateRandomNumber).l
		subq.w  #1,d7
		move.w  d7,d3
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).w
		lsr.w   #1,d7
		bne.w   loc_1283BE
		addq.w  #1,((word_FFB610-$1000000)).w
		lea     word_128894(pc), a0
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d7
		andi.w  #7,d7
		subq.w  #1,d7
		lsl.w   #2,d7
		adda.w  d7,a0
		moveq   #1,d4
		moveq   #4,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   (a0)+,d7
		move.w  d7,d6
		move.w  d6,-(sp)
		moveq   #3,d6
		jsr     (j_GenerateRandomNumber).l
		add.w   (a0),d7
		move.w  d7,d5
		move.w  (sp)+,d6
		bsr.w   LoadSpellEntity 
		sndCom  SFX_BOW_MASTER
		rts

    ; End of function sub_12883E

word_128894:    dc.w $90
		dc.w $60
		dc.w $90
		dc.w $60
		dc.w $90
		dc.w $60
SpellEntityLayout_MachineGun:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-machinegun.bin"

; =============== S U B R O U T I N E =======================================

UpdateSpellAnimation_LightningBreath:
		
		        module
		cmpi.w  #$3C,((SPELLENTITY_PROPERTIES-$1000000)).w 
		beq.w   return_12890E
		moveq   #$20,d0 
		moveq   #1,d1           ; set sprite layer
		moveq   #5,d2           ; set number of graphics pieces : 6 pieces
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bne.s   loc_1288D4
		move.w  #$98,d3 
		move.w  #$72,d4 
		bra.s   loc_1288DC
loc_1288D4:
		move.w  #$98,d3 
		move.w  #$5E,d4 
loc_1288DC:
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$3C,d7 
		bne.s   loc_1288FA
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
		clr.w   d7
		bra.s   loc_128902
loc_1288FA:
		andi.w  #3,d7
		mulu.w  #$1E,d7
loc_128902:
		lea     SpellEntityLayout_LightningBreath(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
return_12890E:
		
		rts

    ; End of function UpdateSpellAnimation_LightningBreath

SpellEntityLayout_LightningBreath:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-lightningbreath.bin"

; START OF FUNCTION CHUNK FOR spellanimationUpdate_Laser

@LaserEye:
		clr.w   (PALETTE_1_CURRENT).l
		lea     ((SPELLENTITY_PROPERTIES-$1000000)).w,a0
		moveq   #$B,d7
		moveq   #$20,d0 
@Loop:
		movem.l d0/d7-a0,-(sp)
		tst.w   SPELLENTITY_OFFSET_EXISTS(a0)
		beq.w   @Next
		move.w  (a0),d3         ; D3 = X position
		subi.w  #$FA,d3 
		move.w  SPELLENTITY_OFFSET_EXISTS(a0),d7
		addi.w  #$10,(a0)
		move.w  SPELLENTITY_OFFSET_Y(a0),d4
		addq.w  #1,d7
		cmpi.w  #$10,d7
		bgt.s   loc_1289C0      
		move.w  d7,SPELLENTITY_OFFSET_EXISTS(a0)
loc_1289C0:
		moveq   #2,d2           ; set number of graphics pieces : 2 pieces
		moveq   #2,d1           ; change layer of pieces
		cmpi.w  #-32,d3
		blt.w   loc_1289D4
		cmpi.w  #$120,d3
		ble.w   loc_1289E4
loc_1289D4:
		move.l  #0,(a0)
		clr.l   SPELLENTITY_OFFSET_EXISTS(a0)
		clr.w   d7
		move.w  #$FFD8,d4
loc_1289E4:
		lea     SpellEntityLayout_LaserEye(pc), a0
		bsr.w   LoadSpellEntityLayout
@Next:
		movem.l (sp)+,d0/d7-a0
		addq.w  #2,d0
		addq.w  #8,a0
		dbf     d7,@Loop
                
		cmpi.b  #-1,((IS_SPELLANIM_FINISHED-$1000000)).w
		beq.s   loc_128A08
		bsr.w   SpawnNewEntity_Barrage
		bra.w   loc_128A24
loc_128A08:
		lea     ((word_FFB5C4-$1000000)).w,a0
		clr.w   d0
		moveq   #$B,d7
loc_128A10:
		or.w    (a0),d0
		addq.l  #8,a0
		dbf     d7,loc_128A10
                
		tst.w   d0
		bne.s   loc_128A24
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_128A24:
		jsr     (j_ApplyVIntCramDma).w
		bne.s   return_128A36
		jsr     (j_UpdateVdpVScrollData).l
		jsr     (j_EnableDmaQueueProcessing).l
return_128A36:
		
		rts

; END OF FUNCTION CHUNK FOR spellanimationUpdate_Laser


; =============== S U B R O U T I N E =======================================

spellanimationUpdate_Laser:
		
		cmpi.b  #$82,((SPELLANIM_VERSION-$1000000)).w
		beq.w   @LaserEye
		cmpi.w  #$23,((SPELLENTITY_PROPERTIES-$1000000)).w 
		beq.w   @Return
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.b  ((SPELLANIM_VERSION-$1000000)).w,d3
		move.b  d3,d4
		andi.b  #7,d3
		tst.b   d4
		bmi.s   loc_128A84      ; branch if animation is mirrored
		tst.b   d3
		bne.s   @GreenLaser
		                
		lea     byte_128AF4(pc), a0
		nop
		move.w  #$8E,d3 
		move.w  #$67,d4 
		bra.s   loc_128A82
@GreenLaser:
		lea     byte_128B1C(pc), a0
		nop
		move.w  #$74,d3 
		move.w  #$5B,d4 
loc_128A82:
		bra.s   loc_128AB6
loc_128A84:
		lea     byte_128AF4(pc), a0
		nop
		tst.b   d3
		bne.s   loc_128A98
		move.w  #$50,d3 
		move.w  #$60,d4 
		bra.s   loc_128AB6
loc_128A98:
		cmpi.b  #1,d3
		bne.s   loc_128AA8
		move.w  #$40,d3 
		move.w  #$58,d4 
		bra.s   loc_128AB6
loc_128AA8:
		lea     byte_128B1C(pc), a0
		nop
		move.w  #$64,d3 
		move.w  #$5B,d4 
loc_128AB6:
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$23,d7 
		bne.s   @GetLayout
		                
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
@GetLayout:
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		tst.b   ((SPELLANIM_VERSION-$1000000)).w
		bmi.s   @Mirrored
		lea     SpellEntityLayout_Laser(pc), a0
		nop
		bra.s   @LoadLayout
@Mirrored:
		lea     SpellEntityLayout_Laser_Mirrored(pc), a0
		nop
@LoadLayout:
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
@Return:
		rts
        modend

    ; End of function spellanimationUpdate_Laser

byte_128AF4:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 5
		dc.b 6
		dc.b 7
		dc.b 8
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
		dc.b 9
byte_128B1C:    dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 1
		dc.b 2
		dc.b $A
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $B
		dc.b $C
		dc.b $C
		dc.b $C
		dc.b $D
		dc.b $D
		dc.b $E
		dc.b $E
		dc.b $E
		dc.b $E
		dc.b $E
SpellEntityLayout_Laser:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-laser.bin"
SpellEntityLayout_LaserEye:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-lasereye.bin"
SpellEntityLayout_Laser_Mirrored:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-laser-mirrored.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_BusterShot:
		
		cmpi.w  #$1E,((SPELLENTITY_PROPERTIES-$1000000)).w
		bge.w   loc_128D78
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #7,d2
		move.w  #72,d3
		move.w  #104,d4
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$1E,d7
		bne.s   loc_128D42
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
		clr.w   (PALETTE_1_CURRENT).l
		moveq   #$1E,d7
		bra.w   loc_128D5E
loc_128D42:
		cmpi.w  #$A,d7
		blt.s   loc_128D5E
		btst    #1,d7
		beq.s   loc_128D58
		move.w  #$EEC,(PALETTE_1_CURRENT).l
		bra.s   loc_128D5E
loc_128D58:
		clr.w   (PALETTE_1_CURRENT).l
loc_128D5E:
		lea     byte_128D7E(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$28,d7 
		lea     SpellEntityLayout_BusterShot(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_128D78:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function spellanimationUpdate_BusterShot

byte_128D7E:    dc.b 0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   2
SpellEntityLayout_BusterShot:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-bustershot.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_SwordBeam:
		
		cmpi.w  #$1E,((SPELLENTITY_PROPERTIES-$1000000)).w
		beq.w   loc_128E84
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.w  #72,d3
		move.w  #144,d4
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		cmpi.w  #$1E,d7
		bne.s   loc_128E4E
		move.w  #$180,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		clr.w   (PALETTE_1_CURRENT).l
		bra.w   loc_128E6A
loc_128E4E:
		cmpi.w  #$A,d7
		blt.s   loc_128E6A
		btst    #1,d7
		beq.s   loc_128E64
		move.w  #$EC8,(PALETTE_1_CURRENT).l
		bra.s   loc_128E6A
loc_128E64:
		clr.w   (PALETTE_1_CURRENT).l
loc_128E6A:
		lea     byte_128E8A(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		lea     SpellEntityLayout_EnergyBlast(pc), a0
		nop
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_128E84:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function spellanimationUpdate_SwordBeam

byte_128E8A:    dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b 5
		dc.b 4
		dc.b 5
		dc.b 4
SpellEntityLayout_EnergyBlast:
		incbin "data/graphics/battles/spells/layouts/spellentitylayout-energyblast.bin"

; =============== S U B R O U T I N E =======================================

spellanimationUpdate_PowerFist:
		
		cmpi.w  #$1E,((SPELLENTITY_PROPERTIES-$1000000)).w
		beq.w   loc_128F72
		moveq   #$20,d0 
		moveq   #1,d1
		moveq   #2,d2
		move.w  #152,d3
		move.w  #144,d4
		addq.w  #1,((SPELLENTITY_PROPERTIES-$1000000)).w
		move.w  ((SPELLENTITY_PROPERTIES-$1000000)).w,d7
		sub.w   d7,d3
		sub.w   d7,d3
		sub.w   d7,d3
		sub.w   d7,d3
		cmpi.w  #$1E,d7
		bne.s   loc_128F3E
		move.w  #384,d4
		clr.b   ((IS_SPELLANIM_PLAYING-$1000000)).w
		bsr.w   RestorePalettes
loc_128F3E:
		cmpi.w  #$A,d7
		blt.s   loc_128F5A
		btst    #1,d7
		beq.s   loc_128F54
		move.w  #$4E0,(PALETTE_1_CURRENT).l
		bra.s   loc_128F5A
loc_128F54:
		clr.w   (PALETTE_1_CURRENT).l
loc_128F5A:
		lea     byte_128F78(pc), a0
		nop
		move.b  (a0,d7.w),d7
		mulu.w  #$F,d7
		lea     SpellEntityLayout_EnergyBlast(pc), a0
		adda.w  d7,a0
		bsr.w   LoadSpellEntityLayout
loc_128F72:
		jmp     (j_ApplyVIntCramDma).l

    ; End of function spellanimationUpdate_PowerFist

byte_128F78:    dc.b 0
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 3
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 2
		dc.b 0
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
