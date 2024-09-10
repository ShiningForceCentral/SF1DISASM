
; ASM FILE code\common\tech\interrupts\trap0_soundcommand.asm :
; 0x5FA..0x62E : Trap 0 - Sound command

; =============== S U B R O U T I N E =======================================

; if parameter = -1, then get command from d0.w

Trap0_SoundCommand:
		
		movem.l d0-d1/a0,-(sp)
		movea.l $E(sp),a0
		move.w  (a0),d1         ; get interrupt parameter
		addq.l  #2,$E(sp)
		cmpi.w  #-1,d1
		bne.s   loc_610
		move.w  d0,d1
loc_610:
		tst.b   ((DONT_SEND_SOUND_COMMANDS-$1000000)).w
		bne.s   loc_628
		lea     (SOUND_COMMAND_QUEUE).l,a0
		moveq   #3,d0
loc_61E:
		tst.w   (a0)+
		dbeq    d0,loc_61E
		move.w  d1,-2(a0)       ; add new sound command to send
loc_628:
		movem.l (sp)+,d0-d1/a0
		rte

    ; End of function Trap0_SoundCommand

