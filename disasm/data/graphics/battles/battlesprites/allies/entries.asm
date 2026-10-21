
; ASM FILE data\graphics\battles\battlesprites\allies\entries.asm :
; 0x144014..0x1602E2 : Ally battlesprites
pt_AllyBattlesprites:
		dc.l AllyBattlesprite00
		dc.l AllyBattlesprite01
		dc.l AllyBattlesprite02
		dc.l AllyBattlesprite03
		dc.l AllyBattlesprite04
		dc.l AllyBattlesprite05
		dc.l AllyBattlesprite06
		dc.l AllyBattlesprite07
		dc.l AllyBattlesprite08
		dc.l AllyBattlesprite09
		dc.l AllyBattlesprite10
		dc.l AllyBattlesprite11
		dc.l AllyBattlesprite12
		dc.l AllyBattlesprite13
		dc.l AllyBattlesprite14
		dc.l AllyBattlesprite15
		dc.l AllyBattlesprite16
		dc.l AllyBattlesprite17
		dc.l AllyBattlesprite18
		dc.l AllyBattlesprite19
		dc.l AllyBattlesprite20
		dc.l AllyBattlesprite21
		dc.l AllyBattlesprite22
		dc.l AllyBattlesprite23
		dc.l AllyBattlesprite05
		dc.l AllyBattlesprite24
		dc.l AllyBattlesprite25
		dc.l AllyBattlesprite26
		dc.l AllyBattlesprite27
		dc.l AllyBattlesprite28
		dc.l AllyBattlesprite29
		dc.l AllyBattlesprite30
		dc.l AllyBattlesprite31
		dc.l AllyBattlesprite32
		dc.l AllyBattlesprite33

AllyBattlesprite00:
		dc.w $0A					; Frames between idle animations
@Sprite00_OffsetTable:
		dc.w @Sprite00_Palettes-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame0-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame1-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame2-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame3-@Sprite00_OffsetTable
@Sprite00_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite00_palettes.bin"
@Sprite00_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite00_0.bin"
@Sprite00_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite00_1.bin"
@Sprite00_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite00_2.bin"
@Sprite00_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite00_3.bin"
		
AllyBattlesprite01:
		dc.w $0A					; Frames between idle animations
@Sprite01_OffsetTable:
		dc.w @Sprite01_Palettes-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame0-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame0-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame1-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame2-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame3-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame4-@Sprite01_OffsetTable
@Sprite01_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite01_palettes.bin"
@Sprite01_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite01_0.bin"
@Sprite01_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite01_1.bin"
@Sprite01_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite01_2.bin"
@Sprite01_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite01_3.bin"
@Sprite01_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite01_4.bin"
		
AllyBattlesprite02:
		dc.w $0A					; Frames between idle animations
@Sprite02_OffsetTable:
		dc.w @Sprite02_Palettes-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame0-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame0-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame1-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame2-@Sprite02_OffsetTable
@Sprite02_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite02_palettes.bin"
@Sprite02_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite02_0.bin"
@Sprite02_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite02_1.bin"
@Sprite02_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite02_2.bin"
		
AllyBattlesprite03:
		dc.w $0A					; Frames between idle animations
@Sprite03_OffsetTable:
		dc.w @Sprite03_Palettes-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame0-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame1-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame2-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame3-@Sprite03_OffsetTable
@Sprite03_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite03_palettes.bin"
@Sprite03_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite03_0.bin"
@Sprite03_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite03_1.bin"
@Sprite03_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite03_2.bin"
@Sprite03_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite03_3.bin"
		
AllyBattlesprite04:
		dc.w $0A					; Frames between idle animations
@Sprite04_OffsetTable:
		dc.w @Sprite04_Palettes-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame0-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame0-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame1-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame2-@Sprite04_OffsetTable
@Sprite04_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite04_palettes.bin"
@Sprite04_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite04_0.bin"
@Sprite04_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite04_1.bin"
@Sprite04_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite04_2.bin"
		
AllyBattlesprite05:
		dc.w $0F					; Frames between idle animations
@Sprite05_OffsetTable:
		dc.w @Sprite05_Palettes-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame0-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame1-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame2-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame3-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame4-@Sprite05_OffsetTable
@Sprite05_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite05_palettes.bin"
@Sprite05_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite05_0.bin"
@Sprite05_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite05_1.bin"
@Sprite05_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite05_2.bin"
@Sprite05_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite05_3.bin"
@Sprite05_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite05_4.bin"
		
AllyBattlesprite06:
		dc.w $0A					; Frames between idle animations
