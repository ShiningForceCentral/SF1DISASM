
; ASM FILE data\graphics\battles\battlesprites\enemies\entries.asm :
; 0x100008..0x122252 : Enemy battlesprites
pt_EnemyBattlesprites:
		dc.l EnemyBattlesprite00
		dc.l EnemyBattlesprite01
		dc.l EnemyBattlesprite02
		dc.l EnemyBattlesprite03
		dc.l EnemyBattlesprite04
		dc.l EnemyBattlesprite05
		dc.l EnemyBattlesprite06
		dc.l EnemyBattlesprite07
		dc.l EnemyBattlesprite08
		dc.l EnemyBattlesprite09
		dc.l EnemyBattlesprite10
		dc.l EnemyBattlesprite11
		dc.l EnemyBattlesprite12
		dc.l EnemyBattlesprite13
		dc.l EnemyBattlesprite14
		dc.l EnemyBattlesprite15
		dc.l EnemyBattlesprite16
		dc.l EnemyBattlesprite17
		dc.l EnemyBattlesprite18
		dc.l EnemyBattlesprite18
		dc.l EnemyBattlesprite19
		dc.l EnemyBattlesprite20
		dc.l EnemyBattlesprite21
		dc.l EnemyBattlesprite22
		dc.l EnemyBattlesprite23
		dc.l EnemyBattlesprite24
		dc.l EnemyBattlesprite24
		dc.l EnemyBattlesprite25
		dc.l EnemyBattlesprite26
		dc.l EnemyBattlesprite27
		dc.l EnemyBattlesprite28
		dc.l EnemyBattlesprite29
		dc.l EnemyBattlesprite30
		dc.l EnemyBattlesprite31
		dc.l EnemyBattlesprite32
		dc.l EnemyBattlesprite33
		dc.l EnemyBattlesprite34
		dc.l EnemyBattlesprite35
		dc.l EnemyBattlesprite36
		dc.l EnemyBattlesprite37
		dc.l EnemyBattlesprite38
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39
		dc.l EnemyBattlesprite39

EnemyBattlesprite00:
		dc.w $0A					; Frames between idle animations
@Sprite00_OffsetTable:
		dc.w @Sprite00_Palettes-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame0-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame0-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame1-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame2-@Sprite00_OffsetTable
		dc.w @Sprite00_Frame3-@Sprite00_OffsetTable
@Sprite00_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite00_palettes.bin"
@Sprite00_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite00_0.bin"
@Sprite00_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite00_1.bin"
@Sprite00_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite00_2.bin"
@Sprite00_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite00_3.bin"

EnemyBattlesprite01:
		dc.w $0C					; Frames between idle animations
@Sprite01_OffsetTable:
		dc.w @Sprite01_Palettes-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame0-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame1-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame2-@Sprite01_OffsetTable
		dc.w @Sprite01_Frame3-@Sprite01_OffsetTable
@Sprite01_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite01_palettes.bin"
@Sprite01_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite01_0.bin"
@Sprite01_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite01_1.bin"
@Sprite01_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite01_2.bin"
@Sprite01_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite01_3.bin"

EnemyBattlesprite02:
		dc.w $0A					; Frames between idle animations
@Sprite02_OffsetTable:
		dc.w @Sprite02_Palettes-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame0-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame0-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame1-@Sprite02_OffsetTable
		dc.w @Sprite02_Frame2-@Sprite02_OffsetTable
@Sprite02_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite02_palettes.bin"
@Sprite02_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite02_0.bin"
@Sprite02_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite02_1.bin"
@Sprite02_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite02_2.bin"

EnemyBattlesprite03:
		dc.w $0A					; Frames between idle animations
@Sprite03_OffsetTable:
		dc.w @Sprite03_Palettes-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame0-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame1-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame2-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame3-@Sprite03_OffsetTable
		dc.w @Sprite03_Frame4-@Sprite03_OffsetTable
@Sprite03_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite03_palettes.bin"
@Sprite03_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite03_0.bin"
@Sprite03_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite03_1.bin"
@Sprite03_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite03_2.bin"
@Sprite03_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite03_3.bin"
@Sprite03_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite03_4.bin"

