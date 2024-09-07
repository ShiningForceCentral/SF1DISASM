
; ASM FILE code\common\tech\interrupts\vintengine_1.asm :
; 0x6D8..0xB4C : Vertical Interrupt Engine - Main Technical Engine - Triggered at each frame display

; =============== S U B R O U T I N E =======================================

; Vertical Interrupt

VInt:
		movem.l d0-a6,-(sp)
		bclr    #ENABLE_VINT,(VINT_PARAMS).l
						; disable VInt
		beq.s   @Skip           ; skip if VInt was already disabled
		bsr.w   ProcessVdpQueues
		bsr.w   ProcessVramRead
		bsr.w   ApplyFadingEffect
		bsr.w   ApplyZ80BusUpdates
		bsr.w   CallContextualFunction
		clr.b   (VINT_WAIT_TOGGLE).l
		move.b  (VINT_ENABLED).l,d0
		or.b    d0,(VINT_PARAMS).l
@Skip:
		addq.b  #1,(FRAME_COUNTER).l
		clr.b   (byte_FF0E9D).l
		move.w  (VDP_REG00_STATUS).l,(VDP_Control).l
		movem.l (sp)+,d0-a6
		rte

    ; End of function VInt


; =============== S U B R O U T I N E =======================================

CallContextualFunction:
		
		move.b  (SECONDS_COUNTER_FRAMES).l,d0
		addq.b  #1,d0           ; increment frame and second counters
		cmpi.b  #60,d0
		bne.s   loc_738
		clr.b   d0
loc_738:
		move.b  d0,(SECONDS_COUNTER_FRAMES).l
		movea.l (VINT_CONTEXTUAL_FUNCTION_ADDRESS).l,a0
		move.l  a0,d0
		bne.s   loc_74A
		rts
loc_74A:
		jmp     (a0)

    ; End of function CallContextualFunction


; =============== S U B R O U T I N E =======================================

DisableDisplay:
		
		andi.b  #$BF,(VDP_REG01_VALUE).l
		move.w  (VDP_REG01_STATUS).l,(VDP_Control).l
		rts

    ; End of function DisableDisplay


; =============== S U B R O U T I N E =======================================

ProcessVdpQueues:
		
		bsr.s   ProcessVdpCommandQueue
		bsr.w   ProcessDmaQueue
		rts

    ; End of function ProcessVdpQueues


; =============== S U B R O U T I N E =======================================

ProcessVdpCommandQueue:
		
		bclr    #VDP_COMMAND_REQUEST,(VINT_PARAMS).l
		beq.w   return_7EA
		tst.b   (VDP_COMMAND_COUNTER).l
		beq.w   return_7EA
		lea     (VDP_COMMAND_QUEUE).l,a0
loc_784:
		move.w  (a0)+,d0
		move.w  #$8F02,d1
		bclr    #$F,d0
		beq.s   loc_79E
		move.w  #$8F40,d1
		bclr    #$E,d0
		beq.s   loc_79E
		move.w  #$8F80,d1
loc_79E:
		move.w  d1,(VDP_Control).l
		move.w  (a0)+,d2
		move.w  d2,d1
		andi.w  #$3FFF,d2
		ori.w   #$4000,d2
		move.w  d2,(VDP_Control).l
		clr.w   d2
		add.w   d1,d1
		addx.w  d2,d2
		add.w   d1,d1
		addx.w  d2,d2
		move.w  d2,(VDP_Control).l
loc_7C6:
		move.w  (a0)+,(VDP_Data).l
		dbf     d0,loc_7C6
                
		subq.b  #1,(VDP_COMMAND_COUNTER).l
		bne.s   loc_784
                
		move.w  #$8F02,(VDP_Control).l
		move.l  #VDP_COMMAND_QUEUE,(VDP_COMMAND_QUEUE_POINTER).l
return_7EA:
		rts

    ; End of function ProcessVdpCommandQueue


; =============== S U B R O U T I N E =======================================

ProcessVramRead:
		
		bclr    #VRAM_READ_REQUEST,(VINT_PARAMS).l
						; Check if VRAM read requested
		beq.s   @Return
		lea     (VDP_COMMAND_QUEUE).l,a0
		move.w  #$8F02,(VDP_Control).l; autoincrement 02
		move.w  (a0),d7
		andi.w  #$3FFF,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
		rol.w   #2,d7
		andi.w  #3,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
@Loop:
		move.w  (VDP_Data).l,(a0)+
		dbf     d7,@Loop
@Return:
		rts

    ; End of function ProcessVramRead


; =============== S U B R O U T I N E =======================================

ProcessDmaQueue:
		
		bclr    #DMA_REQUEST,(VINT_PARAMS).l
						; Check if DMA requested
		bne.s   loc_840         
		btst    #DEACTIVATE_DMA,(VINT_PARAMS).l
						; Check if DMA deactivated
		bne.s   return_8B8
loc_840:
		move.w  #$100,(Z80BusReq).l; Bus request
