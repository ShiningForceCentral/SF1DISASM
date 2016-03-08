
; GAME SECTION 14 :
; 

; FREE SPACE : 0 bytes.


										incbin "pcmbank0.bin"   ; PCM Bank
byte_170000:        incbin "musicbank0.bin" ; Music Bank 0
SoundDriver:        incbin "driver.bin"
										incbin "instruments.bin"; Music Bank 1, with instruments
										incbin "musicbank1.bin"