EnemyBattlesprite04:
		dc.w $0A					; Frames between idle animations
@Sprite04_OffsetTable:
		dc.w @Sprite04_Palettes-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame0-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame0-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame1-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame2-@Sprite04_OffsetTable
		dc.w @Sprite04_Frame3-@Sprite04_OffsetTable
@Sprite04_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite04_palettes.bin"
@Sprite04_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite04_0.bin"
@Sprite04_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite04_1.bin"
@Sprite04_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite04_2.bin"
@Sprite04_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite04_3.bin"

EnemyBattlesprite05:
		dc.w $0A					; Frames between idle animations
@Sprite05_OffsetTable:
		dc.w @Sprite05_Palettes-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame0-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame0-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame1-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame2-@Sprite05_OffsetTable
		dc.w @Sprite05_Frame3-@Sprite05_OffsetTable
@Sprite05_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite05_palettes.bin"
@Sprite05_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite05_0.bin"
@Sprite05_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite05_1.bin"
@Sprite05_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite05_2.bin"
@Sprite05_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite05_3.bin"

EnemyBattlesprite06:
		dc.w $0A					; Frames between idle animations
@Sprite06_OffsetTable:
		dc.w @Sprite06_Palettes-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame0-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame1-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame2-@Sprite06_OffsetTable
		dc.w @Sprite06_Frame3-@Sprite06_OffsetTable
@Sprite06_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite06_palettes.bin"
@Sprite06_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite06_0.bin"
@Sprite06_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite06_1.bin"
@Sprite06_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite06_2.bin"
@Sprite06_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite06_3.bin"

EnemyBattlesprite07:
		dc.w $0A					; Frames between idle animations
@Sprite07_OffsetTable:
		dc.w @Sprite07_Palettes-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame0-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame0-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame1-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame2-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame3-@Sprite07_OffsetTable
		dc.w @Sprite07_Frame4-@Sprite07_OffsetTable
@Sprite07_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite07_palettes.bin"
@Sprite07_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite07_0.bin"
@Sprite07_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite07_1.bin"
@Sprite07_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite07_2.bin"
@Sprite07_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite07_3.bin"
@Sprite07_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite07_4.bin"

EnemyBattlesprite08:
		dc.w $0C					; Frames between idle animations
@Sprite08_OffsetTable:
		dc.w @Sprite08_Palettes-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame0-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame1-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame2-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame3-@Sprite08_OffsetTable
		dc.w @Sprite08_Frame4-@Sprite08_OffsetTable
@Sprite08_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite08_palettes.bin"
@Sprite08_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite08_0.bin"
@Sprite08_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite08_1.bin"
@Sprite08_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite08_2.bin"
@Sprite08_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite08_3.bin"
@Sprite08_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite08_4.bin"

EnemyBattlesprite09:
		dc.w $0A					; Frames between idle animations
@Sprite09_OffsetTable:
		dc.w @Sprite09_Palettes-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame0-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame0-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame1-@Sprite09_OffsetTable
		dc.w @Sprite09_Frame2-@Sprite09_OffsetTable
@Sprite09_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite09_palettes.bin"
@Sprite09_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite09_0.bin"
@Sprite09_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite09_1.bin"
@Sprite09_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite09_2.bin"

EnemyBattlesprite10:
		dc.w $0A					; Frames between idle animations
@Sprite10_OffsetTable:
		dc.w @Sprite10_Palettes-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame0-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame0-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame1-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame2-@Sprite10_OffsetTable
		dc.w @Sprite10_Frame3-@Sprite10_OffsetTable
@Sprite10_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite10_palettes.bin"
@Sprite10_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite10_0.bin"
@Sprite10_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite10_1.bin"
@Sprite10_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite10_2.bin"
@Sprite10_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite10_3.bin"

EnemyBattlesprite11:
		dc.w $0A					; Frames between idle animations
@Sprite11_OffsetTable:
		dc.w @Sprite11_Palettes-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame0-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame0-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame1-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame2-@Sprite11_OffsetTable
		dc.w @Sprite11_Frame3-@Sprite11_OffsetTable