loc_848:
		btst    #0,(Z80BusReq).l; Check bus availability
		bne.s   loc_848         
                
		btst    #DEACTIVATE_DMA,(VINT_PARAMS).l
						; Check if DMA deactivated
		bne.s   return_8B8
		bsr.w   UpdateVdpSpriteTable; Update sprites
		tst.b   (DMA_QUEUE_SIZE).l
		beq.s   loc_8A6
		lea     (DMA_QUEUE).l,a0
		lea     (VDP_Control).l,a6
		move.w  (VDP_REG01_STATUS).l,d7
		ori.b   #$10,d7         ; Enable DMA on VDP
		move.w  d7,(a6)
loc_880:
		move.w  (a0)+,(a6)      ; Send all queued DMA commands
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.w  (a0)+,(TEMP_DMA_VALUE).l
		move.w  (TEMP_DMA_VALUE).l,(a6)
		subq.b  #1,(DMA_QUEUE_SIZE).l
		bne.s   loc_880         
                
		move.w  (VDP_REG01_STATUS).l,(a6)
		move.w  #$8F02,(a6)
loc_8A6:
		move.w  #0,(Z80BusReq).l
		move.l  #DMA_QUEUE,(DMA_QUEUE_POINTER).l
return_8B8:
		rts

    ; End of function ProcessDmaQueue


; =============== S U B R O U T I N E =======================================

ApplyZ80BusUpdates:
		
		move.w  #$100,(Z80BusReq).l
loc_8C2:
		btst    #0,(Z80BusReq).l
		bne.s   loc_8C2         ; wait for Z80 bus available
		tst.b   (WAIT_FOR_MUSIC_END).l
		beq.w   loc_8E6
		tst.b   (Z80_CHANNEL_1_NOT_IN_USE).l
		beq.w   loc_9EA
		clr.b   (WAIT_FOR_MUSIC_END).l
loc_8E6:
		lea     (SOUND_COMMAND_QUEUE).l,a0
		move.l  4(a0),d0
		or.l    (a0),d0         ; if stack void, do nothing
		beq.w   loc_9EA
		move.b  (a0),d1         ; contains music volume parameter when command is FC
														; or fade in parameter when 7F < command < F0
		move.b  1(a0),d0        ; stores first command in d1 and d0 and pushes the rest forward
		move.w  2(a0),(a0)+
		move.w  2(a0),(a0)+
		move.w  2(a0),(a0)+
		clr.w   (a0)
		cmpi.b  #SOUND_COMMAND_PLAY_PREVIOUS_MUSIC,d0
		bne.s   loc_944         ; if command FB, play back previous music
														; NOTE : for future cube save/resume feature,
														; send proper resume command instead of previous music index !
														; Cube should save current music at every new music index !
		tst.b   (MUSIC_STACK_LENGTH).l
		beq.s   loc_936
		movem.l d7-a0,-(sp)
		lea     (MUSIC_STACK).l,a0
		moveq   #8,d7
loc_924:
		move.b  1(a0),(a0)+
		dbf     d7,loc_924
                
		movem.l (sp)+,d7-a0
		subq.b  #1,(MUSIC_STACK_LENGTH).l
loc_936:
		move.b  (MUSIC_STACK).l,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_944:
		cmpi.b  #$FD,d0
		bcs.s   loc_954
		move.b  d0,(Z80_SoundDriverCommand).l
						; if command >= FD, then send it to Z80
		bra.w   loc_9EA
loc_954:
		cmpi.b  #$F0,d0
		bne.s   loc_966
		move.b  #1,(WAIT_FOR_MUSIC_END).l
						; if F0, then wait for current music to end before sending commands to Z80
		bra.w   loc_9EA
loc_966:
		cmpi.b  #$FC,d0
		bne.s   loc_980         ; if FC, then update music level
		andi.b  #$F,d1
		move.b  d1,(Z80_SoundDriverMusicLevel).l
		move.b  d0,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_980:
		movem.l d0,-(sp)
		andi.b  #$7F,d0 ; a music/sfx index mask that must be changed to allow indexes above $80
														; also change stuff at 9AA then !
		cmp.b   (MUSIC_STACK).l,d0; compare with last played music
		movem.l (sp)+,d0
		bne.s   loc_998
		bra.w   loc_9EA         ; if same to last played music, let current music play
														; (might play nothing if last played music has ended !)
loc_998:
		bclr    #7,d0           ; if command > 7F, then send Fade In parameter
		beq.s   loc_9A6         ; branch if bit was 1 before bclr
		move.b  d1,(Z80_SoundDriverFadeInData).l
		bra.s   loc_9B4
loc_9A6:
		cmpi.b  #$40,d0 
		bgt.s   loc_9B4
		move.b  #$F,(Z80_SoundDriverFadeInData).l
						; if music, put this fade in parameter : no fade in
loc_9B4:
		move.b  d0,(Z80_SoundDriverCommand).l
						; send music/sfx command to Z80
		cmpi.b  #$40,d0 
		bge.s   loc_9EA
		movem.l d7-a0,-(sp)
		lea     (WAIT_FOR_MUSIC_END).l,a0
		moveq   #8,d7
