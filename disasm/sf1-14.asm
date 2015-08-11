
; GAME SECTION 14 :
; 

; FREE SPACE : 0 bytes.


										incbin "sound/pcm/bank0.bin"
																						; PCM Bank
byte_170000:        incbin "sound/music/bank0.bin"
																						; Music Bank 0
SoundDriver:        incbin "sound/driver/cube.bin"
										incbin "sound/yminst.bin"
																						; Music Bank 1, with instruments
										incbin "sound/music/bank1.bin"
