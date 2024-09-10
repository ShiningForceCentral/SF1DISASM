
; ASM FILE code\gameflow\start\start.asm :
; 0x47A..0x5FA : Program start function

; =============== S U B R O U T I N E =======================================

Start:
		tst.l   (CTRL1).l       
		bne.s   loc_488
		tst.w   (CTRL3).l
loc_488:
		bne.s   loc_506
		lea     StartParams(pc), a5
		movem.w (a5)+,d5-d7     ; copy parameters
		movem.l (a5)+,a0-a4     ; copy adresses
		move.b  -$10FF(a1),d0   ; get HW Info at 0xA10001
		andi.b  #$F,d0
		beq.s   loc_4A8         
		move.l  #'SEGA',$2F00(a1)
loc_4A8:
		move.w  (a4),d0         ; just read vdp control, why ?
		moveq   #0,d0
		movea.l d0,a6
		move.l  a6,usp          ; reset user stack pointer ?
		moveq   #23,d1          ; loop for each of the 24 vdp registers
loc_4B2:
		move.b  (a5)+,d5        ; set each vdp register with initial parameters
		move.w  d5,(a4)
		add.w   d7,d5
		dbf     d1,loc_4B2      
                
		move.l  (a5)+,(a4)
		move.w  d0,(a3)         ; move 0 to vdp data port
		move.w  d7,(a1)         ; Z80 busreq cancel ?
		move.w  d7,(a2)         ; Z80 bus reset request ?
loc_4C4:
		btst    d0,(a1)
		bne.s   loc_4C4         ; wait for availability
		moveq   #37,d2          ; loop 37 times
loc_4CA:
		move.b  (a5)+,(a0)+     ; copy 37 bytes to Z80 ram
		dbf     d2,loc_4CA      
                
		move.w  d0,(a2)         ; Z80 reset request ?
		move.w  d0,(a1)         ; Z80 busreq cancel ?
		move.w  d7,(a2)         ; Z80 reset cancel ?
loc_4D6:
		move.l  d0,-(a6)        ; clear RAM
		dbf     d6,loc_4D6      
                
		move.l  (a5)+,(a4)      ; disable DMA, increment data bias number : 2
		move.l  (a5)+,(a4)      ; address set : CRAM write ?
		moveq   #31,d3          ; loop 31 times
loc_4E2:
		move.l  d0,(a3)         ; clear CRAM ?
		dbf     d3,loc_4E2      
                
		move.l  (a5)+,(a4)      ; VSRAM write
		moveq   #19,d4          ; loop 19 times
loc_4EC:
		move.l  d0,(a3)         ; clear VSRAM
		dbf     d4,loc_4EC      
                
		moveq   #3,d5           ; loop 3 times
loc_4F4:
		move.b  (a5)+,$11(a3)   ; set PSG volume to 0
		dbf     d5,loc_4F4      
                
		move.w  d0,(a2)         ; bus reset cancel ?
		movem.l (a6),d0-a6      ; clear registers
		move    #$2700,sr       ; Move 0x2700 into Status Register, which now has these set: no trace, A7 is Interupt Stack Pointer, no interrupts, clear condition code bits
loc_506:
		bra.s   loc_574