@Sprite06_OffsetTable:
		dc.w @Sprite06_Palettes-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame0-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame0-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame1-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame2-@Sprite06_OffsetTable
@Sprite06_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite06_palettes.bin"
@Sprite06_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite06_0.bin"
@Sprite06_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite06_1.bin"
@Sprite06_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite06_2.bin"
		
AllyBattlesprite07:
		dc.w $0A					; Frames between idle animations
@Sprite07_OffsetTable:
		dc.w @Sprite07_Palettes-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame0-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame0-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame1-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame2-@Sprite07_OffsetTable
@Sprite07_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite07_palettes.bin"
@Sprite07_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite07_0.bin"
@Sprite07_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite07_1.bin"
@Sprite07_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite07_2.bin"
		
AllyBattlesprite08:
		dc.w $0A					; Frames between idle animations
@Sprite08_OffsetTable:
		dc.w @Sprite08_Palettes-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame0-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame0-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame1-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame2-@Sprite08_OffsetTable
@Sprite08_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite08_palettes.bin"
@Sprite08_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite08_0.bin"
@Sprite08_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite08_1.bin"
@Sprite08_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite08_2.bin"
		
AllyBattlesprite09:
		dc.w $0A					; Frames between idle animations
@Sprite09_OffsetTable:
		dc.w @Sprite09_Palettes-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame0-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame0-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame1-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame2-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame3-@Sprite09_OffsetTable
@Sprite09_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite09_palettes.bin"
@Sprite09_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite09_0.bin"
@Sprite09_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite09_1.bin"
@Sprite09_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite09_2.bin"
@Sprite09_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite09_3.bin"
		
AllyBattlesprite10:
		dc.w $0A					; Frames between idle animations
@Sprite10_OffsetTable:
		dc.w @Sprite10_Palettes-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame0-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame0-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame1-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame2-@Sprite10_OffsetTable
@Sprite10_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite10_palettes.bin"
@Sprite10_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite10_0.bin"
@Sprite10_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite10_1.bin"
@Sprite10_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite10_2.bin"
		
AllyBattlesprite11:
		dc.w $07					; Frames between idle animations
@Sprite11_OffsetTable:
		dc.w @Sprite11_Palettes-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame0-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame1-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame2-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame3-@Sprite11_OffsetTable
@Sprite11_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite11_palettes.bin"
@Sprite11_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite11_0.bin"
@Sprite11_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite11_1.bin"
@Sprite11_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite11_2.bin"
@Sprite11_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite11_3.bin"
		
AllyBattlesprite12:
		dc.w $05					; Frames between idle animations
@Sprite12_OffsetTable:
		dc.w @Sprite12_Palettes-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame0-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame1-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame2-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame3-@Sprite12_OffsetTable
@Sprite12_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite12_palettes.bin"
@Sprite12_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite12_0.bin"
@Sprite12_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite12_1.bin"
@Sprite12_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite12_2.bin"
@Sprite12_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite12_3.bin"
		
AllyBattlesprite13:
		dc.w $0C					; Frames between idle animations
@Sprite13_OffsetTable:
		dc.w @Sprite13_Palettes-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame0-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame1-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame2-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame3-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame4-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame5-@Sprite13_OffsetTable
@Sprite13_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_palettes.bin"
@Sprite13_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_0.bin"
@Sprite13_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_1.bin"
@Sprite13_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_2.bin"
@Sprite13_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_3.bin"
@Sprite13_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_4.bin"
@Sprite13_Frame5:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite13_5.bin"
		
AllyBattlesprite14:
		dc.w $0A					; Frames between idle animations
@Sprite14_OffsetTable:
		dc.w @Sprite14_Palettes-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame0-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame0-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame1-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame2-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame3-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame4-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame5-@Sprite14_OffsetTable
@Sprite14_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_palettes.bin"
@Sprite14_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_0.bin"
@Sprite14_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_1.bin"
@Sprite14_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_2.bin"
@Sprite14_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_3.bin"
@Sprite14_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_4.bin"
@Sprite14_Frame5:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite14_5.bin"
		
AllyBattlesprite15:
		dc.w $0A					; Frames between idle animations
@Sprite15_OffsetTable:
		dc.w @Sprite15_Palettes-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame0-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame0-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame1-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame2-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame3-@Sprite15_OffsetTable
@Sprite15_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite15_palettes.bin"
@Sprite15_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite15_0.bin"
@Sprite15_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite15_1.bin"
@Sprite15_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite15_2.bin"
@Sprite15_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite15_3.bin"
		
