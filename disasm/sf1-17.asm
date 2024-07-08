
; GAME SECTION 17 :
; PCM banks, Music banks, Sound driver, YM instruments
; FREE SPACE : 0 bytes.


		incbin "data/sound/pcmbank0.bin"
		incbin "data/sound/musicbank0.bin"
SoundDriver:    incbin "data/sound/sounddriver.bin"
		incbin "data/sound/instruments.bin"
		incbin "data/sound/musicbank1.bin"