StartParams:
		dc.w $8000              ; vdp register set base word
		dc.w $3FFF
		dc.w $100               ; vdp register set word to add for next register
		dc.l Z80_Memory
		dc.l Z80BusReq          ; Z80 bus request
		dc.l Z80BusReset        ; Z80 bus reset
		dc.l VDP_Data           ; vdp data port
		dc.l VDP_Control        ; vdp control port
		dc.b 4                  ; vdp reg 00 : disable HInt, enable read H V counter
		dc.b $14                ; vdp reg 01 : disable display, disable VInt, enable DMA, V28 cell mode
		dc.b $30                ; vdp reg 02 : scroll A table vram address : C000
		dc.b $3C                ; vdp reg 03 : window table vram address : F000 ?
		dc.b 7                  ; vdp reg 04 : scroll B table vram address : E000
		dc.b $6C                ; vdp reg 05 : sprite attribute table vram address : D800
		dc.b 0                  ; vdp reg 06 : always 0
		dc.b 0                  ; vdp reg 07 : background color : plt 0 color 0
		dc.b 0                  ; vdp reg 08 : always 0
		dc.b 0                  ; vdp reg 09 : always 0
		dc.b $FF                ; vdp reg 10 : Hint timing value
		dc.b 0                  ; vdp reg 11 : disable external interrupt, full V/H scrolls
		dc.b $81                ; vdp reg 12 : H40 cell mode, disable shadow/highlight, no interlace
		dc.b $37                ; vdp reg 13 : H Scroll table vram address : FC00
		dc.b 0                  ; vdp reg 14 : always 0
		dc.b 1                  ; vdp reg 15 : auto-increment bias number : 1
		dc.b 1                  ; vdp reg 16 : scroll size : V32 cell, H64 cell
		dc.b 0                  ; vdp reg 17 : window H position : from left side
		dc.b 0                  ; vdp reg 18 : window V position : from upper side
		dc.b $FF                ; vdp reg 19 : DMA length counter low
		dc.b $FF                ; vdp reg 20 : DMA length counter high
		dc.b 0                  ; vdp reg 21 : DMA source address low
		dc.b 0                  ; vdp reg 22 : DMA source address mid
		dc.b $80                ; vdp reg 23 : DMA source address high, VRAM fill
		dc.l $40000080          ; ?
		dc.b $AF                ; Z80 start code
		dc.b 1                  ; xor     a
		dc.b $D9                ; ld      bc, 1FD9h
		dc.b $1F                ; ld      de, 27h
		dc.b $11                ; ld      hl, 26h
		dc.b $27                ; ld      sp, hl
		dc.b 0                  ; ld      (hl), a
		dc.b $21                ; ldir
		dc.b $26                ; pop     ix
		dc.b 0                  ; pop     iy
		dc.b $F9                ; ld      i, a
		dc.b $77                ; ld      r, a
		dc.b $ED                ; pop     de
		dc.b $B0                ; pop     hl
		dc.b $DD                ; pop     af
		dc.b $E1                ; ex      af, af'
		dc.b $FD                ; exx
		dc.b $E1                ; pop     bc
		dc.b $ED                ; pop     de
		dc.b $47                ; pop     hl
		dc.b $ED                ; pop     af
		dc.b $4F                ; ld      sp, hl
		dc.b $D1                ; di
		dc.b $E1                ; im      1
		dc.b $F1                ; ld      (hl), 0E9h
		dc.b 8                  ; jp      (hl)
		dc.b $D9
		dc.b $C1
		dc.b $D1
		dc.b $E1
		dc.b $F1
		dc.b $F9
		dc.b $F3
		dc.b $ED
		dc.b $56
		dc.b $36
		dc.b $E9
		dc.b $E9                ; Z80 start code end
		dc.l $81048F02          ; disable DMA, increment data bias number : 2
		dc.l $C0000000          ; CRAM write
		dc.l $40000010          ; VSRAM write
		dc.b $9F                ; PSG bytes
		dc.b $BF
		dc.b $DF
		dc.b $FF                ; end of PSG bytes
loc_574:
		tst.w   (VDP_Control).l
loc_57A:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0           ; wait for free DMA
		bne.s   loc_57A
                
		bra.w   InitSystem

    ; End of function Start

		dc.b $F3                ; unused Z80 code
		dc.b $31                ; loc_0:         di
		dc.b $F0                ;                ld      sp, 1FF0h
		dc.b $1F                ;                jp      loc_0
		dc.b $C3
		dc.b 0
		dc.b 0
		dc.b 0

; =============== S U B R O U T I N E =======================================

InitZ80:
		movem.l d0-a1,-(sp)
		move.w  #$100,(Z80BusReq).l
		move.w  #$100,(Z80BusReset).l
		lea     (Z80_Memory).l,a0
		move.w  #$1F80,d7
		lea     (SoundDriver).l,a1
loc_5B6:
		move.b  (a1)+,d0
		bsr.w   CopyByteToZ80
		dbf     d7,loc_5B6
                
		move.w  #0,(Z80BusReset).l
		moveq   #$10,d7
loc_5CA:
		dbf     d7,loc_5CA
                
		move.w  #$100,(Z80BusReset).l
		move.w  #0,(Z80BusReq).l
		lea     (MUSIC_STACK_LENGTH).l,a0
		movem.l (sp)+,d0-a1
		rts

    ; End of function InitZ80


; =============== S U B R O U T I N E =======================================

CopyWordToZ80:
		
		bsr.w   CopyByteToZ80
		lsr.w   #8,d0

    ; End of function CopyWordToZ80


; =============== S U B R O U T I N E =======================================

CopyByteToZ80:
		
		move.b  d0,(a0)
		cmp.b   (a0),d0
		bne.s   CopyByteToZ80
		addq.l  #1,a0
		rts

    ; End of function CopyByteToZ80