loc_9CC:
		move.b  -2(a0),-(a0)    ; add music index to music stack
		dbf     d7,loc_9CC
                
		move.b  d0,-(a0)
		movem.l (sp)+,d7-a0
		cmpi.b  #$A,(MUSIC_STACK_LENGTH).l
		bge.s   loc_9EA
		addq.b  #1,(MUSIC_STACK_LENGTH).l
loc_9EA:
		bsr.w   UpdatePlayerInputs
		tst.b   (byte_FF0F03).l
		bne.s   loc_A38
		moveq   #2,d0
		move.b  (P1_INPUT).l,d1 
		lsr.w   #1,d1
		dbcc    d0,*+4
		lsr.w   #1,d1
		dbcc    d0,*+4
		lsr.w   #1,d1
		dbcc    d0,*+4
		lsr.w   #1,d1
		dbcc    d0,*+4
		tst.w   d0
		bne.s   loc_A28         
		move.b  (PRIMARY_WALKING_DIRECTION).l,d0
						; get current walking direction
		eor.b   d0,(P1_INPUT).l ; get new direction
		bra.s   loc_A38
loc_A28:
		move.b  (P1_INPUT).l,d1 ; if only one direction pushed, set it as primary
		andi.w  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d1
		move.b  d1,(PRIMARY_WALKING_DIRECTION).l
loc_A38:
		move.b  (P1_INPUT).l,d0 
		move.b  d0,(CURRENT_PLAYER_INPUT).l
						; overwrite P2 6-button data with P1 state with walking direction
		cmp.b   (LAST_DIRECTIONAL_INPUT).l,d0
		bne.s   loc_A6C         
		addq.b  #1,(INPUT_REPEAT_DELAYER).l
						; if input is the same then increment counter and ignore input
		cmpi.b  #24,(INPUT_REPEAT_DELAYER).l
		bcc.s   loc_A64
		clr.b   (CURRENT_PLAYER_INPUT).l; keep current input only when counter reaches $18
		bra.s   loc_A6A
loc_A64:
		subq.b  #6,(INPUT_REPEAT_DELAYER).l
loc_A6A:
		bra.s   loc_A9A
loc_A6C:
		clr.w   d2              ; if input is new
		move.b  (LAST_DIRECTIONAL_INPUT).l,d1
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d1
		beq.s   loc_A7C
		moveq   #1,d2           ; was pushing a direction
loc_A7C:
		move.b  (CURRENT_PLAYER_INPUT).l,(LAST_DIRECTIONAL_INPUT).l
		andi.b  #INPUT_UP|INPUT_DOWN|INPUT_LEFT|INPUT_RIGHT,d0
		beq.w   loc_A94
		tst.b   d2
		bne.w   loc_A9A
loc_A94:
		clr.b   (INPUT_REPEAT_DELAYER).l
loc_A9A:
		move.w  #0,(Z80BusReq).l
		rts

    ; End of function ApplyZ80BusUpdates


; =============== S U B R O U T I N E =======================================

nullsub_AA4:
		rts

    ; End of function nullsub_AA4


; =============== S U B R O U T I N E =======================================

nullsub_AA6:
		rts

    ; End of function nullsub_AA6


; =============== S U B R O U T I N E =======================================

sub_AA8:
		movem.l d0-d1/a0,-(sp)
		movea.l $E(sp),a0
		move.w  (a0),d1
		addq.l  #2,$E(sp)
		cmpi.w  #-1,d1
		bne.s   loc_ABE
		move.w  d0,d1
loc_ABE:
		lea     (SOUND_COMMAND_QUEUE).l,a0
		moveq   #3,d0
loc_AC6:
		tst.w   (a0)+
		dbeq    d0,loc_AC6
		move.w  d1,-2(a0)
		movem.l (sp)+,d0-d1/a0
		rte

    ; End of function sub_AA8


; =============== S U B R O U T I N E =======================================

ApplyFadingEffect:
		
		move.b  (FADING_SETTING).l,d0
		beq.w   return_B4A
		subq.b  #1,(FADING_COUNTER).l
		bne.w   return_B4A
		move.b  (FADING_COUNTER_MAX).l,(FADING_COUNTER).l
		subq.b  #1,d0
		ext.w   d0
		lsl.w   #3,d0
		move.b  (FADING_POINTER).l,d1
		ext.w   d1
		add.w   d1,d0
		move.b  table_FadingData(pc,d0.w),d1
		cmpi.w  #$80,d1 
		bne.s   loc_B14
		clr.b   (FADING_SETTING).l
loc_B14:
		movem.l d1,-(sp)
		andi.w  #$F0,d1 
		cmpi.w  #$80,d1 
		movem.l (sp)+,d1
		bne.s   loc_B34
		andi.w  #$F,d1          ; go x backwards
		sub.b   d1,(FADING_POINTER).l
		bra.w   ApplyFadingEffect
loc_B34:
		ext.w   d1
		move.w  d1,d0
		move.b  (FADING_PALETTE_FLAGS).l,d1
		ext.w   d1
		bsr.w   ApplyCurrentColorFadingValue
		addq.b  #1,(FADING_POINTER).l
return_B4A:
		rts

    ; End of function ApplyFadingEffect