@Sprite11_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite11_palettes.bin"
@Sprite11_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite11_0.bin"
@Sprite11_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite11_1.bin"
@Sprite11_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite11_2.bin"
@Sprite11_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite11_3.bin"

EnemyBattlesprite12:
		dc.w $08					; Frames between idle animations
@Sprite12_OffsetTable:
		dc.w @Sprite12_Palettes-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame0-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame1-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame2-@Sprite12_OffsetTable
		dc.w @Sprite12_Frame3-@Sprite12_OffsetTable
@Sprite12_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite12_palettes.bin"
@Sprite12_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite12_0.bin"
@Sprite12_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite12_1.bin"
@Sprite12_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite12_2.bin"
@Sprite12_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite12_3.bin"

EnemyBattlesprite13:
		dc.w $0A					; Frames between idle animations
@Sprite13_OffsetTable:
		dc.w @Sprite13_Palettes-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame0-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame0-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame1-@Sprite13_OffsetTable
		dc.w @Sprite13_Frame2-@Sprite13_OffsetTable
@Sprite13_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite13_palettes.bin"
@Sprite13_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite13_0.bin"
@Sprite13_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite13_1.bin"
@Sprite13_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite13_2.bin"

EnemyBattlesprite14:
		dc.w $0A					; Frames between idle animations
@Sprite14_OffsetTable:
		dc.w @Sprite14_Palettes-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame0-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame0-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame1-@Sprite14_OffsetTable
		dc.w @Sprite14_Frame2-@Sprite14_OffsetTable
@Sprite14_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite14_palettes.bin"
@Sprite14_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite14_0.bin"
@Sprite14_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite14_1.bin"
@Sprite14_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite14_2.bin"

EnemyBattlesprite15:
		dc.w $0A					; Frames between idle animations
@Sprite15_OffsetTable:
		dc.w @Sprite15_Palettes-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame0-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame1-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame2-@Sprite15_OffsetTable
		dc.w @Sprite15_Frame3-@Sprite15_OffsetTable
@Sprite15_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite15_palettes.bin"
@Sprite15_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite15_0.bin"
@Sprite15_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite15_1.bin"
@Sprite15_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite15_2.bin"
@Sprite15_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite15_3.bin"

EnemyBattlesprite16:
		dc.w $0A					; Frames between idle animations
@Sprite16_OffsetTable:
		dc.w @Sprite16_Palettes-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame0-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame0-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame1-@Sprite16_OffsetTable
		dc.w @Sprite16_Frame2-@Sprite16_OffsetTable
@Sprite16_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite16_palettes.bin"
@Sprite16_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite16_0.bin"
@Sprite16_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite16_1.bin"
@Sprite16_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite16_2.bin"

EnemyBattlesprite17:
		dc.w $0C					; Frames between idle animations
@Sprite17_OffsetTable:
		dc.w @Sprite17_Palettes-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame0-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame1-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame2-@Sprite17_OffsetTable
		dc.w @Sprite17_Frame3-@Sprite17_OffsetTable
@Sprite17_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite17_palettes.bin"
@Sprite17_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite17_0.bin"
@Sprite17_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite17_1.bin"
@Sprite17_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite17_2.bin"
@Sprite17_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite17_3.bin"

EnemyBattlesprite18:
		dc.w $0A					; Frames between idle animations
@Sprite18_OffsetTable:
		dc.w @Sprite18_Palettes-@Sprite18_OffsetTable
		dc.w @Sprite18_Frame0-@Sprite18_OffsetTable
		dc.w @Sprite18_Frame0-@Sprite18_OffsetTable
		dc.w @Sprite18_Frame1-@Sprite18_OffsetTable
		dc.w @Sprite18_Frame2-@Sprite18_OffsetTable
@Sprite18_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite18_palettes.bin"
@Sprite18_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite18_0.bin"
@Sprite18_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite18_1.bin"
@Sprite18_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite18_2.bin"

EnemyBattlesprite19:
		dc.w $0A					; Frames between idle animations
