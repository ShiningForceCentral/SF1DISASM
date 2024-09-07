
; ASM FILE code\common\tech\randomnumbergenerator.asm :
; 0x14EE..0x150E : RNG function

; =============== S U B R O U T I N E =======================================

; In: D6 = Value range, Out: D7 = Random value

GenerateRandomNumber:
		
		move.w  (RANDOM_SEED).l,d7
		mulu.w  #$D,d7
		addi.w  #7,d7
		andi.l  #$FFFF,d7
		move.w  d7,(RANDOM_SEED).l
		mulu.w  d6,d7
		swap    d7
		rts

    ; End of function GenerateRandomNumber

