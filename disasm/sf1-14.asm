
; GAME SECTION 14 :
; 

; FREE SPACE : 0 bytes.


										incbin "sound/pcmbank0.bin"
																						; PCM Bank
byte_170000:        incbin "sound/musicbank0.bin"
																						; Music Bank 0
SoundDriver:        incbin "sound/driver.bin"
										incbin "sound/instruments.bin"
																						; Music Bank 1, with instruments
										incbin "sound/musicbank1.bin"