@Sprite19_OffsetTable:
		dc.w @Sprite19_Palettes-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame0-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame0-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame1-@Sprite19_OffsetTable
		dc.w @Sprite19_Frame2-@Sprite19_OffsetTable
@Sprite19_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite19_palettes.bin"
@Sprite19_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite19_0.bin"
@Sprite19_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite19_1.bin"
@Sprite19_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite19_2.bin"

EnemyBattlesprite20:
		dc.w $09					; Frames between idle animations
@Sprite20_OffsetTable:
		dc.w @Sprite20_Palettes-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame0-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame1-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame2-@Sprite20_OffsetTable
		dc.w @Sprite20_Frame3-@Sprite20_OffsetTable
@Sprite20_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite20_palettes.bin"
@Sprite20_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite20_0.bin"
@Sprite20_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite20_1.bin"
@Sprite20_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite20_2.bin"
@Sprite20_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite20_3.bin"

EnemyBattlesprite21:
		dc.w $0A					; Frames between idle animations
@Sprite21_OffsetTable:
		dc.w @Sprite21_Palettes-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame0-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame0-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame1-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame2-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame3-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame4-@Sprite21_OffsetTable
		dc.w @Sprite21_Frame5-@Sprite21_OffsetTable
@Sprite21_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_palettes.bin"
@Sprite21_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_0.bin"
@Sprite21_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_1.bin"
@Sprite21_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_2.bin"
@Sprite21_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_3.bin"
@Sprite21_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_4.bin"
@Sprite21_Frame5:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite21_5.bin"

EnemyBattlesprite22:
		dc.w $0A					; Frames between idle animations
@Sprite22_OffsetTable:
		dc.w @Sprite22_Palettes-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame0-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame1-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame2-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame3-@Sprite22_OffsetTable
		dc.w @Sprite22_Frame4-@Sprite22_OffsetTable
@Sprite22_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite22_palettes.bin"
@Sprite22_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite22_0.bin"
@Sprite22_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite22_1.bin"
@Sprite22_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite22_2.bin"
@Sprite22_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite22_3.bin"
@Sprite22_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite22_4.bin"

EnemyBattlesprite23:
		dc.w $0A					; Frames between idle animations
@Sprite23_OffsetTable:
		dc.w @Sprite23_Palettes-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame0-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame0-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame1-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame2-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame3-@Sprite23_OffsetTable
		dc.w @Sprite23_Frame4-@Sprite23_OffsetTable
@Sprite23_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite23_palettes.bin"
@Sprite23_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite23_0.bin"
@Sprite23_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite23_1.bin"
@Sprite23_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite23_2.bin"
@Sprite23_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite23_3.bin"
@Sprite23_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite23_4.bin"

EnemyBattlesprite24:
		dc.w $0C					; Frames between idle animations
@Sprite24_OffsetTable:
		dc.w @Sprite24_Palettes-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame0-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame1-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame2-@Sprite24_OffsetTable
		dc.w @Sprite24_Frame3-@Sprite24_OffsetTable
@Sprite24_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite24_palettes.bin"
@Sprite24_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite24_0.bin"
@Sprite24_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite24_1.bin"
@Sprite24_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite24_2.bin"
@Sprite24_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite24_3.bin"

EnemyBattlesprite25:
		dc.w $0A					; Frames between idle animations
@Sprite25_OffsetTable:
		dc.w @Sprite25_Palettes-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame0-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame0-@Sprite25_OffsetTable
		dc.w @Sprite25_Frame1-@Sprite25_OffsetTable
@Sprite25_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite25_palettes.bin"
@Sprite25_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite25_0.bin"
@Sprite25_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite25_1.bin"

EnemyBattlesprite26:
		dc.w $0A					; Frames between idle animations
@Sprite26_OffsetTable:
		dc.w @Sprite26_Palettes-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame0-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame0-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame1-@Sprite26_OffsetTable
		dc.w @Sprite26_Frame2-@Sprite26_OffsetTable
