
; ASM FILE code\common\scripting\getmapspritescriptaddress.asm :
; 0x80EE0..0x80EFE : Mapsprite script address getter function

; =============== S U B R O U T I N E =======================================

; Load address into table at $80EFE based on byte 13 of sprite data.

GetMapspriteScriptAddress:
		
		clr.w   d0
		move.b  $D(a0),d0
		beq.s   loc_80EF8
		tst.b   1(a0)
		bmi.s   loc_80EF8
		lsl.w   #2,d0
		movea.l pt_MapspriteScripts(pc,d0.w),a1
		tst.b   d0
		rts
loc_80EF8:
		ori     #1,ccr
		rts

    ; End of function GetMapspriteScriptAddress