AllyBattlesprite16:
		dc.w $0A					; Frames between idle animations
@Sprite16_OffsetTable:
		dc.w @Sprite16_Palettes-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame0-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame0-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame1-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame2-@Sprite16_OffsetTable
@Sprite16_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite16_palettes.bin"
@Sprite16_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite16_0.bin"
@Sprite16_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite16_1.bin"
@Sprite16_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite16_2.bin"
		
AllyBattlesprite17:
		dc.w $0A					; Frames between idle animations
@Sprite17_OffsetTable:
		dc.w @Sprite17_Palettes-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame0-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame0-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame1-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame2-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame3-@Sprite17_OffsetTable
@Sprite17_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite17_palettes.bin"
@Sprite17_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite17_0.bin"
@Sprite17_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite17_1.bin"
@Sprite17_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite17_2.bin"
@Sprite17_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite17_3.bin"
		
AllyBattlesprite18:
		dc.w $0A					; Frames between idle animations
@Sprite18_OffsetTable:
		dc.w @Sprite18_Palettes-@Sprite18_OffsetTable
		dc.w @Sprite18_Frame0-@Sprite18_OffsetTable
		dc.w @Sprite18_Frame0-@Sprite18_OffsetTable
@Sprite18_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite18_palettes.bin"
@Sprite18_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite18_0.bin"
		
AllyBattlesprite19:
		dc.w $0A					; Frames between idle animations
@Sprite19_OffsetTable:
		dc.w @Sprite19_Palettes-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame0-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame1-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame2-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame3-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame4-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame5-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame6-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame7-@Sprite19_OffsetTable
@Sprite19_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_palettes.bin"
@Sprite19_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_0.bin"
@Sprite19_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_1.bin"
@Sprite19_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_2.bin"
@Sprite19_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_3.bin"
@Sprite19_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_4.bin"
@Sprite19_Frame5:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_5.bin"
@Sprite19_Frame6:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_6.bin"
@Sprite19_Frame7:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite19_7.bin"
		
AllyBattlesprite20:
		dc.w $0A					; Frames between idle animations
@Sprite20_OffsetTable:
		dc.w @Sprite20_Palettes-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame0-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame0-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame1-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame2-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame3-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame4-@Sprite20_OffsetTable
@Sprite20_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite20_palettes.bin"
@Sprite20_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite20_0.bin"
@Sprite20_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite20_1.bin"
@Sprite20_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite20_2.bin"
@Sprite20_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite20_3.bin"
@Sprite20_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite20_4.bin"
		
AllyBattlesprite21:
		dc.w $0A					; Frames between idle animations
@Sprite21_OffsetTable:
		dc.w @Sprite21_Palettes-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame0-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame0-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame1-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame2-@Sprite21_OffsetTable
@Sprite21_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite21_palettes.bin"
@Sprite21_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite21_0.bin"
@Sprite21_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite21_1.bin"
@Sprite21_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite21_2.bin"
		
AllyBattlesprite22:
		dc.w $0A					; Frames between idle animations
@Sprite22_OffsetTable:
		dc.w @Sprite22_Palettes-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame0-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame0-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame1-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame2-@Sprite22_OffsetTable
@Sprite22_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite22_palettes.bin"
@Sprite22_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite22_0.bin"
@Sprite22_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite22_1.bin"
@Sprite22_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite22_2.bin"
		
AllyBattlesprite23:
		dc.w $0A					; Frames between idle animations
@Sprite23_OffsetTable:
		dc.w @Sprite23_Palettes-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame0-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame0-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame1-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame2-@Sprite23_OffsetTable
@Sprite23_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite23_palettes.bin"
@Sprite23_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite23_0.bin"
@Sprite23_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite23_1.bin"
@Sprite23_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite23_2.bin"
		
AllyBattlesprite24:
		dc.w $0A					; Frames between idle animations
@Sprite24_OffsetTable:
		dc.w @Sprite24_Palettes-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame0-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame0-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame1-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame2-@Sprite24_OffsetTable
@Sprite24_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite24_palettes.bin"
@Sprite24_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite24_0.bin"
@Sprite24_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite24_1.bin"
@Sprite24_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite24_2.bin"
		
AllyBattlesprite25:
		dc.w $0A					; Frames between idle animations
@Sprite25_OffsetTable:
		dc.w @Sprite25_Palettes-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame0-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame0-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame1-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame2-@Sprite25_OffsetTable