@Sprite26_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite26_palettes.bin"
@Sprite26_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite26_0.bin"
@Sprite26_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite26_1.bin"
@Sprite26_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite26_2.bin"

EnemyBattlesprite27:
		dc.w $0A					; Frames between idle animations
@Sprite27_OffsetTable:
		dc.w @Sprite27_Palettes-@Sprite27_OffsetTable
		dc.w @Sprite27_Frame0-@Sprite27_OffsetTable
		dc.w @Sprite27_Frame1-@Sprite27_OffsetTable
@Sprite27_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite27_palettes.bin"
@Sprite27_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite27_0.bin"
@Sprite27_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite27_1.bin"

EnemyBattlesprite28:
		dc.w $07					; Frames between idle animations
@Sprite28_OffsetTable:
		dc.w @Sprite28_Palettes-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame0-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame1-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame2-@Sprite28_OffsetTable
		dc.w @Sprite28_Frame3-@Sprite28_OffsetTable
@Sprite28_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite28_palettes.bin"
@Sprite28_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite28_0.bin"
@Sprite28_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite28_1.bin"
@Sprite28_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite28_2.bin"
@Sprite28_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite28_3.bin"

EnemyBattlesprite29:
		dc.w $0A					; Frames between idle animations
@Sprite29_OffsetTable:
		dc.w @Sprite29_Palettes-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame0-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame0-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame1-@Sprite29_OffsetTable
		dc.w @Sprite29_Frame2-@Sprite29_OffsetTable
@Sprite29_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite29_palettes.bin"
@Sprite29_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite29_0.bin"
@Sprite29_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite29_1.bin"
@Sprite29_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite29_2.bin"

EnemyBattlesprite30:
		dc.w $0A					; Frames between idle animations
@Sprite30_OffsetTable:
		dc.w @Sprite30_Palettes-@Sprite30_OffsetTable
		dc.w @Sprite30_Frame0-@Sprite30_OffsetTable
		dc.w @Sprite30_Frame0-@Sprite30_OffsetTable
@Sprite30_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite30_palettes.bin"
@Sprite30_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite30_0.bin"

EnemyBattlesprite31:
		dc.w $0A					; Frames between idle animations
@Sprite31_OffsetTable:
		dc.w @Sprite31_Palettes-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame0-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame0-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame1-@Sprite31_OffsetTable
		dc.w @Sprite31_Frame2-@Sprite31_OffsetTable
@Sprite31_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite31_palettes.bin"
@Sprite31_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite31_0.bin"
@Sprite31_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite31_1.bin"
@Sprite31_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite31_2.bin"

EnemyBattlesprite32:
		dc.w $0A					; Frames between idle animations
@Sprite32_OffsetTable:
		dc.w @Sprite32_Palettes-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame0-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame0-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame1-@Sprite32_OffsetTable
		dc.w @Sprite32_Frame2-@Sprite32_OffsetTable
@Sprite32_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite32_palettes.bin"
@Sprite32_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite32_0.bin"
@Sprite32_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite32_1.bin"
@Sprite32_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite32_2.bin"

EnemyBattlesprite33:
		dc.w $0A					; Frames between idle animations
@Sprite33_OffsetTable:
		dc.w @Sprite33_Palettes-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame0-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame0-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame1-@Sprite33_OffsetTable
		dc.w @Sprite33_Frame2-@Sprite33_OffsetTable
@Sprite33_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite33_palettes.bin"
@Sprite33_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite33_0.bin"
@Sprite33_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite33_1.bin"
@Sprite33_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite33_2.bin"

EnemyBattlesprite34:
		dc.w $0A					; Frames between idle animations
@Sprite34_OffsetTable:
		dc.w @Sprite34_Palettes-@Sprite34_OffsetTable
		dc.w @Sprite34_Frame0-@Sprite34_OffsetTable
		dc.w @Sprite34_Frame0-@Sprite34_OffsetTable
		dc.w @Sprite34_Frame1-@Sprite34_OffsetTable
		dc.w @Sprite34_Frame2-@Sprite34_OffsetTable
		dc.w @Sprite34_Frame3-@Sprite34_OffsetTable
		dc.w @Sprite34_Frame4-@Sprite34_OffsetTable
