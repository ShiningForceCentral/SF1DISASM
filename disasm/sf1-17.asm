
; GAME SECTION 17 :
; PCM banks, Music banks, Sound driver, YM instruments
; FREE SPACE : 0 bytes.


		incbin "data/sound/pcmbank0.bin"; PCM Bank
byte_170000:    incbin "data/sound/musicbank0.bin"
						; Music Bank 0
SoundDriver:    incbin "data/sound/sounddriver.bin"
		incbin "data/sound/instruments.bin"
						; Music Bank 1, with instruments
		incbin "data/sound/musicbank1.bin"
