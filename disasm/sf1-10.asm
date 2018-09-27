
; GAME SECTION 10 :
; Ending, intro, title and chapter screens graphics and palettes
; FREE SPACE : 1851 bytes.


p_EndingTiles_Max1:
		dc.l EndingTiles_Max1
p_EndingTiles_Max2:
		dc.l EndingTiles_Max2
p_EndingTiles_Max3:
		dc.l EndingTiles_Max3
p_EndingTiles_Max4:
		dc.l EndingTiles_Max4
p_EndingTiles_Adam:
		dc.l EndingTiles_Adam
p_EndingTiles_TheEnd:
		dc.l EndingTiles_TheEnd
p_EndingPalette:dc.l EndingPalette
p_EndingTiles_Farmer:
		dc.l EndingTiles_Farmer
p_IntroPalette_Scene1:
		dc.l IntroPalette_Scene1_1
		dc.l IntroPalette_Scene1_2
p_IntroTiles_Scene1_1:
		dc.l IntroTiles_Scene1_1; intro tablet pointers
p_IntroTiles_Scene1_2:
		dc.l IntroTiles_Scene1_2
p_IntroPalette_Scene2:
		dc.l IntroPalette_Scene2
p_IntroTiles_Scene2:
		dc.l IntroTiles_Scene2
p_IntroPalette_Scene3:
		dc.l IntroPalette_Scene3
p_IntroTiles_Scene3_1:
		dc.l IntroTiles_Scene3_1
p_IntroTiles_Scene3_2:
		dc.l IntroTiles_Scene3_2
p_IntroPalette_Scene4:
		dc.l IntroPalette_Scene4
p_IntroTiles_Scene4_1:
		dc.l IntroTiles_Scene4_1
p_IntroTiles_Scene4_2:
		dc.l IntroTiles_Scene4_2
p_IntroTiles_Scene4_BG1:
		dc.l IntroTiles_Scene4_BG1
p_IntroTiles_Scene4_BG2:
		dc.l IntroTiles_Scene4_BG2
p_TitleScreenPalette:
		dc.l TitleScreenPalette
p_TitleScreenTiles:
		dc.l TitleScreenTiles
p_TitleScreenLayout:
		dc.l TitleScreenLayout
p_ChapterScreensPalette:
		dc.l ChapterScreensPalette
pt_ChapterScreens:
		dc.l ChapterScreen0
		dc.l ChapterScreen1
		dc.l ChapterScreen2
		dc.l ChapterScreen3
		dc.l ChapterScreen4
		dc.l ChapterScreen5
		dc.l ChapterScreen6
		dc.l ChapterScreen7
EndingTiles_Max1:
		incbin "data/graphics/specialscreens/ending/endingtiles-max1.bin"
EndingTiles_Max2:
		incbin "data/graphics/specialscreens/ending/endingtiles-max2.bin"
EndingTiles_Max3:
		incbin "data/graphics/specialscreens/ending/endingtiles-max3.bin"
EndingTiles_Max4:
		incbin "data/graphics/specialscreens/ending/endingtiles-max4.bin"
EndingTiles_Adam:
		incbin "data/graphics/specialscreens/ending/endingtiles-adam.bin"
EndingTiles_TheEnd:
		incbin "data/graphics/specialscreens/ending/endingtiles-theend.bin"
EndingPalette:  incbin "data/graphics/specialscreens/ending/endingpalette.bin"
EndingTiles_Farmer:
		incbin "data/graphics/specialscreens/ending/endingtiles-farmer.bin"
IntroPalette_Scene1_1:
		incbin "data/graphics/specialscreens/intro/intropalette-scene1-1.bin"
IntroPalette_Scene1_2:
		incbin "data/graphics/specialscreens/intro/intropalette-scene1-2.bin"
IntroTiles_Scene1_1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene1-1.bin"
IntroTiles_Scene1_2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene1-2.bin"
IntroPalette_Scene2:
		incbin "data/graphics/specialscreens/intro/intropalette-scene2.bin"
IntroTiles_Scene2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene2.bin"
IntroPalette_Scene3:
		incbin "data/graphics/specialscreens/intro/intropalette-scene3.bin"
IntroTiles_Scene3_1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene3-1.bin"
IntroTiles_Scene3_2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene3-2.bin"
IntroPalette_Scene4:
		incbin "data/graphics/specialscreens/intro/intropalette-scene4.bin"
IntroTiles_Scene4_1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-1.bin"
IntroTiles_Scene4_2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-2.bin"
IntroTiles_Scene4_BG1:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-bg1.bin"
IntroTiles_Scene4_BG2:
		incbin "data/graphics/specialscreens/intro/introtiles-scene4-bg2.bin"
TitleScreenPalette:
		incbin "data/graphics/specialscreens/titlescreen/titlescreenpalette.bin"
TitleScreenTiles:
		incbin "data/graphics/specialscreens/titlescreen/titlescreentiles.bin"
TitleScreenLayout:
		incbin "data/graphics/specialscreens/titlescreen/titlescreenlayout.bin"
ChapterScreensPalette:
		incbin "data/graphics/specialscreens/chapterscreens/chapterscreenspalette.bin"
ChapterScreen0: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen0.bin"
ChapterScreen1: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen1.bin"
ChapterScreen2: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen2.bin"
ChapterScreen3: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen3.bin"
ChapterScreen4: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen4.bin"
ChapterScreen5: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen5.bin"
ChapterScreen6: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen6.bin"
ChapterScreen7: incbin "data/graphics/specialscreens/chapterscreens/chapterscreen7.bin"
		align $4000