@Sprite34_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite34_palettes.bin"
@Sprite34_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite34_0.bin"
@Sprite34_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite34_1.bin"
@Sprite34_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite34_2.bin"
@Sprite34_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite34_3.bin"
@Sprite34_Frame4:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite34_4.bin"

EnemyBattlesprite35:
		dc.w $0A					; Frames between idle animations
@Sprite35_OffsetTable:
		dc.w @Sprite35_Palettes-@Sprite35_OffsetTable
		dc.w @Sprite35_Frame0-@Sprite35_OffsetTable
		dc.w @Sprite35_Frame0-@Sprite35_OffsetTable
		dc.w @Sprite35_Frame1-@Sprite35_OffsetTable
		dc.w @Sprite35_Frame2-@Sprite35_OffsetTable
		dc.w @Sprite35_Frame3-@Sprite35_OffsetTable
@Sprite35_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite35_palettes.bin"
@Sprite35_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite35_0.bin"
@Sprite35_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite35_1.bin"
@Sprite35_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite35_2.bin"
@Sprite35_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite35_3.bin"

EnemyBattlesprite36:
		dc.w $0A					; Frames between idle animations
@Sprite36_OffsetTable:
		dc.w @Sprite36_Palettes-@Sprite36_OffsetTable
		dc.w @Sprite36_Frame0-@Sprite36_OffsetTable
		dc.w @Sprite36_Frame0-@Sprite36_OffsetTable
		dc.w @Sprite36_Frame1-@Sprite36_OffsetTable
		dc.w @Sprite36_Frame2-@Sprite36_OffsetTable
		dc.w @Sprite36_Frame3-@Sprite36_OffsetTable
@Sprite36_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite36_palettes.bin"
@Sprite36_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite36_0.bin"
@Sprite36_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite36_1.bin"
@Sprite36_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite36_2.bin"
@Sprite36_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite36_3.bin"

EnemyBattlesprite37:
		dc.w $0F					; Frames between idle animations
@Sprite37_OffsetTable:
		dc.w @Sprite37_Palettes-@Sprite37_OffsetTable
		dc.w @Sprite37_Frame0-@Sprite37_OffsetTable
		dc.w @Sprite37_Frame1-@Sprite37_OffsetTable
		dc.w @Sprite37_Frame2-@Sprite37_OffsetTable
		dc.w @Sprite37_Frame3-@Sprite37_OffsetTable
@Sprite37_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite37_palettes.bin"
@Sprite37_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite37_0.bin"
@Sprite37_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite37_1.bin"
@Sprite37_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite37_2.bin"
@Sprite37_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite37_3.bin"

EnemyBattlesprite38:
		dc.w $14					; Frames between idle animations
@Sprite38_OffsetTable:
		dc.w @Sprite38_Palettes-@Sprite38_OffsetTable
		dc.w @Sprite38_Frame0-@Sprite38_OffsetTable
		dc.w @Sprite38_Frame1-@Sprite38_OffsetTable
		dc.w @Sprite38_Frame2-@Sprite38_OffsetTable
		dc.w @Sprite38_Frame3-@Sprite38_OffsetTable
@Sprite38_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite38_palettes.bin"
@Sprite38_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite38_0.bin"
@Sprite38_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite38_1.bin"
@Sprite38_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite38_2.bin"
@Sprite38_Frame3:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite38_3.bin"

EnemyBattlesprite39:
		dc.w $0A					; Frames between idle animations
@Sprite39_OffsetTable:
		dc.w @Sprite39_Palettes-@Sprite39_OffsetTable
		dc.w @Sprite39_Frame0-@Sprite39_OffsetTable
		dc.w @Sprite39_Frame0-@Sprite39_OffsetTable
		dc.w @Sprite39_Frame1-@Sprite39_OffsetTable
		dc.w @Sprite39_Frame2-@Sprite39_OffsetTable
@Sprite39_Palettes:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite39_palettes.bin"
@Sprite39_Frame0:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite39_0.bin"
@Sprite39_Frame1:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite39_1.bin"
@Sprite39_Frame2:
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlesprite39_2.bin"
