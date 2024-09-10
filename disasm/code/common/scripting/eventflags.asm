
; ASM FILE code\common\scripting\eventflags.asm :
; 0x2FFA..0x309A : Event flags functions

; =============== S U B R O U T I N E =======================================

sub_2FFA:
		movem.l d0/a0,-(sp)
		bsr.s   GetEventFlagsAddress
		move.b  (a0),d2
		and.b   d1,d2
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_2FFA


; =============== S U B R O U T I N E =======================================

sub_300A:
		movem.l d0/a0,-(sp)
		bsr.s   GetEventFlagsAddress
		or.b    d1,(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_300A


; =============== S U B R O U T I N E =======================================

sub_3018:
		movem.l d0/a0,-(sp)
		bsr.s   GetEventFlagsAddress
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function sub_3018


; =============== S U B R O U T I N E =======================================

sub_3028:
		movem.l d0/d2/a0,-(sp)
		bsr.s   GetEventFlagsAddress
		move.b  (a0),d2
		and.b   d1,d2
		beq.s   loc_3040
		cmp.b   d1,d2
		bne.s   loc_3040
		andi    #$FB,ccr 
		ori     #1,ccr
loc_3040:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function sub_3028


; =============== S U B R O U T I N E =======================================

GetEventFlagsAddress:
		
		lea     (EVENT_FLAGS).l,a0
		andi.w  #$FF,d0
		adda.w  d0,a0
		rts

    ; End of function GetEventFlagsAddress


; =============== S U B R O U T I N E =======================================

SetEventFlag:
		movem.l d0-d1/a0,-(sp)
		bsr.s   GetEventFlag    
		or.b    d1,(a0)
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function SetEventFlag


; =============== S U B R O U T I N E =======================================

ClearEventFlag:
		
		movem.l d0-d1/a0,-(sp)
		bsr.s   GetEventFlag    
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function ClearEventFlag


; =============== S U B R O U T I N E =======================================

CheckEventFlag:
		
		movem.l d0-d1/a0,-(sp)
		bsr.s   GetEventFlag    
		move.b  (a0),d0
		and.b   d1,d0
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function CheckEventFlag


; =============== S U B R O U T I N E =======================================

; Get event flag D0

GetEventFlag:
		lea     (EVENT_FLAGS).l,a0
		move.w  d0,d1
		lsr.w   #3,d0
		adda.w  d0,a0
		move.w  d1,d0
		andi.b  #7,d0
		moveq   #1,d1
		lsl.b   d0,d1
		rts

    ; End of function GetEventFlag