@Sprite25_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite25_palettes.bin"
@Sprite25_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite25_0.bin"
@Sprite25_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite25_1.bin"
@Sprite25_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite25_2.bin"
		
AllyBattlesprite26:
		dc.w $0A					; Frames between idle animations
@Sprite26_OffsetTable:
		dc.w @Sprite26_Palettes-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame0-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame0-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame1-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame2-@Sprite26_OffsetTable
@Sprite26_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite26_palettes.bin"
@Sprite26_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite26_0.bin"
@Sprite26_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite26_1.bin"
@Sprite26_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite26_2.bin"
		
AllyBattlesprite27:
		dc.w $0A					; Frames between idle animations
@Sprite27_OffsetTable:
		dc.w @Sprite27_Palettes-@Sprite27_OffsetTable
		dc.w @Sprite27_Frame0-@Sprite27_OffsetTable
		dc.w @Sprite27_Frame0-@Sprite27_OffsetTable
		dc.w @Sprite27_Frame1-@Sprite27_OffsetTable
		dc.w @Sprite27_Frame2-@Sprite27_OffsetTable
@Sprite27_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite27_palettes.bin"
@Sprite27_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite27_0.bin"
@Sprite27_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite27_1.bin"
@Sprite27_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite27_2.bin"
		
AllyBattlesprite28:
		dc.w $0A					; Frames between idle animations
@Sprite28_OffsetTable:
		dc.w @Sprite28_Palettes-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame0-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame0-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame1-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame2-@Sprite28_OffsetTable
@Sprite28_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite28_palettes.bin"
@Sprite28_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite28_0.bin"
@Sprite28_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite28_1.bin"
@Sprite28_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite28_2.bin"
		
AllyBattlesprite29:
		dc.w $07					; Frames between idle animations
@Sprite29_OffsetTable:
		dc.w @Sprite29_Palettes-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame0-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame1-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame2-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame3-@Sprite29_OffsetTable
@Sprite29_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite29_palettes.bin"
@Sprite29_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite29_0.bin"
@Sprite29_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite29_1.bin"
@Sprite29_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite29_2.bin"
@Sprite29_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite29_3.bin"
		
AllyBattlesprite30:
		dc.w $03					; Frames between idle animations
@Sprite30_OffsetTable:
		dc.w @Sprite30_Palettes-@Sprite30_OffsetTable
		dc.w @Sprite30_Frame0-@Sprite30_OffsetTable
		dc.w @Sprite30_Frame1-@Sprite30_OffsetTable
		dc.w @Sprite30_Frame2-@Sprite30_OffsetTable
		dc.w @Sprite30_Frame3-@Sprite30_OffsetTable
@Sprite30_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite30_palettes.bin"
@Sprite30_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite30_0.bin"
@Sprite30_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite30_1.bin"
@Sprite30_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite30_2.bin"
@Sprite30_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite30_3.bin"
		
AllyBattlesprite31:
		dc.w $0F					; Frames between idle animations
@Sprite31_OffsetTable:
		dc.w @Sprite31_Palettes-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame0-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame1-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame2-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame3-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame4-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame5-@Sprite31_OffsetTable
@Sprite31_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_palettes.bin"
@Sprite31_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_0.bin"
@Sprite31_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_1.bin"
@Sprite31_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_2.bin"
@Sprite31_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_3.bin"
@Sprite31_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_4.bin"
@Sprite31_Frame5:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite31_5.bin"
		
AllyBattlesprite32:
		dc.w $0A					; Frames between idle animations
@Sprite32_OffsetTable:
		dc.w @Sprite32_Palettes-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame0-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame0-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame1-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame2-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame3-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame4-@Sprite32_OffsetTable
@Sprite32_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite32_palettes.bin"
@Sprite32_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite32_0.bin"
@Sprite32_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite32_1.bin"
@Sprite32_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite32_2.bin"
@Sprite32_Frame3:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite32_3.bin"
@Sprite32_Frame4:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite32_4.bin"
		
AllyBattlesprite33:
		dc.w $0A					; Frames between idle animations
@Sprite33_OffsetTable:
		dc.w @Sprite33_Palettes-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame0-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame0-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame1-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame2-@Sprite33_OffsetTable
@Sprite33_Palettes:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite33_palettes.bin"
@Sprite33_Frame0:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite33_0.bin"
@Sprite33_Frame1:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite33_1.bin"
@Sprite33_Frame2:
		incbin "data/graphics/battles/battlesprites/allies/allybattlesprite33_2.bin"
