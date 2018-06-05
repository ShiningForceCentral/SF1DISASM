
; GAME SECTION 01 :
; Technical layer, low level game engine, ...
; FREE SPACE : 478 bytes.


INIT_STACK:     ; File Name   : E:\SEGADEV\IDB\SF1\sf1.bin
		dc.l 0
START_ADDRESS:  dc.l Start
		dc.l int_OtherError
		dc.l int_AdressError
		dc.l int_IllegalInstruction
		dc.l int_ZeroDivide
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l HInt
		dc.l int_ExternalInterrupt
		dc.l VInt
		dc.l IntLv17
		dc.l Trap0_SoundCommand
		dc.l Trap1_
		dc.l Trap2_
off_8C:         dc.l Trap3_
		dc.l Trap4_
		dc.l Trap5_
		dc.l Trap6_
		dc.l Trap7_
		dc.l Trap8_
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_ExternalInterrupt
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
		dc.l int_OtherError
aSegaGenesis:   dc.b 'SEGA GENESIS    '
aCSega1993_apr: dc.b '(C)SEGA 1993.APR'
aShiningForce:  dc.b 'SHINING FORCE   '
		dc.b '                                '
aShiningForce_0:dc.b 'SHINING FORCE   '
		dc.b '                '
		dc.b '                '
aGmMk13120:     dc.b 'GM MK-1312 -0'
		dc.b $30
		dc.w $E975
aJ:             dc.b 'J               '
		dc.l 0
dword_1A4:      dc.l $17FFFF
		dc.l $FF0000
		dc.l $FFFFFF
		dc.l $5241F820
		dc.l $200001
		dc.l $203FFF
		dc.b '                    '
		dc.b '                '
		dc.b '                '
aU:             dc.b 'U               '

; =============== S U B R O U T I N E =======================================

sub_200:
		bra.w   sub_C22

	; End of function sub_200


; =============== S U B R O U T I N E =======================================

sub_204:
		bra.w   sub_C2C

	; End of function sub_204


; =============== S U B R O U T I N E =======================================

sub_208:
		bra.w   sub_C36

	; End of function sub_208


; =============== S U B R O U T I N E =======================================

sub_20C:
		bra.w   sub_C44

	; End of function sub_20C


; =============== S U B R O U T I N E =======================================

sub_210:
		bra.w   sub_C50

	; End of function sub_210


; =============== S U B R O U T I N E =======================================

sub_214:
		bra.w   sub_C54

	; End of function sub_214


; =============== S U B R O U T I N E =======================================

sub_218:
		bra.w   sub_C58

	; End of function sub_218


; =============== S U B R O U T I N E =======================================

sub_21C:
		bra.w   sub_C62

	; End of function sub_21C


; =============== S U B R O U T I N E =======================================

sub_220:
		bra.w   sub_C6C

	; End of function sub_220


; =============== S U B R O U T I N E =======================================

sub_224:
		bra.w   loc_C8A

	; End of function sub_224


; =============== S U B R O U T I N E =======================================

sub_228:
		bra.w   sub_CE0

	; End of function sub_228


; =============== S U B R O U T I N E =======================================

sub_22C:
		bra.w   loc_CEC

	; End of function sub_22C


; =============== S U B R O U T I N E =======================================

sub_230:
		bra.w   sub_DD2

	; End of function sub_230


; =============== S U B R O U T I N E =======================================

sub_234:
		bra.w   sub_E30

	; End of function sub_234


; =============== S U B R O U T I N E =======================================

sub_238:
		bra.w   sub_E0A

	; End of function sub_238


; =============== S U B R O U T I N E =======================================

sub_23C:
		bra.w   loc_DD6

	; End of function sub_23C


; =============== S U B R O U T I N E =======================================

sub_240:
		bra.w   sub_E66

	; End of function sub_240


; =============== S U B R O U T I N E =======================================

sub_244:
		bra.w   sub_E80

	; End of function sub_244


; =============== S U B R O U T I N E =======================================

sub_248:
		bra.w   sub_EB6

	; End of function sub_248


; =============== S U B R O U T I N E =======================================

sub_24C:
		bra.w   sub_EF0

	; End of function sub_24C


; =============== S U B R O U T I N E =======================================

sub_250:
		bra.w   sub_F0A

	; End of function sub_250


; =============== S U B R O U T I N E =======================================

sub_254:
		bra.w   sub_115A

	; End of function sub_254


; START OF FUNCTION CHUNK FOR sub_E0B4

loc_258:
		bra.w   sub_E96

; END OF FUNCTION CHUNK FOR sub_E0B4


; =============== S U B R O U T I N E =======================================

sub_25C:
		bra.w   sub_EA0

	; End of function sub_25C


; =============== S U B R O U T I N E =======================================

sub_260:
		bra.w   sub_EA6

	; End of function sub_260


; =============== S U B R O U T I N E =======================================

sub_264:
		bra.w   sub_EB0

	; End of function sub_264


; =============== S U B R O U T I N E =======================================

sub_268:
		bra.w   sub_F52

	; End of function sub_268


; =============== S U B R O U T I N E =======================================

sub_26C:
		bra.w   sub_FE8

	; End of function sub_26C


; =============== S U B R O U T I N E =======================================

sub_270:
		bra.w   loc_F5C

	; End of function sub_270


; =============== S U B R O U T I N E =======================================

sub_274:
		bra.w   sub_1018

	; End of function sub_274


; =============== S U B R O U T I N E =======================================

sub_278:
		bra.w   sub_10D2

	; End of function sub_278


; =============== S U B R O U T I N E =======================================

sub_27C:
		bra.w   sub_1180

	; End of function sub_27C


; =============== S U B R O U T I N E =======================================

sub_280:
		bra.w   sub_11D0

	; End of function sub_280


; =============== S U B R O U T I N E =======================================

sub_284:
		bra.w   sub_11EC

	; End of function sub_284


; =============== S U B R O U T I N E =======================================

sub_288:
		bra.w   sub_11F8

	; End of function sub_288


; =============== S U B R O U T I N E =======================================

sub_28C:
		bra.w   sub_1234

	; End of function sub_28C


; =============== S U B R O U T I N E =======================================

sub_290:
		bra.w   sub_1250

	; End of function sub_290


; =============== S U B R O U T I N E =======================================

sub_294:
		bra.w   sub_125C

	; End of function sub_294


; =============== S U B R O U T I N E =======================================

sub_298:
		bra.w   sub_1284

	; End of function sub_298


; =============== S U B R O U T I N E =======================================

sub_29C:
		bra.w   sub_1294

	; End of function sub_29C


; =============== S U B R O U T I N E =======================================

sub_2A0:
		bra.w   sub_12E0

	; End of function sub_2A0


; =============== S U B R O U T I N E =======================================

sub_2A4:
		bra.w   sub_BB2

	; End of function sub_2A4


; =============== S U B R O U T I N E =======================================

sub_2A8:
		bra.w   sub_BC8

	; End of function sub_2A8


; =============== S U B R O U T I N E =======================================

sub_2AC:
		bra.w   sub_BEC

	; End of function sub_2AC


; =============== S U B R O U T I N E =======================================

sub_2B0:
		bra.w   loc_C00

	; End of function sub_2B0


; =============== S U B R O U T I N E =======================================

sub_2B4:
		bra.w   sub_12E6

	; End of function sub_2B4


; =============== S U B R O U T I N E =======================================

sub_2B8:
		bra.w   sub_CCE

	; End of function sub_2B8


; =============== S U B R O U T I N E =======================================

sub_2BC:
		bra.w   sub_CD4

	; End of function sub_2BC


; START OF FUNCTION CHUNK FOR sub_99FC

loc_2C0:
		bra.w   loc_CD8

; END OF FUNCTION CHUNK FOR sub_99FC


; =============== S U B R O U T I N E =======================================

j_WriteAsciiNumber:
		
		bra.w   WriteAsciiNumber

	; End of function j_WriteAsciiNumber


; =============== S U B R O U T I N E =======================================

j_nullsub_1:
		bra.w   nullsub_1

	; End of function j_nullsub_1


; =============== S U B R O U T I N E =======================================

sub_2CC:
		bra.w   sub_144E

	; End of function sub_2CC


; =============== S U B R O U T I N E =======================================

sub_2D0:
		bra.w   sub_1460

	; End of function sub_2D0


; =============== S U B R O U T I N E =======================================

sub_2D4:
		bra.w   sub_1482

	; End of function sub_2D4


; =============== S U B R O U T I N E =======================================

sub_2D8:
		bra.w   sub_14C4

	; End of function sub_2D8


; =============== S U B R O U T I N E =======================================

sub_2DC:
		bra.w   sub_14E2

	; End of function sub_2DC


; =============== S U B R O U T I N E =======================================

sub_2E0:
		bra.w   sub_14EE

	; End of function sub_2E0


; =============== S U B R O U T I N E =======================================

sub_2E4:
		bra.w   sub_150E

	; End of function sub_2E4


; =============== S U B R O U T I N E =======================================

sub_2E8:
		bra.w   sub_D36

	; End of function sub_2E8


; =============== S U B R O U T I N E =======================================

j_dDecompressGraphics:
		
		bra.w   DecompressGraphics

	; End of function j_dDecompressGraphics


; =============== S U B R O U T I N E =======================================

sub_2F0:
		bra.w   sub_12BA

	; End of function sub_2F0


; =============== S U B R O U T I N E =======================================

sub_2F4:
		bra.w   loc_CF8

	; End of function sub_2F4


; =============== S U B R O U T I N E =======================================

sub_2F8:
		bra.w   loc_D04

	; End of function sub_2F8


; =============== S U B R O U T I N E =======================================

sub_2FC:
		bra.w   sub_1526

	; End of function sub_2FC


; =============== S U B R O U T I N E =======================================

sub_300:
		bra.w   sub_29F8

	; End of function sub_300


; =============== S U B R O U T I N E =======================================

sub_304:
		bra.w   sub_18DC

	; End of function sub_304


; =============== S U B R O U T I N E =======================================

j_loadText:
		bra.w   LoadText

	; End of function j_loadText


; =============== S U B R O U T I N E =======================================

sub_30C:
		bra.w   sub_1A92

	; End of function sub_30C


; =============== S U B R O U T I N E =======================================

sub_310:
		bra.w   sub_1550

	; End of function sub_310


; =============== S U B R O U T I N E =======================================

sub_314:
		bra.w   sub_157C

	; End of function sub_314


; =============== S U B R O U T I N E =======================================

sub_318:
		bra.w   sub_1794

	; End of function sub_318


; =============== S U B R O U T I N E =======================================

sub_31C:
		bra.w   sub_17C0

	; End of function sub_31C


; =============== S U B R O U T I N E =======================================

sub_320:
		bra.w   sub_1856

	; End of function sub_320


; =============== S U B R O U T I N E =======================================

sub_324:
		bra.w   sub_18C4

	; End of function sub_324


; =============== S U B R O U T I N E =======================================

sub_328:
		bra.w   sub_18EC

	; End of function sub_328


; =============== S U B R O U T I N E =======================================

sub_32C:
		bra.w   sub_37EE

	; End of function sub_32C


; =============== S U B R O U T I N E =======================================

sub_330:
		bra.w   sub_3826

	; End of function sub_330


; =============== S U B R O U T I N E =======================================

sub_334:
		bra.w   loc_5616

	; End of function sub_334


; =============== S U B R O U T I N E =======================================

sub_338:
		bra.w   sub_5FF8

	; End of function sub_338


; =============== S U B R O U T I N E =======================================

sub_33C:
		bra.w   sub_5A18

	; End of function sub_33C


; =============== S U B R O U T I N E =======================================

sub_340:
		bra.w   sub_6706

	; End of function sub_340


; START OF FUNCTION CHUNK FOR sub_5A88

loc_344:
		bra.w   loc_6B38

; END OF FUNCTION CHUNK FOR sub_5A88


; =============== S U B R O U T I N E =======================================

sub_348:
		bra.w   sub_560C

	; End of function sub_348


; =============== S U B R O U T I N E =======================================

sub_34C:
		bra.w   sub_77A4

	; End of function sub_34C


; =============== S U B R O U T I N E =======================================

sub_350:
		bra.w   sub_5532

	; End of function sub_350


; =============== S U B R O U T I N E =======================================

sub_354:
		bra.w   sub_5544

	; End of function sub_354


; =============== S U B R O U T I N E =======================================

sub_358:
		bra.w   sub_557A

	; End of function sub_358


; =============== S U B R O U T I N E =======================================

sub_35C:
		bra.w   sub_550C

	; End of function sub_35C


; =============== S U B R O U T I N E =======================================

sub_360:
		bra.w   sub_5B54

	; End of function sub_360


; =============== S U B R O U T I N E =======================================

sub_364:
		bra.w   sub_790A

	; End of function sub_364


; =============== S U B R O U T I N E =======================================

sub_368:
		bra.w   sub_79D6

	; End of function sub_368


; =============== S U B R O U T I N E =======================================

sub_36C:
		bra.w   sub_7AA6

	; End of function sub_36C


; =============== S U B R O U T I N E =======================================

sub_370:
		bra.w   sub_3284

	; End of function sub_370


; =============== S U B R O U T I N E =======================================

sub_374:
		bra.w   sub_32EC

	; End of function sub_374


; =============== S U B R O U T I N E =======================================

sub_378:
		bra.w   sub_6A2E

	; End of function sub_378


; =============== S U B R O U T I N E =======================================

sub_37C:
		bra.w   sub_2FFA

	; End of function sub_37C


; =============== S U B R O U T I N E =======================================

sub_380:
		bra.w   sub_300A

	; End of function sub_380


; =============== S U B R O U T I N E =======================================

sub_384:
		bra.w   sub_3018

	; End of function sub_384


; =============== S U B R O U T I N E =======================================

sub_388:
		bra.w   sub_3028

	; End of function sub_388


; =============== S U B R O U T I N E =======================================

sub_38C:
		bra.w   sub_3054

	; End of function sub_38C


; =============== S U B R O U T I N E =======================================

sub_390:
		bra.w   sub_3062

	; End of function sub_390


; =============== S U B R O U T I N E =======================================

j_GetEventFlag:
		
		bra.w   GetEventFlag

	; End of function j_GetEventFlag


; =============== S U B R O U T I N E =======================================

Initialize:
		bsr.s   VDP_init
		bsr.w   Z80_Init
		bsr.s   InitRamVdpData
		jmp     (loc_309A).l

	; End of function Initialize


; =============== S U B R O U T I N E =======================================

VDP_init:
		move.w  #$3FFE,d0
		lea     (RAM_START).l,a0
loc_3B0:
		clr.l   (a0)+
		dbf     d0,loc_3B0
		move.b  #3,(byte_FF0EB9).l
		clr.b   (byte_FF0EB7).l
		lea     vdp_init_params(pc), a0
		moveq   #$12,d1
loc_3CA:
		move.w  (a0)+,d0
		bsr.w   sub_BC8
		dbf     d1,loc_3CA
		clr.w   d0
		clr.w   d1
		clr.w   d2
		bsr.w   sub_12E6
		rts

	; End of function VDP_init


; =============== S U B R O U T I N E =======================================

InitRamVdpData:
		
		move.l  #unk_FF0780,(dword_FF0EEE).l
		move.l  #unk_FF0550,(dword_FF0EF2).l
		moveq   #$40,d0 
		move.b  d0,(dword_A10008+1).l
		move.b  d0,(dword_A10008+3).l
		move.b  d0,(CTRL3+1).l
		lea     (dword_FF0100).l,a0
		move.w  #$FF,d0
loc_412:
		move.w  #0,(a0)+
		move.w  #0,(a0)+
		dbf     d0,loc_412
		lea     (dword_FF0500).l,a0
		move.w  #$13,d0
loc_428:
		move.w  #0,(a0)+
		move.w  #0,(a0)+
		dbf     d0,loc_428
		lea     (dword_FF0080).l,a0
		moveq   #$7F,d1 
loc_43C:
		clr.w   (a0)+
		dbf     d1,loc_43C
		bsr.w   sub_E0A
		bsr.w   sub_1180
		bsr.w   sub_11F8
		bsr.w   sub_EA6
		rts

	; End of function InitRamVdpData

vdp_init_params:dc.w $8004
		dc.w $8124
		dc.w $8230
		dc.w $8338
		dc.w $8407
		dc.w $8578
		dc.w $8600
		dc.w $8700
		dc.w $8800
		dc.w $8900
		dc.w $8A00
		dc.w $8B00
		dc.w $8C81
		dc.w $8D3D
		dc.w $8E00
		dc.w $8F02
		dc.w $9001
		dc.w $9194
		dc.w $929C

; =============== S U B R O U T I N E =======================================

Start:
		tst.l   (dword_A10008).l
		bne.s   loc_488
		tst.w   (CTRL3).l
loc_488:
		bne.s   loc_506
		lea     word_508(pc), a5
		movem.w (a5)+,d5-d7
		movem.l (a5)+,a0-a4
		move.b  -$10FF(a1),d0
		andi.b  #$F,d0
		beq.s   loc_4A8
		move.l  #$53454741,$2F00(a1)
loc_4A8:
		move.w  (a4),d0
		moveq   #0,d0
		movea.l d0,a6
		move.l  a6,usp
		moveq   #$17,d1
loc_4B2:
		move.b  (a5)+,d5
		move.w  d5,(a4)
		add.w   d7,d5
		dbf     d1,loc_4B2
		move.l  (a5)+,(a4)
		move.w  d0,(a3)
		move.w  d7,(a1)
		move.w  d7,(a2)
loc_4C4:
		btst    d0,(a1)
		bne.s   loc_4C4
		moveq   #$25,d2 
loc_4CA:
		move.b  (a5)+,(a0)+
		dbf     d2,loc_4CA
		move.w  d0,(a2)
		move.w  d0,(a1)
		move.w  d7,(a2)
loc_4D6:
		move.l  d0,-(a6)
		dbf     d6,loc_4D6
		move.l  (a5)+,(a4)
		move.l  (a5)+,(a4)
		moveq   #$1F,d3
loc_4E2:
		move.l  d0,(a3)
		dbf     d3,loc_4E2
		move.l  (a5)+,(a4)
		moveq   #$13,d4
loc_4EC:
		move.l  d0,(a3)
		dbf     d4,loc_4EC
		moveq   #3,d5
loc_4F4:
		move.b  (a5)+,$11(a3)
		dbf     d5,loc_4F4
		move.w  d0,(a2)
		movem.l (a6),d0-a6
		move    #$2700,sr
loc_506:
		bra.s   loc_574
word_508:
		dc.w $8000
		dc.w $3FFF
		dc.w $100
		dc.l Z80_Memory
		dc.l Z80BusReq
		dc.l Z80BusReset
		dc.l VDP_Data
		dc.l VDP_Control
		dc.b 4
		dc.b $14
		dc.b $30
		dc.b $3C
		dc.b 7
		dc.b $6C
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b 0
		dc.b $81
		dc.b $37
		dc.b 0
		dc.b 1
		dc.b 1
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b $FF
		dc.b 0
		dc.b 0
		dc.b $80
		dc.l $40000080
		dc.b $AF
		dc.b 1
		dc.b $D9
		dc.b $1F
		dc.b $11
		dc.b $27
		dc.b 0
		dc.b $21
		dc.b $26
		dc.b 0
		dc.b $F9
		dc.b $77
		dc.b $ED
		dc.b $B0
		dc.b $DD
		dc.b $E1
		dc.b $FD
		dc.b $E1
		dc.b $ED
		dc.b $47
		dc.b $ED
		dc.b $4F
		dc.b $D1
		dc.b $E1
		dc.b $F1
		dc.b 8
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
		dc.b $E9
		dc.l $81048F02
		dc.l $C0000000
		dc.l $40000010
		dc.b $9F
		dc.b $BF
		dc.b $DF
		dc.b $FF
loc_574:
		tst.w   (VDP_Control).l
loc_57A:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0
		bne.s   loc_57A
		bra.w   Initialize

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

Z80_Init:
		movem.l d0-a1,-(sp)
		move.w  #$100,(Z80BusReq).l
		move.w  #$100,(Z80BusReset).l
		lea     (Z80_Memory).l,a0
		move.w  #$1F80,d7
		lea     (SoundDriver).l,a1
loc_5B6:
		move.b  (a1)+,d0
		bsr.w   sub_5F0
		dbf     d7,loc_5B6
		move.w  #0,(Z80BusReset).l
		moveq   #$10,d7
loc_5CA:
		dbf     d7,loc_5CA
		move.w  #$100,(Z80BusReset).l
		move.w  #0,(Z80BusReq).l
		lea     (byte_FF0EA6).l,a0
		movem.l (sp)+,d0-a1
		rts

	; End of function Z80_Init


; =============== S U B R O U T I N E =======================================

sub_5EA:
		bsr.w   sub_5F0
		lsr.w   #8,d0

	; End of function sub_5EA


; =============== S U B R O U T I N E =======================================

sub_5F0:
		move.b  d0,(a0)
		cmp.b   (a0),d0
		bne.s   sub_5F0
		addq.l  #1,a0
		rts

	; End of function sub_5F0


; =============== S U B R O U T I N E =======================================

Trap0_SoundCommand:
		
		movem.l d0-d1/a0,-(sp)
		movea.l $E(sp),a0
		move.w  (a0),d1
		addq.l  #2,$E(sp)
		cmpi.w  #$FFFF,d1
		bne.s   loc_610
		move.w  d0,d1
loc_610:
		tst.b   ((unk_FFC141-$1000000)).w
		bne.s   loc_628
		lea     (unk_FF0E9E).l,a0
		moveq   #3,d0
loc_61E:
		tst.w   (a0)+
		dbeq    d0,loc_61E
		move.w  d1,-2(a0)
loc_628:
		movem.l (sp)+,d0-d1/a0
		rte

	; End of function Trap0_SoundCommand


; =============== S U B R O U T I N E =======================================

int_AdressError:
		
		move.l  #'ADDR',(dword_FFFFF8).l
		move.l  $A(sp),(unk_FFFFFC).l
		jmp     loc_8010

	; End of function int_AdressError


; =============== S U B R O U T I N E =======================================

int_IllegalInstruction:
		
		move.l  #'BAD ',(dword_FFFFF8).l
		move.l  2(sp),(unk_FFFFFC).l
		jmp     loc_8010

	; End of function int_IllegalInstruction


; =============== S U B R O U T I N E =======================================

int_ZeroDivide:
		
		move.l  #'ZERO',(dword_FFFFF8).l
		move.l  2(sp),(unk_FFFFFC).l
		jmp     loc_8010

	; End of function int_ZeroDivide


; =============== S U B R O U T I N E =======================================

int_OtherError:
		
		move.l  #'OTHR',(dword_FFFFF8).l
		move.l  2(sp),(unk_FFFFFC).l
		jmp     loc_8010

	; End of function int_OtherError


; =============== S U B R O U T I N E =======================================

int_ExternalInterrupt:
		
		nop
		nop
		bra.s   int_ExternalInterrupt

	; End of function int_ExternalInterrupt


; =============== S U B R O U T I N E =======================================

IntLv17:
		nop
		bra.s   IntLv17

	; End of function IntLv17


; =============== S U B R O U T I N E =======================================

Trap5_:
		movem.l d0-a6,-(sp)
		jsr     (sub_304).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap5_


; =============== S U B R O U T I N E =======================================

Trap6_:
		movem.l d0-a6,-(sp)
		jsr     (sub_30C).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap6_


; =============== S U B R O U T I N E =======================================

Trap7_:
		movem.l d0-a6,-(sp)
		jsr     (sub_328).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap7_


; =============== S U B R O U T I N E =======================================

Trap8_:
		movem.l d0-a6,-(sp)
		jsr     (j_loadText).l
		movem.l (sp)+,d0-a6
		rte

	; End of function Trap8_


; =============== S U B R O U T I N E =======================================

VInt:
		movem.l d0-a6,-(sp)
		bclr    #7,(byte_FF0E94).l
		beq.s   loc_70C
		bsr.w   sub_760
		bsr.w   sub_7EC
		bsr.w   sub_AD6
		bsr.w   sub_8BA
		bsr.w   sub_728
		clr.b   (byte_FF0EBE).l
		move.b  (byte_FF0EBD).l,d0
		or.b    d0,(byte_FF0E94).l
loc_70C:
		addq.b  #1,(byte_FF0E9C).l
		clr.b   (byte_FF0E9D).l
		move.w  (word_FF0EC8).l,(VDP_Control).l
		movem.l (sp)+,d0-a6
		rte

	; End of function VInt


; =============== S U B R O U T I N E =======================================

sub_728:
		move.b  (byte_FF0EB6).l,d0
		addq.b  #1,d0
		cmpi.b  #$3C,d0 
		bne.s   loc_738
		clr.b   d0
loc_738:
		move.b  d0,(byte_FF0EB6).l
		movea.l (dword_FF0EF6).l,a0
		move.l  a0,d0
		bne.s   loc_74A
		rts
loc_74A:
		jmp     (a0)

	; End of function sub_728


; =============== S U B R O U T I N E =======================================

sub_74C:
		andi.b  #$BF,(byte_FF0ECB).l
		move.w  (unk_FF0ECA).l,(VDP_Control).l
		rts

	; End of function sub_74C


; =============== S U B R O U T I N E =======================================

sub_760:
		bsr.s   sub_768
		bsr.w   sub_82C
		rts

	; End of function sub_760


; =============== S U B R O U T I N E =======================================

sub_768:
		bclr    #0,(byte_FF0E94).l
		beq.w   return_7EA
		tst.b   (byte_FF0E95).l
		beq.w   return_7EA
		lea     (unk_FF0780).l,a0
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
		subq.b  #1,(byte_FF0E95).l
		bne.s   loc_784
		move.w  #$8F02,(VDP_Control).l
		move.l  #unk_FF0780,(dword_FF0EEE).l
return_7EA:
		rts

	; End of function sub_768


; =============== S U B R O U T I N E =======================================

sub_7EC:
		bclr    #4,(byte_FF0E94).l
		beq.s   return_82A
		lea     (unk_FF0780).l,a0
		move.w  #$8F02,(VDP_Control).l
		move.w  (a0),d7
		andi.w  #$3FFF,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
		rol.w   #2,d7
		andi.w  #3,d7
		move.w  d7,(VDP_Control).l
		move.w  (a0)+,d7
loc_820:
		move.w  (VDP_Data).l,(a0)+
		dbf     d7,loc_820
return_82A:
		rts

	; End of function sub_7EC


; =============== S U B R O U T I N E =======================================

sub_82C:
		bclr    #3,(byte_FF0E94).l
		bne.s   loc_840
		btst    #1,(byte_FF0E94).l
		bne.s   return_8B8
loc_840:
		move.w  #$100,(Z80BusReq).l
loc_848:
		btst    #0,(Z80BusReq).l
		bne.s   loc_848
		btst    #1,(byte_FF0E94).l
		bne.s   return_8B8
		bsr.w   loc_DD6
		tst.b   (byte_FF0E96).l
		beq.s   loc_8A6
		lea     (unk_FF0550).l,a0
		lea     (VDP_Control).l,a6
		move.w  (unk_FF0ECA).l,d7
		ori.b   #$10,d7
		move.w  d7,(a6)
loc_880:
		move.w  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.l  (a0)+,(a6)
		move.w  (a0)+,(word_FF0EC0).l
		move.w  (word_FF0EC0).l,(a6)
		subq.b  #1,(byte_FF0E96).l
		bne.s   loc_880
		move.w  (unk_FF0ECA).l,(a6)
		move.w  #$8F02,(a6)
loc_8A6:
		move.w  #0,(Z80BusReq).l
		move.l  #unk_FF0550,(dword_FF0EF2).l
return_8B8:
		rts

	; End of function sub_82C


; =============== S U B R O U T I N E =======================================

sub_8BA:
		move.w  #$100,(Z80BusReq).l
loc_8C2:
		btst    #0,(Z80BusReq).l
		bne.s   loc_8C2
		tst.b   (byte_FF0EB1).l
		beq.w   loc_8E6
		tst.b   (Z80_CHANNEL_1_NOT_IN_USE).l
		beq.w   loc_9EA
		clr.b   (byte_FF0EB1).l
loc_8E6:
		lea     (unk_FF0E9E).l,a0
		move.l  4(a0),d0
		or.l    (a0),d0
		beq.w   loc_9EA
		move.b  (a0),d1
		move.b  1(a0),d0
		move.w  2(a0),(a0)+
		move.w  2(a0),(a0)+
		move.w  2(a0),(a0)+
		clr.w   (a0)
		cmpi.b  #$FB,d0
		bne.s   loc_944
		tst.b   (byte_FF0EA6).l
		beq.s   loc_936
		movem.l d7-a0,-(sp)
		lea     (byte_FF0EA7).l,a0
		moveq   #8,d7
loc_924:
		move.b  1(a0),(a0)+
		dbf     d7,loc_924
		movem.l (sp)+,d7-a0
		subq.b  #1,(byte_FF0EA6).l
loc_936:
		move.b  (byte_FF0EA7).l,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_944:
		cmpi.b  #$FD,d0
		bcs.s   loc_954
		move.b  d0,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_954:
		cmpi.b  #$F0,d0
		bne.s   loc_966
		move.b  #1,(byte_FF0EB1).l
		bra.w   loc_9EA
loc_966:
		cmpi.b  #$FC,d0
		bne.s   loc_980
		andi.b  #$F,d1
		move.b  d1,(Z80_SoundDriverMusicLevel).l
		move.b  d0,(Z80_SoundDriverCommand).l
		bra.w   loc_9EA
loc_980:
		movem.l d0,-(sp)
		andi.b  #$7F,d0 
		cmp.b   (byte_FF0EA7).l,d0
		movem.l (sp)+,d0
		bne.s   loc_998
		bra.w   loc_9EA
loc_998:
		bclr    #7,d0
		beq.s   loc_9A6
		move.b  d1,(Z80_SoundDriverFadeInData).l
		bra.s   loc_9B4
loc_9A6:
		cmpi.b  #$40,d0 
		bgt.s   loc_9B4
		move.b  #$F,(Z80_SoundDriverFadeInData).l
loc_9B4:
		move.b  d0,(Z80_SoundDriverCommand).l
		cmpi.b  #$40,d0 
		bge.s   loc_9EA
		movem.l d7-a0,-(sp)
		lea     (byte_FF0EB1).l,a0
		moveq   #8,d7
loc_9CC:
		move.b  -2(a0),-(a0)
		dbf     d7,loc_9CC
		move.b  d0,-(a0)
		movem.l (sp)+,d7-a0
		cmpi.b  #$A,(byte_FF0EA6).l
		bge.s   loc_9EA
		addq.b  #1,(byte_FF0EA6).l
loc_9EA:
		bsr.w   sub_1410
		tst.b   (byte_FF0F03).l
		bne.s   loc_A38
		moveq   #2,d0
		move.b  (byte_FF0E97).l,d1
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
		move.b  (byte_FF0F02).l,d0
		eor.b   d0,(byte_FF0E97).l
		bra.s   loc_A38
loc_A28:
		move.b  (byte_FF0E97).l,d1
		andi.w  #$F,d1
		move.b  d1,(byte_FF0F02).l
loc_A38:
		move.b  (byte_FF0E97).l,d0
		move.b  d0,(byte_FF0E99).l
		cmp.b   (byte_FF0EB2).l,d0
		bne.s   loc_A6C
		addq.b  #1,(byte_FF0EB3).l
		cmpi.b  #$18,(byte_FF0EB3).l
		bcc.s   loc_A64
		clr.b   (byte_FF0E99).l
		bra.s   loc_A6A
loc_A64:
		subq.b  #6,(byte_FF0EB3).l
loc_A6A:
		bra.s   loc_A9A
loc_A6C:
		clr.w   d2
		move.b  (byte_FF0EB2).l,d1
		andi.b  #$F,d1
		beq.s   loc_A7C
		moveq   #1,d2
loc_A7C:
		move.b  (byte_FF0E99).l,(byte_FF0EB2).l
		andi.b  #$F,d0
		beq.w   loc_A94
		tst.b   d2
		bne.w   loc_A9A
loc_A94:
		clr.b   (byte_FF0EB3).l
loc_A9A:
		move.w  #0,(Z80BusReq).l
		rts

	; End of function sub_8BA


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
		cmpi.w  #$FFFF,d1
		bne.s   loc_ABE
		move.w  d0,d1
loc_ABE:
		lea     (unk_FF0E9E).l,a0
		moveq   #3,d0
loc_AC6:
		tst.w   (a0)+
		dbeq    d0,loc_AC6
		move.w  d1,-2(a0)
		movem.l (sp)+,d0-d1/a0
		rte

	; End of function sub_AA8


; =============== S U B R O U T I N E =======================================

sub_AD6:
		move.b  (byte_FF0EB7).l,d0
		beq.w   return_B4A
		subq.b  #1,(byte_FF0EBB).l
		bne.w   return_B4A
		move.b  (byte_FF0EB9).l,(byte_FF0EBB).l
		subq.b  #1,d0
		ext.w   d0
		lsl.w   #3,d0
		move.b  (byte_FF0EBA).l,d1
		ext.w   d1
		add.w   d1,d0
		move.b  FadingData(pc,d0.w),d1
		cmpi.w  #$80,d1 
		bne.s   loc_B14
		clr.b   (byte_FF0EB7).l
loc_B14:
		movem.l d1,-(sp)
		andi.w  #$F0,d1 
		cmpi.w  #$80,d1 
		movem.l (sp)+,d1
		bne.s   loc_B34
		andi.w  #$F,d1
		sub.b   d1,(byte_FF0EBA).l
		bra.w   sub_AD6
loc_B34:
		ext.w   d1
		move.w  d1,d0
		move.b  (byte_FF0EBC).l,d1
		ext.w   d1
		bsr.w   sub_D36
		addq.b  #1,(byte_FF0EBA).l
return_B4A:
		rts

	; End of function sub_AD6

FadingData:     incbin "data/graphics/tech/fadingdata.bin"

; =============== S U B R O U T I N E =======================================

HInt:
		rte

	; End of function HInt


; =============== S U B R O U T I N E =======================================

sub_B9E:
		movem.w d0,-(sp)
loc_BA2:
		move.w  (VDP_Control).l,d0
		btst    #1,d0
		bne.s   loc_BA2
		move.w  (sp)+,d0
		rts

	; End of function sub_B9E


; =============== S U B R O U T I N E =======================================

sub_BB2:
		movem.l a0,-(sp)
		lea     (word_FF0EC8).l,a0
		add.w   d0,d0
		move.w  (a0,d0.w),d0
		movem.l (sp)+,a0
		rts

	; End of function sub_BB2


; =============== S U B R O U T I N E =======================================

sub_BC8:
		bsr.s   sub_B9E
		movem.l d0-d1/a0,-(sp)
		lea     (word_FF0EC8).l,a0
		move.w  d0,(VDP_Control).l
		move.w  d0,d1
		andi.w  #$7F00,d0
		lsr.w   #7,d0
		move.w  d1,(a0,d0.w)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_BC8


; =============== S U B R O U T I N E =======================================

sub_BEC:
		bsr.s   sub_B9E
		movem.l d0-d1/a0,-(sp)
		lea     (word_FF0EC8).l,a0
		add.w   d0,d0
		or.b    d1,1(a0,d0.w)
		bra.s   loc_C12
loc_C00:
		bsr.s   sub_B9E
		movem.l d0-d1/a0,-(sp)
		lea     (word_FF0EC8).l,a0
		add.w   d0,d0
		and.b   d1,1(a0,d0.w)
loc_C12:
		move.w  (a0,d0.w),d1
		move.w  d1,(VDP_Control).l
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_BEC


; =============== S U B R O U T I N E =======================================

sub_C22:
		move.w  #1,d0
		move.w  #$40,d1 
		bra.s   sub_BEC

	; End of function sub_C22


; =============== S U B R O U T I N E =======================================

sub_C2C:
		move.w  #1,d0
		move.w  #$BF,d1 
		bra.s   loc_C00

	; End of function sub_C2C


; =============== S U B R O U T I N E =======================================

sub_C36:
		move.b  #$80,(byte_FF0EBD).l
		move    #$2300,sr
		rts

	; End of function sub_C36


; =============== S U B R O U T I N E =======================================

sub_C44:
		clr.b   (byte_FF0EBD).l
		move    #$2700,sr
		rts

	; End of function sub_C44


; =============== S U B R O U T I N E =======================================

sub_C50:
		bsr.s   sub_C22
		bra.s   sub_C36

	; End of function sub_C50


; =============== S U B R O U T I N E =======================================

sub_C54:
		bsr.s   sub_C44
		bra.s   sub_C2C

	; End of function sub_C54


; =============== S U B R O U T I N E =======================================

sub_C58:
		bclr    #1,(byte_FF0E94).l
		rts

	; End of function sub_C58


; =============== S U B R O U T I N E =======================================

sub_C62:
		bset    #1,(byte_FF0E94).l
		rts

	; End of function sub_C62


; =============== S U B R O U T I N E =======================================

sub_C6C:
		movem.l d7/a5-a6,-(sp)
		lea     (dword_FF0080).l,a5
		lea     (RAM_START).l,a6
		move.w  #$3F,d7 
loc_C80:
		move.w  (a5)+,(a6)+
		dbf     d7,loc_C80
		movem.l (sp)+,d7/a5-a6
loc_C8A:
		move    sr,-(sp)
		move    #$2700,sr
		movem.l a6,-(sp)
		movea.l (dword_FF0EF2).l,a6
		move.w  #$8F02,(a6)+
		move.w  #$9400,(a6)+
		move.w  #$9340,(a6)+
		move.w  #$9680,(a6)+
		move.w  #$9500,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$C000,(a6)+
		move.w  #$80,(a6)+ 
		move.l  a6,(dword_FF0EF2).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,a6
		move    (sp)+,sr
		rts

	; End of function sub_C6C


; =============== S U B R O U T I N E =======================================

sub_CCE:
		lea     (dword_FF0080).l,a1

	; End of function sub_CCE


; =============== S U B R O U T I N E =======================================

sub_CD4:
		move.w  #$F,d0
loc_CD8:
		move.w  (a0)+,(a1)+
		dbf     d0,loc_CD8
		rts

	; End of function sub_CD4


; =============== S U B R O U T I N E =======================================

sub_CE0:
		move.b  #1,(byte_FF0EB7).l
		bra.w   loc_D0C
loc_CEC:
		move.b  #2,(byte_FF0EB7).l
		bra.w   loc_D0C
loc_CF8:
		move.b  #3,(byte_FF0EB7).l
		bra.w   loc_D0C
loc_D04:
		move.b  #4,(byte_FF0EB7).l
loc_D0C:
		clr.b   (byte_FF0EBA).l
		move.b  (byte_FF0EB9).l,(byte_FF0EBB).l
		move.b  #$F,(byte_FF0EBC).l
loc_D24:
		bsr.w   sub_E66
		tst.b   (byte_FF0EB7).l
		bne.s   loc_D24
		bsr.w   sub_E66
		rts

	; End of function sub_CE0


; =============== S U B R O U T I N E =======================================

sub_D36:
		movem.l d2-a2,-(sp)
		lea     (dword_FF0080).l,a0
		lea     (RAM_START).l,a1
		moveq   #3,d6
loc_D48:
		moveq   #3,d5
		sub.w   d6,d5
		btst    d5,d1
		bne.s   loc_D5C
		adda.w  #$20,a0 
		adda.w  #$20,a1 
		bra.w   loc_DC0
loc_D5C:
		moveq   #$F,d7
loc_D5E:
		movem.l d0,-(sp)
		move.w  (a0)+,d2
		add.w   d0,d0
		move.w  d2,d3
		andi.w  #$F,d3
		add.w   d0,d3
		bpl.s   loc_D74
		clr.w   d3
		bra.s   loc_D7E
loc_D74:
		cmpi.w  #$F,d3
		ble.s   loc_D7E
		move.w  #$F,d3
loc_D7E:
		asl.w   #4,d0
		move.w  d2,d4
		andi.w  #$F0,d4 
		add.w   d0,d4
		bpl.s   loc_D8E
		clr.w   d4
		bra.s   loc_D98
loc_D8E:
		cmpi.w  #$F0,d4 
		ble.s   loc_D98
		move.w  #$F0,d4 
loc_D98:
		or.w    d4,d3
		asl.w   #4,d0
		move.w  d2,d4
		andi.w  #$F00,d4
		add.w   d0,d4
		bpl.s   loc_DAA
		clr.w   d4
		bra.s   loc_DB4
loc_DAA:
		cmpi.w  #$F00,d4
		ble.s   loc_DB4
		move.w  #$F00,d4
loc_DB4:
		or.w    d4,d3
		move.w  d3,(a1)+
		movem.l (sp)+,d0
		dbf     d7,loc_D5E
loc_DC0:
		dbf     d6,loc_D48
		bsr.w   loc_C8A
		bsr.w   sub_EA6
		movem.l (sp)+,d2-a2
		rts

	; End of function sub_D36


; =============== S U B R O U T I N E =======================================

sub_DD2:
		bsr.s   sub_E30
		bsr.s   sub_E0A
loc_DD6:
		lea     (VDP_Control).l,a6
		move.w  #$8134,(a6)
		move.l  #$94019300,(a6)
		move.l  #$96869540,(a6)
		move.w  #$977F,(a6)
		move.w  #$7000,(a6)
		move.w  #$83,(word_FF0EC0).l 
loc_DFC:
		move.w  (word_FF0EC0).l,(a6)
		move.w  (unk_FF0ECA).l,(a6)
		rts

	; End of function sub_DD2


; =============== S U B R O U T I N E =======================================

sub_E0A:
		movem.l d0-d1/a0,-(sp)
		lea     (unk_FF0C80).l,a0
		moveq   #$3F,d1 
		moveq   #1,d0
loc_E18:
		move.l  d0,(a0)
		clr.l   4(a0)
		addq.w  #8,a0
		addq.b  #1,d0
		dbf     d1,loc_E18
		clr.b   -5(a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_E0A


; =============== S U B R O U T I N E =======================================

sub_E30:
		movem.l d7/a6,-(sp)
		move.w  #$C000,d0
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   sub_12E6
		move.w  #$E000,d0
		move.w  #$1000,d1
		clr.w   d2
		bsr.w   sub_12E6
		move.w  #$7FF,d7
		lea     (unk_FFD000).l,a6
loc_E5A:
		clr.l   (a6)+
		dbf     d7,loc_E5A
		movem.l (sp)+,d7/a6
		rts

	; End of function sub_E30


; =============== S U B R O U T I N E =======================================

sub_E66:
		bset    #7,(byte_FF0E94).l
		move.b  #1,(byte_FF0EBE).l
loc_E76:
		tst.b   (byte_FF0EBE).l
		bne.s   loc_E76
		rts

	; End of function sub_E66


; =============== S U B R O U T I N E =======================================

sub_E80:
		movem.w d0,-(sp)
		subq.w  #1,d0
		bcs.w   loc_E90
loc_E8A:
		bsr.s   sub_E66
		dbf     d0,loc_E8A
loc_E90:
		movem.w (sp)+,d0
		rts

	; End of function sub_E80


; =============== S U B R O U T I N E =======================================

sub_E96:
		bset    #0,(byte_FF0E94).l
		rts

	; End of function sub_E96


; =============== S U B R O U T I N E =======================================

sub_EA0:
		bsr.s   sub_E96
		bra.w   sub_E66

	; End of function sub_EA0


; =============== S U B R O U T I N E =======================================

sub_EA6:
		bset    #3,(byte_FF0E94).l
		rts

	; End of function sub_EA6


; =============== S U B R O U T I N E =======================================

sub_EB0:
		bsr.s   sub_EA6
		bra.w   sub_E66

	; End of function sub_EB0


; =============== S U B R O U T I N E =======================================

sub_EB6:
		bsr.w   sub_C44
		movem.l d7/a4-a5,-(sp)
		movea.l (dword_FF0EEE).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		move.w  a6,(a4)+
loc_ECC:
		move.w  d0,(a4)+
		move.l  a4,(dword_FF0EEE).l
		addq.b  #1,(byte_FF0E95).l
		clr.l   d7
		move.w  a6,d7
		ori.l   #RAM_START,d7
		movea.l d7,a6
		movem.l (sp)+,d7/a4-a5
		bsr.w   sub_C36
return_EEE:
		rts

	; End of function sub_EB6


; =============== S U B R O U T I N E =======================================

sub_EF0:
		bsr.w   sub_C44
		movem.l d7/a4-a5,-(sp)
		movea.l (dword_FF0EEE).l,a4
		moveq   #0,d7
		move.w  d7,(a4)+
		bsr.s   sub_F0A
		bsr.s   sub_F42
		move.w  a6,(a4)+
		bra.s   loc_ECC

	; End of function sub_EF0


; =============== S U B R O U T I N E =======================================

sub_F0A:
		movem.l d5-d7,-(sp)
		lea     ($E000).l,a6
		lsl.w   #1,d5
		lsl.w   #7,d6
		or.w    d6,d5
		adda.w  d5,a6
		bsr.s   sub_F42
		movem.l (sp)+,d5-d6
		movem.l d5-d6,-(sp)
		adda.l  #$C000,a6
		lsl.w   #1,d5
		lsl.w   #7,d6
		or.w    d6,d5
		adda.w  d5,a6
		movem.l (sp)+,d5-d7
		andi.w  #$7E,d5 
		andi.w  #$F80,d6
		rts

	; End of function sub_F0A


; =============== S U B R O U T I N E =======================================

sub_F42:
		movem.l d7,-(sp)
		move.l  a6,d7
		swap    d7
		movea.l d7,a6
		movem.l (sp)+,d7
		rts

	; End of function sub_F42


; =============== S U B R O U T I N E =======================================

sub_F52:
		bsr.w   sub_C44
		lea     (unk_FF0B80).l,a4
loc_F5C:
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.s   sub_F0A
		movem.l (sp)+,d5-d6

	; End of function sub_F52


; START OF FUNCTION CHUNK FOR sub_FE8

loc_F78:
		movem.l d3-d4/a3-a6,-(sp)
		clr.l   d3
		move.w  a6,d3
		cmpi.w  #$E000,d3
		bcc.s   loc_F8A
		addi.w  #$1000,d3
loc_F8A:
		ori.l   #RAM_START,d3
		movea.l d3,a3
		movea.l (dword_FF0EEE).l,a5
		move.w  (word_FF0EC6).l,d3
		andi.l  #$FF,d3
		move.b  d3,(byte_FF0E95).l
		subq.w  #1,d3
loc_FAC:
		movem.l a3,-(sp)
		move.w  (word_FF0EC6).l,d4
		andi.l  #$FF00,d4
		lsr.w   #8,d4
		subq.w  #1,d4
		move.w  d4,(a5)+
		move.w  a6,(a5)+
loc_FC4:
		move.w  (a4),(a5)+
		move.w  (a4)+,(a3)+
		dbf     d4,loc_FC4
		adda.w  #$80,a6 
		movem.l (sp)+,a3
		adda.w  #$80,a3 
		dbf     d3,loc_FAC
		movem.l (sp)+,d3-d4/a3-a6
		bsr.w   sub_C36
		bra.w   sub_EA0

; END OF FUNCTION CHUNK FOR sub_FE8


; =============== S U B R O U T I N E =======================================

sub_FE8:
		bsr.w   sub_C44
		lea     (unk_FF0B80).l,a4
		movem.l d5-d6,-(sp)
		move.w  (word_FF0EC4).l,d5
		lsr.w   #8,d5
		move.w  (word_FF0EC4).l,d6
		andi.w  #$FF,d6
		bsr.w   sub_F0A
		movem.l (sp)+,d5-d6
		bsr.w   sub_F42
		bra.w   loc_F78

	; End of function sub_FE8


; =============== S U B R O U T I N E =======================================

sub_1018:
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		lea     (VDP_Control).l,a6
		cmpi.w  #2,d1
		beq.s   loc_1036
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)
		move.l  d2,d1
loc_1036:
		moveq   #$10,d2
		or.w    (unk_FF0ECA).l,d2
		move.w  d2,(a6)
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)
		move.l  #$96009500,d2
		move.l  a0,d0
		lsr.l   #1,d0
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d2
		move.b  d0,d2
		swap    d2
		move.l  d2,(a6)
		swap    d0
		ori.w   #$9700,d0
		move.w  d0,(a6)
		move.w  #$100,(Z80BusReq).l
loc_1078:
		btst    #0,(Z80BusReq).l
		bne.s   loc_1078
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(word_FF0EC0).l
		move.w  (word_FF0EC0).l,(a6)
		move.w  (unk_FF0ECA).l,(a6)
		move.w  #0,(Z80BusReq).l
		cmpi.w  #2,d1
		beq.s   loc_10BE
		move.w  #$8F02,(a6)
loc_10BE:
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		rts

	; End of function sub_1018


; =============== S U B R O U T I N E =======================================

sub_10D2:
		bsr.w   sub_C44
		movem.l d2,-(sp)
		movem.l d0/a6,-(sp)
		movea.l (dword_FF0EF2).l,a6
		move.l  d1,d2
		addi.w  #-$7100,d1
		move.w  d1,(a6)+
		move.l  d2,d1
		clr.w   d2
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d0
		move.w  d2,d0
		ori.l   #$94009300,d0
		move.l  d0,(a6)+
		move.l  #$96009500,d2
		move.l  a0,d0
		lsr.l   #1,d0
		move.b  d0,d2
		lsr.w   #8,d0
		swap    d2
		move.b  d0,d2
		swap    d2
		move.l  d2,(a6)+
		swap    d0
		ori.w   #$9700,d0
		move.w  d0,(a6)+
		move.w  a1,d0
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(a6)+
		move.w  a1,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.b   #$80,d0
		move.w  d0,(a6)+
		move.l  a6,(dword_FF0EF2).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,d0/a6
		moveq   #0,d2
		move.w  d0,d2
		add.l   d2,d2
		adda.l  d2,a0
		adda.l  d2,a1
		movem.l (sp)+,d2
		bra.w   sub_C36

	; End of function sub_10D2


; =============== S U B R O U T I N E =======================================

sub_115A:
		movem.w d7,-(sp)
		move.w  a6,d7
		andi.w  #$3FFF,d7
		ori.w   #$4000,d7
		move.w  d7,(VDP_Control).l
		move.w  a6,d7
		lsr.w   #8,d7
		lsr.w   #6,d7
		move.w  d7,(VDP_Control).l
		movem.w (sp)+,d7
		rts

	; End of function sub_115A


; =============== S U B R O U T I N E =======================================

sub_1180:
		movem.l a6,-(sp)
		movea.l (dword_FF0EF2).l,a6
		move.w  #$8F02,(a6)+
		btst    #1,(byte_FF0EDF).l
		bne.s   loc_11A2
		move.w  #$9400,(a6)+
		move.w  #$9302,(a6)+
		bra.s   loc_11AA
loc_11A2:
		move.w  #$9402,(a6)+
		move.w  #$9300,(a6)+
loc_11AA:
		move.w  #$9680,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$7400,(a6)+
		move.w  #$83,(a6)+ 
		move.l  a6,(dword_FF0EF2).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,a6
		rts

	; End of function sub_1180


; =============== S U B R O U T I N E =======================================

sub_11D0:
		movem.l d7/a6,-(sp)
		lea     (dword_FF0100).l,a6

	; End of function sub_11D0


; START OF FUNCTION CHUNK FOR sub_11EC

loc_11DA:
		move.w  #$FF,d7
loc_11DE:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_11DE
		movem.l (sp)+,d7/a6
		bra.s   sub_1180

; END OF FUNCTION CHUNK FOR sub_11EC


; =============== S U B R O U T I N E =======================================

sub_11EC:
		movem.l d7/a6,-(sp)
		lea     ($FF0102).l,a6
		bra.s   loc_11DA

	; End of function sub_11EC


; =============== S U B R O U T I N E =======================================

sub_11F8:
		movem.l a6,-(sp)
		movea.l (dword_FF0EF2).l,a6
		move.w  #$8F02,(a6)+
		move.w  #$9400,(a6)+
		move.w  #$9328,(a6)+
		move.w  #$9682,(a6)+
		move.w  #$9580,(a6)+
		move.w  #$977F,(a6)+
		move.w  #$4000,(a6)+
		move.w  #$90,(a6)+ 
		move.l  a6,(dword_FF0EF2).l
		addq.b  #1,(byte_FF0E96).l
		movem.l (sp)+,a6
		rts

	; End of function sub_11F8


; =============== S U B R O U T I N E =======================================

sub_1234:
		movem.l d7/a6,-(sp)
		lea     (dword_FF0500).l,a6
loc_123E:
		move.w  #$13,d7
loc_1242:
		move.w  d6,(a6)+
		addq.l  #2,a6
		dbf     d7,loc_1242
		movem.l (sp)+,d7/a6
		bra.s   sub_11F8

	; End of function sub_1234


; =============== S U B R O U T I N E =======================================

sub_1250:
		movem.l d7/a6,-(sp)
		lea     ((dword_FF0500+2)).l,a6
		bra.s   loc_123E

	; End of function sub_1250


; =============== S U B R O U T I N E =======================================

sub_125C:
		movem.w d1,-(sp)
		bsr.s   sub_126C
		bsr.w   sub_1018
		movem.w (sp)+,d1
		rts

	; End of function sub_125C


; =============== S U B R O U T I N E =======================================

sub_126C:
		movem.l d0-d1/a1,-(sp)
		bsr.w   DecompressGraphics
		lea     (unk_FF3000).l,a0
		movem.l (sp)+,d0-d1/a1
		move.w  #2,d1
		rts

	; End of function sub_126C


; =============== S U B R O U T I N E =======================================

sub_1284:
		movem.w d1,-(sp)
		bsr.s   sub_126C
		bsr.w   sub_10D2
		movem.w (sp)+,d1
		rts

	; End of function sub_1284


; =============== S U B R O U T I N E =======================================

sub_1294:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (unk_FFD000).l,a0
		lea     ((loc_BFFE+2)).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   sub_EA6
		movem.l (sp)+,d0-d1/a0-a1
		rts

	; End of function sub_1294


; =============== S U B R O U T I N E =======================================

sub_12BA:
		movem.l d0-d1/a0-a1,-(sp)
		lea     (unk_FFD000).l,a0
		lea     ($E000).l,a1
		move.w  #$400,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   sub_EA6
		movem.l (sp)+,d0-d1/a0-a1
		rts

	; End of function sub_12BA


; =============== S U B R O U T I N E =======================================

sub_12E0:
		bsr.s   sub_1294
		bra.w   sub_E66

	; End of function sub_12E0


; =============== S U B R O U T I N E =======================================

sub_12E6:
		movem.l d0-d3,-(sp)
		move.w  (unk_FF0ECA).l,d3
		ori.b   #$10,d3
		move.w  d3,(VDP_Control).l
		move.w  #$8F01,(VDP_Control).l
		movem.l d1,-(sp)
		andi.w  #$FF,d1
		ori.w   #$9300,d1
		move.w  d1,(VDP_Control).l
		movem.l (sp)+,d1
		lsr.w   #8,d1
		ori.w   #$9400,d1
		move.w  d1,(VDP_Control).l
		move.w  #$9780,(VDP_Control).l
		movem.l d0,-(sp)
		andi.w  #$3FFF,d0
		ori.w   #$4000,d0
		move.w  d0,(VDP_Control).l
		movem.l (sp)+,d0
		rol.w   #2,d0
		andi.w  #3,d0
		ori.w   #$80,d0 
		move.w  d0,(VDP_Control).l
		move.w  d2,(VDP_Data).l
loc_1358:
		move.w  (VDP_Control).l,d0
		andi.w  #2,d0
		bne.s   loc_1358
		move.w  (unk_FF0ECA).l,d3
		move.w  d3,(VDP_Control).l
		move.w  #$8F02,(VDP_Control).l
		movem.l (sp)+,d0-d3
		rts

	; End of function sub_12E6


; =============== S U B R O U T I N E =======================================

WriteAsciiNumber:
		
		movem.l d5-d7/a5-a6,-(sp)
		lea     PowersOfTen(pc), a5
		lea     (unk_FF0E80).l,a6
		moveq   #9,d5
loc_138E:
		move.w  #$2F,d6 
loc_1392:
		addq.w  #1,d6
		sub.l   (a5),d0
		bcc.s   loc_1392
		move.b  d6,(a6)+
		add.l   (a5)+,d0
		dbf     d5,loc_138E
		lea     (unk_FF0E80).l,a6
		moveq   #8,d6
loc_13A8:
		cmpi.b  #$30,(a6) 
		bne.w   loc_13B8
		move.b  #$20,(a6)+ 
		dbf     d6,loc_13A8
loc_13B8:
		movem.l (sp)+,d5-d7/a5-a6
		rts

	; End of function WriteAsciiNumber

PowersOfTen:    dc.l $3B9ACA00
		dc.l $5F5E100
		dc.l $989680
		dc.l $F4240
		dc.l $186A0
		dc.l $2710
		dc.l $3E8
		dc.l $64
		dc.l $A
		dc.l 1
		rts

; =============== S U B R O U T I N E =======================================

nullsub_1:
		rts

	; End of function nullsub_1

		movem.l d6-d7/a5-a6,-(sp)
		move.w  #$100,(Z80BusReq).l
loc_13F6:       btst    #0,(Z80BusReq).l
		bne.s   loc_13F6
		bsr.s   sub_1410
		move.w  #0,(Z80BusReq).l
		movem.l (sp)+,d6-d7/a5-a6
		rts

; =============== S U B R O U T I N E =======================================

sub_1410:
		lea     (byte_FF0E97).l,a5
		lea     (DATA1).l,a6    
		bsr.s   sub_1428
		neg.b   d6
		add.w   d6,(word_FF0EC2).l
		addq.w  #2,a6

	; End of function sub_1410


; =============== S U B R O U T I N E =======================================

sub_1428:
		move.b  #0,(a6)
		nop
		nop
		move.b  (a6),d6
		lsl.b   #2,d6
		andi.b  #$C0,d6
		move.b  #$40,(a6) 
		nop
		nop
		move.b  (a6),d7
		andi.b  #$3F,d7 
		or.b    d7,d6
		not.b   d6
		move.b  d6,(a5)+
		rts

	; End of function sub_1428


; =============== S U B R O U T I N E =======================================

sub_144E:
		andi.b  #$FF,(byte_FF0E99).l
		bne.s   return_145E
		bsr.w   sub_E66
		bra.s   sub_144E
return_145E:
		rts

	; End of function sub_144E


; =============== S U B R O U T I N E =======================================

sub_1460:
		andi.b  #$FF,(byte_FF0E97).l
		beq.s   loc_1470
		bsr.w   sub_E66
		bra.s   sub_1460
loc_1470:
		andi.b  #$FF,(byte_FF0E97).l
		bne.s   return_1480
		bsr.w   sub_E66
		bra.s   loc_1470
return_1480:
		rts

	; End of function sub_1460


; =============== S U B R O U T I N E =======================================

sub_1482:
		movem.l d7,-(sp)
		move.b  (byte_FF0E97).l,d7
		and.b   (byte_FF0E9A).l,d7
		beq.s   loc_14B2
		addq.b  #1,(byte_FF0E9B).l
		move.b  (byte_FF0E9B).l,d7
		cmpi.b  #$A,d7
		bcc.s   loc_14B2
		clr.b   (byte_FF0E97).l
		movem.l (sp)+,d7
		rts
loc_14B2:
		clr.b   (byte_FF0E9A).l
		clr.b   (byte_FF0E9B).l
		movem.l (sp)+,d7
		rts

	; End of function sub_1482


; =============== S U B R O U T I N E =======================================

sub_14C4:
		movem.l d5,-(sp)
		moveq   #$3B,d5 
loc_14CA:
		andi.b  #$FF,(byte_FF0E97).l
		bne.s   loc_14DC
		bsr.w   sub_E66
		dbf     d5,loc_14CA
loc_14DC:
		movem.l (sp)+,d5
		rts

	; End of function sub_14C4


; =============== S U B R O U T I N E =======================================

sub_14E2:
		movem.l d5,-(sp)
		move.l  #$B3,d5 
		bra.s   loc_14CA

	; End of function sub_14E2


; =============== S U B R O U T I N E =======================================

sub_14EE:
		move.w  (word_FF0EC2).l,d7
		mulu.w  #$D,d7
		addi.w  #7,d7
		andi.l  #$FFFF,d7
		move.w  d7,(word_FF0EC2).l
		mulu.w  d6,d7
		swap    d7
		rts

	; End of function sub_14EE


; =============== S U B R O U T I N E =======================================

sub_150E:
		trap    #0
		dc.w $F0
		trap    #0
		dc.w $FFFF
loc_1516:
		moveq   #3,d0
		bsr.w   sub_E80
		tst.b   (byte_FF0EB1).l
		bne.s   loc_1516
		rts

	; End of function sub_150E


; =============== S U B R O U T I N E =======================================

sub_1526:
		movem.l d7-a1,-(sp)
		cmpa.l  a0,a1
		bgt.w   loc_153E
		subq.w  #1,d7
loc_1532:
		move.b  (a0)+,(a1)+
		dbf     d7,loc_1532
		movem.l (sp)+,d7-a1
		rts
loc_153E:
		adda.w  d7,a0
		adda.w  d7,a1
		subq.w  #1,d7
loc_1544:
		move.b  -(a0),-(a1)
		dbf     d7,loc_1544
		movem.l (sp)+,d7-a1
		rts

	; End of function sub_1526


; =============== S U B R O U T I N E =======================================

sub_1550:
		movem.l d0-d1/a0,-(sp)
		lea     (unk_FF0C80).l,a0
		move.w  #1,d1
loc_155E:
		move.w  #1,(a0)+
		move.w  d1,(a0)+
		move.w  #1,(a0)+
		move.w  #1,(a0)+
		addq.w  #1,d1
		dbf     d0,loc_155E
		subq.l  #6,a0
		clr.w   (a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_1550


; =============== S U B R O U T I N E =======================================

sub_157C:
		movem.l d1,-(sp)
		andi.w  #$FF,d7
		add.w   d7,d7
		move.w  word_1594(pc,d7.w),d7
		muls.w  d6,d7
		asr.w   #7,d7
		movem.l (sp)+,d1
		rts

	; End of function sub_157C

word_1594:      dc.w 0
		dc.w 3
		dc.w 6
		dc.w 9
		dc.w $C
		dc.w $10
		dc.w $13
		dc.w $16
		dc.w $19
		dc.w $1C
		dc.w $1F
		dc.w $22
		dc.w $25
		dc.w $28
		dc.w $2B
		dc.w $2E
		dc.w $31
		dc.w $33
		dc.w $36
		dc.w $39
		dc.w $3C
		dc.w $3F
		dc.w $41
		dc.w $44
		dc.w $47
		dc.w $49
		dc.w $4C
		dc.w $4E
		dc.w $51
		dc.w $53
		dc.w $55
		dc.w $58
		dc.w $5A
		dc.w $5C
		dc.w $5E
		dc.w $60
		dc.w $62
		dc.w $64
		dc.w $66
		dc.w $68
		dc.w $6A
		dc.w $6B
		dc.w $6D
		dc.w $6F
		dc.w $70
		dc.w $71
		dc.w $73
		dc.w $74
		dc.w $75
		dc.w $76
		dc.w $78
		dc.w $79
		dc.w $7A
		dc.w $7A
		dc.w $7B
		dc.w $7C
		dc.w $7D
		dc.w $7D
		dc.w $7E
		dc.w $7E
		dc.w $7E
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7F
		dc.w $7E
		dc.w $7E
		dc.w $7E
		dc.w $7D
		dc.w $7D
		dc.w $7C
		dc.w $7B
		dc.w $7A
		dc.w $7A
		dc.w $79
		dc.w $78
		dc.w $76
		dc.w $75
		dc.w $74
		dc.w $73
		dc.w $71
		dc.w $70
		dc.w $6F
		dc.w $6D
		dc.w $6B
		dc.w $6A
		dc.w $68
		dc.w $66
		dc.w $64
		dc.w $62
		dc.w $60
		dc.w $5E
		dc.w $5C
		dc.w $5A
		dc.w $58
		dc.w $55
		dc.w $53
		dc.w $51
		dc.w $4E
		dc.w $4C
		dc.w $49
		dc.w $47
		dc.w $44
		dc.w $41
		dc.w $3F
		dc.w $3C
		dc.w $39
		dc.w $36
		dc.w $33
		dc.w $31
		dc.w $2E
		dc.w $2B
		dc.w $28
		dc.w $25
		dc.w $22
		dc.w $1F
		dc.w $1C
		dc.w $19
		dc.w $16
		dc.w $13
		dc.w $10
		dc.w $C
		dc.w 9
		dc.w 6
		dc.w 3
		dc.w 0
		dc.w $FFFD
		dc.w $FFFA
		dc.w $FFF7
		dc.w $FFF4
		dc.w $FFF0
		dc.w $FFED
		dc.w $FFEA
		dc.w $FFE7
		dc.w $FFE4
		dc.w $FFE1
		dc.w $FFDE
		dc.w $FFDB
		dc.w $FFD8
		dc.w $FFD5
		dc.w $FFD2
		dc.w $FFCF
		dc.w $FFCD
		dc.w $FFCA
		dc.w $FFC7
		dc.w $FFC4
		dc.w $FFC1
		dc.w $FFBF
		dc.w $FFBC
		dc.w $FFB9
		dc.w $FFB7
		dc.w $FFB4
		dc.w $FFB2
		dc.w $FFAF
		dc.w $FFAD
		dc.w $FFAB
		dc.w $FFA8
		dc.w $FFA6
		dc.w $FFA4
		dc.w $FFA2
		dc.w $FFA0
		dc.w $FF9E
		dc.w $FF9C
		dc.w $FF9A
		dc.w $FF98
		dc.w $FF96
		dc.w $FF95
		dc.w $FF93
		dc.w $FF91
		dc.w $FF90
		dc.w $FF8F
		dc.w $FF8D
		dc.w $FF8C
		dc.w $FF8B
		dc.w $FF8A
		dc.w $FF88
		dc.w $FF87
		dc.w $FF86
		dc.w $FF86
		dc.w $FF85
		dc.w $FF84
		dc.w $FF83
		dc.w $FF83
		dc.w $FF82
		dc.w $FF82
		dc.w $FF82
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF81
		dc.w $FF82
		dc.w $FF82
		dc.w $FF82
		dc.w $FF83
		dc.w $FF83
		dc.w $FF84
		dc.w $FF85
		dc.w $FF86
		dc.w $FF86
		dc.w $FF87
		dc.w $FF88
		dc.w $FF8A
		dc.w $FF8B
		dc.w $FF8C
		dc.w $FF8D
		dc.w $FF8F
		dc.w $FF90
		dc.w $FF91
		dc.w $FF93
		dc.w $FF95
		dc.w $FF96
		dc.w $FF98
		dc.w $FF9A
		dc.w $FF9C
		dc.w $FF9E
		dc.w $FFA0
		dc.w $FFA2
		dc.w $FFA4
		dc.w $FFA6
		dc.w $FFA8
		dc.w $FFAB
		dc.w $FFAD
		dc.w $FFAF
		dc.w $FFB2
		dc.w $FFB4
		dc.w $FFB7
		dc.w $FFB9
		dc.w $FFBC
		dc.w $FFBF
		dc.w $FFC1
		dc.w $FFC4
		dc.w $FFC7
		dc.w $FFCA
		dc.w $FFCD
		dc.w $FFCF
		dc.w $FFD2
		dc.w $FFD5
		dc.w $FFD8
		dc.w $FFDB
		dc.w $FFDE
		dc.w $FFE1
		dc.w $FFE4
		dc.w $FFE7
		dc.w $FFEA
		dc.w $FFED
		dc.w $FFF0
		dc.w $FFF4
		dc.w $FFF7
		dc.w $FFFA
		dc.w $FFFD

; =============== S U B R O U T I N E =======================================

sub_1794:
		movem.l d0-d2,-(sp)
		ext.l   d6
		move.w  d6,d0
		moveq   #$13,d2
		lsr.w   #1,d0
		move.w  d0,d7
loc_17A2:
		move.w  d7,d1
		mulu.w  d1,d1
		lsr.w   #1,d0
		cmp.l   d1,d6
		beq.w   loc_17BA
		blt.s   loc_17B4
		add.w   d0,d7
		bra.s   loc_17B6
loc_17B4:
		sub.w   d0,d7
loc_17B6:
		dbf     d2,loc_17A2
loc_17BA:
		movem.l (sp)+,d0-d2
		rts

	; End of function sub_1794


; =============== S U B R O U T I N E =======================================

sub_17C0:
		movem.l d0-d2,-(sp)
		move.w  d6,d0
		move.w  d7,d1
		muls.w  d6,d6
		muls.w  d7,d7
		add.w   d7,d6
		bsr.s   sub_1794
		move.w  d7,d6
		move.w  d1,d7
		bge.s   loc_17D8
		neg.w   d7
loc_17D8:
		lsl.w   #6,d7
		divs.w  d6,d7
		move.b  unk_1814(pc,d7.w),d7
		andi.w  #$FF,d7
		movem.l d0,-(sp)
		muls.w  d1,d0
		movem.l (sp)+,d0
		blt.s   loc_1800
		tst.w   d1
		bge.s   loc_17FA
		addi.w  #$40,d7 
		bra.s   loc_17FE
loc_17FA:
		addi.w  #$C0,d7 
loc_17FE:
		bra.s   loc_180E
loc_1800:
		subi.w  #$40,d7 
		neg.w   d7
		tst.w   d1
		bge.s   loc_180E
		addi.w  #$80,d7 
loc_180E:
		movem.l (sp)+,d0-d2
		rts

	; End of function sub_17C0

unk_1814:       dc.b   0
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b   6
		dc.b   6
		dc.b   7
		dc.b   8
		dc.b   8
		dc.b   9
		dc.b  $A
		dc.b  $A
		dc.b  $B
		dc.b  $C
		dc.b  $C
		dc.b  $D
		dc.b  $E
		dc.b  $E
		dc.b  $F
		dc.b $10
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $13
		dc.b $13
		dc.b $14
		dc.b $15
		dc.b $16
		dc.b $16
		dc.b $17
		dc.b $18
		dc.b $19
		dc.b $19
		dc.b $1A
		dc.b $1B
		dc.b $1C
		dc.b $1D
		dc.b $1D
		dc.b $1E
		dc.b $1F
		dc.b $20
		dc.b $21 
		dc.b $22 
		dc.b $23 
		dc.b $24 
		dc.b $25 
		dc.b $26 
		dc.b $27 
		dc.b $28 
		dc.b $29 
		dc.b $2B 
		dc.b $2C 
		dc.b $2D 
		dc.b $2F 
		dc.b $31 
		dc.b $32 
		dc.b $35 
		dc.b $37 
		dc.b $3B 
		dc.b $40 
		dc.b   0

; =============== S U B R O U T I N E =======================================

sub_1856:
		movem.l d0-d2/d7-a1,-(sp)
		lea     ((word_FF0C82+1)).l,a1
		clr.w   d1
		moveq   #2,d0
		bsr.w   sub_1880
		bsr.w   sub_1880
		bsr.w   sub_18A0
		clr.w   d2
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
		movem.l (sp)+,d0-d2/d7-a1
		rts

	; End of function sub_1856


; =============== S U B R O U T I N E =======================================

sub_1880:
		lea     (unk_FFB4DB).l,a0
		moveq   #$3E,d7 
		moveq   #1,d2
loc_188A:
		cmp.b   (a0)+,d0
		bne.s   loc_1896
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
loc_1896:
		addq.w  #1,d2
		dbf     d7,loc_188A
		subq.w  #1,d0
		rts

	; End of function sub_1880


; =============== S U B R O U T I N E =======================================

sub_18A0:
		lea     (unk_FFB4DB).l,a0
		moveq   #$3E,d7 
		moveq   #1,d2
loc_18AA:
		cmp.b   (a0)+,d0
		bne.s   loc_18BC
		move.b  d2,(a1,d1.w)
		move.w  d2,d1
		lsl.w   #3,d1
		bclr    #7,1(a1,d1.w)
loc_18BC:
		addq.w  #1,d2
		dbf     d7,loc_18AA
		rts

	; End of function sub_18A0


; =============== S U B R O U T I N E =======================================

sub_18C4:
		movem.l d0/a0,-(sp)
		moveq   #$3F,d0 
		lea     (unk_FFB4DA).l,a0
loc_18D0:
		clr.b   (a0)+
		dbf     d0,loc_18D0
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_18C4


; =============== S U B R O U T I N E =======================================

sub_18DC:
		movem.l d0-a6,-(sp)
		bsr.w   sub_198E
		bsr.s   sub_191C
		movem.l (sp)+,d0-a6
		rts

	; End of function sub_18DC


; =============== S U B R O U T I N E =======================================

sub_18EC:
		movem.l d0-a6,-(sp)
		bsr.w   sub_198E
		bsr.w   sub_1AB6
		btst    #0,(byte_FF0EE9).l
		beq.s   loc_1916
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1C08,d0
		move.w  #$213,d1
		bsr.w   sub_801C
		bsr.w   sub_8054
loc_1916:
		movem.l (sp)+,d0-a6
		rts

	; End of function sub_18EC


; =============== S U B R O U T I N E =======================================

sub_191C:
		move.b  #1,((byte_FFF804-$1000000)).w
		bsr.w   sub_1AB6
		btst    #0,(byte_FF0EE9).l
		beq.w   loc_1B74
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$21C0213,d1
		move.w  #7,d2
		bra.w   loc_80C0

	; End of function sub_191C


; =============== S U B R O U T I N E =======================================

sub_1948:
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$C080,d0
		move.w  #$C081,d1
		move.w  #$C880,d2
		bra.s   loc_197E
		bsr.s   sub_1948
		move.w  #$C090,d0
		move.w  #$C020,d1
		move.w  #$C890,d2
		move.w  #5,d6
loc_196C:
		bsr.s   loc_197E
		dbf     d6,loc_196C
loc_1972:
		move.w  #$D080,d0
		move.w  #$D081,d1
		move.w  #$D880,d2
loc_197E:
		move.w  d0,(a0)+
		move.w  #$19,d7
loc_1984:
		move.w  d1,(a0)+
		dbf     d7,loc_1984
		move.w  d2,(a0)+
		rts

	; End of function sub_1948


; =============== S U B R O U T I N E =======================================

sub_198E:
		move.b  #2,((byte_FFF802-$1000000)).w
		move.b  #2,((byte_FFF803-$1000000)).w
		lea     (unk_FF3000).l,a0
		move.w  #$9BF,d7
loc_19A4:
		move.w  #$DDDD,(a0)+
		dbf     d7,loc_19A4
		clr.w   d0
loc_19AE:
		move.w  d0,-(sp)
		bsr.w   sub_1A0E
		move.w  (sp)+,d1
		clr.w   d0
		moveq   #3,d2
		sub.b   ((unk_FF9C05-$1000000)).w,d2
		beq.s   loc_19C4
		subq.w  #1,d2
		bset    d2,d0
loc_19C4:
		cmpi.w  #$7B,d1 
		bne.s   loc_19CC
		clr.w   d0
loc_19CC:
		cmpi.w  #$7C,d1 
		bne.s   loc_19D4
		clr.w   d0
loc_19D4:
		beq.s   loc_19F4
		tst.w   d1
		beq.s   loc_19F0
		eori.b  #1,((unk_FFB53C-$1000000)).w
		beq.s   loc_19EE
		move.w  d0,-(sp)
		move.w  ((word_FFC0BE-$1000000)).w,d0
		trap    #0
		dc.w $FFFF
		move.w  (sp)+,d0
loc_19EE:
		bra.s   loc_19F4
loc_19F0:
		clr.b   ((unk_FFB53C-$1000000)).w
loc_19F4:
		subq.w  #1,d0
		blt.s   return_1A0C
loc_19F8:
		tst.b   (byte_FF0E97).l
		bne.s   return_1A0C
		move    sr,-(sp)
		bsr.w   sub_E66
		move    (sp)+,ccr
		dbne    d0,loc_19F8
return_1A0C:
		rts

	; End of function sub_198E


; =============== S U B R O U T I N E =======================================

sub_1A0E:
		btst    #0,(byte_FF0EE9).l
		beq.w   loc_1A44
		lea     (unk_FF3000).l,a0
		lea     ($D000).l,a1
		move.w  #$800,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		lea     ($F800).l,a1
		move.w  #$1C0,d0
		bsr.w   sub_10D2
		bra.w   sub_EB0
loc_1A44:
		lea     (unk_FF3000).l,a0
		lea     (unk_FF0FFE).l,a1
		moveq   #$19,d0
loc_1A52:
		moveq   #3,d1
loc_1A54:
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		adda.w  #$320,a0
		dbf     d1,loc_1A54
		suba.w  #$CE0,a0
		dbf     d0,loc_1A52
		lea     (unk_FF0FFE).l,a0
		lea     ($D120).l,a1
		move.w  #$680,d0
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   sub_EB0
		rts

	; End of function sub_1A0E


; =============== S U B R O U T I N E =======================================

sub_1A92:
		bsr.s   sub_1AB6
		btst    #0,(byte_FF0EE9).l
		beq.w   loc_1B6E
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1C08,d0
		move.l  #$213021C,d1
		move.w  #7,d2
		bra.w   loc_80C0

	; End of function sub_1A92


; =============== S U B R O U T I N E =======================================

sub_1AB6:
		bsr.w   sub_1948
		move.w  #$C090,d0
		move.w  #$C680,d1
		move.w  #$C890,d2
		move.w  #5,d6
loc_1ACA:
		bsr.s   sub_1AD4
		dbf     d6,loc_1ACA
		bra.w   loc_1972

	; End of function sub_1AB6


; =============== S U B R O U T I N E =======================================

sub_1AD4:
		move.w  d0,(a0)+
		move.w  #$19,d7
loc_1ADA:
		move.w  d1,(a0)+
		addq.w  #1,d1
		cmpi.w  #$C700,d1
		bne.s   loc_1AE8
		move.w  #$C7C0,d1
loc_1AE8:
		dbf     d7,loc_1ADA
		move.w  d2,(a0)+
		rts

	; End of function sub_1AD4


; =============== S U B R O U T I N E =======================================

sub_1AF0:
		move.l  (dword_FF0EF6).l,-(sp)
		btst    #0,(byte_FF0EE9).l
		bne.s   loc_1B06
		clr.l   (dword_FF0EF6).l
loc_1B06:
		move.w  #7,d5
loc_1B0A:
		bsr.s   sub_1B1E
		bsr.s   sub_1B1E
		bsr.w   sub_1A0E
		dbf     d5,loc_1B0A
		move.l  (sp)+,(dword_FF0EF6).l
		rts

	; End of function sub_1AF0


; =============== S U B R O U T I N E =======================================

sub_1B1E:
		lea     (unk_FF3000).l,a0
		move.w  #$19,d6
loc_1B28:
		bsr.s   sub_1B34
		suba.w  #$103C,a0
		dbf     d6,loc_1B28
		rts

	; End of function sub_1B1E


; =============== S U B R O U T I N E =======================================

sub_1B34:
		move.w  #4,d7
loc_1B38:
		bsr.s   sub_1B4A
		adda.w  #$324,a0
		dbf     d7,loc_1B38
		move.l  #$DDDDDDDD,d0
		bra.s   loc_1B4E

	; End of function sub_1B34


; =============== S U B R O U T I N E =======================================

sub_1B4A:
		move.l  $340(a0),d0
loc_1B4E:
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  4(a0),(a0)+
		move.l  d0,(a0)
		rts

	; End of function sub_1B4A


; START OF FUNCTION CHUNK FOR sub_1A92

loc_1B6E:
		moveq   #$60,d1 
		bra.w   loc_1B98

; END OF FUNCTION CHUNK FOR sub_1A92


; START OF FUNCTION CHUNK FOR sub_191C

loc_1B74:
		lea     unk_1F26(pc), a0
		nop
		lea     ($D000).l,a1
		move.w  #$90,d0 
		move.w  #2,d1
		bsr.w   sub_10D2
		bsr.w   sub_EA6
		jsr     (sub_E66).l
		clr.w   d1
loc_1B98:
		lea     word_1C0E(pc), a0
		move.w  d1,d0
		asr.w   #8,d0
		ext.w   d1
		lea     (unk_FF0C88).l,a1
		moveq   #5,d7
loc_1BAA:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BAA
		lea     (unk_FF0D48).l,a1
		moveq   #6,d7
loc_1BC0:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BC0
		lea     (dword_FF0E30).l,a1
		moveq   #9,d7
loc_1BD6:
		move.w  (a0)+,(a1)
		add.w   d1,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)
		add.w   d0,(a1)+
		dbf     d7,loc_1BD6
		move.l  #$2020202,d0
		lea     ((unk_FFB4DB-$1000000)).w,a0
		move.b  d0,(a0)+
		move.l  d0,(a0)+
		move.b  d0,(a0)+
		lea     ((unk_FFB4F3-$1000000)).w,a0
		move.b  d0,(a0)+
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		lea     ((unk_FFB510-$1000000)).w,a0
		move.w  d0,(a0)+
		move.l  d0,(a0)+
		move.l  d0,(a0)+
		jmp     (sub_320).l

; END OF FUNCTION CHUNK FOR sub_191C

word_1C0E:      dc.w $118
		dc.l $F00C689
		dc.w $98
		dc.w $118
		dc.l $F00C699
		dc.w $B8
		dc.w $118
		dc.l $F00C6A9
		dc.w $D8
		dc.w $118
		dc.l $F00C6B9
		dc.w $F8
		dc.w $118
		dc.l $F00C6C9
		dc.w $118
		dc.w $118
		dc.l $F00C6D9
		dc.w $138
		dc.w $118
		dc.l $700C6E9
		dc.w $158
		dc.w $110
		dc.l $C00C680
		dc.w $90
		dc.w $110
		dc.l $C00C681
		dc.w $B0
		dc.w $110
		dc.l $C00C681
		dc.w $D0
		dc.w $110
		dc.l $C00C681
		dc.w $F0
		dc.w $110
		dc.l $C00C681
		dc.w $110
		dc.w $110
		dc.l $C00C681
		dc.w $130
		dc.w $110
		dc.l $C00CE80
		dc.w $150
		dc.w $138
		dc.l $C00D680
		dc.w $90
		dc.w $138
		dc.l $C00D681
		dc.w $B0
		dc.w $138
		dc.l $C00D681
		dc.w $D0
		dc.w $138
		dc.l $C00D681
		dc.w $F0
		dc.w $138
		dc.l $C00D681
		dc.w $110
		dc.w $138
		dc.l $C00D681
		dc.w $130
		dc.w $138
		dc.l $C00DE80
		dc.w $150
		dc.w $118
		dc.l $300C685
		dc.w $90
		dc.w $118
		dc.l $300CE85
		dc.w $168

; =============== S U B R O U T I N E =======================================

sub_1CC6:
		movem.w d0-d1,-(sp)
		move.w  d0,d7
		move.b  ((byte_FFF804-$1000000)).w,d1
		bsr.s   sub_1CD8
		movem.w (sp)+,d0-d1
		rts

	; End of function sub_1CC6


; =============== S U B R O U T I N E =======================================

sub_1CD8:
		move.w  #$D,d6
		lsl.w   #5,d7
		movea.l (off_2C000).l,a0
		adda.l  d7,a0
		move.w  (a0)+,d4
		bsr.s   sub_1CFE
		move.w  d6,d7
loc_1CEC:
		bsr.w   sub_1D4A
		bsr.w   sub_1D36
		dbf     d7,loc_1CEC
		add.b   d4,((byte_FFF802-$1000000)).w
		rts

	; End of function sub_1CD8


; =============== S U B R O U T I N E =======================================

sub_1CFE:
		move.b  d1,d2
		lsl.b   #4,d2
		clr.w   d0
		move.b  ((byte_FFF803-$1000000)).w,d0
		lsr.b   #3,d0
		mulu.w  #$340,d0
		clr.w   d3
		move.b  ((byte_FFF803-$1000000)).w,d3
		andi.b  #7,d3
		move.b  d3,d5
		lsl.b   #2,d3
		add.w   d3,d0
		clr.w   d3
		move.b  ((byte_FFF802-$1000000)).w,d3
		andi.b  #$F8,d3
		lsl.w   #2,d3
		add.w   d3,d0
		lea     (unk_FF3000).l,a2
		adda.w  d0,a2
		rts

	; End of function sub_1CFE


; =============== S U B R O U T I N E =======================================

sub_1D36:
		adda.w  #4,a2
		addq.b  #1,d5
		cmpi.b  #8,d5
		bcs.s   return_1D48
		clr.b   d5
		adda.w  #$320,a2
return_1D48:
		rts

	; End of function sub_1D36


; =============== S U B R O U T I N E =======================================

sub_1D4A:
		move.w  (a0)+,d0
		moveq   #$B,d6
loc_1D4E:
		lsl.w   #1,d0
		bcc.s   loc_1D90
		move.b  ((byte_FFF802-$1000000)).w,d3
		andi.w  #7,d3
		addi.w  #$B,d3
		sub.w   d6,d3
		add.w   d3,d3
		move.w  off_1D6A(pc,d3.w),d3
		jmp     off_1D6A(pc,d3.w)
off_1D6A:
		dc.w sub_1D96-off_1D6A
		dc.w sub_1D9E-off_1D6A
		dc.w sub_1DA6-off_1D6A
		dc.w sub_1DB2-off_1D6A
		dc.w sub_1DBE-off_1D6A
		dc.w sub_1DCA-off_1D6A
		dc.w sub_1DD6-off_1D6A
		dc.w sub_1DE2-off_1D6A
		dc.w sub_1DEE-off_1D6A
		dc.w sub_1DFA-off_1D6A
		dc.w sub_1E06-off_1D6A
		dc.w sub_1E14-off_1D6A
		dc.w sub_1E22-off_1D6A
		dc.w sub_1E30-off_1D6A
		dc.w sub_1E3E-off_1D6A
		dc.w sub_1E4C-off_1D6A
		dc.w sub_1E5A-off_1D6A
		dc.w sub_1E68-off_1D6A
		dc.w sub_1E76-off_1D6A
loc_1D90:
		dbf     d6,loc_1D4E
		rts

	; End of function sub_1D4A


; =============== S U B R O U T I N E =======================================

sub_1D96:
		andi.b  #$F,(a2)
		or.b    d2,(a2)
		bra.s   loc_1D90

	; End of function sub_1D96


; =============== S U B R O U T I N E =======================================

sub_1D9E:
		andi.b  #$F0,(a2)
		or.b    d1,(a2)
		bra.s   loc_1D90

	; End of function sub_1D9E


; =============== S U B R O U T I N E =======================================

sub_1DA6:
		andi.b  #$F,1(a2)
		or.b    d2,1(a2)
		bra.s   loc_1D90

	; End of function sub_1DA6


; =============== S U B R O U T I N E =======================================

sub_1DB2:
		andi.b  #$F0,1(a2)
		or.b    d1,1(a2)
		bra.s   loc_1D90

	; End of function sub_1DB2


; =============== S U B R O U T I N E =======================================

sub_1DBE:
		andi.b  #$F,2(a2)
		or.b    d2,2(a2)
		bra.s   loc_1D90

	; End of function sub_1DBE


; =============== S U B R O U T I N E =======================================

sub_1DCA:
		andi.b  #$F0,2(a2)
		or.b    d1,2(a2)
		bra.s   loc_1D90

	; End of function sub_1DCA


; =============== S U B R O U T I N E =======================================

sub_1DD6:
		andi.b  #$F,3(a2)
		or.b    d2,3(a2)
		bra.s   loc_1D90

	; End of function sub_1DD6


; =============== S U B R O U T I N E =======================================

sub_1DE2:
		andi.b  #$F0,3(a2)
		or.b    d1,3(a2)
		bra.s   loc_1D90

	; End of function sub_1DE2


; =============== S U B R O U T I N E =======================================

sub_1DEE:
		andi.b  #$F,$20(a2)
		or.b    d2,$20(a2)
		bra.s   loc_1D90

	; End of function sub_1DEE


; =============== S U B R O U T I N E =======================================

sub_1DFA:
		andi.b  #$F0,$20(a2)
		or.b    d1,$20(a2)
		bra.s   loc_1D90

	; End of function sub_1DFA


; =============== S U B R O U T I N E =======================================

sub_1E06:
		andi.b  #$F,$21(a2)
		or.b    d2,$21(a2)
		bra.w   loc_1D90

	; End of function sub_1E06


; =============== S U B R O U T I N E =======================================

sub_1E14:
		andi.b  #$F0,$21(a2)
		or.b    d1,$21(a2)
		bra.w   loc_1D90

	; End of function sub_1E14


; =============== S U B R O U T I N E =======================================

sub_1E22:
		andi.b  #$F,$22(a2)
		or.b    d2,$22(a2)
		bra.w   loc_1D90

	; End of function sub_1E22


; =============== S U B R O U T I N E =======================================

sub_1E30:
		andi.b  #$F0,$22(a2)
		or.b    d1,$22(a2)
		bra.w   loc_1D90

	; End of function sub_1E30


; =============== S U B R O U T I N E =======================================

sub_1E3E:
		andi.b  #$F,$23(a2)
		or.b    d2,$23(a2)
		bra.w   loc_1D90

	; End of function sub_1E3E


; =============== S U B R O U T I N E =======================================

sub_1E4C:
		andi.b  #$F0,$23(a2)
		or.b    d1,$23(a2)
		bra.w   loc_1D90

	; End of function sub_1E4C


; =============== S U B R O U T I N E =======================================

sub_1E5A:
		andi.b  #$F,$40(a2)
		or.b    d2,$40(a2)
		bra.w   loc_1D90

	; End of function sub_1E5A


; =============== S U B R O U T I N E =======================================

sub_1E68:
		andi.b  #$F0,$40(a2)
		or.b    d1,$40(a2)
		bra.w   loc_1D90

	; End of function sub_1E68


; =============== S U B R O U T I N E =======================================

sub_1E76:
		andi.b  #$F,$41(a2)
		or.b    d2,$41(a2)
		bra.w   loc_1D90
		lea     unk_1E9E(pc), a0
		move.w  #1,d7
loc_1E8C:
		move.b  (a0,d7.w),d2
		beq.s   loc_1E9A
		cmp.b   d0,d2
		beq.s   return_1E9C
		addq.w  #1,d7
		bra.s   loc_1E8C
loc_1E9A:
		clr.w   d7
return_1E9C:
		rts

	; End of function sub_1E76

unk_1E9E:       dc.b   0
		dc.b $30 
		dc.b $31 
		dc.b $32 
		dc.b $33 
		dc.b $34 
		dc.b $35 
		dc.b $36 
		dc.b $37 
		dc.b $38 
		dc.b $39 
		dc.b $71 
		dc.b $72 
		dc.b $73 
		dc.b $74 
		dc.b $75 
		dc.b $76 
		dc.b $77 
		dc.b $78 
		dc.b $79 
		dc.b $7A 
		dc.b $7B 
		dc.b $7C 
		dc.b $7D 
		dc.b $7E 
		dc.b $7F 
		dc.b $80 
		dc.b $81 
		dc.b $82 
		dc.b $83 
		dc.b $84 
		dc.b $85 
		dc.b $86 
		dc.b $87 
		dc.b $88 
		dc.b $89 
		dc.b $8A 
		dc.b $8B 
		dc.b $8C 
		dc.b $8D 
		dc.b $8E 
		dc.b $8F 
		dc.b $90 
		dc.b $91 
		dc.b $92 
		dc.b $93 
		dc.b $94 
		dc.b $95 
		dc.b $96 
		dc.b $97 
		dc.b $98 
		dc.b $99 
		dc.b $9A 
		dc.b $9B 
		dc.b $9C 
		dc.b $66 
		dc.b $9D 
		dc.b $67 
		dc.b $68 
		dc.b $69 
		dc.b $6A 
		dc.b $6B 
		dc.b $6C 
		dc.b $6D 
		dc.b $6E 
		dc.b $6F 
		dc.b $B1 
		dc.b $B2 
		dc.b $B3 
		dc.b $B4 
		dc.b $B5 
		dc.b $B6 
		dc.b $B7 
		dc.b $B8 
		dc.b $B9 
		dc.b $BA 
		dc.b $BB 
		dc.b $BC 
		dc.b $BD 
		dc.b $BE 
		dc.b $BF 
		dc.b $C0 
		dc.b $C1 
		dc.b $C2 
		dc.b $C3 
		dc.b $C4 
		dc.b $C5 
		dc.b $C6 
		dc.b $C7 
		dc.b $C8 
		dc.b $C9 
		dc.b $CA 
		dc.b $CB 
		dc.b $CC 
		dc.b $CD 
		dc.b $CE 
		dc.b $CF 
		dc.b $D0 
		dc.b $D1 
		dc.b $D2 
		dc.b $D3 
		dc.b $D4 
		dc.b $D5 
		dc.b $D6 
		dc.b $D7 
		dc.b $D8 
		dc.b $D9 
		dc.b $DA 
		dc.b $DB 
		dc.b $DC 
		dc.b $A6 
		dc.b $DD 
		dc.b $A7 
		dc.b $A8 
		dc.b $A9 
		dc.b $AA 
		dc.b $AB 
		dc.b $AC 
		dc.b $AD 
		dc.b $AE 
		dc.b $AF 
		dc.b $A4 
		dc.b $A1 
		dc.b $9E 
		dc.b $9F 
		dc.b $2D 
		dc.b $21 
		dc.b $3F 
		dc.b $2E 
		dc.b $A2 
		dc.b $A3 
		dc.b $A4 
		dc.b $A5 
		dc.b $A6 
		dc.b   0
		dc.b $FF
unk_1F26:       dc.b   0
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b  $E
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $EC 
		dc.b $CB 
		dc.b $BB 
		dc.b $BB 
		dc.b $EC 
		dc.b $BE 
		dc.b $CB 
		dc.b $11
		dc.b $EC 
		dc.b $BC 
		dc.b $B1 
		dc.b $CC 
		dc.b $EC 
		dc.b $BB 
		dc.b $1C
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $EE 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $BB 
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $CC 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
unk_2000:       dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 
		dc.b $EC 
		dc.b $B1 
		dc.b $CD 
		dc.b $DD 

; =============== S U B R O U T I N E =======================================

LoadText:
		nop
		nop
		move.b  #1,(byte_FFB5AD).l
		movem.l d0-a6,-(sp)
		bsr.w   sub_20DA
		cmpi.b  #1,(byte_FFF805).l
		beq.w   loc_21C2
		jsr     sub_10040
		move.l  a0,(dword_FFF908).l
		bsr.s   sub_20E0

	; End of function LoadText


; START OF FUNCTION CHUNK FOR sub_20E0

loc_2074:
		bsr.w   sub_214C
loc_2078:
		cmpi.w  #$FFF0,d0
		beq.s   loc_2086
		cmpi.w  #$FFF6,d0
		beq.s   loc_2086
		bsr.s   sub_208C
loc_2086:
		bsr.w   sub_21C8
		bra.s   loc_2074

; END OF FUNCTION CHUNK FOR sub_20E0


; =============== S U B R O U T I N E =======================================

sub_208C:
		cmpi.b  #$C4,(byte_FFF802).l
		bls.s   return_20D8
		move.b  #2,(byte_FFF802).l
		addi.b  #$10,(byte_FFF803).l
		btst    #0,(byte_FF0EE9).l
		bne.s   loc_20BA
		cmpi.b  #$20,(byte_FFF803).l 
		bra.s   loc_20C2
loc_20BA:
		cmpi.b  #$30,(byte_FFF803).l 
loc_20C2:
		bcs.s   return_20D8

	; End of function sub_208C


; =============== S U B R O U T I N E =======================================

sub_20C4:
		movem.l d0,-(sp)
		bsr.w   sub_1AF0
		movem.l (sp)+,d0
		subi.b  #$10,(byte_FFF803).l
return_20D8:
		rts

	; End of function sub_20C4


; =============== S U B R O U T I N E =======================================

sub_20DA:
		bsr.s   sub_2124
		bsr.s   sub_2100
		rts

	; End of function sub_20DA


; =============== S U B R O U T I N E =======================================

sub_20E0:
		bsr.w   sub_214C
		cmpi.w  #$FFEA,d0
		beq.s   return_20FE
		movem.l d0,-(sp)
		bsr.w   sub_2458
		movem.l (sp)+,d0
		movem.l (sp)+,d1
		bra.w   loc_2078
return_20FE:
		rts

	; End of function sub_20E0


; =============== S U B R O U T I N E =======================================

sub_2100:
		clr.l   (dword_FFF904).l
		clr.b   (byte_FFF806).l
		clr.w   (word_FFF842).l
		move.b  (a0)+,(byte_FFF805).l
		move.l  #word_FFF844,(dword_FFF90C).l
		rts

	; End of function sub_2100


; =============== S U B R O U T I N E =======================================

sub_2124:
		movem.w d0,-(sp)
		lsr.w   #6,d0
		andi.b  #$FC,d0
		movea.l (p_pt_TextBanks).l,a0
		movea.l (a0,d0.w),a0
		movem.w (sp)+,d0
loc_213C:
		tst.b   d0
		beq.s   return_214A
		moveq   #0,d7
		move.b  (a0),d7
		adda.l  d7,a0
		subq.b  #1,d0
		bra.s   loc_213C
return_214A:
		rts

	; End of function sub_2124


; =============== S U B R O U T I N E =======================================

sub_214C:
		tst.l   (dword_FFF904).l
		bne.w   loc_219A
loc_2156:
		movea.l (dword_FFF908).l,a0
		jsr     j_DecompressText
		move.l  a0,(dword_FFF908).l
		cmpi.b  #$C0,d0
		beq.s   loc_218A
		bcs.s   loc_2184
		subi.b  #$C1,d0
		andi.w  #$FF,d0
		add.w   d0,d0
		lea     word_24AA(pc), a1
		move.w  (a1,d0.w),d0
		rts
loc_2184:
		andi.w  #$FF,d0
		rts
loc_218A:
		movem.l (sp)+,d0
		clr.b   (byte_FFB5AD).l
		movem.l (sp)+,d0-a6
		rts
loc_219A:
		movea.l (dword_FFF904).l,a1
		move.w  (a1)+,d0
		move.l  a1,(dword_FFF904).l
		cmpi.w  #$FFFF,d0
		beq.s   loc_21B8
		lea     unk_24D0(pc), a1
		move.b  (a1,d0.w),d0
		rts
loc_21B8:
		clr.l   (dword_FFF904).l
		bra.w   loc_2156

	; End of function sub_214C


; START OF FUNCTION CHUNK FOR LoadText

loc_21C2:
		movem.l (sp)+,d0-a6
		rts

; END OF FUNCTION CHUNK FOR LoadText


; =============== S U B R O U T I N E =======================================

sub_21C8:
		tst.w   d0
		bpl.s   loc_21D4
		not.w   d0
		lsl.w   #2,d0
		jmp     sub_21DE(pc,d0.w)
loc_21D4:
		bsr.w   sub_1CC6
		bsr.w   loc_19AE
		rts

	; End of function sub_21C8


; =============== S U B R O U T I N E =======================================

sub_21DE:
		bra.w   sub_2246

	; End of function sub_21DE


; =============== S U B R O U T I N E =======================================

sub_21E2:
		bra.w   sub_224C

	; End of function sub_21E2


; =============== S U B R O U T I N E =======================================

sub_21E6:
		bra.w   sub_2280

	; End of function sub_21E6


; =============== S U B R O U T I N E =======================================

sub_21EA:
		bra.w   sub_2296

	; End of function sub_21EA


; =============== S U B R O U T I N E =======================================

j_nullsub_22A2:
		
		bra.w   nullsub_22A2

	; End of function j_nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_21F2:
		bra.w   sub_22C8

	; End of function sub_21F2


; =============== S U B R O U T I N E =======================================

sub_21F6:
		bra.w   sub_230A

	; End of function sub_21F6


; =============== S U B R O U T I N E =======================================

j_nullsub_2318:
		
		bra.w   nullsub_2318

	; End of function j_nullsub_2318


; =============== S U B R O U T I N E =======================================

sub_21FE:
		bra.w   sub_231A

	; End of function sub_21FE


; =============== S U B R O U T I N E =======================================

sub_2202:
		bra.w   sub_2430

	; End of function sub_2202


; =============== S U B R O U T I N E =======================================

sub_2206:
		bra.w   sub_2354

	; End of function sub_2206


; =============== S U B R O U T I N E =======================================

sub_220A:
		bra.w   sub_235A

	; End of function sub_220A


; =============== S U B R O U T I N E =======================================

sub_220E:
		bra.w   sub_237E

	; End of function sub_220E


; =============== S U B R O U T I N E =======================================

sub_2212:
		bra.w   loc_23B4

	; End of function sub_2212


; =============== S U B R O U T I N E =======================================

sub_2216:
		bra.w   sub_2458

	; End of function sub_2216


; =============== S U B R O U T I N E =======================================

sub_221A:
		bra.w   loc_23B8

	; End of function sub_221A


; =============== S U B R O U T I N E =======================================

sub_221E:
		bra.w   sub_2430

	; End of function sub_221E

		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

j_nullsub_6:
		bra.w   nullsub_6

	; End of function j_nullsub_6

		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

sub_223A:
		bra.w   sub_22A4

	; End of function sub_223A


; =============== S U B R O U T I N E =======================================

sub_223E:
		bra.w   sub_22B0

	; End of function sub_223E


; =============== S U B R O U T I N E =======================================

sub_2242:
		bra.w   sub_22BC

	; End of function sub_2242


; =============== S U B R O U T I N E =======================================

sub_2246:
		movem.l (sp)+,d0
		rts

	; End of function sub_2246


; =============== S U B R O U T I N E =======================================

sub_224C:
		move.b  #2,(byte_FFF802).l
		addi.b  #$10,(byte_FFF803).l
		btst    #0,(byte_FF0EE9).l
		bne.s   loc_2270
		cmpi.b  #$20,(byte_FFF803).l 
		bra.s   loc_2278
loc_2270:
		cmpi.b  #$30,(byte_FFF803).l 
loc_2278:
		bcs.s   return_227E
		bsr.w   sub_20C4
return_227E:
		rts

	; End of function sub_224C


; =============== S U B R O U T I N E =======================================

sub_2280:
		bsr.w   sub_2468
		jsr     sub_202E8
loc_228A:
		movea.l a0,a2
		move.w  d1,d7
		subi.w  #1,d7
		bra.w   loc_248E

	; End of function sub_2280


; =============== S U B R O U T I N E =======================================

sub_2296:
		bsr.w   sub_2468
		jsr     sub_202E0
		bra.s   loc_228A

	; End of function sub_2296


; =============== S U B R O U T I N E =======================================

nullsub_22A2:
		rts

	; End of function nullsub_22A2


; =============== S U B R O U T I N E =======================================

sub_22A4:
		bsr.w   sub_2468
		jsr     sub_202E4
		bra.s   loc_228A

	; End of function sub_22A4


; =============== S U B R O U T I N E =======================================

sub_22B0:
		bsr.w   sub_2468
		jsr     sub_202E0
		bra.s   loc_228A

	; End of function sub_22B0


; =============== S U B R O U T I N E =======================================

sub_22BC:
		bsr.w   sub_2468
		move.b  d1,(byte_FFF804).l
		rts

	; End of function sub_22BC


; =============== S U B R O U T I N E =======================================

sub_22C8:
		bsr.w   sub_2468
		move.w  d1,d0
		jsr     sub_20050
loc_22D4:
		lea     (unk_FFF84C).l,a1
		move.l  a1,(dword_FFF904).l
		subq.w  #1,d1
loc_22E2:
		clr.w   d0
		move.b  (a0)+,d0
		move.w  d0,(a1)+
loc_22E8:
		dbf     d1,loc_22E2
loc_22EC:
		tst.w   -(a1)
		bne.s   loc_22F2
		bra.s   loc_22EC
loc_22F2:
		adda.w  #2,a1
		move.w  #$FFFF,(a1)+
		rts

	; End of function sub_22C8

		move.w  -2(a1),d2
		move.w  d3,-2(a1)
		move.w  d2,(a1)+
		bra.s   loc_22E8
		rts

; =============== S U B R O U T I N E =======================================

sub_230A:
		clr.w   d0
		jsr     sub_200E0
		moveq   #$A,d1
		bra.w   loc_22D4

	; End of function sub_230A


; =============== S U B R O U T I N E =======================================

nullsub_2318:
		rts

	; End of function nullsub_2318


; =============== S U B R O U T I N E =======================================

sub_231A:
		move.w  #$15,d0
loc_231E:
		move.b  (byte_FFB5AD).l,d2
		movem.w d2,-(sp)
		clr.b   (byte_FFB5AD).l
loc_232E:
		move.b  (byte_FF0E99).l,d1
		andi.b  #$70,d1 
		bne.s   loc_2342
		bsr.w   sub_E66
		dbf     d0,loc_232E
loc_2342:
		movem.w (sp)+,d0
		move.b  d0,(byte_FFB5AD).l
		rts

	; End of function sub_231A

		move.w  #$3B,d0 
		bra.s   loc_231E

; =============== S U B R O U T I N E =======================================

sub_2354:
		move.w  #$77,d0 
		bra.s   loc_231E

	; End of function sub_2354


; =============== S U B R O U T I N E =======================================

sub_235A:
		move.w  #$3B,d0 
		move.b  (byte_FFB5AD).l,d2
		movem.w d2,-(sp)
		clr.b   (byte_FFB5AD).l
		bsr.w   sub_E80
		movem.w (sp)+,d0
		move.b  d0,(byte_FFB5AD).l
		rts

	; End of function sub_235A


; =============== S U B R O U T I N E =======================================

sub_237E:
		move.l  (dword_FFF900).l,d0
		jsr     (j_WriteAsciiNumber).l
		lea     (unk_FFF84C).l,a1
		move.l  a1,(dword_FFF904).l
		lea     (unk_FF0E80).l,a0
		moveq   #9,d1
loc_239E:
		clr.w   d0
		move.b  (a0)+,d0
		cmpi.b  #$20,d0 
		beq.s   loc_23AA
		move.w  d0,(a1)+
loc_23AA:
		dbf     d1,loc_239E
		move.w  #$FFFF,(a1)+
		rts

	; End of function sub_237E

loc_23B4:       bsr.w   sub_224C
loc_23B8:       move.b  (byte_FFB5AD).l,d2
		movem.w d2,-(sp)
		clr.b   (byte_FFB5AD).l
		moveq   #$14,d2
loc_23CA:       bsr.w   sub_E66
		bsr.s   sub_23DE
		beq.s   loc_23CA
		trap    #0
		dc.w $43
		clr.w   d2
		bsr.s   sub_23EC
		bra.w   loc_2342

; =============== S U B R O U T I N E =======================================

sub_23DE:
		bsr.s   sub_23EC
		move.b  (byte_FF0E99).l,d1
		andi.b  #$70,d1 
		rts

	; End of function sub_23DE


; =============== S U B R O U T I N E =======================================

sub_23EC:
		lea     (unk_FF0C80).l,a0
		cmpi.w  #7,d2
		bge.s   loc_2404
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_241E
loc_2404:
		move.w  #$160,6(a0)
		btst    #0,(byte_FF0EE9).l
		beq.s   loc_241A
		move.w  #$148,(a0)
		bra.s   loc_241E
loc_241A:
		move.w  #$130,(a0)
loc_241E:
		clr.b   2(a0)
		move.w  #$C084,4(a0)
		subq.w  #1,d2
		bne.s   return_242E
		moveq   #$14,d2
return_242E:
		rts

	; End of function sub_23EC


; =============== S U B R O U T I N E =======================================

sub_2430:
		move.b  (byte_FFB5AD).l,d2
		movem.w d2,-(sp)
		clr.b   (byte_FFB5AD).l
loc_2440:
		bsr.w   sub_E66
		bsr.s   sub_244C
		beq.s   loc_2440
		bra.w   loc_2342

	; End of function sub_2430


; =============== S U B R O U T I N E =======================================

sub_244C:
		move.b  (byte_FF0E99).l,d1
		andi.b  #$70,d1 
		rts

	; End of function sub_244C


; =============== S U B R O U T I N E =======================================

sub_2458:
		cmpi.b  #2,(byte_FFF802).l
		bne.w   sub_224C
		rts

	; End of function sub_2458


; =============== S U B R O U T I N E =======================================

nullsub_6:
		rts

	; End of function nullsub_6


; =============== S U B R O U T I N E =======================================

sub_2468:
		movea.l (dword_FFF90C).l,a1
		move.w  (a1)+,d1
		move.l  a1,(dword_FFF90C).l
		rts

	; End of function sub_2468


; =============== S U B R O U T I N E =======================================

sub_2478:
		dbf     d0,loc_247E
		bra.s   loc_2486

	; End of function sub_2478


; START OF FUNCTION CHUNK FOR sub_2478

loc_247E:
		clr.l   d1
		move.b  (a2),d1
		adda.l  d1,a2
		bra.s   sub_2478
loc_2486:
		clr.l   d7
		move.b  (a2)+,d7
		subq.w  #2,d7
		rts

; END OF FUNCTION CHUNK FOR sub_2478


; START OF FUNCTION CHUNK FOR sub_2280

loc_248E:
		lea     (unk_FFF84C).l,a1
		move.l  a1,(dword_FFF904).l
loc_249A:
		clr.w   d0
		move.b  (a2)+,d0
		move.w  d0,(a1)+
		dbf     d7,loc_249A
		move.w  #$FFFF,(a1)
		rts

; END OF FUNCTION CHUNK FOR sub_2280

word_24AA:      dc.w $FFEA
		dc.w $FFF1
		dc.w $FFFE
		dc.w $FFF4
		dc.w $FFF3
		dc.w $FFFA
		dc.w $FFF8
		dc.w $FFF9
		dc.w $FFFB
		dc.w $FFFC
		dc.w $FFFD
		dc.w $FFE7
		dc.w $FFF0
		dc.w $FFF2
		dc.w $FFF7
		dc.w $FFF6
		dc.w $FFF5
		dc.w $FFE8
		dc.w $FFE6
unk_24D0:       dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $43 
		dc.b $46 
		dc.b $4A 
		dc.b   0
		dc.b $4B 
		dc.b $4C 
		dc.b $47 
		dc.b $48 
		dc.b $49 
		dc.b   0
		dc.b $4D 
		dc.b $42 
		dc.b $40 
		dc.b $41 
		dc.b $4E 
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   6
		dc.b   7
		dc.b   8
		dc.b   9
		dc.b  $A
		dc.b $4F 
		dc.b $45 
		dc.b $48 
		dc.b   0
		dc.b $49 
		dc.b $44 
		dc.b   0
		dc.b  $B
		dc.b  $C
		dc.b  $D
		dc.b  $E
		dc.b  $F
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $13
		dc.b $14
		dc.b $15
		dc.b $16
		dc.b $17
		dc.b $18
		dc.b $19
		dc.b $1A
		dc.b $1B
		dc.b $1C
		dc.b $1D
		dc.b $1E
		dc.b $1F
		dc.b $20
		dc.b $21 
		dc.b $22 
		dc.b $23 
		dc.b $24 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3F 
		dc.b   0
		dc.b $25 
		dc.b $26 
		dc.b $27 
		dc.b $28 
		dc.b $29 
		dc.b $2A 
		dc.b $2B 
		dc.b $2C 
		dc.b $2D 
		dc.b $2E 
		dc.b $2F 
		dc.b $30 
		dc.b $31 
		dc.b $32 
		dc.b $33 
		dc.b $34 
		dc.b $35 
		dc.b $36 
		dc.b $37 
		dc.b $38 
		dc.b $39 
		dc.b $3A 
		dc.b $3B 
		dc.b $3C 
		dc.b $3D 
		dc.b $3E 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0

; =============== S U B R O U T I N E =======================================

DecompressGraphics:
		
		movem.l a4-a6,-(sp)
		clr.w   d2
		move.b  (a0)+,d2
		move.b  d2,(byte_FF0FFC).l
		lsl.w   #3,d2
		clr.w   d1
		move.b  (a0)+,d1
		move.b  d1,(byte_FF0FFD).l
		lsl.w   #3,d1
		mulu.w  d2,d1
		move.w  d1,d7
		lsr.w   #5,d7
		lea     (byte_FF0FFD).l,a2
		lea     1(a2,d1.w),a3
		moveq   #0,d3
		move.l  d3,d4
		move.l  d3,d5
		move.l  d3,d6
		move.l  d3,d0
		movea.l d3,a4
		movea.l d3,a5
		movea.l d3,a6
		movea.l a3,a1
		lsr.w   #1,d7
		bcc.s   loc_2616
		movem.l d0/d3-d6/a4-a6,-(a1)
loc_2616:
		dbf     d7,loc_261C
		bra.s   loc_2628
loc_261C:
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		dbf     d7,loc_261C
loc_2628:
		moveq   #$FFFFFF80,d6
		moveq   #$F,d7
		clr.w   d3
loc_262E:
		moveq   #$FFFFFFFF,d4
		moveq   #2,d5
loc_2632:
		dbf     d3,loc_263A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_263A:
		add.w   d0,d0
		dbcs    d4,loc_2632
		negx.w  d4
		lsl.w   d4,d5
		lea     -2(a2,d5.w),a2
		clr.w   d5
loc_264A:
		dbf     d3,loc_2652
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2652:
		add.w   d0,d0
		addx.w  d5,d5
		dbf     d4,loc_264A
		adda.w  d5,a2
		cmpa.l  a3,a2
		bcc.w   loc_28C6
		subq.w  #4,d3
		bcc.s   loc_2682
		addq.w  #4,d3
		rol.l   d3,d0
		move.w  (a0)+,d0
		subq.w  #4,d3
		neg.w   d3
		rol.l   d3,d0
		neg.w   d3
		addi.w  #$10,d3
		move.l  d0,d1
		swap    d1
		and.b   d7,d1
		or.b    d6,d1
		bra.s   loc_268A
loc_2682:
		rol.w   #4,d0
		move.b  d0,d1
		and.b   d7,d1
		or.b    d6,d1
loc_268A:
		move.b  d1,(a2)
		dbf     d3,loc_2694
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2694:
		add.w   d0,d0
		bcc.s   loc_262E
		movea.l a2,a1
		subq.w  #3,d3
		bcs.s   loc_26B0
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.s   loc_262E
		bra.s   loc_26DC
loc_26B0:
		addq.w  #3,d3
		dbf     d3,loc_26BA
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26BA:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_26C8
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26C8:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_26D6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26D6:
		add.w   d0,d0
		bcc.w   loc_262E
loc_26DC:
		dbf     d3,loc_26E4
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_26E4:
		add.w   d0,d0
		bcs.w   loc_27CE
		lea     -2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2706
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.s   loc_26DC
loc_2706:
		addq.w  #3,d3
		dbf     d3,loc_2710
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2710:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_271E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_271E:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_272C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_272C:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2736:
		move.l  a1,d5
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #2,d3
		bcs.s   loc_2754
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.s   loc_26DC
loc_2754:
		addq.w  #3,d3
		dbf     d3,loc_275E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_275E:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_276C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_276C:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_277A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_277A:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2784:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #2,d3
		bcs.s   loc_279E
		add.w   d0,d0
		bcs.s   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_279E:
		addq.w  #3,d3
		dbf     d3,loc_27A8
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27A8:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_27B6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27B6:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_27C4
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27C4:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_27CE:
		lea     2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_27EC
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.s   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_27EC:
		addq.w  #3,d3
		dbf     d3,loc_27F6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_27F6:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_2804
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2804:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_2812
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2812:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_281C:
		move.l  a1,d5
		dbf     d3,loc_2826
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2826:
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2848
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2848:
		addq.w  #3,d3
		dbf     d3,loc_2852
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2852:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_2860
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2860:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_286E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_286E:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2878:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #3,d3
		bcs.s   loc_2896
		add.w   d0,d0
		bcs.w   loc_2736
		add.w   d0,d0
		bcs.w   loc_2784
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_2896:
		addq.w  #3,d3
		dbf     d3,loc_28A0
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28A0:
		add.w   d0,d0
		bcs.w   loc_281C
		dbf     d3,loc_28AE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28AE:
		add.w   d0,d0
		bcs.w   loc_2878
		dbf     d3,loc_28BC
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_28BC:
		add.w   d0,d0
		bcc.w   loc_262E
		bra.w   loc_26DC
loc_28C6:
		lea     (unk_FF0FFE).l,a0
		movea.l a0,a1
		move.w  #$8080,(a3)
		moveq   #$FFFFFFF0,d6
		move.w  (a1)+,d1
loc_28D6:
		bpl.s   loc_292A
		tst.b   d1
		bpl.s   loc_2906
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		beq.s   loc_2950
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
loc_28EC:
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_2906:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_292A:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.s   loc_28D6
		move.b  d4,(a0)+
		bra.s   loc_28EC
loc_2950:
		lea     (unk_FF0FFE).l,a3
		lea     (unk_FF3000).l,a1
		lsr.w   #1,d2
		move.w  d2,d7
		lsl.w   #5,d7
		clr.w   d4
		move.b  (byte_FF0FFD).l,d4
		lsr.w   #2,d4
		subq.w  #1,d4
		clr.w   d5
		move.b  (byte_FF0FFC).l,d5
		lsr.w   #2,d5
		subq.w  #1,d5
loc_297A:
		movea.l a3,a0
		move.w  d4,d6
loc_297E:
		lea     (a0),a2
		moveq   #7,d3
loc_2982:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_2982
		lea     4(a0),a2
		moveq   #7,d3
loc_299C:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_299C
		lea     8(a0),a2
		moveq   #7,d3
loc_29B6:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_29B6
		lea     $C(a0),a2
		moveq   #7,d3
loc_29D0:
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		move.l  (a2),(a1)+
		adda.w  d2,a2
		dbf     d3,loc_29D0
		adda.w  d7,a0
		dbf     d6,loc_297E
		lea     $10(a3),a3
		dbf     d5,loc_297A
		movem.l (sp)+,a4-a6
		rts

	; End of function DecompressGraphics


; =============== S U B R O U T I N E =======================================

sub_29F8:
		movem.l a4-a6,-(sp)
		move.b  #6,(byte_FF0FFC).l
		moveq   #$30,d2 
		move.b  #3,(byte_FF0FFD).l
		moveq   #$18,d1
		lea     (byte_FF0FFD).l,a2
		lea     $481(a2),a3
		moveq   #0,d3
		move.l  d3,d4
		move.l  d3,d5
		move.l  d3,d6
		move.l  d3,d0
		movea.l d3,a4
		movea.l d3,a5
		movea.l d3,a6
		movea.l a3,a1
		moveq   #8,d7
loc_2A2E:
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		movem.l d0/d3-d6/a4-a6,-(a1)
		dbf     d7,loc_2A2E
		moveq   #$FFFFFF80,d6
		moveq   #$F,d7
		clr.w   d3
loc_2A48:
		moveq   #$FFFFFFFF,d4
		moveq   #2,d5
loc_2A4C:
		dbf     d3,loc_2A54
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2A54:
		add.w   d0,d0
		dbcs    d4,loc_2A4C
		negx.w  d4
		lsl.w   d4,d5
		lea     -2(a2,d5.w),a2
		clr.w   d5
loc_2A64:
		dbf     d3,loc_2A6C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2A6C:
		add.w   d0,d0
		addx.w  d5,d5
		dbf     d4,loc_2A64
		adda.w  d5,a2
		cmpa.l  a3,a2
		bcc.w   loc_2CE0
		subq.w  #4,d3
		bcc.s   loc_2A9C
		addq.w  #4,d3
		rol.l   d3,d0
		move.w  (a0)+,d0
		subq.w  #4,d3
		neg.w   d3
		rol.l   d3,d0
		neg.w   d3
		addi.w  #$10,d3
		move.l  d0,d1
		swap    d1
		and.b   d7,d1
		or.b    d6,d1
		bra.s   loc_2AA4
loc_2A9C:
		rol.w   #4,d0
		move.b  d0,d1
		and.b   d7,d1
		or.b    d6,d1
loc_2AA4:
		move.b  d1,(a2)
		dbf     d3,loc_2AAE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AAE:
		add.w   d0,d0
		bcc.s   loc_2A48
		movea.l a2,a1
		subq.w  #3,d3
		bcs.s   loc_2ACA
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.s   loc_2A48
		bra.s   loc_2AF6
loc_2ACA:
		addq.w  #3,d3
		dbf     d3,loc_2AD4
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AD4:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2AE2
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AE2:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2AF0
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AF0:
		add.w   d0,d0
		bcc.w   loc_2A48
loc_2AF6:
		dbf     d3,loc_2AFE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2AFE:
		add.w   d0,d0
		bcs.w   loc_2BE8
		lea     -2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2B20
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.s   loc_2AF6
loc_2B20:
		addq.w  #3,d3
		dbf     d3,loc_2B2A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B2A:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2B38
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B38:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2B46
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B46:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2B50:
		move.l  a1,d5
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #2,d3
		bcs.s   loc_2B6E
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.s   loc_2AF6
loc_2B6E:
		addq.w  #3,d3
		dbf     d3,loc_2B78
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B78:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2B86
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B86:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2B94
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2B94:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2B9E:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #2,d3
		bcs.s   loc_2BB8
		add.w   d0,d0
		bcs.s   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2BB8:
		addq.w  #3,d3
		dbf     d3,loc_2BC2
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BC2:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2BD0
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BD0:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2BDE
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2BDE:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2BE8:
		lea     2(a1,d2.w),a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2C06
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.s   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C06:
		addq.w  #3,d3
		dbf     d3,loc_2C10
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C10:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2C1E
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C1E:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2C2C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C2C:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C36:
		move.l  a1,d5
		dbf     d3,loc_2C40
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C40:
		add.w   d0,d0
		addx.w  d2,d5
		movea.l d5,a1
		move.b  d1,(a1)
		subq.w  #3,d3
		bcs.s   loc_2C62
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C62:
		addq.w  #3,d3
		dbf     d3,loc_2C6C
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C6C:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2C7A
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C7A:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2C88
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2C88:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2C92:
		adda.w  d2,a1
		move.b  d1,-(a1)
		subq.w  #3,d3
		bcs.s   loc_2CB0
		add.w   d0,d0
		bcs.w   loc_2B50
		add.w   d0,d0
		bcs.w   loc_2B9E
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2CB0:
		addq.w  #3,d3
		dbf     d3,loc_2CBA
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CBA:
		add.w   d0,d0
		bcs.w   loc_2C36
		dbf     d3,loc_2CC8
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CC8:
		add.w   d0,d0
		bcs.w   loc_2C92
		dbf     d3,loc_2CD6
		moveq   #$F,d3
		move.w  (a0)+,d0
loc_2CD6:
		add.w   d0,d0
		bcc.w   loc_2A48
		bra.w   loc_2AF6
loc_2CE0:
		lea     (unk_FF3000).l,a0
		lea     (unk_FF0FFE).l,a1
		move.w  #$8080,(a3)
		moveq   #$FFFFFFF0,d6
		moveq   #5,d5
		move.w  (a1)+,d1
loc_2CF6:
		bpl.w   loc_2D7E
		tst.b   d1
		bpl.s   loc_2D42
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		beq.w   loc_2F6C
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
loc_2D10:
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2D36
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2D36:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2D42:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2D72
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2D72:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2D7E:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2DBC
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2DB0
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2DB0:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2DBC:
		bpl.s   loc_2E2E
		tst.b   d1
		bpl.s   loc_2DFA
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2DEE
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2DEE:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2DFA:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E22
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E22:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E2E:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2E64
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E58
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E58:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E64:
		bpl.s   loc_2EC6
		tst.b   d1
		bpl.s   loc_2E9A
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2E8E
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2E8E:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2E9A:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2EBA
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2EBA:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2EC6:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		move.w  (a1)+,d1
		bne.w   loc_2EF4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2EE8
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2EE8:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2EF4:
		bpl.s   loc_2F46
		tst.b   d1
		bpl.s   loc_2F22
		and.b   d7,d1
		move.b  d1,d4
		lsr.w   #4,d1
		or.b    d4,d1
		move.b  d1,(a0)+
		lsl.b   #4,d1
		or.b    d1,d4
		lea     $5C(a0),a0
		dbf     d5,loc_2F16
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F16:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F22:
		lsr.w   #4,d1
		move.b  d1,d4
		lsr.b   #4,d4
		or.b    d1,d4
		move.b  d4,(a0)+
		lea     $5C(a0),a0
		dbf     d5,loc_2F3A
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F3A:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F46:
		and.b   d6,d4
		and.b   d7,d1
		or.b    d1,d4
		move.b  d4,(a0)+
		lsl.b   #4,d4
		or.b    d1,d4
		lea     $5C(a0),a0
		dbf     d5,loc_2F60
		lea     -$23C(a0),a0
		moveq   #5,d5
loc_2F60:
		move.w  (a1)+,d1
		bne.w   loc_2CF6
		move.b  d4,(a0)+
		bra.w   loc_2D10
loc_2F6C:
		movem.l (sp)+,a4-a6
		rts

	; End of function sub_29F8


; =============== S U B R O U T I N E =======================================

Trap1_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_2FFA
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap1_


; =============== S U B R O U T I N E =======================================

Trap2_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_300A
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap2_


; =============== S U B R O U T I N E =======================================

Trap3_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_3018
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap3_


; =============== S U B R O U T I N E =======================================

Trap4_:
		move.l  a0,(dword_FFCB7A).l
		movea.l (sp)+,a0
		movem.w d0-d1,-(sp)
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		bsr.s   sub_3028
		movem.w (sp)+,d0-d1
		movem.l a0,-(sp)
		movea.l (dword_FFCB7A).l,a0
		rte

	; End of function Trap4_


; =============== S U B R O U T I N E =======================================

sub_2FFA:
		movem.l d0/a0,-(sp)
		bsr.s   sub_3046
		move.b  (a0),d2
		and.b   d1,d2
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_2FFA


; =============== S U B R O U T I N E =======================================

sub_300A:
		movem.l d0/a0,-(sp)
		bsr.s   sub_3046
		or.b    d1,(a0)
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_300A


; =============== S U B R O U T I N E =======================================

sub_3018:
		movem.l d0/a0,-(sp)
		bsr.s   sub_3046
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0/a0
		rts

	; End of function sub_3018


; =============== S U B R O U T I N E =======================================

sub_3028:
		movem.l d0/d2/a0,-(sp)
		bsr.s   sub_3046
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

sub_3046:
		lea     (unk_FF9C4E).l,a0
		andi.w  #$FF,d0
		adda.w  d0,a0
		rts

	; End of function sub_3046


; =============== S U B R O U T I N E =======================================

sub_3054:
		movem.l d0-d1/a0,-(sp)
		bsr.s   sub_3082
		or.b    d1,(a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_3054


; =============== S U B R O U T I N E =======================================

sub_3062:
		movem.l d0-d1/a0,-(sp)
		bsr.s   sub_3082
		not.b   d1
		and.b   d1,(a0)
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function sub_3062


; =============== S U B R O U T I N E =======================================

GetEventFlag:
		movem.l d0-d1/a0,-(sp)
		bsr.s   sub_3082
		move.b  (a0),d0
		and.b   d1,d0
		movem.l (sp)+,d0-d1/a0
		rts

	; End of function GetEventFlag


; =============== S U B R O U T I N E =======================================

sub_3082:
		lea     (unk_FF9C4E).l,a0
		move.w  d0,d1
		lsr.w   #3,d0
		adda.w  d0,a0
		move.w  d1,d0
		andi.b  #7,d0
		moveq   #1,d1
		lsl.b   d0,d1
		rts

	; End of function sub_3082


; START OF FUNCTION CHUNK FOR Initialize

loc_309A:
		jsr     sub_CC004
		bsr.w   sub_C36
		bsr.w   sub_E66
		bsr.w   sub_C44
		cmpi.b  #$F0,(byte_FF0E98).l
		bne.s   loc_30BC
		move.b  #1,((unk_FFC1CB-$1000000)).w
loc_30BC:
		jsr     sub_164000
		jsr     loc_130004
		bsr.w   sub_3380
		jsr     sub_BC000
		tst.b   ((unk_FFC1CA-$1000000)).w
		beq.s   loc_30FC
		btst    #6,(byte_FF0E97).l
		bne.w   loc_4F00
		btst    #4,(byte_FF0E97).l
		bne.w   loc_4D9A
		btst    #5,(byte_FF0E97).l
		bne.w   loc_327E
loc_30FC:
		move.b  #$FF,((unk_FFC140-$1000000)).w
		moveq   #$26,d0 
		bsr.w   GetEventFlag
		bne.s   loc_3110
		jsr     (sub_3A44).l
loc_3110:
		bsr.w   sub_312A
		moveq   #$25,d0 
		bsr.w   GetEventFlag
		beq.s   loc_3124
		jsr     (sub_3D80).l
		bra.s   loc_30FC
loc_3124:
		bsr.w   sub_3F0E
		bra.s   loc_30FC

; END OF FUNCTION CHUNK FOR Initialize


; =============== S U B R O U T I N E =======================================

sub_312A:
		clr.l   (dword_FF0EF6).l
		moveq   #$24,d0 
		bsr.w   GetEventFlag
		bne.w   loc_31C2
loc_313A:
		moveq   #$27,d0 
		bsr.w   GetEventFlag
		beq.s   loc_314E
		bsr.w   sub_3062
		jsr     sub_8004
		bra.s   loc_3154
loc_314E:
		jsr     sub_8000
loc_3154:
		bpl.s   return_31C0
		cmpi.b  #$FF,d0
		bne.s   loc_3174
		jsr     sub_2034C
		lsr.l   #1,d1
		jsr     sub_20350
		clr.w   d0
		clr.w   d1
		jsr     sub_20158
loc_3174:
		jsr     sub_20388
		jsr     sub_2038C
		jsr     sub_20348
		jsr     sub_20014
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		move.b  ((unk_FF9C4C-$1000000)).w,((byte_FF9C01-$1000000)).w
		move.b  #2,((byte_FF9C02-$1000000)).w
		bsr.w   sub_4C0E
		move.b  #2,((byte_FF9C02-$1000000)).w
		move.w  d0,-(sp)
		moveq   #$24,d0 
		bsr.w   sub_3054
		move.w  (sp)+,d0
		bra.s   loc_31F6
return_31C0:
		rts
loc_31C2:
		move.b  ((byte_FF9C01-$1000000)).w,((unk_FF9C4C-$1000000)).w
		jsr     sub_20348
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		bsr.w   sub_4C0E
		move.w  d0,-(sp)
		moveq   #$27,d0 
		bsr.w   GetEventFlag
		beq.s   loc_31F4
		move.b  #2,((byte_FF9C02-$1000000)).w
loc_31F4:
		move.w  (sp)+,d0
loc_31F6:
		move.w  d0,-(sp)
		jsr     sub_20014
		move.w  (sp)+,d0
		move.b  #1,(byte_FF0F03).l
		move.w  d0,-(sp)
		clr.l   (dword_FF0100).l
		bsr.w   sub_27C
		bsr.w   sub_260
		move.w  (sp)+,d0
		jsr     sub_10000
		bsr.w   sub_22C
		clr.l   (dword_FF0EF6).l
		bsr.w   sub_240
		moveq   #$25,d0 
		bsr.w   GetEventFlag
		bne.w   return_327C
		cmpi.b  #1,((byte_FF9C02-$1000000)).w
		bne.s   return_327C
		move.b  ((byte_FFF807-$1000000)).w,d0
		move.b  ((byte_FF9C01-$1000000)).w,d1
		move.b  ((byte_FF9C03-$1000000)).w,d2
		clr.b   ((byte_FF9C02-$1000000)).w
		movem.w d0-d2,-(sp)
		clr.l   (dword_FF0EF6).l
		jsr     (sub_340).l
		clr.l   (dword_FF0EF6).l
		movem.w (sp)+,d0-d2
		move.b  d1,((byte_FF9C01-$1000000)).w
		move.b  d2,((byte_FF9C03-$1000000)).w
		move.b  #1,((byte_FF9C02-$1000000)).w
		bra.w   loc_31F6
return_327C:
		rts

	; End of function sub_312A


; START OF FUNCTION CHUNK FOR Initialize

loc_327E:
		jmp     loc_10038

; END OF FUNCTION CHUNK FOR Initialize


; =============== S U B R O U T I N E =======================================

sub_3284:
		clr.l   (dword_FF0EF6).l
		moveq   #$78,d0 
		bsr.w   sub_244
		trap    #0
		dc.w $4884
		moveq   #$3C,d0 
		bsr.w   sub_244
		bsr.w   sub_3852
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     loc_164014
		jsr     (sub_304).l
		move.w  #$45,((word_FFC0BE-$1000000)).w 
		move.w  #$3B,d0 
		trap    #8
		move.w  #$3C,d0 
		trap    #8
		trap    #6
		jsr     loc_164018
		bsr.w   sub_38E4
		move.w  #$E10,d0
		bsr.w   sub_244
		bsr.w   sub_22C
		bsr.w   sub_214
		movea.w #$2700,sp
		movea.l (INIT_STACK).w,sp
		movea.l (START_ADDRESS).w,a0
		jmp     (a0)

	; End of function sub_3284


; =============== S U B R O U T I N E =======================================

sub_32EC:
		clr.l   (dword_FF0EF6).l
		moveq   #$78,d0 
		bsr.w   sub_244
		trap    #0
		dc.w $4884
		moveq   #$3C,d0 
		bsr.w   sub_244
		bsr.w   sub_3852
		move.b  #1,((unk_FF9C05-$1000000)).w
		jsr     (sub_304).l
		move.w  #$45,((word_FFC0BE-$1000000)).w 
		move.w  #$3E,d0 
		trap    #8
		trap    #7
		move.w  #$3F,d0 
		trap    #8
		trap    #7
		move.w  #$40,d0 
		trap    #8
		trap    #7
		move.w  #$41,d0 
		trap    #8
		jsr     loc_164014
		trap    #7
		move.w  #$42,d0 
		trap    #8
		trap    #7
		move.w  #$43,d0 
		trap    #8
		trap    #7
		move.w  #$44,d0 
		trap    #8
		trap    #7
		move.w  #$45,d0 
		trap    #8
		trap    #6
		moveq   #$3C,d0 
		bsr.w   sub_244
		trap    #0
		dc.w $FD
		move.w  #$12C,d0
		bsr.w   sub_244
		trap    #0
		dc.w $26
		bsr.w   sub_22C
		clr.l   (dword_FF0EF6).l
		rts

	; End of function sub_32EC


; =============== S U B R O U T I N E =======================================

sub_3380:
		bsr.w   sub_3852
		tst.b   ((unk_FFC1CB-$1000000)).w
		beq.s   loc_339E
		cmpi.b  #1,(byte_FF0E98).l
		bne.s   loc_339E
		move.b  #1,((unk_FFC1CA-$1000000)).w
		trap    #0
		dc.w $43
loc_339E:
		move.w  #$45,((word_FFC0BE-$1000000)).w 
		bsr.w   sub_3660
		trap    #0
		dc.w 5
		tst.b   ((unk_FFC1CA-$1000000)).w
		beq.s   loc_33CA
		btst    #7,(byte_FF0E97).l
		beq.s   loc_33CA
		addq.b  #1,((unk_FFB53D-$1000000)).w
		jsr     sub_20000
		bra.w   loc_34B8
loc_33CA:
		jsr     (sub_304).l
		clr.b   ((unk_FF9C05-$1000000)).w
		tst.b   (byte_FF0E97).l
		bne.s   loc_33EE
		move.w  #$27,d0 
		trap    #8
		move.b  #2,((unk_FF9C05-$1000000)).w
		move.w  #$28,d0 
		trap    #8
loc_33EE:
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     loc_164014
		tst.b   (byte_FF0E97).l
		bne.s   loc_340E
		move.w  #$29,d0 
		trap    #8
		move.w  #$2A,d0 
		trap    #8
loc_340E:
		move.w  #$2B,d0 
		trap    #8
		bra.s   loc_3422
loc_3416:
		jsr     loc_164014
		move.w  #$39,d0 
		trap    #8
loc_3422:
		clr.w   d0
		jsr     sub_164008
		move.w  d0,-(sp)
		move.w  (sp)+,d0
		bmi.s   loc_3416
		add.w   d0,d0
		move.w  off_343A(pc,d0.w),d0
		jmp     off_343A(pc,d0.w)

	; End of function sub_3380

off_343A:       dc.w sub_3442-off_343A
		dc.w sub_34EC-off_343A
		dc.w sub_3542-off_343A
		dc.w loc_35AA-off_343A

; =============== S U B R O U T I N E =======================================

sub_3442:
		jsr     (sub_328).l
		move.w  #$3D,d0 
		trap    #8
		moveq   #1,d0
		jsr     sub_164008
		bmi.w   loc_3628
		move.b  #2,((unk_FF9C05-$1000000)).w
		move.w  d0,((unk_FFC0B8-$1000000)).w
		jsr     (sub_328).l
		move.w  #$2C,d0 
		trap    #8
		jsr     (sub_30C).l
		jsr     sub_20000
		clr.w   d0
		jsr     sub_164004
		cmpi.b  #$F0,(byte_FF0E98).l
		bne.s   loc_34A6
		moveq   #1,d0
		moveq   #$1B,d7
loc_3492:
		movem.w d0/d7,-(sp)
		jsr     sub_164004
		movem.w (sp)+,d0/d7
		addq.w  #1,d0
		dbf     d7,loc_3492
loc_34A6:
		jsr     (sub_304).l
		move.w  #$2D,d0 
		trap    #8
		move.w  #$2E,d0 
		trap    #8
loc_34B8:
		move.b  #1,((byte_FF9C00-$1000000)).w
		jsr     sub_37EE(pc)
		nop
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(byte_20022D).l
		bset    d0,(byte_20022F).l
		clr.l   (dword_FF0EF6).l
		clr.b   ((unk_FFB5AC-$1000000)).w
		trap    #0
		dc.w $FD
		bsr.w   sub_22C
		clr.w   d0
		rts

	; End of function sub_3442


; =============== S U B R O U T I N E =======================================

sub_34EC:
		jsr     (sub_328).l
		move.w  #$2F,d0 
		trap    #8
		jsr     (sub_328).l
		move.w  #$30,d0 
		trap    #8
		moveq   #2,d0
		jsr     sub_164008
		bmi.w   loc_3628
		move.w  d0,((unk_FFC0B8-$1000000)).w
		jsr     sub_3826(pc)
		nop
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$31,d0 
		trap    #8
		clr.l   (dword_FF0EF6).l
		clr.b   ((unk_FFB5AC-$1000000)).w
		trap    #0
		dc.w $FD
		bsr.w   sub_22C
		moveq   #$FFFFFFFF,d0
		rts

	; End of function sub_34EC


; =============== S U B R O U T I N E =======================================

sub_3542:
		jsr     (sub_328).l
		move.w  #$32,d0 
		trap    #8
		moveq   #2,d0
		jsr     sub_164008
		bmi.w   loc_3416
		movem.w d0,-(sp)
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$33,d0 
		trap    #8
		jsr     (sub_334).l
		tst.w   d0
		movem.w (sp)+,d0
		bmi.w   loc_3628
		move.w  d0,((unk_FFC0B8-$1000000)).w
		jsr     (sub_328).l
		bsr.w   sub_3652
		move.w  #$34,d0 
		trap    #8
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		addq.w  #1,d0
		bclr    d0,(byte_20022D).l
		bclr    d0,(byte_20022F).l
		bra.w   loc_3416
loc_35AA:
		jsr     (sub_328).l
		move.w  #$35,d0 
		trap    #8
		moveq   #2,d0
		jsr     sub_164008
		bmi.w   loc_3628
		movem.w d0,-(sp)
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$36,d0 
		trap    #8
		moveq   #1,d0
		jsr     sub_164008
		movem.w (sp)+,d1
		bmi.w   loc_3628
		move.w  d0,-(sp)
		move.w  d1,((unk_FFC0B8-$1000000)).w
		bsr.w   sub_3826
		move.w  (sp)+,d0
		move.w  d0,((unk_FFC0B8-$1000000)).w
		bsr.w   loc_37F4
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		addq.w  #1,d0
		bset    d0,(byte_20022D).l
		bset    d0,(byte_20022F).l
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		bsr.w   sub_3652
		move.w  #$37,d0 
		trap    #8
		bra.w   loc_3416
loc_3628:
		move.b  #2,((unk_FF9C05-$1000000)).w
		jsr     (sub_328).l
		move.w  #$38,d0 
		trap    #8
		bra.w   loc_3416
		jsr     (sub_304).l
		move.w  #$3A,d0 
		trap    #8
		move.w  #$3B,d0 
		trap    #8
		rts

	; End of function sub_3542


; =============== S U B R O U T I N E =======================================

sub_3652:
		jsr     loc_164018
		moveq   #$14,d0
		jsr     (sub_E80).l

	; End of function sub_3652


; =============== S U B R O U T I N E =======================================

sub_3660:
		lea     (unk_FF0FFE).l,a0
		lea     (SRAM_STRING).l,a1
		moveq   #$15,d7
		bsr.w   sub_37D6
		bne.w   loc_378A
		lea     (unk_FF0FFE).l,a0
		lea     aYasuhirohiroko(pc), a1
		moveq   #$14,d7
loc_3682:
		cmpm.b  (a0)+,(a1)+
		bne.w   loc_378A
		dbf     d7,loc_3682
		move.b  (byte_20022D).l,d0
		cmp.b   (byte_20022F).l,d0
		bne.w   loc_378A
		btst    #1,(byte_20022D).l
		beq.s   loc_36DA
		lea     (unk_FF0FFE).l,a0
		lea     (unk_200231).l,a1
		move.w  #$8B6,d7
		bsr.w   sub_37D6
		beq.s   loc_36DA
		move.l  #1,((dword_FFF900-$1000000)).w
		bsr.w   sub_3758
		bclr    #1,(byte_20022D).l
		move.b  (byte_20022D).l,(byte_20022F).l
loc_36DA:
		btst    #2,(byte_20022D).l
		beq.s   loc_3718
		lea     (unk_FF0FFE).l,a0
		lea     (unk_201429).l,a1
		move.w  #$8B6,d7
		bsr.w   sub_37D6
		beq.s   loc_3718
		move.l  #2,((dword_FFF900-$1000000)).w
		bsr.w   sub_3758
		bclr    #2,(byte_20022D).l
		move.b  (byte_20022D).l,(byte_20022F).l
loc_3718:
		btst    #3,(byte_20022D).l
		beq.s   return_3756
		lea     (unk_FF0FFE).l,a0
		lea     (unk_202621).l,a1
		move.w  #$8B6,d7
		bsr.w   sub_37D6
		beq.s   return_3756
		move.l  #3,((dword_FFF900-$1000000)).w
		bsr.w   sub_3758
		bclr    #3,(byte_20022D).l
		move.b  (byte_20022D).l,(byte_20022F).l
return_3756:
		rts

	; End of function sub_3660


; =============== S U B R O U T I N E =======================================

sub_3758:
		jsr     (sub_304).l
		trap    #0
		dc.w 2
		move.w  #$3A,d0 
		trap    #8
		bsr.w   sub_2DC
		jsr     (sub_30C).l
		rts

	; End of function sub_3758

aYasuhirohiroko:dc.b 'YASUHIROHIROKOinSERA ',0

; START OF FUNCTION CHUNK FOR sub_3660

loc_378A:
		clr.b   (byte_203819).l
		lea     (word_FF5000).l,a0
		lea     (SRAM_START).l,a1
		move.w  #$1FFE,d7
		bsr.w   sub_37B6
		lea     aYasuhirohiroko(pc), a0
		lea     (SRAM_STRING).l,a1
		moveq   #$15,d7
		bsr.w   sub_37B6
		moveq   #1,d7

; END OF FUNCTION CHUNK FOR sub_3660


; =============== S U B R O U T I N E =======================================

sub_37B6:
		tst.b   ((unk_FFB53D-$1000000)).w
		bne.w   return_37D4
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
loc_37C4:
		move.b  (a0)+,d1
		add.w   d1,d0
		move.b  d1,(a1)
		addq.l  #2,a1
		dbf     d7,loc_37C4
		move.b  d0,(a1)
		addq.l  #2,a1
return_37D4:
		rts

	; End of function sub_37B6


; =============== S U B R O U T I N E =======================================

sub_37D6:
		clr.w   d0
		clr.w   d1
		subq.w  #1,d7
loc_37DC:
		move.b  (a1),d1
		add.w   d1,d0
		move.b  d1,(a0)+
		addq.l  #2,a1
		dbf     d7,loc_37DC
		cmp.b   (a1),d0
		addq.l  #2,a1
		rts

	; End of function sub_37D6


; =============== S U B R O U T I N E =======================================

sub_37EE:
		jsr     sub_20024
loc_37F4:
		moveq   #$27,d0 
		bsr.w   sub_3054
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		bne.s   loc_3808
loc_3800:
		lea     (unk_200231).l,a1
		bra.s   loc_381C
loc_3808:
		cmpi.w  #1,d0
		bne.s   loc_3816
		lea     (unk_201429).l,a1
		bra.s   loc_381C
loc_3816:
		lea     (unk_202621).l,a1
loc_381C:
		move.w  #$8B6,d7
		lea     ((byte_FF9C00-$1000000)).w,a0
		bra.s   sub_37B6

	; End of function sub_37EE


; =============== S U B R O U T I N E =======================================

sub_3826:
		move.w  ((unk_FFC0B8-$1000000)).w,d0
		bne.s   loc_3834
		lea     (unk_200231).l,a1
		bra.s   loc_3848
loc_3834:
		cmpi.w  #1,d0
		bne.s   loc_3842
		lea     (unk_201429).l,a1
		bra.s   loc_3848
loc_3842:
		lea     (unk_202621).l,a1
loc_3848:
		move.w  #$8B6,d7
		lea     ((byte_FF9C00-$1000000)).w,a0
		bra.s   sub_37D6

	; End of function sub_3826


; =============== S U B R O U T I N E =======================================

sub_3852:
		clr.l   (dword_FF0EF6).l
		bsr.w   sub_214
		bsr.w   sub_230
		move.w  #$8C00,d0
		bsr.w   sub_2A8
		move.w  #$9001,d0
		bsr.w   sub_2A8
		move.w  #$8230,d0
		bsr.w   sub_2A8
		move.w  #$8407,d0
		bsr.w   sub_2A8
		move.w  #$8B00,d0
		bsr.w   sub_2A8
		jsr     sub_16400C
		bsr.w   sub_210
		movem.l d7-a1,-(sp)
		lea     plt_BasePalettes(pc), a0
		lea     (dword_FF0080).l,a1
		move.w  #$80,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		clr.l   (dword_FF0100).l
		clr.l   (dword_FF0500).l
		bsr.w   sub_27C
		bsr.w   sub_288
		bsr.w   sub_228
		move.w  #$14,((unk_FFB56A-$1000000)).w
		move.w  #$14,((unk_FFB58A-$1000000)).w
		move.b  #1,((unk_FFB5AC-$1000000)).w
		move.l  #loc_164010,(dword_FF0EF6).l
		rts

	; End of function sub_3852


; =============== S U B R O U T I N E =======================================

sub_38E4:
		move.w  #$3C,d0 
		jsr     (sub_244).l
		movea.l (off_BC004).l,a0
		lea     (loc_A000).l,a1
		move.w  #$1000,d0
		moveq   #2,d1
		bsr.w   sub_298
		bsr.w   sub_260
		move.b  #2,(byte_FF0EBC).l
		move.b  #1,(byte_FF0EB7).l
		clr.b   (byte_FF0EBA).l
		move.b  (byte_FF0EB9).l,(byte_FF0EBB).l
		moveq   #3,d0
		bsr.w   sub_244
		lea     unk_39CC(pc), a0
		move.w  #$C05,d0
		move.w  #$1215,d1
		jsr     sub_801C
		jsr     sub_8054
		moveq   #$3C,d0 
		bra.w   sub_244

	; End of function sub_38E4

plt_BasePalettes:
		dc.w 0
		dc.w $EEE
		dc.w $6AE
		dc.w $46A
		dc.w $24
		dc.w 2
		dc.w $C26
		dc.w $602
		dc.w $ACE
		dc.w $28
		dc.w $EEE
		dc.w $644
		dc.w $CAA
		dc.w $E6A
		dc.w $248
		dc.w $68C
		dc.w $666
		dc.w $EEE
		dc.w $CEE
		dc.w $ACE
		dc.w $8AC
		dc.w $68A
		dc.w $468
		dc.w $246
		dc.w $24
		dc.w 2
		dc.w $8EE
		dc.w $2EE
		dc.w $AE
		dc.w 0
		dc.w $6C
		dc.w $28
		dc.w $222
		dc.w $EEE
		dc.w $888
		dc.w $444
		dc.w $260
		dc.w $6C0
		dc.w $C68
		dc.w $48E
		dc.w $ACE
		dc.w $84E
		dc.w $A
		dc.w $4AE
		dc.w $48
		dc.w $820
		dc.w 0
		dc.w $24
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $EEE
		dc.w 0
		dc.w 0
unk_39CC:       dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   1
		dc.b $A5 
		dc.b   2
		dc.b $A5 
		dc.b   3
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   4
		dc.b $A5 
		dc.b   5
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   6
		dc.b $A5 
		dc.b   7
		dc.b $A5 
		dc.b   8
		dc.b $A5 
		dc.b   9
		dc.b $A5 
		dc.b  $A
		dc.b $A5 
		dc.b  $B
		dc.b $A5 
		dc.b  $C
		dc.b $A5 
		dc.b  $D
		dc.b $A5 
		dc.b  $E
		dc.b $A5 
		dc.b  $F
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b $10
		dc.b $A5 
		dc.b $11
		dc.b $A5 
		dc.b $12
		dc.b $A5 
		dc.b $13
		dc.b $A5 
		dc.b $14
		dc.b $A5 
		dc.b $15
		dc.b $A5 
		dc.b $16
		dc.b $A5 
		dc.b $17
		dc.b $A5 
		dc.b $18
		dc.b $A5 
		dc.b $19
		dc.b $A5 
		dc.b $1A
		dc.b $A5 
		dc.b $1B
		dc.b $A5 
		dc.b $1C
		dc.b $A5 
		dc.b $1D
		dc.b $A5 
		dc.b $1E
		dc.b $A5 
		dc.b $1F
		dc.b $A5 
		dc.b $20
		dc.b $A5 
		dc.b $21 
		dc.b $A5 
		dc.b $22 
		dc.b $A5 
		dc.b $23 
		dc.b $A5 
		dc.b $24 
		dc.b $A5 
		dc.b $25 
		dc.b $A5 
		dc.b $26 
		dc.b $A5 
		dc.b $27 
		dc.b $A5 
		dc.b $28 
		dc.b $A5 
		dc.b $29 
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b   0
		dc.b $A5 
		dc.b $2A 
		dc.b $A5 
		dc.b $2B 
		dc.b $A5 
		dc.b $2C 

; =============== S U B R O U T I N E =======================================

sub_3A44:
		jsr     (sub_214).l
		jsr     (sub_230).l
		lea     (off_C0068).l,a0
		clr.w   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     (unk_2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		jsr     (sub_294).l
		jsr     (sub_210).l
		movea.l (off_C0064).l,a0
		lea     (dword_FF0080).l,a1
		move.w  #$20,d7 
		jsr     (sub_2FC).l
		lea     word_49EE(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (sub_228).l
		move.w  #$B4,d0 
		jsr     (sub_244).l
		jsr     (sub_22C).l
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		cmpi.b  #1,((byte_FF9C00-$1000000)).w
		bne.s   loc_3AE0
		trap    #0
		dc.w 3
		bra.s   loc_3AE4
loc_3AE0:
		trap    #0
		dc.w 7
loc_3AE4:
		moveq   #$26,d0 
		bsr.w   sub_3054
		clr.w   ((word_FFC0BE-$1000000)).w
		move.b  #$FF,((unk_FF9C4D-$1000000)).w
		clr.w   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_3B06(pc,d0.w),d0
		jmp     off_3B06(pc,d0.w)

	; End of function sub_3A44

off_3B06:       dc.w sub_3B16-off_3B06
		dc.w sub_3B8E-off_3B06
		dc.w sub_3BD2-off_3B06
		dc.w sub_3C18-off_3B06
		dc.w sub_3C5E-off_3B06
		dc.w sub_3CAA-off_3B06
		dc.w sub_3CF2-off_3B06
		dc.w sub_3D3A-off_3B06

; =============== S U B R O U T I N E =======================================

sub_3B16:
		trap    #5
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$4A,((word_FFC0BE-$1000000)).w 
		move.w  #$30C,d0
		trap    #8
		trap    #7
		trap    #0
		dc.w $5E
		moveq   #$14,d0
		jsr     (sub_244).l
		trap    #0
		dc.w $5E
		moveq   #$28,d0 
		jsr     (sub_244).l
		trap    #0
		dc.w $5A
		moveq   #$1E,d0
		jsr     (sub_244).l
		trap    #0
		dc.w $4E
		move.w  #$30D,d0
		trap    #8
		jsr     (sub_22C).l
		move.b  #3,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3054
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #$80,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3B16


; =============== S U B R O U T I N E =======================================

sub_3B8E:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$15D,d0
		trap    #8
		jsr     (sub_22C).l
		clr.b   ((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #$C0,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3B8E


; =============== S U B R O U T I N E =======================================

sub_3BD2:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$15E,d0
		trap    #8
		jsr     (sub_22C).l
		move.b  #3,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3054
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #$80,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3BD2


; =============== S U B R O U T I N E =======================================

sub_3C18:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$15F,d0
		trap    #8
		jsr     (sub_22C).l
		move.b  #6,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3054
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3C18


; =============== S U B R O U T I N E =======================================

sub_3C5E:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$160,d0
		trap    #8
		jsr     (sub_22C).l
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #2,((unk_FF9C86-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #0,((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3C5E


; =============== S U B R O U T I N E =======================================

sub_3CAA:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$161,d0
		trap    #8
		jsr     (sub_22C).l
		move.b  #4,((byte_FF9C01-$1000000)).w
		move.b  #3,((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3054
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3CAA


; =============== S U B R O U T I N E =======================================

sub_3CF2:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$162,d0
		trap    #8
		jsr     (sub_22C).l
		move.b  #4,((byte_FF9C01-$1000000)).w
		move.b  #4,((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3054
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #0,((byte_FF9C88-$1000000)).w
		rts

	; End of function sub_3CF2


; =============== S U B R O U T I N E =======================================

sub_3D3A:
		jsr     (sub_304).l
		jsr     (sub_228).l
		clr.l   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		move.l  d0,((dword_FFF900-$1000000)).w
		move.w  #$163,d0
		trap    #8
		jsr     (sub_22C).l
		move.b  #2,((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$27,d0 
		bsr.w   sub_3062
		move.w  #$C0,((byte_FF9C88-$1000000)).w 
		rts

	; End of function sub_3D3A


; =============== S U B R O U T I N E =======================================

sub_3D80:
		clr.w   ((word_FFC0BE-$1000000)).w
		move.b  ((byte_FF9C00-$1000000)).w,d0
		cmpi.b  #2,d0
		bne.s   loc_3DBC
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		jsr     (sub_304).l
		jsr     (sub_228).l
		move.w  #$165,d0
		trap    #8
		jsr     (sub_22C).l
		bra.w   loc_3DEC
loc_3DBC:
		cmpi.b  #7,d0
		bne.s   loc_3DEC
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		jsr     (sub_304).l
		jsr     (sub_228).l
		move.w  #$16A,d0
		trap    #8
		jsr     (sub_22C).l
loc_3DEC:
		trap    #0
		dc.w $FD
		moveq   #$5A,d0 
		bsr.w   sub_244
		bsr.w   sub_214
		bsr.w   sub_230
		lea     (off_C0068).l,a0
		clr.w   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		subq.w  #1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		lea     (unk_2000).w,a1
		move.w  #$1000,d0
		move.w  #2,d1
		bsr.w   sub_294
		movea.l (off_124074).l,a0
		lea     ((loc_3FFE+2)).w,a1
		move.w  #$100,d0
		move.w  #2,d1
		bsr.w   sub_294
		trap    #0
		dc.w $14
		jsr     (sub_210).l
		movea.l (off_C0064).l,a0
		lea     (dword_FF0080).l,a1
		move.w  #$20,d7 
		jsr     (sub_2FC).l
		lea     unk_4BEE(pc), a0
		move.w  #$404,d0
		move.w  #$E0F,d1
		jsr     sub_801C
		lea     word_49EE(pc), a0
		move.w  #$2008,d0
		move.w  #6,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (sub_228).l
		clr.w   d0
		bsr.w   sub_2E4
		move.w  #$3C,d0 
		jsr     (sub_244).l
		jsr     (sub_22C).l
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		jsr     (sub_304).l
		addq.b  #1,((byte_FF9C00-$1000000)).w
		move.b  ((byte_FF9C00-$1000000)).w,d0
		cmpi.b  #8,d0
		ble.w   loc_3EC8
		rts

	; End of function sub_3D80


; START OF FUNCTION CHUNK FOR sub_3D80

loc_3EC8:
		clr.l   d0
		lea     ((unk_FF9C4E-$1000000)).w,a0
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.w   (a0)+
		lea     ((unk_FF9C6E-$1000000)).w,a0
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		clr.w   (a0)+
		trap    #0

; END OF FUNCTION CHUNK FOR sub_3D80

		dc.w 5
		jsr     (sub_228).l
		move.w  #$46,d0 
		trap    #8
		jsr     (sub_334).l
		bne.s   loc_3F02
		jsr     (sub_32C).l
loc_3F02:       trap    #0
		dc.w $FD
		jsr     (sub_22C).l
		rts

; =============== S U B R O U T I N E =======================================

sub_3F0E:
		move.b  #$FF,((unk_FF9C4D-$1000000)).w
		clr.w   d0
		move.b  ((byte_FF9C00-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_3F26(pc,d0.w),d0
		jmp     off_3F26(pc,d0.w)

	; End of function sub_3F0E

off_3F26:       dc.w sub_3F36-off_3F26
		dc.w sub_4066-off_3F26
		dc.w sub_41D6-off_3F26
		dc.w sub_42D4-off_3F26
		dc.w sub_448A-off_3F26
		dc.w sub_45CC-off_3F26
		dc.w sub_46E4-off_3F26
		dc.w sub_4814-off_3F26

; =============== S U B R O U T I N E =======================================

sub_3F36:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_3F4C(pc,d0.w),d0
		jmp     off_3F4C(pc,d0.w)

	; End of function sub_3F36

off_3F4C:       dc.w sub_3F5A-off_3F4C
		dc.w sub_3FB6-off_3F4C
		dc.w sub_4012-off_3F4C
		dc.w sub_401A-off_3F4C
		dc.w loc_4032-off_3F4C
		dc.w loc_403A-off_3F4C
		dc.w sub_3F5A-off_3F4C

; =============== S U B R O U T I N E =======================================

sub_3F5A:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_3F6E(pc,d0.w),d0
		jmp     off_3F6E(pc,d0.w)

	; End of function sub_3F5A

off_3F6E:       dc.w sub_3F76-off_3F6E
		dc.w sub_3F7E-off_3F6E
		dc.w sub_3FA6-off_3F6E
		dc.w sub_3FAE-off_3F6E

; =============== S U B R O U T I N E =======================================

sub_3F76:
		move.b  #3,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_3F76


; =============== S U B R O U T I N E =======================================

sub_3F7E:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #1,((byte_FF9C01-$1000000)).w
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		bne.s   loc_3F9E
		move.b  #3,((unk_FF9C4C-$1000000)).w
		clr.b   ((byte_FF9C03-$1000000)).w
		bra.s   return_3FA4
loc_3F9E:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_3FA4:
		rts

	; End of function sub_3F7E


; =============== S U B R O U T I N E =======================================

sub_3FA6:
		move.b  #4,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_3FA6


; =============== S U B R O U T I N E =======================================

sub_3FAE:
		move.b  #5,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_3FAE


; =============== S U B R O U T I N E =======================================

sub_3FB6:
		move.b  #1,((byte_FF9C02-$1000000)).w
loc_3FBC:
		move.b  #6,((byte_FF9C01-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		beq.s   return_4010
		clr.b   ((byte_FF9C01-$1000000)).w
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_3FF4
		move.b  #1,((byte_FF9C03-$1000000)).w
		clr.b   ((unk_FF9C4D-$1000000)).w
		move.b  #4,((unk_FF9C4C-$1000000)).w
		bra.s   return_4010
loc_3FF4:
		moveq   #$30,d0 
		bsr.w   GetEventFlag
		beq.s   return_4010
		moveq   #$2A,d0 
loc_3FFE:
		bsr.w   GetEventFlag
		bne.s   return_4010
		move.b  #2,((byte_FF9C03-$1000000)).w
		move.b  #3,((unk_FF9C4D-$1000000)).w
return_4010:
		rts

	; End of function sub_3FB6


; =============== S U B R O U T I N E =======================================

sub_4012:
		move.b  #5,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4012


; =============== S U B R O U T I N E =======================================

sub_401A:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$33,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4030
		bsr.w   sub_3062
		move.b  #1,((unk_FF9C86-$1000000)).w
loc_4030:
		bra.s   loc_3FBC
loc_4032:
		move.b  #2,((byte_FF9C02-$1000000)).w
		bra.s   loc_3FBC
loc_403A:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$31,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4052
		move.b  #3,((byte_FF9C02-$1000000)).w
		bra.w   loc_3FBC
		bra.s   return_4064
loc_4052:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #2,((byte_FF9C01-$1000000)).w
		move.b  #3,((byte_FF9C03-$1000000)).w
return_4064:
		rts

	; End of function sub_401A


; =============== S U B R O U T I N E =======================================

sub_4066:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_407C(pc,d0.w),d0
		jmp     off_407C(pc,d0.w)

	; End of function sub_4066

off_407C:       dc.w sub_408E-off_407C
		dc.w sub_408E-off_407C
		dc.w sub_408E-off_407C
		dc.w sub_40C0-off_407C
		dc.w sub_40CE-off_407C
		dc.w sub_40DC-off_407C
		dc.w sub_40EA-off_407C
		dc.w sub_4162-off_407C
		dc.w sub_4198-off_407C

; =============== S U B R O U T I N E =======================================

sub_408E:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_40A2(pc,d0.w),d0
		jmp     off_40A2(pc,d0.w)

	; End of function sub_408E

off_40A2:       dc.w sub_40A8-off_40A2
		dc.w sub_40B0-off_40A2
		dc.w sub_40B8-off_40A2

; =============== S U B R O U T I N E =======================================

sub_40A8:
		move.b  #7,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_40A8


; =============== S U B R O U T I N E =======================================

sub_40B0:
		move.b  #6,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_40B0


; =============== S U B R O U T I N E =======================================

sub_40B8:
		move.b  #8,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_40B8


; =============== S U B R O U T I N E =======================================

sub_40C0:
		move.b  #1,((byte_FF9C02-$1000000)).w
		move.b  #6,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_40C0


; =============== S U B R O U T I N E =======================================

sub_40CE:
		move.b  #1,((byte_FF9C02-$1000000)).w
		move.b  #7,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_40CE


; =============== S U B R O U T I N E =======================================

sub_40DC:
		move.b  #3,((byte_FF9C02-$1000000)).w
		move.b  #8,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_40DC


; =============== S U B R O U T I N E =======================================

sub_40EA:
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.w   loc_413A
		move.b  #1,((byte_FF9C02-$1000000)).w
loc_40F8:
		clr.b   ((byte_FF9C01-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$31,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4118
		move.b  #2,((byte_FF9C01-$1000000)).w
		bra.s   return_4138
loc_4118:
		moveq   #$30,d0 
		bsr.w   GetEventFlag
		beq.s   return_4138
		move.b  #1,((byte_FF9C01-$1000000)).w
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		bne.s   return_4138
		move.b  #1,((unk_FF9C4D-$1000000)).w
		clr.b   ((byte_FF9C03-$1000000)).w
return_4138:
		rts

	; End of function sub_40EA


; START OF FUNCTION CHUNK FOR sub_40EA

loc_413A:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #3,((byte_FF9C01-$1000000)).w
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_415A
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_4160
loc_415A:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4160:
		rts

; END OF FUNCTION CHUNK FOR sub_40EA


; =============== S U B R O U T I N E =======================================

sub_4162:
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.w   loc_4170
		clr.b   ((byte_FF9C02-$1000000)).w
		bra.s   loc_40F8
loc_4170:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #4,((byte_FF9C01-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4190
		move.b  #2,((byte_FF9C03-$1000000)).w
		bra.s   return_4196
loc_4190:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4196:
		rts

	; End of function sub_4162


; =============== S U B R O U T I N E =======================================

sub_4198:
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_41A8
		move.b  #2,((byte_FF9C02-$1000000)).w
		bra.w   loc_40F8
loc_41A8:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #5,((byte_FF9C01-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   GetEventFlag
		bne.s   loc_41CE
		move.b  #7,((unk_FF9C4C-$1000000)).w
		move.b  #3,((byte_FF9C03-$1000000)).w
		bra.s   return_41D4
loc_41CE:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_41D4:
		rts

	; End of function sub_4198


; =============== S U B R O U T I N E =======================================

sub_41D6:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_41EC(pc,d0.w),d0
		jmp     off_41EC(pc,d0.w)

	; End of function sub_41D6

off_41EC:       dc.w sub_41F4-off_41EC
		dc.w sub_423E-off_41EC
		dc.w sub_424C-off_41EC
		dc.w sub_427A-off_41EC

; =============== S U B R O U T I N E =======================================

sub_41F4:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_4208(pc,d0.w),d0
		jmp     off_4208(pc,d0.w)

	; End of function sub_41F4

off_4208:       dc.w sub_420C-off_4208
		dc.w sub_421A-off_4208

; =============== S U B R O U T I N E =======================================

sub_420C:
		move.b  #4,((byte_FF9C02-$1000000)).w
		move.b  #3,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_420C


; =============== S U B R O U T I N E =======================================

sub_421A:
		move.b  #2,((byte_FF9C01-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$2A,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4236
		move.b  #2,((byte_FF9C03-$1000000)).w
		bra.s   return_423C
loc_4236:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_423C:
		rts

	; End of function sub_421A


; =============== S U B R O U T I N E =======================================

sub_423E:
		move.b  #3,((byte_FF9C02-$1000000)).w
		move.b  #3,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_423E


; =============== S U B R O U T I N E =======================================

sub_424C:
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #1,((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4272
		move.b  #1,((unk_FF9C4D-$1000000)).w
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_4278
loc_4272:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4278:
		rts

	; End of function sub_424C


; =============== S U B R O U T I N E =======================================

sub_427A:
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.w   loc_42AE
		clr.b   ((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_42A6
		move.b  #1,((unk_FF9C4D-$1000000)).w
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_42AC
loc_42A6:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_42AC:
		rts

	; End of function sub_427A


; START OF FUNCTION CHUNK FOR sub_427A

loc_42AE:
		move.b  #1,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		bne.s   loc_42CC
		clr.b   ((byte_FF9C03-$1000000)).w
		bra.s   return_42D2
loc_42CC:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_42D2:
		rts

; END OF FUNCTION CHUNK FOR sub_427A


; =============== S U B R O U T I N E =======================================

sub_42D4:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_42EA(pc,d0.w),d0
		jmp     off_42EA(pc,d0.w)

	; End of function sub_42D4

off_42EA:       dc.w sub_42FC-off_42EA
		dc.w sub_42FC-off_42EA
		dc.w sub_4366-off_42EA
		dc.w sub_4366-off_42EA
		dc.w sub_4366-off_42EA
		dc.w sub_43CE-off_42EA
		dc.w sub_43DC-off_42EA
		dc.w sub_43E2-off_42EA
		dc.w sub_43EA-off_42EA

; =============== S U B R O U T I N E =======================================

sub_42FC:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_4310(pc,d0.w),d0
		jmp     off_4310(pc,d0.w)

	; End of function sub_42FC

off_4310:       dc.w sub_4316-off_4310
		dc.w sub_4324-off_4310
		dc.w sub_435E-off_4310

; =============== S U B R O U T I N E =======================================

sub_4316:
		move.b  #4,((byte_FF9C02-$1000000)).w
		move.b  #6,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4316


; =============== S U B R O U T I N E =======================================

sub_4324:
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4340
		move.b  #1,((byte_FF9C03-$1000000)).w
		move.b  #2,((byte_FF9C01-$1000000)).w
		bra.s   return_435C
loc_4340:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		moveq   #$30,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4356
		move.b  #3,((byte_FF9C01-$1000000)).w
		bra.s   return_435C
loc_4356:
		move.b  #4,((byte_FF9C01-$1000000)).w
return_435C:
		rts

	; End of function sub_4324


; =============== S U B R O U T I N E =======================================

sub_435E:
		move.b  #7,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_435E


; =============== S U B R O U T I N E =======================================

sub_4366:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_437A(pc,d0.w),d0
		jmp     off_437A(pc,d0.w)

	; End of function sub_4366

off_437A:       dc.w sub_4396-off_437A
		dc.w sub_4380-off_437A
		dc.w sub_4388-off_437A

; =============== S U B R O U T I N E =======================================

sub_4380:
		move.b  #8,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4380


; =============== S U B R O U T I N E =======================================

sub_4388:
		move.b  #8,((byte_FF9C01-$1000000)).w
		move.b  #3,((byte_FF9C02-$1000000)).w
		rts

	; End of function sub_4388


; =============== S U B R O U T I N E =======================================

sub_4396:
		move.b  #1,((byte_FF9C02-$1000000)).w
loc_439C:
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		bne.s   loc_43BA
		clr.b   ((byte_FF9C03-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #1,((unk_FF9C4D-$1000000)).w
		bra.s   return_43CC
loc_43BA:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #1,((byte_FF9C01-$1000000)).w
		move.b  #2,((unk_FF9C4D-$1000000)).w
return_43CC:
		rts

	; End of function sub_4396


; =============== S U B R O U T I N E =======================================

sub_43CE:
		move.b  #4,((byte_FF9C02-$1000000)).w
		move.b  #8,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_43CE


; =============== S U B R O U T I N E =======================================

sub_43DC:
		clr.b   ((byte_FF9C02-$1000000)).w
		bra.s   loc_439C

	; End of function sub_43DC


; =============== S U B R O U T I N E =======================================

sub_43E2:
		move.b  #2,((byte_FF9C02-$1000000)).w
		bra.s   loc_439C

	; End of function sub_43E2


; =============== S U B R O U T I N E =======================================

sub_43EA:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_43FE(pc,d0.w),d0
		jmp     off_43FE(pc,d0.w)

	; End of function sub_43EA

off_43FE:       dc.w sub_4406-off_43FE
		dc.w sub_4406-off_43FE
		dc.w sub_4436-off_43FE
		dc.w sub_4466-off_43FE

; =============== S U B R O U T I N E =======================================

sub_4406:
		move.b  #2,((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4428
		move.b  #2,((byte_FF9C01-$1000000)).w
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_4434
loc_4428:
		move.b  #3,((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4434:
		rts

	; End of function sub_4406


; =============== S U B R O U T I N E =======================================

sub_4436:
		move.b  #1,((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4458
		move.b  #2,((byte_FF9C01-$1000000)).w
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_4464
loc_4458:
		move.b  #4,((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4464:
		rts

	; End of function sub_4436


; =============== S U B R O U T I N E =======================================

sub_4466:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #5,((byte_FF9C01-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4482
		move.b  #2,((byte_FF9C03-$1000000)).w
		bra.s   return_4488
loc_4482:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4488:
		rts

	; End of function sub_4466


; =============== S U B R O U T I N E =======================================

sub_448A:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_44A0(pc,d0.w),d0
		jmp     off_44A0(pc,d0.w)

	; End of function sub_448A

off_44A0:       dc.w sub_44AE-off_44A0
		dc.w sub_4508-off_44A0
		dc.w sub_453A-off_44A0
		dc.w sub_4546-off_44A0
		dc.w sub_4552-off_44A0
		dc.w sub_459E-off_44A0
		dc.w sub_45B4-off_44A0

; =============== S U B R O U T I N E =======================================

sub_44AE:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_44C2(pc,d0.w),d0
		jmp     off_44C2(pc,d0.w)

	; End of function sub_44AE

off_44C2:       dc.w sub_44C8-off_44C2
		dc.w sub_44E0-off_44C2
		dc.w sub_44EE-off_44C2

; =============== S U B R O U T I N E =======================================

sub_44C8:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #1,((byte_FF9C01-$1000000)).w
		move.b  #5,((unk_FF9C4C-$1000000)).w
		clr.b   ((byte_FF9C03-$1000000)).w
		rts

	; End of function sub_44C8


; =============== S U B R O U T I N E =======================================

sub_44E0:
		move.b  #4,((byte_FF9C01-$1000000)).w
		move.b  #4,((byte_FF9C02-$1000000)).w
		rts

	; End of function sub_44E0


; =============== S U B R O U T I N E =======================================

sub_44EE:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #3,((byte_FF9C01-$1000000)).w
		move.b  #6,((unk_FF9C4C-$1000000)).w
		move.b  #2,((byte_FF9C03-$1000000)).w
		rts

	; End of function sub_44EE


; =============== S U B R O U T I N E =======================================

sub_4508:
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		beq.s   loc_452E
		moveq   #$24,d0 
		bsr.w   sub_3062
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #3,((unk_FF9C86-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #1,((byte_FF9C02-$1000000)).w
		bra.s   return_4538
loc_452E:
		move.b  #5,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
return_4538:
		rts

	; End of function sub_4508


; =============== S U B R O U T I N E =======================================

sub_453A:
		move.b  #4,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		rts

	; End of function sub_453A


; =============== S U B R O U T I N E =======================================

sub_4546:
		move.b  #6,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		rts

	; End of function sub_4546


; =============== S U B R O U T I N E =======================================

sub_4552:
		moveq   #$24,d0 
		bsr.w   sub_3062
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_4576
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #4,((unk_FF9C86-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #2,((byte_FF9C02-$1000000)).w
		bra.s   return_459C
loc_4576:
		move.b  #2,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #1,((byte_FF9C03-$1000000)).w
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4596
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_459C
loc_4596:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_459C:
		rts

	; End of function sub_4552


; =============== S U B R O U T I N E =======================================

sub_459E:
		moveq   #$24,d0 
		bsr.w   sub_3062
		clr.b   ((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C03-$1000000)).w
		move.b  #1,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_459E


; =============== S U B R O U T I N E =======================================

sub_45B4:
		moveq   #$24,d0 
		bsr.w   sub_3062
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #2,((byte_FF9C03-$1000000)).w
		move.b  #3,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_45B4


; =============== S U B R O U T I N E =======================================

sub_45CC:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_45E2(pc,d0.w),d0
		jmp     off_45E2(pc,d0.w)

	; End of function sub_45CC

off_45E2:       dc.w sub_45EE-off_45E2
		dc.w sub_45EE-off_45E2
		dc.w sub_463C-off_45E2
		dc.w sub_465A-off_45E2
		dc.w sub_46A8-off_45E2
		dc.w sub_46AE-off_45E2

; =============== S U B R O U T I N E =======================================

sub_45EE:
		clr.w   d0
loc_45F0:
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  off_4602(pc,d0.w),d0
		jmp     off_4602(pc,d0.w)

	; End of function sub_45EE

off_4602:       dc.w sub_4608-off_4602
		dc.w sub_4610-off_4602
		dc.w sub_4618-off_4602

; =============== S U B R O U T I N E =======================================

sub_4608:
		move.b  #4,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4608


; =============== S U B R O U T I N E =======================================

sub_4610:
		move.b  #5,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4610


; =============== S U B R O U T I N E =======================================

sub_4618:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #3,((byte_FF9C01-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4634
		move.b  #3,((byte_FF9C03-$1000000)).w
		bra.s   return_463A
loc_4634:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_463A:
		rts

	; End of function sub_4618


; =============== S U B R O U T I N E =======================================

sub_463C:
		moveq   #$30,d0 
		bsr.w   GetEventFlag
		bne.s   loc_464C
		move.b  #3,((byte_FF9C02-$1000000)).w
		bra.s   loc_4652
loc_464C:
		move.b  #4,((byte_FF9C02-$1000000)).w
loc_4652:
		move.b  #5,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_463C


; =============== S U B R O U T I N E =======================================

sub_465A:
		move.b  #2,((byte_FF9C02-$1000000)).w
loc_4660:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		moveq   #$56,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4694
		move.b  #1,((byte_FF9C01-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4692
		move.b  #2,((unk_FF9C4D-$1000000)).w
		move.b  #2,((byte_FF9C03-$1000000)).w
loc_4692:
		bra.s   return_46A6
loc_4694:
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		bne.s   return_46A6
		clr.b   ((byte_FF9C03-$1000000)).w
		move.b  #1,((unk_FF9C4D-$1000000)).w
return_46A6:
		rts

	; End of function sub_465A


; =============== S U B R O U T I N E =======================================

sub_46A8:
		clr.b   ((byte_FF9C02-$1000000)).w
		bra.s   loc_4660

	; End of function sub_46A8


; =============== S U B R O U T I N E =======================================

sub_46AE:
		moveq   #$30,d0 
		bsr.w   GetEventFlag
		beq.s   loc_46DA
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #2,((byte_FF9C01-$1000000)).w
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_46D2
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_46D8
loc_46D2:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_46D8:
		rts
loc_46DA:
		move.b  #1,((byte_FF9C02-$1000000)).w
		bra.w   loc_4660

	; End of function sub_46AE


; =============== S U B R O U T I N E =======================================

sub_46E4:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_46FA(pc,d0.w),d0
		jmp     off_46FA(pc,d0.w)

	; End of function sub_46E4

off_46FA:       dc.w sub_4706-off_46FA
		dc.w sub_4706-off_46FA
		dc.w sub_472E-off_46FA
		dc.w sub_474A-off_46FA
		dc.w sub_4758-off_46FA
		dc.w sub_47D0-off_46FA

; =============== S U B R O U T I N E =======================================

sub_4706:
		clr.w   d0
		move.b  ((byte_FF9C02-$1000000)).w,d0
		clr.b   ((byte_FF9C02-$1000000)).w
		add.w   d0,d0
		move.w  sub_471A(pc,d0.w),d0
		jmp     sub_471A(pc,d0.w)

	; End of function sub_4706


; =============== S U B R O U T I N E =======================================

sub_471A:
		ori.b   #$C,d4
		move.b  #4,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_471A


; =============== S U B R O U T I N E =======================================

sub_4726:
		move.b  #5,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4726


; =============== S U B R O U T I N E =======================================

sub_472E:
		move.b  #5,((byte_FF9C01-$1000000)).w
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_4742
		move.b  #4,((byte_FF9C02-$1000000)).w
		bra.s   return_4748
loc_4742:
		move.b  #3,((byte_FF9C02-$1000000)).w
return_4748:
		rts

	; End of function sub_472E


; =============== S U B R O U T I N E =======================================

sub_474A:
		move.b  #3,((byte_FF9C02-$1000000)).w
		move.b  #4,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_474A


; =============== S U B R O U T I N E =======================================

sub_4758:
		cmpi.b  #$10,((byte_FFF807-$1000000)).w
		beq.w   loc_47A8
		clr.b   ((byte_FF9C02-$1000000)).w
loc_4766:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		moveq   #$7C,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4794
		move.b  #1,((byte_FF9C01-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4792
		move.b  #3,((byte_FF9C03-$1000000)).w
loc_4792:
		bra.s   return_47A6
loc_4794:
		moveq   #$28,d0 
loc_4796:
		bsr.w   GetEventFlag
		bne.s   return_47A6
		clr.b   ((byte_FF9C03-$1000000)).w
		move.b  #1,((unk_FF9C4D-$1000000)).w
return_47A6:
		rts
loc_47A8:
		move.b  #3,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$2A,d0 
		bsr.w   GetEventFlag
		bne.s   loc_47C8
		move.b  #2,((byte_FF9C03-$1000000)).w
		bra.s   return_47CE
loc_47C8:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_47CE:
		rts

	; End of function sub_4758


; =============== S U B R O U T I N E =======================================

sub_47D0:
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.w   loc_47E0
		move.b  #1,((byte_FF9C02-$1000000)).w
		bra.s   loc_4766
loc_47E0:
		move.b  #2,((byte_FF9C01-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$24,d0 
		bsr.w   sub_3062
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_480C
		move.b  #1,((byte_FF9C03-$1000000)).w
loc_47FE:
		move.b  #1,((unk_FF9C4D-$1000000)).w
		move.b  #4,((unk_FF9C4C-$1000000)).w
		bra.s   return_4812
loc_480C:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
return_4812:
		rts

	; End of function sub_47D0


; =============== S U B R O U T I N E =======================================

sub_4814:
		moveq   #$24,d0 
		bsr.w   sub_3054
		clr.w   d0
		move.b  ((byte_FF9C01-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_482A(pc,d0.w),d0
		jmp     off_482A(pc,d0.w)

	; End of function sub_4814

off_482A:       dc.w sub_483E-off_482A
		dc.w sub_4876-off_482A
		dc.w loc_487E-off_482A
		dc.w sub_48A4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_492C-off_482A
		dc.w loc_4932-off_482A
		dc.w sub_4964-off_482A
		dc.w sub_497C-off_482A

; =============== S U B R O U T I N E =======================================

sub_483E:
		cmpi.b  #1,((byte_FF9C02-$1000000)).w
		beq.s   loc_484E
		move.b  #9,((byte_FF9C01-$1000000)).w
		rts
loc_484E:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$31,d0 
		bsr.w   GetEventFlag
		beq.s   loc_486E
		move.b  #3,((byte_FF9C01-$1000000)).w
		bra.s   return_4874
loc_486E:
		move.b  #8,((byte_FF9C01-$1000000)).w
return_4874:
		rts

	; End of function sub_483E


; =============== S U B R O U T I N E =======================================

sub_4876:
		cmpi.b  #1,((byte_FF9C02-$1000000)).w
		beq.s   loc_488C
loc_487E:
		move.b  #4,((byte_FF9C02-$1000000)).w
		move.b  #9,((byte_FF9C01-$1000000)).w
		rts
loc_488C:
		moveq   #$24,d0 
		bsr.w   sub_3062
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #1,((byte_FF9C03-$1000000)).w
		move.b  #2,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_4876


; =============== S U B R O U T I N E =======================================

sub_48A4:
		moveq   #$24,d0 
		bsr.w   sub_3062
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_48BC
		move.b  #1,((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		rts
loc_48BC:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$2A,d0 
		bsr.w   GetEventFlag
		bne.s   loc_48D6
		move.b  #2,((byte_FF9C03-$1000000)).w
		move.b  #4,((byte_FF9C01-$1000000)).w
		bra.s   return_48E2
loc_48D6:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #5,((byte_FF9C01-$1000000)).w
return_48E2:
		rts

	; End of function sub_48A4


; =============== S U B R O U T I N E =======================================

sub_48E4:
		moveq   #$24,d0 
		bsr.w   sub_3062
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_4904
		move.b  #1,((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #3,((byte_FF9C01-$1000000)).w
		rts
loc_4904:
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$2B,d0 
		bsr.w   GetEventFlag
		bne.s   loc_491E
		move.b  #3,((byte_FF9C03-$1000000)).w
		move.b  #6,((byte_FF9C01-$1000000)).w
		bra.s   return_492A
loc_491E:
		move.b  #4,((byte_FF9C03-$1000000)).w
		move.b  #7,((byte_FF9C01-$1000000)).w
return_492A:
		rts

	; End of function sub_48E4


; =============== S U B R O U T I N E =======================================

sub_492C:
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_494C
loc_4932:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #1,((byte_FF9C02-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #5,((byte_FF9C01-$1000000)).w
		rts
loc_494C:
		moveq   #$24,d0 
		bsr.w   sub_3062
		clr.b   ((byte_FF9C02-$1000000)).w
		move.b  #4,((byte_FF9C03-$1000000)).w
		move.b  #7,((byte_FF9C01-$1000000)).w
		rts

	; End of function sub_492C


; =============== S U B R O U T I N E =======================================

sub_4964:
		moveq   #$24,d0 
		bsr.w   sub_3062
		move.b  #1,((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		rts

	; End of function sub_4964


; =============== S U B R O U T I N E =======================================

sub_497C:
		moveq   #$24,d0 
		bsr.w   sub_3062
		tst.b   ((byte_FF9C02-$1000000)).w
		bne.s   loc_4998
		clr.b   ((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		rts
loc_4998:
		cmpi.b  #3,((byte_FF9C02-$1000000)).w
		beq.s   loc_49DC
		clr.b   ((byte_FF9C02-$1000000)).w
		moveq   #$28,d0 
		bsr.w   GetEventFlag
		bne.s   loc_49B8
		clr.b   ((byte_FF9C03-$1000000)).w
		move.b  #1,((byte_FF9C01-$1000000)).w
		bra.s   return_49DA
loc_49B8:
		move.b  #2,((byte_FF9C01-$1000000)).w
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_49CE
		move.b  #1,((byte_FF9C03-$1000000)).w
		bra.s   return_49DA
loc_49CE:
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		move.b  #1,((byte_FF9C02-$1000000)).w
return_49DA:
		rts
loc_49DC:
		move.b  #3,((byte_FF9C02-$1000000)).w
		clr.b   ((byte_FF9C01-$1000000)).w
		move.b  #$FF,((byte_FF9C03-$1000000)).w
		rts

	; End of function sub_497C

word_49EE:      dc.w $100
		dc.w $104
		dc.w $108
		dc.w $10C
		dc.w $120
		dc.w $124
		dc.w $128
		dc.w $12C
		dc.w $140
		dc.w $144
		dc.w $148
		dc.w $14C
		dc.w $160
		dc.w $164
		dc.w $168
		dc.w $16C
		dc.w $180
		dc.w $184
		dc.w $188
		dc.w $18C
		dc.w $1A0
		dc.w $1A4
		dc.w $1A8
		dc.w $1AC
		dc.w $1C0
		dc.w $1C4
		dc.w $1C8
		dc.w $1CC
		dc.w $1E0
		dc.w $1E4
		dc.w $1E8
		dc.w $1EC
		dc.w $101
		dc.w $105
		dc.w $109
		dc.w $10D
		dc.w $121
		dc.w $125
		dc.w $129
		dc.w $12D
		dc.w $141
		dc.w $145
		dc.w $149
		dc.w $14D
		dc.w $161
		dc.w $165
		dc.w $169
		dc.w $16D
		dc.w $181
		dc.w $185
		dc.w $189
		dc.w $18D
		dc.w $1A1
		dc.w $1A5
		dc.w $1A9
		dc.w $1AD
		dc.w $1C1
		dc.w $1C5
		dc.w $1C9
		dc.w $1CD
		dc.w $1E1
		dc.w $1E5
		dc.w $1E9
		dc.w $1ED
		dc.w $102
		dc.w $106
		dc.w $10A
		dc.w $10E
		dc.w $122
		dc.w $126
		dc.w $12A
		dc.w $12E
		dc.w $142
		dc.w $146
		dc.w $14A
		dc.w $14E
		dc.w $162
		dc.w $166
		dc.w $16A
		dc.w $16E
		dc.w $182
		dc.w $186
		dc.w $18A
		dc.w $18E
		dc.w $1A2
		dc.w $1A6
		dc.w $1AA
		dc.w $1AE
		dc.w $1C2
		dc.w $1C6
		dc.w $1CA
		dc.w $1CE
		dc.w $1E2
		dc.w $1E6
		dc.w $1EA
		dc.w $1EE
		dc.w $103
		dc.w $107
		dc.w $10B
		dc.w $10F
		dc.w $123
		dc.w $127
		dc.w $12B
		dc.w $12F
		dc.w $143
		dc.w $147
		dc.w $14B
		dc.w $14F
		dc.w $163
		dc.w $167
		dc.w $16B
		dc.w $16F
		dc.w $183
		dc.w $187
		dc.w $18B
		dc.w $18F
		dc.w $1A3
		dc.w $1A7
		dc.w $1AB
		dc.w $1AF
		dc.w $1C3
		dc.w $1C7
		dc.w $1CB
		dc.w $1CF
		dc.w $1E3
		dc.w $1E7
		dc.w $1EB
		dc.w $1EF
		dc.w $110
		dc.w $114
		dc.w $118
		dc.w $11C
		dc.w $130
		dc.w $134
		dc.w $138
		dc.w $13C
		dc.w $150
		dc.w $154
		dc.w $158
		dc.w $15C
		dc.w $170
		dc.w $174
		dc.w $178
		dc.w $17C
		dc.w $190
		dc.w $194
		dc.w $198
		dc.w $19C
		dc.w $1B0
		dc.w $1B4
		dc.w $1B8
		dc.w $1BC
		dc.w $1D0
		dc.w $1D4
		dc.w $1D8
		dc.w $1DC
		dc.w $1F0
		dc.w $1F4
		dc.w $1F8
		dc.w $1FC
		dc.w $111
		dc.w $115
		dc.w $119
		dc.w $11D
		dc.w $131
		dc.w $135
		dc.w $139
		dc.w $13D
		dc.w $151
		dc.w $155
		dc.w $159
		dc.w $15D
		dc.w $171
		dc.w $175
		dc.w $179
		dc.w $17D
		dc.w $191
		dc.w $195
		dc.w $199
		dc.w $19D
		dc.w $1B1
		dc.w $1B5
		dc.w $1B9
		dc.w $1BD
		dc.w $1D1
		dc.w $1D5
		dc.w $1D9
		dc.w $1DD
		dc.w $1F1
		dc.w $1F5
		dc.w $1F9
		dc.w $1FD
		dc.w $112
		dc.w $116
		dc.w $11A
		dc.w $11E
		dc.w $132
		dc.w $136
		dc.w $13A
		dc.w $13E
		dc.w $152
		dc.w $156
		dc.w $15A
		dc.w $15E
		dc.w $172
		dc.w $176
		dc.w $17A
		dc.w $17E
		dc.w $192
		dc.w $196
		dc.w $19A
		dc.w $19E
		dc.w $1B2
		dc.w $1B6
		dc.w $1BA
		dc.w $1BE
		dc.w $1D2
		dc.w $1D6
		dc.w $1DA
		dc.w $1DE
		dc.w $1F2
		dc.w $1F6
		dc.w $1FA
		dc.w $1FE
		dc.w $113
		dc.w $117
		dc.w $11B
		dc.w $11F
		dc.w $133
		dc.w $137
		dc.w $13B
		dc.w $13F
		dc.w $153
		dc.w $157
		dc.w $15B
		dc.w $15F
		dc.w $173
		dc.w $177
		dc.w $17B
		dc.w $17F
		dc.w $193
		dc.w $197
		dc.w $19B
		dc.w $19F
		dc.w $1B3
		dc.w $1B7
		dc.w $1BB
		dc.w $1BF
		dc.w $1D3
		dc.w $1D7
		dc.w $1DB
		dc.w $1DF
		dc.w $1F3
		dc.w $1F7
		dc.w $1FB
		dc.w $1FF
unk_4BEE:       dc.b   2
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   2
		dc.b   8
		dc.b   2
		dc.b  $C
		dc.b   2
		dc.b   1
		dc.b   2
		dc.b   5
		dc.b   2
		dc.b   9
		dc.b   2
		dc.b  $D
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   6
		dc.b   2
		dc.b  $A
		dc.b   2
		dc.b  $E
		dc.b   2
		dc.b   3
		dc.b   2
		dc.b   7
		dc.b   2
		dc.b  $B
		dc.b   2
		dc.b  $F

; =============== S U B R O U T I N E =======================================

sub_4C0E:
		clr.w   d0
		move.b  (byte_FF9C00).l,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  off_4C22(pc,d0.w),d0
		jmp     off_4C22(pc,d0.w)

	; End of function sub_4C0E

off_4C22:       dc.w loc_4C32-off_4C22
		dc.w sub_4CC6-off_4C22
		dc.w loc_4CFC-off_4C22
		dc.w sub_4D00-off_4C22
		dc.w sub_4D20-off_4C22
		dc.w sub_4D4E-off_4C22
		dc.w sub_4D64-off_4C22
		dc.w sub_4D88-off_4C22
loc_4C32:       move.b  (byte_FF9C02).l,d7
loc_4C38:       clr.b   (byte_FF9C02).l
		clr.w   d1
		move.b  (byte_FF9C01).l,d1
		cmpi.w  #3,d1
		bne.s   loc_4C70
		moveq   #$38,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4C60
		move.b  #3,(byte_FF9C02).l
		bsr.w   sub_3054
loc_4C60:       moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4C6C
		moveq   #2,d0
		bra.s   return_4C6E
loc_4C6C:       moveq   #3,d0
return_4C6E:    rts
loc_4C70:       cmpi.w  #4,d1
		bne.s   loc_4C7A
		moveq   #$C,d0
		rts
loc_4C7A:       moveq   #$27,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4C92
		moveq   #$2B,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4C8E
		moveq   #4,d0
		bra.s   return_4C90
loc_4C8E:       moveq   #5,d0
return_4C90:    rts
loc_4C92:       cmpi.b  #4,d7
		bne.s   loc_4C9E
		move.b  d7,(byte_FF9C02).l
loc_4C9E:       moveq   #$31,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4CAA
		moveq   #4,d0
		rts
loc_4CAA:       cmpi.b  #2,d7
		bne.s   loc_4CBA
		move.b  d7,(byte_FF9C02).l
		moveq   #5,d0
		rts
loc_4CBA:       move.b  #3,(byte_FF9C02).l
		moveq   #4,d0
		rts

; =============== S U B R O U T I N E =======================================

sub_4CC6:
		clr.w   d1
		move.b  (byte_FF9C01).l,d1
		cmpi.w  #8,d1
		bne.s   loc_4CD8
		moveq   #8,d0
		rts
loc_4CD8:
		tst.b   (byte_FF9C02).l
		beq.s   loc_4CE8
		move.b  #3,(byte_FF9C02).l
loc_4CE8:
		cmpi.w  #6,d1
		bne.s   loc_4CF2
		moveq   #$D,d0
		rts
loc_4CF2:
		cmpi.w  #7,d1
		bne.s   loc_4CFC
		moveq   #6,d0
		rts
loc_4CFC:
		moveq   #7,d0
		rts

	; End of function sub_4CC6


; =============== S U B R O U T I N E =======================================

sub_4D00:
		clr.w   d1
		move.b  (byte_FF9C01).l,d1
		cmpi.w  #6,d1
		bne.s   loc_4D12
		moveq   #9,d0
		rts
loc_4D12:
		cmpi.w  #7,d1
		bne.s   loc_4D1C
		moveq   #$A,d0
		rts
loc_4D1C:
		moveq   #$1D,d0
		rts

	; End of function sub_4D00


; =============== S U B R O U T I N E =======================================

sub_4D20:
		clr.w   d1
		move.b  (byte_FF9C01).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D4A
		moveq   #$27,d0 
		bsr.w   GetEventFlag
		beq.s   loc_4D3A
		moveq   #$20,d0 
		rts
loc_4D3A:
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		bne.s   loc_4D46
		moveq   #$20,d0 
		bra.s   return_4D48
loc_4D46:
		moveq   #$2A,d0 
return_4D48:
		rts
loc_4D4A:
		moveq   #$29,d0 
		rts

	; End of function sub_4D20


; =============== S U B R O U T I N E =======================================

sub_4D4E:
		clr.w   d1
		move.b  (byte_FF9C01).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D60
		moveq   #$21,d0 
		rts
loc_4D60:
		moveq   #$1F,d0
		rts

	; End of function sub_4D4E


; =============== S U B R O U T I N E =======================================

sub_4D64:
		clr.w   d1
		move.b  (byte_FF9C01).l,d1
		cmpi.w  #4,d1
		bne.s   loc_4D84
		cmpi.b  #3,(byte_FF9C02).l
		bne.s   loc_4D80
		moveq   #$10,d0
		bra.s   return_4D82
loc_4D80:
		moveq   #$1E,d0
return_4D82:
		rts
loc_4D84:
		moveq   #$24,d0 
		rts

	; End of function sub_4D64


; =============== S U B R O U T I N E =======================================

sub_4D88:
		cmpi.b  #2,(byte_FF9C02).l
		bgt.s   loc_4D96
		moveq   #$E,d0
		bra.s   return_4D98
loc_4D96:
		moveq   #$25,d0 
return_4D98:
		rts

	; End of function sub_4D88


; START OF FUNCTION CHUNK FOR Initialize

loc_4D9A:
		move.b  #1,((unk_FFB53D-$1000000)).w
		moveq   #3,d0
		jsr     sub_2002C
		moveq   #8,d0
		jsr     sub_2002C
		moveq   #$C,d0
		jsr     sub_2002C
		moveq   #$E,d0
		jsr     sub_2002C
		moveq   #$13,d0
		jsr     sub_2002C
		moveq   #$18,d0
loc_4DCA:
		jsr     sub_2002C
		moveq   #$19,d0
		jsr     sub_2002C
		moveq   #$1A,d0
		jsr     sub_2002C
		moveq   #$1B,d0
		jsr     sub_2002C
		moveq   #$1C,d0
loc_4DEA:
		jsr     sub_2002C
		moveq   #$1D,d0
		jsr     sub_2002C
		moveq   #1,d0
		moveq   #$1C,d7
loc_4DFC:
		jsr     sub_2002C
		addq.w  #1,d0
		dbf     d7,loc_4DFC
		clr.l   (dword_FF0EF6).l
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		movem.l d7-a1,-(sp)
		lea     unk_53B8(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
loc_4E42:
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (sub_228).l
		moveq   #1,d0
		moveq   #$14,d1
loc_4E5E:
		btst    #3,(byte_FF0E99).l
		beq.s   loc_4E76
		addq.w  #1,d0
		cmpi.w  #9,d0
		blt.s   loc_4E72
		moveq   #1,d0
loc_4E72:
		trap    #0

; END OF FUNCTION CHUNK FOR Initialize

		dc.w $42

; START OF FUNCTION CHUNK FOR Initialize

loc_4E76:
		btst    #2,(byte_FF0E99).l
		beq.s   loc_4E8A
		subq.w  #1,d0
		bne.s   loc_4E86
		moveq   #8,d0
loc_4E86:
		trap    #0

; END OF FUNCTION CHUNK FOR Initialize

		dc.w $42

; START OF FUNCTION CHUNK FOR Initialize

loc_4E8A:
		btst    #5,(byte_FF0E99).l
		bne.w   loc_4EF2
		btst    #6,(byte_FF0E99).l
		bne.w   loc_4EF2
		movem.l d7-a1,-(sp)
		lea     unk_53B8(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((unk_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_DisplayNumber
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (sub_240).l
		bra.w   loc_4E5E
loc_4EF2:
		move.b  d0,((byte_FF9C00-$1000000)).w
		jsr     (sub_22C).l
		bra.w   loc_30FC
loc_4F00:
		move.b  #1,((unk_FFB53D-$1000000)).w
		moveq   #3,d0
		jsr     sub_2002C
		moveq   #8,d0
		jsr     sub_2002C
		moveq   #$C,d0
loc_4F18:
		jsr     sub_2002C
		moveq   #$E,d0
		jsr     sub_2002C
		moveq   #$13,d0
		jsr     sub_2002C
		moveq   #$18,d0
		jsr     sub_2002C
		moveq   #$19,d0
		jsr     sub_2002C
		moveq   #$1A,d0
		jsr     sub_2002C
		moveq   #$1B,d0
		jsr     sub_2002C
		moveq   #$1C,d0
		jsr     sub_2002C
		moveq   #$1D,d0
		jsr     sub_2002C
		moveq   #1,d0
		moveq   #$1C,d7
loc_4F62:
		jsr     sub_2002C
		addq.w  #1,d0
		dbf     d7,loc_4F62
loc_4F6E:
		clr.l   (dword_FF0EF6).l
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		movem.l d7-a1,-(sp)
		lea     wl_BattleChapterMessageTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (sub_228).l
loc_4FC0:
		tst.b   (byte_FF0E97).l
		bne.s   loc_4FC0
		clr.w   d0
		moveq   #$14,d1
loc_4FCC:
		btst    #3,(byte_FF0E99).l
		beq.s   loc_4FE4
		addq.w  #1,d0
		cmpi.w  #$1E,d0
		blt.s   loc_4FE0
		moveq   #0,d0
loc_4FE0:
		trap    #0

; END OF FUNCTION CHUNK FOR Initialize

		dc.w $42

; START OF FUNCTION CHUNK FOR Initialize

loc_4FE4:
		btst    #2,(byte_FF0E99).l
		beq.s   loc_4FF8
		subq.w  #1,d0
		bgt.s   loc_4FF4
		moveq   #$1D,d0
loc_4FF4:
		trap    #0

; END OF FUNCTION CHUNK FOR Initialize

		dc.w $42

; START OF FUNCTION CHUNK FOR Initialize

loc_4FF8:
		btst    #5,(byte_FF0E99).l
loc_5000:
		bne.w   loc_5086
		btst    #6,(byte_FF0E99).l
		bne.w   loc_5086
		btst    #4,(byte_FF0E99).l
		beq.s   loc_5034
		movem.w d0-d1,-(sp)
		jsr     sub_20014
		jsr     sub_10018
		jsr     (sub_338).l
		movem.w (sp)+,d0-d1
loc_5034:
		movem.l d7-a1,-(sp)
		lea     wl_BattleChapterMessageTest(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		addq.w  #1,d0
		lea     ((unk_FFB858-$1000000)).w,a1
		ext.l   d0
		moveq   #2,d7
		jsr     j_DisplayNumber
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (sub_240).l
		bra.w   loc_4FCC
loc_5086:
		clr.b   ((unk_FFB5AC-$1000000)).w
		move.w  d0,-(sp)
		lsl.w   #3,d0
		lea     BattleTestTargets(pc), a0
		adda.w  d0,a0
		move.b  (a0)+,((byte_FF9C00-$1000000)).w
		move.b  (a0)+,((byte_FF9C01-$1000000)).w
		move.b  (a0)+,((byte_FF9C03-$1000000)).w
		move.b  (a0)+,((byte_FF9C02-$1000000)).w
		clr.w   d1
		move.b  (a0)+,d1
		bmi.w   loc_50CC
		lsl.w   #3,d1
		clr.w   d0
		move.b  (a0)+,d0
		add.w   d1,d0
		bsr.w   sub_38C
		clr.w   d1
		move.b  (a0)+,d1
		bmi.w   loc_50CC
		lsl.w   #3,d1
		clr.w   d0
		move.b  (a0)+,d0
		add.w   d1,d0
		bsr.w   sub_38C
loc_50CC:
		moveq   #$27,d0 
		bsr.w   sub_3062
		jsr     (sub_22C).l
		bsr.w   loc_313A
		move.w  (sp)+,d0
		bra.w   loc_4F6E

; END OF FUNCTION CHUNK FOR Initialize

BattleTestTargets:
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   2
		dc.b $FF
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   3
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		dc.b   2
		dc.b   5
		dc.b   3
		dc.b   0
		dc.b $3B 
		dc.b   6
		dc.b $FF
		dc.b   0
		dc.b   3
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   2
		dc.b   2
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b   5
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   1
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   3
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b   1
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $3B 
		dc.b   6
		dc.b $FF
		dc.b   0
		dc.b   8
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   6
		dc.b   3
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   7
		dc.b   4
		dc.b   0
		dc.b $3B 
		dc.b   7
		dc.b $FF
		dc.b   0

; =============== S U B R O U T I N E =======================================

sub_51D2:
		btst    #4,(byte_FF0E97).l
		bne.s   loc_51DE
		rts

	; End of function sub_51D2


; START OF FUNCTION CHUNK FOR sub_51D2

loc_51DE:
		clr.l   (dword_FF0EF6).l
		jsr     (sub_214).l
		jsr     (sub_230).l
		jsr     (sub_210).l
		movem.l d7-a1,-(sp)
		lea     unk_5462(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		jsr     (sub_228).l
		trap    #5
		moveq   #0,d0
		moveq   #$14,d1
loc_5236:
		btst    #3,(byte_FF0E99).l
		beq.s   loc_5250
		addq.w  #1,d0
		cmpi.w  #$8BF,d0
		blt.s   loc_524C
		move.w  #$8BF,d0
loc_524C:
		trap    #0

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w $42

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5250:
		btst    #2,(byte_FF0E99).l
		beq.s   loc_5264
		subq.w  #1,d0
		bpl.s   loc_5260
		clr.w   d0
loc_5260:
		trap    #0

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w $42

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5264:
		btst    #1,(byte_FF0E99).l
		beq.s   loc_5280
		addi.w  #$A,d0
		cmpi.w  #$8BF,d0
		blt.s   loc_527C
		move.w  #$8BF,d0
loc_527C:
		trap    #0

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w $42

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5280:
		btst    #0,(byte_FF0E99).l
		beq.s   loc_5296
		subi.w  #$A,d0
		bpl.s   loc_5292
		clr.w   d0
loc_5292:
		trap    #0

; END OF FUNCTION CHUNK FOR sub_51D2

		dc.w $42

; START OF FUNCTION CHUNK FOR sub_51D2

loc_5296:
		btst    #5,(byte_FF0E99).l
		bne.w   loc_52FE
		btst    #6,(byte_FF0E99).l
		bne.w   loc_52FE
		movem.l d7-a1,-(sp)
		lea     unk_5462(pc), a0
		lea     ((unk_FFB7DA-$1000000)).w,a1
		move.w  #$AA,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		move.w  d0,-(sp)
		lea     ((unk_FFB854-$1000000)).w,a1
		ext.l   d0
		moveq   #4,d7
		jsr     j_DisplayNumber
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$1105,d0
		move.l  #$80A,d1
		jsr     sub_801C
		jsr     sub_8054
		move.w  (sp)+,d0
		jsr     (sub_240).l
		bra.w   loc_5236
loc_52FE:
		movem.w d0,-(sp)
		trap    #7
		trap    #8
		movem.w (sp)+,d0
		bra.w   loc_5236

; END OF FUNCTION CHUNK FOR sub_51D2

wl_BattleChapterMessageTest:
		dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $2D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $42 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $4C 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $2D 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $42 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $4C 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $3D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $31 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
unk_53B8:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $2D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $43 
		dc.b $C0 
		dc.b $48 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $50 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $52 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $2D 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $43 
		dc.b $C0 
		dc.b $48 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $50 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $52 
		dc.b $C0 
		dc.b $3D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $31 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
unk_5462:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $2D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $4D 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $47 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $2D 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $4E 
		dc.b $C0 
		dc.b $55 
		dc.b $C0 
		dc.b $4D 
		dc.b $C0 
		dc.b $42 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $52 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $3D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $31 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 

; =============== S U B R O U T I N E =======================================

sub_550C:
		bsr.w   sub_558E
		move.l  #$C1C0C15,d1
		moveq   #4,d2
		jsr     sub_8020
		jsr     (sub_2CC).l
		move.l  #$C152015,d1
		moveq   #6,d2
		jmp     sub_8020

	; End of function sub_550C


; =============== S U B R O U T I N E =======================================

sub_5532:
		bsr.w   sub_558E
		move.l  #$200F160F,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5532


; =============== S U B R O U T I N E =======================================

sub_5544:
		bsr.w   sub_558E
		move.l  #$160F200F,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5544


; =============== S U B R O U T I N E =======================================

sub_5556:
		bsr.w   sub_558E
		move.l  #$F8010101,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5556


; =============== S U B R O U T I N E =======================================

sub_5568:
		bsr.w   sub_558E
		move.l  #$101F801,d1
		moveq   #4,d2
		jmp     sub_8020

	; End of function sub_5568


; =============== S U B R O U T I N E =======================================

sub_557A:
		bsr.w   sub_558E
		move.w  #$160F,d1
		jsr     sub_801C
		jmp     sub_8054

	; End of function sub_557A


; =============== S U B R O U T I N E =======================================

sub_558E:
		movem.l d7-a1,-(sp)
		lea     unk_55CC(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$40,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		jsr     sub_2034C
		move.l  d1,d0
		lea     (unk_FFB7FC).l,a1
		moveq   #6,d7
		jsr     j_DisplayNumber
		lea     (unk_FFB7DA).l,a0
		move.w  #$804,d0
		rts

	; End of function sub_558E

unk_55CC:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $47 
		dc.b $C0 
		dc.b $4F 
		dc.b $C0 
		dc.b $4C 
		dc.b $C0 
		dc.b $44 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $FF
		dc.b $C0 
		dc.b $30 
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 

; =============== S U B R O U T I N E =======================================

sub_560C:
		clr.w   d0
		move.b  (byte_FF0E97).l,d0
		bra.s   loc_5618
loc_5616:
		clr.w   d0
loc_5618:
		move.w  d0,-(sp)
		lea     unk_57EA(pc), a0
		jsr     (j_dDecompressGraphics).l
		trap    #0
		dc.w $41
		clr.b   (byte_FFB528).l
		bsr.w   sub_5744
		move.w  #$90,d0 
		bsr.w   sub_57BA
		jsr     (sub_240).l
		move.w  #$60,d0 
		bsr.w   sub_57BA
		jsr     (sub_240).l
		move.w  #$30,d0 
		bsr.w   sub_57BA
		jsr     (sub_240).l
		move.w  #0,d0
		bsr.w   sub_57BA
		move.w  (sp)+,d0
		beq.w   loc_5672
loc_566A:
		tst.b   (byte_FF0E97).l
		bne.s   loc_566A
loc_5672:
		moveq   #$F,d6
loc_5674:
		btst    #2,(byte_FF0E99).l
		beq.w   loc_568E
		clr.b   (byte_FFB528).l
		trap    #0
		dc.w $42
		bra.w   loc_56F2
loc_568E:
		btst    #3,(byte_FF0E99).l
		beq.w   loc_56AA
		move.b  #$FF,(byte_FFB528).l
		trap    #0
		dc.w $42
		bra.w   loc_56F2
loc_56AA:
		btst    #4,(byte_FF0E99).l
		beq.w   loc_56C2
		moveq   #$FFFFFFFF,d0
		move.b  d0,(byte_FFB528).l
		bra.w   loc_5702
loc_56C2:
		btst    #5,(byte_FF0E99).l
		beq.w   loc_56DA
		clr.w   d0
		move.b  (byte_FFB528).l,d0
		bra.w   loc_5702
loc_56DA:
		btst    #6,(byte_FF0E99).l
		beq.w   loc_56F4
		clr.w   d0
		move.b  (byte_FFB528).l,d0
		bra.w   loc_5702
loc_56F2:
		moveq   #$13,d6
loc_56F4:
		bsr.w   sub_5744
		subq.w  #1,d6
		bne.s   loc_56FE
		moveq   #$14,d6
loc_56FE:
		bra.w   loc_5674
loc_5702:
		trap    #0
		dc.w $41
		movem.w d0-d1,-(sp)
		move.w  #$FFD0,d0
		bsr.w   sub_57BA
		jsr     (sub_240).l
		move.w  #$FFA0,d0
		bsr.w   sub_57BA
		jsr     (sub_240).l
		move.w  #$FF70,d0
		bsr.w   sub_57BA
		jsr     (sub_240).l
		move.w  #$100,d0
		bsr.w   sub_57BA
		movem.w (sp)+,d0-d1
		ext.w   d0
		rts

	; End of function sub_560C


; =============== S U B R O U T I N E =======================================

sub_5744:
		lea     (unk_FF3000).l,a2
		movea.l a2,a0
		cmpi.w  #$A,d6
		ble.s   loc_575E
		tst.b   (byte_FFB528).l
		bne.s   loc_575E
		adda.w  #$120,a0
loc_575E:
		lea     (unk_FF3800).l,a1
		move.w  #$120,d7
		jsr     (sub_2FC).l
		adda.w  #$120,a1
		movea.l a2,a0
		adda.w  #$240,a0
		cmpi.w  #$A,d6
		ble.s   loc_578C
		cmpi.b  #$FF,(byte_FFB528).l
		bne.s   loc_578C
		adda.w  #$120,a0
loc_578C:
		move.w  #$120,d7
		jsr     (sub_2FC).l
		adda.w  #$120,a1
		lea     (unk_FF3800).l,a0
		lea     ($FDC0).l,a1
		move.w  #$120,d0
		moveq   #2,d1
		jsr     (sub_278).l
		jsr     (sub_264).l
		rts

	; End of function sub_5744


; =============== S U B R O U T I N E =======================================

sub_57BA:
		lea     (unk_FF0C88).l,a0
		move.w  #$106,(a0)+
		move.b  #$A,(a0)
		addq.l  #2,a0
		move.w  #$C7EE,(a0)+
		move.w  #$E0,(a0) 
		add.w   d0,(a0)+
		move.w  #$106,(a0)+
		move.b  #$A,(a0)
		addq.l  #2,a0
		move.w  #$C7F7,(a0)+
		move.w  #$108,(a0)
		add.w   d0,(a0)+
		rts

	; End of function sub_57BA

unk_57EA:       dc.b   8
		dc.b   8
		dc.b $F9 
		dc.b $DD 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $C1 
		dc.b $39 
		dc.b $81 
		dc.b $FF
		dc.b $AA 
		dc.b $47 
		dc.b $7A 
		dc.b $A4 
		dc.b $7D 
		dc.b $AA 
		dc.b $91 
		dc.b $D0 
		dc.b $AB 
		dc.b $D0 
		dc.b $4F 
		dc.b $76 
		dc.b $5C 
		dc.b $7F 
		dc.b $48 
		dc.b $61 
		dc.b $AA 
		dc.b $A9 
		dc.b $EA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A4 
		dc.b  $E
		dc.b $7D 
		dc.b   3
		dc.b $1E
		dc.b $11
		dc.b $B0 
		dc.b $EE 
		dc.b $5A 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AB 
		dc.b   4
		dc.b $5E 
		dc.b $A5 
		dc.b $6A 
		dc.b $AA 
		dc.b $A3 
		dc.b $50 
		dc.b $B8 
		dc.b $3F 
		dc.b $34 
		dc.b   3
		dc.b $5F 
		dc.b $B0 
		dc.b $EE 
		dc.b $C0 
		dc.b $8C 
		dc.b $F0 
		dc.b $10
		dc.b $F3 
		dc.b $D8 
		dc.b $2A 
		dc.b $FC 
		dc.b $3B 
		dc.b $C0 
		dc.b $52 
		dc.b $C1 
		dc.b $97 
		dc.b $8A 
		dc.b $FE 
		dc.b $8E 
		dc.b $E8 
		dc.b $27 
		dc.b $C1 
		dc.b $47 
		dc.b $D6 
		dc.b $AA 
		dc.b $AA 
		dc.b $B6 
		dc.b   3
		dc.b $94 
		dc.b  $A
		dc.b $7E 
		dc.b $9A 
		dc.b $ED 
		dc.b $68 
		dc.b $EF 
		dc.b $6D 
		dc.b $30 
		dc.b $4F 
		dc.b $E3 
		dc.b $B9 
		dc.b $84 
		dc.b $F7 
		dc.b $64 
		dc.b $EC 
		dc.b   9
		dc.b   2
		dc.b $65 
		dc.b $81 
		dc.b $1E
		dc.b $F8 
		dc.b $14
		dc.b $E5 
		dc.b   6
		dc.b $55 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $C0 
		dc.b $8D 
		dc.b   8
		dc.b $EF 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $54 
		dc.b $80 
		dc.b $AF 
		dc.b $E8 
		dc.b $5F 
		dc.b $A0 
		dc.b $56 
		dc.b $BD 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $20
		dc.b $26 
		dc.b $FE 
		dc.b $3B 
		dc.b $3E 
		dc.b $4E 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $C2 
		dc.b $E0 
		dc.b $3F 
		dc.b $B0 
		dc.b $3D 
		dc.b $F8 
		dc.b $4A 
		dc.b $EA 
		dc.b $D5 
		dc.b $55 
		dc.b $18
		dc.b $6C 
		dc.b   7
		dc.b $9F 
		dc.b $5A 
		dc.b $AA 
		dc.b $A8 
		dc.b $D6 
		dc.b   5
		dc.b $E4 
		dc.b $FA 
		dc.b $AA 
		dc.b $A9 
		dc.b $F8 
		dc.b   5
		dc.b $7C 
		dc.b $11
		dc.b $FA 
		dc.b $3B 
		dc.b $D6 
		dc.b $C3 
		dc.b $F2 
		dc.b $DB 
		dc.b $F9 
		dc.b $C9 
		dc.b $C1 
		dc.b $2E 
		dc.b $75 
		dc.b $55 
		dc.b $48 
		dc.b  $A
		dc.b $EE 
		dc.b $82 
		dc.b $3B 
		dc.b $D5 
		dc.b $55 
		dc.b $55 
		dc.b $50 
		dc.b $C0 
		dc.b $56 
		dc.b $5A 
		dc.b $80 
		dc.b $67 
		dc.b $E7 
		dc.b $BF 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $31 
		dc.b $A8 
		dc.b  $F
		dc.b $73 
		dc.b $51 
		dc.b $FD 
		dc.b $2B 
		dc.b $55 
		dc.b $56 
		dc.b $1B
		dc.b $FD 
		dc.b $55 
		dc.b $12
		dc.b $40 
		dc.b $EF 
		dc.b $E0 
		dc.b $9C 
		dc.b $7E 
		dc.b   4
		dc.b  $B
		dc.b   3
		dc.b $E7 
		dc.b $CA 
		dc.b   1
		dc.b $57 
		dc.b $70 
		dc.b $33 
		dc.b $78 
		dc.b $74 
		dc.b $2B 
		dc.b $F5 
		dc.b $A0 
		dc.b $2A 
		dc.b $FF
		dc.b $94 
		dc.b $12
		dc.b $FC 
		dc.b $50 
		dc.b $10
		dc.b $E0 
		dc.b $55 
		dc.b $62 
		dc.b $B3 
		dc.b   1
		dc.b $2A 
		dc.b $11
		dc.b $DE 
		dc.b $AA 
		dc.b $86 
		dc.b   0
		dc.b $8F 
		dc.b $C3 
		dc.b $5E 
		dc.b $7A 
		dc.b $F5 
		dc.b $50 
		dc.b   9
		dc.b $73 
		dc.b $40 
		dc.b $FF
		dc.b $D5 
		dc.b $4D 
		dc.b $6C 
		dc.b  $D
		dc.b $CD 
		dc.b $47 
		dc.b $95 
		dc.b $55 
		dc.b $55 
		dc.b $56 
		dc.b $1B
		dc.b $FD 
		dc.b $52 
		dc.b $55 
		dc.b $FD 
		dc.b $5A 
		dc.b $C0 
		dc.b $3C 
		dc.b $BA 
		dc.b  $C
		dc.b $BC 
		dc.b   1
		dc.b $8B 
		dc.b $FB 
		dc.b $F4 
		dc.b $CE 
		dc.b $3B 
		dc.b $A1 
		dc.b $F0 
		dc.b $97 
		dc.b $20
		dc.b $35 
		dc.b $E0 
		dc.b $EA 
		dc.b $E7 
		dc.b $D7 
		dc.b $9B 
		dc.b $58 
		dc.b $2A 
		dc.b $81 
		dc.b $1E
		dc.b $5A 
		dc.b $A8 
		dc.b $37 
		dc.b $EA 
		dc.b $88 
		dc.b $C8 
		dc.b $EA 
		dc.b $A4 
		dc.b $1A
		dc.b  $F
		dc.b $84 
		dc.b $FC 
		dc.b $CE 
		dc.b $30 
		dc.b $16
		dc.b $DE 
		dc.b $A7 
		dc.b $26 
		dc.b $1E
		dc.b $6A 
		dc.b $A9 
		dc.b $29 
		dc.b $F8 
		dc.b $25 
		dc.b $6A 
		dc.b $AA 
		dc.b $AA 
		dc.b $91 
		dc.b $F6 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $47 
		dc.b $7A 
		dc.b $AB 
		dc.b   4
		dc.b $FD 
		dc.b $1D
		dc.b $D0 
		dc.b $47 
		dc.b $7A 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A4 
		dc.b $60 
		dc.b $EB 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $61 
		dc.b $F3 
		dc.b $50 
		dc.b $50 
		dc.b $D5 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $55 
		dc.b $54 
		dc.b   3
		dc.b $2F 
		dc.b $3D 
		dc.b $FA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $40 
		dc.b $7B 
		dc.b $9A 
		dc.b $8F 
		dc.b $E9 
		dc.b $5A 
		dc.b  $D
		dc.b $FE 
		dc.b $AA 
		dc.b $89 
		dc.b $20
		dc.b   9
		dc.b $B6 
		dc.b  $A
		dc.b $3C 
		dc.b   4
		dc.b $17
		dc.b $81 
		dc.b $14
		dc.b $1F
		dc.b   9
		dc.b $FF
		dc.b $94 
		dc.b $12
		dc.b $FC 
		dc.b $50 
		dc.b  $E
		dc.b $2C 
		dc.b $56 
		dc.b $60 
		dc.b $19
		dc.b $78 
		dc.b $AF 
		dc.b   2
		dc.b $16
		dc.b $68 
		dc.b $1F
		dc.b $FA 
		dc.b $AA 
		dc.b $AA 
		dc.b $40 
		dc.b $5B 
		dc.b $78 
		dc.b   4
		dc.b $17
		dc.b $40 
		dc.b $32 
		dc.b $78 
		dc.b $AF 
		dc.b $E8 
		dc.b $EE 
		dc.b $87 
		dc.b $C2 
		dc.b $5C 
		dc.b $80 
		dc.b $65 
		dc.b $40 
		dc.b $42 
		dc.b $EC 
		dc.b   9
		dc.b   2
		dc.b $65 
		dc.b $83 
		dc.b $78 
		dc.b $D0 
		dc.b $7C 
		dc.b  $A
		dc.b $AE 
		dc.b $D5 
		dc.b $55 
		dc.b $55 
		dc.b $50 
		dc.b $19
		dc.b $A0 
		dc.b $59 
		dc.b $F4 
		dc.b  $C
		dc.b $66 
		dc.b $A0 
		dc.b $16
		dc.b $65 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   4
		dc.b $5E 
		dc.b $A5 
		dc.b $6A 
		dc.b $AA 
		dc.b  $B
		dc.b $80 
		dc.b $42 
		dc.b $FB 
		dc.b  $E
		dc.b $EC 
		dc.b   8
		dc.b $CF 
		dc.b   0
		dc.b $F7 
		dc.b $F0 
		dc.b $EF 
		dc.b   0
		dc.b $44 
		dc.b $F1 
		dc.b $56 
		dc.b $23 
		dc.b   1
		dc.b $57 
		dc.b $D6 
		dc.b $AA 
		dc.b $A0 
		dc.b $29 
		dc.b $E2 
		dc.b $2C 
		dc.b $15
		dc.b $FD 
		dc.b $35 
		dc.b $DA 
		dc.b $1D
		dc.b $ED 
		dc.b $A6 
		dc.b  $B
		dc.b $F4 
		dc.b $25 
		dc.b $C8 
		dc.b $2F 
		dc.b $60 
		dc.b $48 
		dc.b $3C 
		dc.b $C1 
		dc.b $FE 
		dc.b $60 
		dc.b $2C 
		dc.b $CA 
		dc.b   8
		dc.b $F9 
		dc.b $A3 
		dc.b $B2 
		dc.b $D5 
		dc.b $AA 
		dc.b $A0 
		dc.b   8
		dc.b $79 
		dc.b $6A 
		dc.b $A0 
		dc.b $1C
		dc.b $FF
		dc.b $1D
		dc.b $9F 
		dc.b   6
		dc.b $FE 
		dc.b $24 
		dc.b $77 
		dc.b $8A 
		dc.b   9
		dc.b $9C 
		dc.b   6
		dc.b $96 
		dc.b $2E 
		dc.b $C0 
		dc.b $8B 
		dc.b $F8 
		dc.b $77 
		dc.b $82 
		dc.b $7B 
		dc.b $B0 
		dc.b $57 
		dc.b $E0 
		dc.b $4E 
		dc.b $FA 
		dc.b $3B 
		dc.b $A0 
		dc.b $35 
		dc.b $E1 
		dc.b $FE 
		dc.b $7B 
		dc.b $37 
		dc.b $82 
		dc.b $50 

; =============== S U B R O U T I N E =======================================

sub_5A18:
		clr.w   ((word_FFC0BE-$1000000)).w
		move.b  #1,((byte_FFB53A-$1000000)).w
		clr.b   ((unk_FFB4CA-$1000000)).w
loc_5A26:
		btst    #6,((byte_FFF818-$1000000)).w
		beq.s   loc_5A3E
		clr.w   d0
		clr.b   ((unk_FFB4CB-$1000000)).w
		jsr     sub_8070
		bsr.w   sub_5556
loc_5A3E:
		move.b  #1,((byte_FFB526-$1000000)).w
		jsr     sub_8038
		tst.w   (word_FFD0BC).l
		beq.s   loc_5A62
		move.w  d0,-(sp)
		bsr.w   sub_5568
		clr.w   d0
		jsr     sub_8074
		move.w  (sp)+,d0
loc_5A62:
		tst.b   d0
		bmi.w   return_5A80
		clr.w   d0
		move.b  ((byte_FFB528-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_5A78(pc,d0.w),d0
		jmp     off_5A78(pc,d0.w)
off_5A78:
		dc.w sub_5A88-off_5A78
		dc.w loc_5A9E-off_5A78
		dc.w loc_5B4A-off_5A78
		dc.w sub_5A82-off_5A78
return_5A80:
		rts

	; End of function sub_5A18


; =============== S U B R O U T I N E =======================================

sub_5A82:
		jmp     sub_10020

	; End of function sub_5A82


; =============== S U B R O U T I N E =======================================

sub_5A88:
		cmpi.b  #$1E,((unk_FFA1C6-$1000000)).w
		beq.s   loc_5A98
		jmp     loc_10028
		bra.s   loc_5A9E
loc_5A98:
		jmp     (loc_344).l

	; End of function sub_5A88


; START OF FUNCTION CHUNK FOR sub_5A88

loc_5A9E:
		clr.b   ((unk_FFB4C9-$1000000)).w
		clr.b   ((unk_FFB4C5-$1000000)).w
		clr.w   d0
		jsr     sub_200F4
		cmpi.b  #$FF,(a0)
		bne.s   loc_5ABE
		moveq   #1,d0
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5ABE:
		move.b  #2,((byte_FFB526-$1000000)).w
		bsr.w   sub_8048
		cmpi.w  #$FFFF,d0
		bne.s   loc_5AD8
		jsr     (sub_240).l
		bra.w   loc_5A26
loc_5AD8:
		move.b  d1,((unk_FFB51C-$1000000)).w
		clr.w   d0
		jsr     j_GetForceMemberMP
		move.w  d1,-(sp)
		move.b  ((unk_FFB51C-$1000000)).w,d1
		jsr     sub_202A4
		move.w  (sp)+,d1
		cmp.w   d1,d2
		ble.s   loc_5B00
		moveq   #3,d0
		bsr.w   sub_8078
		bra.w   loc_5A26
loc_5B00:
		move.w  d2,-(sp)
		clr.w   ((word_FFF844-$1000000)).w
		move.b  ((unk_FFB51C-$1000000)).w,d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF846-$1000000)).w
		move.w  (sp)+,d1
		lsr.w   #6,d1
		ext.l   d1
		addq.l  #1,d1
		move.l  d1,((dword_FFF900-$1000000)).w
		trap    #5
		move.w  #$1B5,d0
		trap    #8
		trap    #0

; END OF FUNCTION CHUNK FOR sub_5A88

		dc.w $4D
		move.w  #$1EA,d0
		trap    #8
		trap    #7
		move.w  #$1D1,d0
		trap    #8
		move.w  #$1EA,d0
		trap    #8
		trap    #6
		clr.w   d0
		move.w  (sp)+,d1
		bra.w   loc_5A26
loc_5B4A:       bsr.w   sub_5B54
		bmi.w   loc_5A3E
		rts

; =============== S U B R O U T I N E =======================================

sub_5B54:
		clr.w   ((word_FFC0BE-$1000000)).w
loc_5B58:
		tst.w   (word_FFD984).l
		beq.s   loc_5B62
		trap    #6
loc_5B62:
		clr.b   ((unk_FFB52A-$1000000)).w
		move.b  #4,((byte_FFB526-$1000000)).w
		jsr     sub_8048
		tst.w   d0
		bge.w   loc_5B7A
		rts
loc_5B7A:
		add.w   d0,d0
		move.w  off_5B84(pc,d0.w),d0
		jmp     off_5B84(pc,d0.w)

	; End of function sub_5B54

off_5B84:       dc.w sub_5B8C-off_5B84
		dc.w sub_5CFE-off_5B84
		dc.w sub_5EA0-off_5B84
		dc.w sub_5F4C-off_5B84

; =============== S U B R O U T I N E =======================================

sub_5B8C:
		trap    #5
		bsr.w   sub_617C
loc_5B92:
		jsr     (sub_328).l
		move.w  #$1C,d0
		trap    #8
		jsr     sub_8044
		tst.w   d0
		bmi.s   loc_5B58
		move.w  d0,((word_FFB7C4-$1000000)).w
		jsr     sub_200E4
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.b  d0,((byte_FFF001-$1000000)).w
		jsr     sub_200E4
		move.b  ((byte_FFB528-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		andi.w  #$3F,d0 
		move.w  d0,((word_FFF844-$1000000)).w
		cmpi.b  #$27,d0 
		bne.w   loc_5C30
		cmpi.b  #8,((byte_FF9C00-$1000000)).w
		bne.w   loc_5C30
		tst.b   ((byte_FF9C01-$1000000)).w
		bne.w   loc_5C30
		cmpi.w  #$170A,((word_FF9C4A-$1000000)).w
		bne.w   loc_5C30
		moveq   #$29,d0 
		bsr.w   GetEventFlag
		beq.w   loc_5C2E
		moveq   #$31,d0 
		bsr.w   GetEventFlag
		bne.w   loc_5C2E
		moveq   #$31,d0 
		bsr.w   sub_3054
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #6
		move.b  #5,((unk_FF9C86-$1000000)).w
		clr.b   ((byte_FFB538-$1000000)).w
		jmp     sub_124008

	; End of function sub_5B8C


; START OF FUNCTION CHUNK FOR sub_5B8C

loc_5C2E:
		moveq   #$27,d0 
loc_5C30:
		cmpi.b  #2,d0
		bne.w   loc_5C7E
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8040
		tst.w   d0
		bmi.w   loc_5B92
		move.w  d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   sub_73D4
		jsr     sub_202B8
		move.w  ((unk_FFA9E2-$1000000)).w,((word_FFF844-$1000000)).w
		move.l  ((unk_FFA9E6-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((unk_FFA9E0-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		trap    #6
		rts
loc_5C7E:
		cmpi.b  #5,d0
		blt.w   loc_5CE0
		cmpi.b  #9,d0
		bgt.w   loc_5CE0
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8040
		tst.w   d0
		bmi.w   loc_5B92
		movem.w d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   sub_73D4
		move.w  ((word_FFF844-$1000000)).w,d1
		subq.w  #5,d1
		jsr     sub_202B4
		move.w  ((unk_FFA9E2-$1000000)).w,((word_FFF844-$1000000)).w
		move.l  ((unk_FFA9E6-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((unk_FFA9E0-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		trap    #6
		jmp     sub_20348
loc_5CE0:
		jmp     loc_10024

; END OF FUNCTION CHUNK FOR sub_5B8C


; =============== S U B R O U T I N E =======================================

sub_5CE6:
		move.w  #$1EA,d0
		trap    #8
		move.w  ((word_FFB7C4-$1000000)).w,d0
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		jmp     sub_20250

	; End of function sub_5CE6


; =============== S U B R O U T I N E =======================================

nullsub_5CFC:
		rts

	; End of function nullsub_5CFC


; =============== S U B R O U T I N E =======================================

sub_5CFE:
		trap    #5
		bsr.w   sub_617C
		move.w  #$1F,d0
		trap    #8
		jsr     sub_8044
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_5B58
		jsr     sub_200E4
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF844-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.s   loc_5D5C
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_5D5C
		jsr     sub_805C
		trap    #7
		move.w  #$21,d0 
		trap    #8
		bra.w   loc_5E9A
loc_5D5C:
		trap    #7
		move.w  #$20,d0 
		trap    #8
		jsr     sub_8060
loc_5D6A:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_5D7E
		jsr     sub_8068
		bra.w   loc_5B58
loc_5D7E:
		jsr     sub_200E4
		move.w  d0,((unk_FFB7C8-$1000000)).w
		cmpi.b  #$FF,3(a0)
		beq.s   loc_5DA0
		move.w  d0,-(sp)
		jsr     sub_806C
		move.w  (sp)+,d0
		tst.b   ((byte_FFB528-$1000000)).w
		blt.s   loc_5D6A
loc_5DA0:
		jsr     sub_8068
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		move.w  d1,((unk_FFB7CA-$1000000)).w
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_200E4
		move.b  (a0,d1.w),d1
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     sub_2024C
		bcc.w   loc_5E8C
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     sub_200E4
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF844-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_5E14
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_5E14
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_5E9A
loc_5E14:
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		cmp.w   ((word_FFB7C4-$1000000)).w,d0
		bne.w   loc_5E40
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     sub_200E4
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     sub_20250
		move.w  d2,d1
		jsr     sub_2024C
		bra.s   loc_5E9A
loc_5E40:
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     sub_200E4
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     sub_20250
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_200E4
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     sub_20250
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
		jsr     sub_2024C
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  (sp)+,d1
		jsr     sub_2024C
		bra.s   loc_5E9A
loc_5E8C:
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_20250
loc_5E9A:
		trap    #7
		trap    #6
		rts

	; End of function sub_5CFE


; =============== S U B R O U T I N E =======================================

sub_5EA0:
		trap    #5
		bsr.w   sub_617C
		move.w  #$23,d0 
		trap    #8
		jsr     sub_8040
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_5B58
		move.w  d0,-(sp)
		move.w  d0,d2
		bsr.w   sub_73D4
		move.w  d0,((word_FFF844-$1000000)).w
		move.w  (sp)+,d0
		move.w  #$300,d1
		jsr     sub_20294
		bne.s   loc_5EE0
		trap    #7
		move.w  #$22,d0 
		trap    #8
		trap    #7
		bra.s   loc_5F46
loc_5EE0:
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_20294
		beq.w   loc_5F08
		clr.b   ((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F08
		bsr.w   sub_6C6E
		trap    #7
		bra.w   loc_5B58
loc_5F08:
		move.w  #$200,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_20294
		beq.w   loc_5F42
		move.b  #1,((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_5F42
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_20294
		bne.s   loc_5EE0
		bsr.w   sub_6C6E
		trap    #7
		bra.w   loc_5B58
loc_5F42:
		bsr.w   sub_6C6E
loc_5F46:
		trap    #7
		trap    #6
		rts

	; End of function sub_5EA0


; =============== S U B R O U T I N E =======================================

sub_5F4C:
		trap    #5
		bsr.w   sub_617C
		move.w  #$25,d0 
		trap    #8
		jsr     sub_8044
		tst.w   d0
		bmi.w   loc_5B58
		jsr     sub_200E4
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF844-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_5FAA
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_5FAA
		jsr     sub_805C
		trap    #7
		move.w  #$21,d0 
		trap    #8
		bra.w   loc_5FD0
loc_5FAA:
		jsr     sub_2026C
		btst    #$B,d2
		bne.s   loc_5FC8
		jsr     sub_2035C
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_20250
		bra.s   loc_5FD0
loc_5FC8:
		trap    #7
		move.w  #$26,d0 
		trap    #8
loc_5FD0:
		trap    #7
		trap    #6
		rts

	; End of function sub_5F4C


; =============== S U B R O U T I N E =======================================

sub_5FD6:
		trap    #7
		move.w  #2,d0
		trap    #8
		trap    #6
		rts

	; End of function sub_5FD6


; =============== S U B R O U T I N E =======================================

sub_5FE2:
		move.w  d0,-(sp)
		tst.w   (word_FFD082).l
		bne.s   loc_5FF4
		moveq   #$29,d0 
		jsr     sub_802C
loc_5FF4:
		move.w  (sp)+,d0
		rts

	; End of function sub_5FE2


; =============== S U B R O U T I N E =======================================

sub_5FF8:
		jsr     sub_20014
		bsr.s   sub_5FE2
loc_6000:
		trap    #5
		move.w  #0,d0
		trap    #8
loc_6008:
		trap    #6
		clr.b   ((unk_FFB4CA-$1000000)).w
loc_600E:
		move.b  #8,((byte_FFB526-$1000000)).w
		jsr     sub_8048
		tst.b   d0
		bge.s   loc_6028
		trap    #5
loc_6020:
		move.w  #3,d0
		trap    #8
		rts
loc_6028:
		clr.w   d0
		move.b  ((byte_FFB528-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_6038(pc,d0.w),d0
		jmp     off_6038(pc,d0.w)

	; End of function sub_5FF8

off_6038:       dc.w sub_6068-off_6038
		dc.w sub_60AE-off_6038
		dc.w sub_6268-off_6038
		dc.w sub_61D0-off_6038
		trap    #5

; START OF FUNCTION CHUNK FOR sub_60AE

loc_6042:
		move.w  #1,d0
		trap    #8
		jsr     (sub_334).l
		tst.b   ((byte_FFB528-$1000000)).w
		bge.w   loc_6008
		trap    #7
		bra.s   loc_6020
loc_605A:
		bsr.s   sub_5FE2
		trap    #7
		move.w  #2,d0
		trap    #8
		trap    #7
		bra.s   loc_6042

; END OF FUNCTION CHUNK FOR sub_60AE


; =============== S U B R O U T I N E =======================================

sub_6068:
		trap    #5
		bsr.w   sub_6078
		addi.w  #$2EE,d0
		trap    #8
		trap    #7
		bra.s   loc_6042

	; End of function sub_6068


; =============== S U B R O U T I N E =======================================

sub_6078:
		clr.w   d2
		move.b  ((byte_FF9C00-$1000000)).w,d2
		subq.w  #1,d2
		move.w  d2,d1
		move.b  unk_60A6(pc,d2.w),d2
		subq.w  #1,d2
		clr.w   d0
loc_608A:
		btst    d0,((byte_FF9C53-$1000000)).w
		beq.s   loc_6098
		cmp.b   d0,d2
		beq.s   loc_6098
		addq.w  #1,d0
		bra.s   loc_608A
loc_6098:
		add.b   unk_609E(pc,d1.w),d0
		rts

	; End of function sub_6078

unk_609E:       dc.b   0
		dc.b   4
		dc.b   8
		dc.b  $B
		dc.b  $E
		dc.b $11
		dc.b $15
		dc.b $19
unk_60A6:       dc.b   4
		dc.b   4
		dc.b   3
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   5

; =============== S U B R O U T I N E =======================================

sub_60AE:
		trap    #5
loc_60B0:
		jsr     sub_2003C
		tst.w   ((unk_FFCB82-$1000000)).w
		bne.w   loc_60CA
		move.w  #6,d0
		trap    #8
		trap    #7
		bra.w   loc_6042
loc_60CA:
		move.w  #4,d0
		trap    #8
		jsr     sub_8030
		move.b  #$FF,((unk_FFC140-$1000000)).w
		jsr     sub_8040
		bsr.w   sub_5FE2
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_605A
		jsr     j_GetHPFromForceID
		tst.w   d1
		bne.s   loc_6112
		move.w  d0,((word_FFF844-$1000000)).w
		trap    #7
		move.w  #7,d0
		trap    #8
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
		bmi.s   loc_60CA
loc_6112:
		trap    #7
		move.w  #5,d0
		trap    #8
		jsr     sub_20038
		jsr     sub_8030
		move.b  #$FF,((unk_FFC140-$1000000)).w
		jsr     sub_8040
		bsr.w   sub_5FE2
		move.w  d0,((unk_FFB7C6-$1000000)).w
		bmi.w   loc_605A
		bne.s   loc_614A
		trap    #7
		move.w  #$1A,d0
		trap    #8
		bra.s   loc_6112
loc_614A:
		move.w  ((unk_FFB7C6-$1000000)).w,d0
		jsr     sub_2001C
		move.w  ((word_FFB7C4-$1000000)).w,d0
		moveq   #$B,d1
		jsr     sub_20018
		trap    #7
		move.w  #8,d0
		trap    #8
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
		beq.w   loc_60B0
		bra.w   loc_6042

	; End of function sub_60AE


; =============== S U B R O U T I N E =======================================

sub_617C:
		move.w  #$C07E,((unk_FFC0B6-$1000000)).w
		jsr     sub_20038
		move.w  ((unk_FFCB82-$1000000)).w,d7
		subq.w  #1,d7
		move.w  d7,-(sp)
		movem.l d7-a1,-(sp)
		lea     ((unk_FFCB84-$1000000)).w,a0
		lea     (unk_FF0FFE).l,a1
		move.w  #$C,d7
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		jsr     sub_20034
		lea     (unk_FF0FFE).l,a0
		move.w  (sp)+,d7
loc_61BA:
		lea     ((unk_FFCB84-$1000000)).w,a1
		move.b  (a0)+,d0
loc_61C0:
		cmp.b   (a1)+,d0
		bne.s   loc_61C0
		bset    #6,-1(a1)
		dbf     d7,loc_61BA
		rts

	; End of function sub_617C


; =============== S U B R O U T I N E =======================================

sub_61D0:
		trap    #5
		bsr.s   sub_617C
loc_61D4:
		move.w  #$18,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_605A
		trap    #6
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_20304
		move.w  d1,d0
		jsr     sub_802C
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_8058
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$20010901,d1
		move.w  #8,d2
		jsr     sub_8020
		jsr     (sub_2CC).l
		lea     ((unk_FFB7DA-$1000000)).w,a0
		move.w  #$161A,d0
		move.l  #$9012001,d1
		move.w  #8,d2
		jsr     sub_8020
		jsr     sub_8030
		bsr.w   sub_5FE2
		trap    #5
		move.w  #$19,d0
		trap    #8
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
		beq.w   loc_61D4
		bra.w   loc_6042

	; End of function sub_61D0


; =============== S U B R O U T I N E =======================================

sub_6268:
		clr.b   ((unk_FFB52A-$1000000)).w
		move.b  #4,((byte_FFB526-$1000000)).w
		jsr     sub_8048
		cmpi.w  #$FFFF,d0
		beq.w   loc_600E
		add.w   d0,d0
		move.w  off_628A(pc,d0.w),d0
		jmp     off_628A(pc,d0.w)

	; End of function sub_6268

off_628A:       dc.w sub_6292-off_628A
		dc.w sub_63B4-off_628A
		dc.w sub_6588-off_628A
		dc.w sub_6650-off_628A

; =============== S U B R O U T I N E =======================================

sub_6292:
		trap    #5
		bsr.w   sub_617C
loc_6298:
		jsr     (sub_328).l
		move.w  #9,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8044
		bsr.w   sub_5FE2
		tst.w   d0
		bmi.w   loc_605A
		move.w  d0,((word_FFB7C4-$1000000)).w
		jsr     sub_200F0
		clr.w   d0
		move.b  ((byte_FFB528-$1000000)).w,d0
		move.b  (a0,d0.w),d0
		trap    #7
		andi.w  #$3F,d0 
		move.w  d0,((word_FFF844-$1000000)).w
		cmpi.b  #2,d0
		bne.w   loc_632A
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		tst.w   d0
		bmi.s   loc_6298
		move.w  d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   sub_73D4
		jsr     sub_202B8
		move.w  ((unk_FFA9E2-$1000000)).w,((word_FFF844-$1000000)).w
		move.l  ((unk_FFA9E6-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((unk_FFA9E0-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		bra.w   loc_6398

	; End of function sub_6292


; START OF FUNCTION CHUNK FOR sub_6292

loc_632A:
		cmpi.b  #5,d0
		blt.w   loc_6392
		cmpi.b  #9,d0
		bgt.w   loc_6392
		trap    #7
		move.w  #$1D,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		tst.w   d0
		bmi.w   loc_6298
		movem.w d0,-(sp)
		trap    #7
		move.w  #$21C,d0
		trap    #8
		trap    #7
		move.w  (sp)+,d2
		bsr.w   sub_73D4
		move.w  ((word_FFF844-$1000000)).w,d1
		subq.w  #5,d1
		jsr     sub_202B4
		move.w  ((unk_FFA9E2-$1000000)).w,((word_FFF844-$1000000)).w
		move.l  ((unk_FFA9E6-$1000000)).w,((dword_FFF900-$1000000)).w
		move.w  ((unk_FFA9E0-$1000000)).w,d0
		trap    #8
		bsr.w   sub_5CE6
		jsr     sub_20348
		bra.s   loc_6398
loc_6392:
		move.w  #$B,d0
		trap    #8
loc_6398:
		trap    #7
		move.w  #$C,d0
		trap    #8
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
		beq.w   loc_6298
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_6292


; =============== S U B R O U T I N E =======================================

sub_63B4:
		trap    #5
		bsr.w   sub_617C
loc_63BA:
		move.w  #$D,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8044
		bsr.w   sub_5FE2
		move.w  d0,((word_FFB7C4-$1000000)).w
		bmi.w   loc_605A
		jsr     sub_200F0
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF844-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_641E
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_641E
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_656C

	; End of function sub_63B4


; START OF FUNCTION CHUNK FOR sub_63B4

loc_641E:
		trap    #7
		move.w  #$10,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8060
loc_6432:
		jsr     sub_8064
		tst.w   d0
		bpl.s   loc_644A
		jsr     sub_8068
		bsr.w   sub_5FE2
		bra.w   loc_605A
loc_644A:
		jsr     sub_200E4
		move.w  d0,((unk_FFB7C8-$1000000)).w
		cmpi.b  #$FF,3(a0)
		beq.w   loc_646E
		move.w  d0,-(sp)
		jsr     sub_806C
		move.w  (sp)+,d0
		tst.b   ((byte_FFB528-$1000000)).w
		blt.s   loc_6432
loc_646E:
		jsr     sub_8068
		bsr.w   sub_5FE2
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
		move.w  d1,((unk_FFB7CA-$1000000)).w
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_200F0
		move.b  (a0,d1.w),d1
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     sub_2025C
		bcc.w   loc_655E
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		jsr     sub_200F0
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF844-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_64E6
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_64E6
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_656C
loc_64E6:
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		cmp.w   ((word_FFB7C4-$1000000)).w,d0
		bne.w   loc_6512
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     sub_200E4
		clr.w   d2
		move.b  (a0,d1.w),d2
		jsr     sub_20250
		move.w  d2,d1
		jsr     sub_2024C
		bra.s   loc_656C
loc_6512:
		move.w  ((unk_FFB7CA-$1000000)).w,d1
		jsr     sub_200F0
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.w  d2,-(sp)
		jsr     sub_20260
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_200F0
		clr.w   d2
		move.b  (a0,d1.w),d2
loc_653E:
		jsr     sub_20260
loc_6544:
		move.w  ((unk_FFB7C8-$1000000)).w,d0
		move.w  d2,d1
loc_654A:
		jsr     sub_2025C
loc_6550:
		move.w  ((word_FFB7C4-$1000000)).w,d0
		move.w  (sp)+,d1
loc_6556:
		jsr     sub_2025C
		bra.s   loc_656C
loc_655E:
		move.w  ((word_FFB7C4-$1000000)).w,d0
loc_6562:
		move.w  ((unk_FFB7C6-$1000000)).w,d1
loc_6566:
		jsr     sub_20260
loc_656C:
		trap    #7
loc_656E:
		move.w  #$11,d0
		trap    #8
loc_6574:
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
loc_6580:
		beq.w   loc_63BA
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_63B4


; =============== S U B R O U T I N E =======================================

sub_6588:
		trap    #5
		bsr.w   sub_617C
loc_658E:
		move.w  #$12,d0
		trap    #8
		jsr     sub_8030
		jsr     sub_8040
		move.w  d0,((word_FFB7C4-$1000000)).w
loc_65A4:
		bmi.w   loc_605A
		move.w  d0,d2
loc_65AA:
		bsr.w   sub_73D4
		move.w  d0,((word_FFF844-$1000000)).w
		move.w  #$300,d1
loc_65B6:
		jsr     sub_20280
		bne.s   loc_65CE
		bsr.w   sub_5FE2
		trap    #7
		move.w  #$1B,d0
		trap    #8
		trap    #7
		bra.s   loc_6630

	; End of function sub_6588


; START OF FUNCTION CHUNK FOR sub_6588

loc_65CE:
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     sub_20280
		beq.w   loc_65F4
loc_65E0:
		clr.b   ((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_65F4
loc_65EC:
		bsr.w   sub_6C6E
		bra.w   loc_605A
loc_65F4:
		move.w  #$200,d1
loc_65F8:
		move.w  ((word_FFB7C4-$1000000)).w,d0
loc_65FC:
		jsr     sub_20280
		beq.w   loc_662C
		move.b  #1,((byte_FFB526-$1000000)).w
		bsr.w   sub_6CB6
		tst.w   d0
		bpl.s   loc_662C
		move.w  #$100,d1
		move.w  ((word_FFB7C4-$1000000)).w,d0
loc_661C:
		jsr     sub_20280
		bne.s   loc_65CE
		bsr.w   sub_6C6E
loc_6628:
		bra.w   loc_605A
loc_662C:
		bsr.w   sub_6C6E
loc_6630:
		bsr.w   sub_5FE2
		trap    #7
		move.w  #$14,d0
		trap    #8
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
		beq.w   loc_658E
loc_664C:
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_6588


; =============== S U B R O U T I N E =======================================

sub_6650:
		trap    #5
loc_6652:
		bsr.w   sub_617C
loc_6656:
		move.w  #$15,d0
		trap    #8
loc_665C:
		jsr     sub_8030
loc_6662:
		jsr     sub_8044
		bsr.w   sub_5FE2
		tst.w   d0
		bmi.w   loc_605A
		jsr     sub_200F0
		clr.w   d1
		move.b  ((byte_FFB528-$1000000)).w,d1
loc_667E:
		move.w  d1,((unk_FFB7C6-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,-(sp)
		andi.w  #$3F,d1 
		move.w  d1,((word_FFF844-$1000000)).w
		move.w  (sp)+,d1
		btst    #7,d1
		beq.w   loc_66B8
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_66B8
		jsr     sub_805C
		trap    #7
		move.w  #$F,d0
		trap    #8
		bra.w   loc_66DE

	; End of function sub_6650


; START OF FUNCTION CHUNK FOR sub_6650

loc_66B8:
		jsr     sub_2026C
		btst    #$B,d2
		bne.s   loc_66D6
		jsr     sub_2035C
		move.w  ((unk_FFB7C6-$1000000)).w,d1
		jsr     sub_20260
		bra.s   loc_66DE
loc_66D6:
		trap    #7
		move.w  #$16,d0
		trap    #8
loc_66DE:
		trap    #7
		move.w  #$17,d0
		trap    #8
		jsr     (sub_334).l
		trap    #7
		tst.b   ((byte_FFB528-$1000000)).w
		beq.w   loc_6656
		bra.w   loc_6042

; END OF FUNCTION CHUNK FOR sub_6650


; =============== S U B R O U T I N E =======================================

sub_66FA:
		move.w  #1,(word_FFB7C4).l
		bra.w   loc_67BC

	; End of function sub_66FA


; =============== S U B R O U T I N E =======================================

sub_6706:
		move.l  sp,(dword_FF0EFE).l
		clr.w   (word_FFB7C4).l
		jsr     (sub_214).l
		bsr.w   sub_679A
		jsr     sub_203A4
		clr.b   (byte_FFB53A).l
		move.w  #$15,(word_FF9C48).l
		move.w  #$21A,(word_FF9C4A).l
		move.b  #1,(byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (byte_FFB4C7).l
		move.b  #$FF,(byte_FFB4D3).l
loc_6754:
		clr.w   d0
		jsr     j_GetTargetX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetTargetY
		or.w    d1,d6
		move.w  d0,-(sp)
		move.w  d6,d0
		jsr     sub_8094
		clr.b   (byte_FFB538).l
		jsr     (sub_240).l
		jsr     sub_8098
		move.w  (sp)+,d0
		move.b  d0,(byte_FFB4C6).l
		jsr     sub_809C
		jsr     sub_8090
		bra.s   loc_6754

	; End of function sub_6706


; =============== S U B R O U T I N E =======================================

sub_679A:
		move.b  #$FF,(byte_FF9C01).l
		move.b  #$FF,(byte_FF9C03).l
		clr.b   (byte_FF9C02).l
		jsr     sub_20400
		jsr     sub_203A0
loc_67BC:
		moveq   #$FFFFFFFF,d1
		moveq   #$1E,d7
		clr.w   d0
loc_67C2:
		jsr     j_SetTargetID
		addq.w  #1,d0
		dbf     d7,loc_67C2
		moveq   #1,d0
		lea     byte_69D4(pc), a1
		jsr     sub_20038
		lea     (unk_FFCB85).l,a0
		moveq   #$1E,d1
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetTargetX
		move.b  (a1)+,d1
		jsr     j_SetTargetY
		moveq   #2,d0
loc_6804:
		move.b  (a0)+,d1
		blt.s   loc_682C
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetTargetX
		move.b  (a1)+,d1
		jsr     j_SetTargetY
		addq.w  #1,d0
		bra.s   loc_6804
loc_682C:
		jsr     sub_2003C
		lea     (unk_FFCB84).l,a0
loc_6838:
		move.b  (a0)+,d1
		blt.s   loc_6860
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetTargetX
		move.b  (a1)+,d1
		jsr     j_SetTargetY
		addq.w  #1,d0
		bra.s   loc_6838
loc_6860:
		clr.w   d0
		clr.w   d1
		tst.w   (word_FFB7C4).l
		bne.s   loc_688C
		moveq   #1,d2
		jsr     j_SetTargetID
		jsr     sub_689C(pc)
		nop
		moveq   #2,d1
		jsr     j_SetTargetX
		moveq   #$1A,d1
		jsr     j_SetTargetY
		bra.s   return_6892
loc_688C:
		jsr     j_SetTargetID
return_6892:
		rts

	; End of function sub_679A


; =============== S U B R O U T I N E =======================================

sub_6894:
		move.w  #1,(word_FFB7C4).l

	; End of function sub_6894


; =============== S U B R O U T I N E =======================================

sub_689C:
		movem.w d0-d2,-(sp)
		movem.l a0-a1,-(sp)
		move.w  d0,-(sp)
		move.w  d1,d0
		cmpi.w  #$1E,d1
		beq.s   loc_68B8
		jsr     j_GetForceMemberHP_0
		tst.w   d1
		beq.s   loc_68C0
loc_68B8:
		jsr     sub_2030C
		bra.s   loc_68C2
loc_68C0:
		moveq   #$2B,d1 
loc_68C2:
		bsr.w   sub_690A
		move.w  (sp)+,d0
		lea     (unk_FF3000).l,a0
		move.w  d0,d7
		lsl.w   #3,d0
		add.w   d7,d0
		add.w   d0,d0
		addi.w  #$100,d0
		lsl.w   #5,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		tst.w   (word_FFB7C4).l
		bne.s   loc_68F4
		jsr     (sub_274).l
		bra.s   loc_6900
loc_68F4:
		jsr     (sub_278).l
loc_68FA:
		jsr     (sub_264).l
loc_6900:
		movem.l (sp)+,a0-a1
		movem.w (sp)+,d0-d2
		rts

	; End of function sub_689C


; =============== S U B R O U T I N E =======================================

sub_690A:
		move.w  d2,d7
		add.w   d7,d7
		move.w  off_6916(pc,d7.w),d7
		jmp     off_6916(pc,d7.w)

	; End of function sub_690A

off_6916:       dc.w sub_6932-off_6916
		dc.w sub_693A-off_6916
		dc.w sub_691E-off_6916
		dc.w sub_69CA-off_6916

; =============== S U B R O U T I N E =======================================

sub_691E:
		movea.l (p_pt_Sprites).l,a0

	; End of function sub_691E


; START OF FUNCTION CHUNK FOR sub_6932

loc_6924:
		move.w  d1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jmp     (sub_300).l

; END OF FUNCTION CHUNK FOR sub_6932


; =============== S U B R O U T I N E =======================================

sub_6932:
		movea.l (off_38008).l,a0
		bra.s   loc_6924

	; End of function sub_6932


; =============== S U B R O U T I N E =======================================

sub_693A:
		bsr.w   sub_69CA
		lea     (unk_FF3000).l,a0
		moveq   #1,d6
loc_6946:
		movea.l a0,a1
		adda.l  #$300,a1
		moveq   #$17,d7
loc_6950:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_6950
		movea.l a0,a1
		adda.l  #$240,a1
		moveq   #$17,d7
loc_6970:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_6970
		movea.l a0,a1
		adda.l  #$180,a1
		moveq   #$17,d7
loc_6990:
		move.l  (a0)+,d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		swap    d0
		rol.b   #4,d0
		rol.w   #8,d0
		rol.b   #4,d0
		move.l  d0,(a1)+
		dbf     d7,loc_6990
		dbf     d6,loc_6946
		movem.l d7-a1,-(sp)
		lea     (unk_FF3240).l,a0
		lea     (unk_FF3000).l,a1
		move.w  #$240,d7
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		rts

	; End of function sub_693A


; =============== S U B R O U T I N E =======================================

sub_69CA:
		movea.l (off_38004).l,a0
		bra.w   loc_6924

	; End of function sub_69CA

byte_69D4:      dc.b 1
		dc.b 3
		dc.b $18
		dc.b 2
		dc.b $D
		dc.b $17
		dc.b 2
		dc.b $E
		dc.b $17
		dc.b 2
		dc.b $10
		dc.b $17
		dc.b 2
		dc.b $11
		dc.b $17
		dc.b 2
		dc.b $D
		dc.b $19
		dc.b 2
		dc.b $E
		dc.b $19
		dc.b 2
		dc.b $10
		dc.b $19
		dc.b 2
		dc.b $11
		dc.b $19
		dc.b 2
		dc.b $D
		dc.b $1B
		dc.b 2
		dc.b $E
		dc.b $1B
		dc.b 2
		dc.b $10
		dc.b $1B
		dc.b 2
		dc.b $E
		dc.b 7
		dc.b 3
		dc.b $11
		dc.b 6
		dc.b 3
		dc.b $C
		dc.b $B
		dc.b 2
		dc.b $A
		dc.b 8
		dc.b 3
		dc.b $D
		dc.b $A
		dc.b 1
		dc.b $D
		dc.b 6
		dc.b 2
		dc.b $10
		dc.b 4
		dc.b 2
		dc.b $C
		dc.b 8
		dc.b 2
		dc.b 2
		dc.b 3
		dc.b 2
		dc.b $F
		dc.b 4
		dc.b 0
		dc.b $A
		dc.b 5
		dc.b 1
		dc.b 2
		dc.b 7
		dc.b 1
		dc.b 4
		dc.b 3
		dc.b 2
		dc.b $12
		dc.b 8
		dc.b 0
		dc.b 4
		dc.b 7
		dc.b 0
		dc.b 9
		dc.b 5
		dc.b 1
		dc.b 9
		dc.b 9
		dc.b 0
		dc.b 5
		dc.b $10

; =============== S U B R O U T I N E =======================================

sub_6A2E:
		jsr     sub_20044
		clr.w   (word_FFB7C4).l
		jsr     (sub_214).l
		bsr.w   sub_6A7E
		clr.b   (byte_FFB53A).l
		move.w  #$1605,(word_FF9C48).l
		move.w  #$1B09,(word_FF9C4A).l
		clr.b   (byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (byte_FFB4C7).l
		move.b  #$FF,(byte_FFB4D3).l
		move.b  #1,(byte_FFB4D7).l
		rts

	; End of function sub_6A2E


; =============== S U B R O U T I N E =======================================

sub_6A7E:
		clr.b   (byte_FF9C01).l
		clr.b   (byte_FF9C02).l
		move.b  #$FF,(byte_FF9C03).l
		jsr     sub_20400
		jsr     sub_203A0
		moveq   #$1F,d7
		lea     (unk_FFA1B6).l,a1
		lea     unk_6AB8(pc), a0
		nop
loc_6AAC:
		move.l  (a0)+,(a1)
		lea     $10(a1),a1
		dbf     d7,loc_6AAC
		rts

	; End of function sub_6A7E

unk_6AB8:       dc.b $1E
		dc.b $1B
		dc.b   9
		dc.b   0
		dc.b   1
		dc.b $1A
		dc.b  $A
		dc.b   0
		dc.b  $E
		dc.b $1B
		dc.b  $A
		dc.b   0
		dc.b  $A
		dc.b $1C
		dc.b  $A
		dc.b   0
		dc.b  $F
		dc.b $1C
		dc.b   8
		dc.b   0
		dc.b $13
		dc.b $1D
		dc.b   8
		dc.b   0
		dc.b   8
		dc.b $1D
		dc.b   9
		dc.b   0
		dc.b   3
		dc.b $1D
		dc.b  $A
		dc.b   0
		dc.b  $C
		dc.b $1C
		dc.b   9
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF

; START OF FUNCTION CHUNK FOR sub_5A88

loc_6B38:
		clr.w   d1
		clr.w   d2
		move.b  ((word_FF9C4A-$1000000)).w,d1
		move.b  ((word_FF9C4A+1-$1000000)).w,d2
loc_6B44:
		jsr     sub_80A8
		move.w  d2,d3
		mulu.w  ((unk_FFBC52-$1000000)).w,d3
		add.w   d1,d3
		lea     (unk_FFA4C0).l,a0
		btst    #2,(a0,d3.w)
		bne.s   loc_6B44
		move.w  d1,d3
		moveq   #1,d0
		moveq   #$1D,d7
loc_6B66:
		jsr     j_GetTargetX
		cmp.b   d1,d3
		bne.s   loc_6B7C
		jsr     j_GetTargetY
		cmp.b   d1,d2
		beq.w   loc_6B9A
loc_6B7C:
		addq.w  #1,d0
		dbf     d7,loc_6B66
		trap    #5
		move.w  #$1B0,d0
		trap    #8
loc_6B8A:
		bsr.w   sub_240
		tst.b   (byte_FF0E97).l
		beq.s   loc_6B8A
		trap    #6
		rts
loc_6B9A:
		move.w  d0,-(sp)
		jsr     j_GetTargetID
		move.w  d0,-(sp)
		move.w  d1,-(sp)
		move.w  d1,d0
		jsr     sub_2030C
		move.l  a0,-(sp)
		movea.l (off_1001C).l,a0
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d1
		addi.w  #$45,d1 
		move.w  d1,((word_FFC0BE-$1000000)).w
		movea.l (sp)+,a0
		move.w  (sp)+,d1
		move.w  (sp)+,d0
		clr.w   d2
		move.b  ((unk_FFB4D6-$1000000)).w,d2
		bsr.w   sub_6894
		move.w  (sp)+,d0
		cmpi.w  #1,d0
		bne.s   loc_6BF6
		jsr     (sub_338).l
		bsr.w   sub_66FA
		jsr     sub_8030
		jsr     (sub_30C).l
		rts
loc_6BF6:
		move.w  d0,-(sp)
		moveq   #$FFFFFFFF,d2
		moveq   #$23,d0 
		jsr     (j_GetEventFlag).l
		beq.s   loc_6C08
		moveq   #$39,d2 
		bra.s   loc_6C12
loc_6C08:
		cmpi.b  #$15,((word_FF9C4A+1-$1000000)).w
		bge.s   loc_6C12
		moveq   #$1C,d2
loc_6C12:
		move.w  (sp)+,d0
		jsr     j_GetTargetID
		move.w  d1,d0
		movem.w d0/d2,-(sp)
		move.w  d0,-(sp)
		jsr     sub_20304
		move.w  d1,d0
		jsr     sub_802C
		move.w  (sp)+,d0
		jsr     sub_80D0
		trap    #5
		movem.w (sp)+,d0/d2
		move.w  d0,-(sp)
		jsr     j_GetForceMemberHP_0
		tst.w   d1
		ble.s   loc_6C56
		andi.w  #$FF,d0
		addi.w  #$105,d0
		add.w   d2,d0
		bra.s   loc_6C5A
loc_6C56:
		move.w  #$15C,d0
loc_6C5A:
		trap    #8
		move.w  (sp)+,d0
		jsr     sub_80D4
		jsr     sub_8030
		trap    #6
		rts

; END OF FUNCTION CHUNK FOR sub_5A88


; =============== S U B R O U T I N E =======================================

sub_6C6E:
		bsr.w   sub_7104
		lea     (unk_FFB7DA).l,a0
		move.w  #$C09,d0
		move.l  #$9042004,d1
		move.w  #4,d2
		jsr     sub_8020
		bsr.w   sub_735A
		lea     (unk_FFB7DA).l,a0
		move.w  #$1203,d0
		move.l  #$9012001,d1
		move.w  #4,d2
		jsr     sub_8020
		move.w  (word_FFB7C4).l,d0
		jmp     sub_8030

	; End of function sub_6C6E


; =============== S U B R O U T I N E =======================================

sub_6CB6:
		tst.b   (byte_FFB526).l
		bne.s   loc_6CC4
		move.w  #$100,d1
		bra.s   loc_6CC8

	; End of function sub_6CB6


; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6CC4:
		move.w  #$200,d1
loc_6CC8:
		move.w  (word_FFB7C4).l,d0
		jsr     sub_2028C
		move.w  d2,(word_FFBC5A).l
		move.w  d2,(word_FFBC5C).l
		move.w  d3,(word_FFBC58).l
		bne.s   loc_6CEE
		clr.w   d0
		bra.w   loc_6D1E
loc_6CEE:
		cmpi.w  #$FFFF,d3
		bne.s   loc_6D08
		cmpi.w  #4,(word_FFA8C0).l
		bne.s   loc_6D02
		clr.w   d0
		bra.s   loc_6D04
loc_6D02:
		moveq   #3,d0
loc_6D04:
		bra.w   loc_6D1E
loc_6D08:
		bsr.w   sub_71A2
		clr.w   d0
		lea     (unk_FFA8C2).l,a0
loc_6D14:
		cmp.w   (a0),d3
		beq.s   loc_6D1E
		addq.w  #1,d0
		addq.l  #4,a0
		bra.s   loc_6D14
loc_6D1E:
		move.b  d0,(byte_FFB528).l
		move.w  d0,(word_FFBC5E).l
		move.b  d0,(byte_FFB529).l
		bsr.w   sub_70A6
		tst.w   (word_FFD082).l
		bne.w   loc_6D8E
		move.w  (word_FFB7C4).l,d0
		jsr     sub_20304
		move.w  d1,d0
		jsr     sub_802C
		bsr.w   sub_735A
		lea     (unk_FFB7DA).l,a0
		move.w  #$1203,d0
		move.l  #$20010901,d1
		move.w  #4,d2
		jsr     sub_8020
		bsr.w   sub_7104
		lea     (unk_FFB7DA).l,a0
		move.w  #$C09,d0
		move.l  #$20040904,d1
		move.w  #4,d2
		jsr     sub_8020
loc_6D8E:
		bsr.w   sub_6FE6
		bsr.w   sub_70E8
		bsr.w   nullsub_2
		bsr.w   sub_71A2
		moveq   #$F,d6
loc_6DA0:
		btst    #2,(byte_FF0E99).l
		beq.s   loc_6DC4
		cmpi.w  #2,(word_FFA8C0).l
		blt.s   loc_6DC4
		move.b  #1,(byte_FFB528).l
		trap    #0

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w $42
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6DC4:
		btst    #3,(byte_FF0E99).l
		beq.s   loc_6DE8
		cmpi.w  #3,(word_FFA8C0).l
		blt.s   loc_6DE8
		move.b  #2,(byte_FFB528).l
		trap    #0

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w $42
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6DE8:
		btst    #0,(byte_FF0E99).l
		beq.s   loc_6E00
		clr.b   (byte_FFB528).l
		trap    #0

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w $42
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6E00:
		btst    #1,(byte_FF0E99).l
		beq.s   loc_6E1A
		move.b  #3,(byte_FFB528).l
		trap    #0

; END OF FUNCTION CHUNK FOR sub_6CB6

		dc.w $42
		bra.w   loc_6E70

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6E1A:
		btst    #4,(byte_FF0E99).l
		beq.s   loc_6E42
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		bsr.w   sub_7104
		bsr.w   sub_703A
		jsr     (sub_240).l
		moveq   #$FFFFFFFF,d0
		bra.w   loc_6F8E
loc_6E42:
		btst    #5,(byte_FF0E99).l
		beq.s   loc_6E58
		clr.w   d0
		move.b  (byte_FFB528).l,d0
		bra.w   loc_6EB8
loc_6E58:
		btst    #6,(byte_FF0E99).l
		beq.w   loc_6EA4
		clr.w   d0
		move.b  (byte_FFB528).l,d0
		bra.w   loc_6EB8

; END OF FUNCTION CHUNK FOR sub_6CB6

loc_6E70:       bsr.w   sub_70A6
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (sub_240).l
		moveq   #$13,d6
		bsr.w   sub_7054
		move.w  d6,-(sp)
		bsr.w   sub_7104
		bsr.w   sub_703A
		jsr     (sub_240).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		move.w  (sp)+,d6
		bra.s   loc_6EA8

; START OF FUNCTION CHUNK FOR sub_6CB6

loc_6EA4:
		bsr.w   sub_7054
loc_6EA8:
		jsr     (sub_240).l
		subq.w  #1,d6
		bne.s   loc_6EB4
		moveq   #$14,d6
loc_6EB4:
		bra.w   loc_6DA0
loc_6EB8:
		movem.w d0-d1,-(sp)
		move.w  (word_FFBC5A).l,d1
		move.w  d1,(word_FFF844).l
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_6F3C
		move.w  (word_FFBC5E).l,d3
		cmp.b   (byte_FFB528).l,d3
		beq.s   loc_6F3A
		move.w  (word_FFBC58).l,d2
		bsr.w   loc_70C2
		jsr     sub_805C
		move.b  d3,(byte_FFB528).l
loc_6EF8:
		bsr.w   sub_70E8
		bsr.w   sub_7020
		jsr     (sub_240).l
		moveq   #$13,d6
		bsr.w   sub_7054
		bsr.w   sub_7104
		bsr.w   sub_703A
		jsr     (sub_240).l
		bsr.w   sub_7090
		bsr.w   sub_71A2
		bsr.w   sub_6FA0
		trap    #7
		move.w  #$F,d0
		trap    #8
		trap    #7
		jsr     sub_8088
		bsr.w   loc_73B6
loc_6F3A:
		bra.s   loc_6F8A
loc_6F3C:
		move.w  (word_FFBC5C).l,d1
		jsr     sub_2026C
		btst    #$D,d2
		beq.s   loc_6F8A
		jsr     sub_805C
		move.w  (word_FFB7C4).l,d2
		bsr.w   sub_73D4
		move.w  d0,(word_FFF844).l
		bsr.w   sub_6FA0
		trap    #7
		move.w  #$13,d0
		trap    #8
		trap    #7
		jsr     sub_8088
		bsr.w   loc_73B6
		move.w  (word_FFB7C4).l,d0
		moveq   #4,d1
		jsr     sub_20158
loc_6F8A:
		movem.w (sp)+,d0-d1
loc_6F8E:
		movem.w d0-d1,-(sp)
		clr.w   d6
		bsr.w   sub_7054
		bsr.s   sub_6FA0
		movem.w (sp)+,d0-d1
		rts

; END OF FUNCTION CHUNK FOR sub_6CB6


; =============== S U B R O U T I N E =======================================

sub_6FA0:
		tst.w   (word_FFD692).l
		beq.s   return_6FE4
		clr.w   d6
		bsr.w   sub_7054
		bsr.w   sub_70E8
		lea     (unk_FFB7DA).l,a0
		move.l  #$90D200D,d1
		move.w  #$C05,d0
		move.w  #4,d2
		jsr     sub_8020
		lea     wl_ItemEquip(pc), a0
		move.w  #$606,d0
		move.l  #$20BFA0B,d1
		move.w  #4,d2
		jmp     sub_8020
return_6FE4:
		rts

	; End of function sub_6FA0


; =============== S U B R O U T I N E =======================================

sub_6FE6:
		bsr.w   sub_71C0
		lea     wl_ItemEquip(pc), a0
		move.w  #$606,d0
		move.l  #$FA0B020B,d1
		move.w  #4,d2
		jsr     sub_8020
		bsr.w   sub_70E8
loc_7006:
		lea     (unk_FFB7DA).l,a0
		move.w  #$C05,d0
		move.l  #$200D090D,d1
		move.w  #4,d2
		jmp     sub_8020

	; End of function sub_6FE6


; =============== S U B R O U T I N E =======================================

sub_7020:
		lea     (unk_FFB7DA).l,a0
		move.w  #$C05,d0
		move.l  #$90D,d1
		jsr     sub_801C
		bra.w   loc_73B6

	; End of function sub_7020


; =============== S U B R O U T I N E =======================================

sub_703A:
		lea     (unk_FFB7DA).l,a0
		move.w  #$C09,d0
		move.l  #$904,d1
		jsr     sub_801C
		bra.w   loc_73B6

	; End of function sub_703A


; =============== S U B R O U T I N E =======================================

sub_7054:
		lea     (unk_FF0C80).l,a1
		lea     word_73EE(pc), a0
		nop
		clr.w   d0
		move.b  (byte_FFB528).l,d0
		lsl.w   #3,d0
		adda.w  d0,a0
		move.w  (a0)+,d0
		cmpi.w  #$A,d6
		bge.s   loc_7076
		moveq   #1,d0
loc_7076:
		btst    #7,(byte_FF0E97).l
		beq.s   loc_7082
		moveq   #1,d0
loc_7082:
		move.w  d0,(a1)+
		move.w  (a0)+,d0
		lsr.w   #8,d0
		move.b  d0,(a1)+
		addq.l  #1,a1
		move.l  (a0)+,(a1)+
		rts

	; End of function sub_7054


; =============== S U B R O U T I N E =======================================

sub_7090:
		move.b  (byte_FFB528).l,d7
		cmp.b   (byte_FFB529).l,d7
		beq.s   nullsub_2
		move.b  d7,(byte_FFB529).l

	; End of function sub_7090


; =============== S U B R O U T I N E =======================================

nullsub_2:
		rts

	; End of function nullsub_2


; =============== S U B R O U T I N E =======================================

sub_70A6:
		lea     (unk_FFA8C2).l,a0
		clr.w   d2
		move.b  (byte_FFB528).l,d2
		lsl.w   #2,d2
		move.w  2(a0,d2.w),(word_FFBC5C).l
		move.w  (a0,d2.w),d2
loc_70C2:
		move.w  (word_FFB7C4).l,d0
		tst.b   (byte_FFB526).l
		bne.s   loc_70D6
		move.w  #$100,d1
		bra.s   loc_70DA
loc_70D6:
		move.w  #$200,d1
loc_70DA:
		jmp     loc_20290

	; End of function sub_70A6

		dc.b   0
		dc.b $AE 
		dc.b   0
		dc.b $AE 
		dc.b   0
		dc.b $62 
		dc.b   0
		dc.b $88 

; =============== S U B R O U T I N E =======================================

sub_70E8:
		bsr.w   sub_71A2
		lea     unk_772C(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$CC,d7 
loc_70FA:
		jsr     (sub_2FC).l
		bra.w   loc_72D8

	; End of function sub_70E8


; =============== S U B R O U T I N E =======================================

sub_7104:
		lea     unk_75E8(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$D8,d7 
		jsr     (sub_2FC).l
		move.w  (word_FFB7C4).l,d2
		bsr.w   sub_73D4
		jsr     j_GetTargetATT
		lea     (unk_FFB804).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		move.w  (word_FFB7C4).l,d2
		bsr.w   sub_73D4
		jsr     j_GetTargetDEF
		lea     (unk_FFB834).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		move.w  (word_FFB7C4).l,d2
		bsr.w   sub_73D4
		jsr     j_GetTargetMOVE
		lea     (unk_FFB864).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		move.w  (word_FFB7C4).l,d2
		bsr.w   sub_73D4
		jsr     j_GetTargetAGI
		lea     (unk_FFB894).l,a1
		moveq   #2,d7
		move.w  d1,d0
		ext.l   d0
		jsr     j_DisplayNumber
		rts

	; End of function sub_7104


; =============== S U B R O U T I N E =======================================

sub_71A2:
		tst.b   (byte_FFB526).l
		bne.s   loc_71B0
		move.w  #$100,d1
		bra.s   loc_71B4
loc_71B0:
		move.w  #$200,d1
loc_71B4:
		move.w  (word_FFB7C4).l,d0
		jmp     sub_20294

	; End of function sub_71A2


; =============== S U B R O U T I N E =======================================

sub_71C0:
		bsr.s   sub_71A2
		move.w  (word_FFA8C0).l,d7
		subq.w  #1,d7
		lea     (unk_FFA8C2).l,a3
		clr.w   d1
		bsr.w   sub_72A0
		lea     (unk_FF3000).l,a1
		move.w  #$C0,d7 
		jsr     (sub_2FC).l
		adda.w  #$C0,a1 
		move.l  a1,-(sp)
		move.w  #$BF,d0 
loc_71F0:
		clr.l   (a1)+
		dbf     d0,loc_71F0
		movea.l (sp)+,a1
		moveq   #1,d1
		bsr.w   sub_72A0
		moveq   #5,d7
loc_7200:
		move.l  (a0)+,$10(a1)
		move.l  (a0)+,$14(a1)
		move.l  (a0)+,$18(a1)
		move.l  (a0)+,$1C(a1)
		move.l  (a0)+,$40(a1)
		move.l  (a0)+,$44(a1)
		move.l  (a0)+,$48(a1)
		move.l  (a0)+,$4C(a1)
		adda.w  #$20,a1 
		dbf     d7,loc_7200
		adda.w  #$40,a1 
		moveq   #2,d1
		bsr.w   sub_72A0
		moveq   #5,d7
loc_7234:
		move.l  (a0)+,$10(a1)
		move.l  (a0)+,$14(a1)
		move.l  (a0)+,$18(a1)
		move.l  (a0)+,$1C(a1)
		move.l  (a0)+,$40(a1)
		move.l  (a0)+,$44(a1)
		move.l  (a0)+,$48(a1)
		move.l  (a0)+,$4C(a1)
		adda.w  #$20,a1 
		dbf     d7,loc_7234
		adda.w  #$40,a1 
		moveq   #3,d1
		bsr.w   sub_72A0
		move.w  #$C0,d7 
		jsr     (sub_2FC).l
		adda.w  #$C0,a1 
		lea     unk_740E(pc), a0
		move.w  #$200,d7
		jsr     (sub_2FC).l
loc_7282:
		lea     (unk_FF3000).l,a0
		lea     ($F800).l,a1
		move.w  #$400,d0
		moveq   #2,d1
		jsr     (sub_278).l
		jmp     (sub_264).l

	; End of function sub_71C0


; =============== S U B R O U T I N E =======================================

sub_72A0:
		movea.l (off_CC024).l,a0
		cmp.w   (word_FFA8C0).l,d1
		blt.s   loc_72C2
		adda.l  #$2F40,a0
		cmpi.w  #3,d1
		bne.s   loc_72C0
		adda.l  #$C0,a0 
loc_72C0:
		bra.s   return_72D6
loc_72C2:
		lsl.w   #2,d1
		move.w  2(a3,d1.w),d1
		andi.w  #$3F,d1 
		move.w  d1,d7
		add.w   d1,d1
		add.w   d7,d1
		lsl.w   #6,d1
		adda.w  d1,a0
return_72D6:
		rts

	; End of function sub_72A0


; START OF FUNCTION CHUNK FOR sub_70E8

loc_72D8:
		movem.l d7-a1,-(sp)
		lea     unk_772C(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$78,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		lea     aWeaponring(pc), a0
		lea     (unk_FFB7F4).l,a1
		btst    #0,(byte_FFB526).l
		beq.s   loc_730A
		addq.w  #6,a0
loc_730A:
		moveq   #6,d7
		moveq   #$FFFFFFE8,d1
		jsr     sub_804C
		clr.w   d1
		move.b  (byte_FFB528).l,d1
		cmpi.w  #4,(word_FFA8C0).l
		beq.w   loc_7338
		cmpi.w  #3,d1
		bne.s   loc_7338
		lea     unk_758E(pc), a0
		nop
		moveq   #6,d7
		bra.s   loc_734C
loc_7338:
		lea     (unk_FFA8C2).l,a0
		lsl.w   #2,d1
		move.w  2(a0,d1.w),d1
		jsr     sub_202E0
		move.w  d1,d7
loc_734C:
		lea     (unk_FFB80C).l,a1
		moveq   #$FFFFFFE8,d1
		jmp     sub_804C

; END OF FUNCTION CHUNK FOR sub_70E8


; =============== S U B R O U T I N E =======================================

sub_735A:
		movem.l d7-a1,-(sp)
		lea     unk_76C0(pc), a0
		lea     (unk_FFB7DA).l,a1
		move.w  #$6C,d7 
		jsr     (sub_2FC).l
		movem.l (sp)+,d7-a1
		lea     (unk_FFB804).l,a1
		move.l  a1,-(sp)
		move.w  (word_FFB7C4).l,d0
		jsr     sub_200E0
		moveq   #$FFFFFFDC,d1
		moveq   #$A,d7
		jsr     sub_804C
		movea.l (sp)+,a1
		lea     $12(a1),a1
		move.w  (word_FFB7C4).l,d0
		jsr     j_GetForceMemberClass
		jsr     sub_202E4
		move.w  d1,d7
		moveq   #$FFFFFFDC,d1
		jsr     sub_804C
loc_73B6:
		lea     ((loc_BFFE+2)).l,a1
		move.w  #$780,d0
		lea     (unk_FFD000).l,a0
		moveq   #2,d1
		jsr     (sub_278).l
		jmp     (sub_260).l

	; End of function sub_735A


; =============== S U B R O U T I N E =======================================

sub_73D4:
		clr.w   d0
		moveq   #$1F,d7
loc_73D8:
		jsr     j_GetTargetID
		cmp.b   d2,d1
		beq.w   return_73EC
		addq.w  #1,d0
		dbf     d7,loc_73D8
		moveq   #$FFFFFFFF,d0
return_73EC:
		rts

	; End of function sub_73D4

word_73EE:      dc.w $D7
		dc.w $B01
		dc.l $C7DC009F
		dc.w $E3
		dc.w $B01
		dc.l $C7DC008F
		dc.w $E3
		dc.w $B01
		dc.l $C7DC00AF
		dc.w $EF
		dc.w $B01
		dc.l $C7DC009F
unk_740E:       dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b  $A
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $AA 
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $A0 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
unk_758E:       dc.b $B2 
		dc.b $A5 
		dc.b $AD 
		dc.b $AF 
		dc.b $B6 
		dc.b $A5 
aWeaponring:    dc.b 'WEAPONRING',0
		dc.b   0
wl_ItemEquip:   dc.b 'À',0
		dc.b $C0 
		dc.b   0
		dc.b $C7 
		dc.b $C0 
		dc.b $C7 
		dc.b $C1 
		dc.b $C0 
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $C7 
		dc.b $C6 
		dc.b $C7 
		dc.b $C7 
		dc.b $C7 
		dc.b $C2 
		dc.b $C7 
		dc.b $C3 
		dc.b $C7 
		dc.b $CE 
		dc.b $C7 
		dc.b $CF 
		dc.b $C7 
		dc.b $C8 
		dc.b $C7 
		dc.b $C9 
		dc.b $C7 
		dc.b $C4 
		dc.b $C7 
		dc.b $C5 
		dc.b $C7 
		dc.b $D0 
		dc.b $C7 
		dc.b $D1 
		dc.b $C7 
		dc.b $CA 
		dc.b $C7 
		dc.b $CB 
		dc.b $C7 
		dc.b $D6 
		dc.b $C7 
		dc.b $D7 
		dc.b $C7 
		dc.b $D2 
		dc.b $C7 
		dc.b $D3 
		dc.b $C7 
		dc.b $CC 
		dc.b $C7 
		dc.b $CD 
		dc.b $C7 
		dc.b $D8 
		dc.b $C7 
		dc.b $D9 
		dc.b $C7 
		dc.b $D4 
		dc.b $C7 
		dc.b $D5 
		dc.b $C0 
		dc.b   0
		dc.b $C0 
		dc.b   0
		dc.b $C7 
		dc.b $DA 
		dc.b $C7 
		dc.b $DB 
		dc.b $C0 
		dc.b   0
		dc.b $C0 
		dc.b   0
unk_75E8:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $43 
		dc.b $C0 
		dc.b $4B 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $39 
		dc.b $C0 
		dc.b $39 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $44 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $46 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $4E 
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $39 
		dc.b $C0 
		dc.b $39 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $4D 
		dc.b $C0 
		dc.b $4F 
		dc.b $C0 
		dc.b $56 
		dc.b $C0 
		dc.b $45 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $39 
		dc.b $C0 
		dc.b $39 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $47 
		dc.b $C0 
		dc.b $49 
		dc.b $C0 
		dc.b $4C 
		dc.b $C0 
		dc.b $49 
		dc.b $C0 
		dc.b $54 
		dc.b $C0 
		dc.b $59 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $39 
		dc.b $C0 
		dc.b $39 
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
unk_76C0:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
unk_772C:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 

; =============== S U B R O U T I N E =======================================

sub_77A4:
		jsr     sub_80A4
		move.w  d0,((word_FFB7C4-$1000000)).w
		cmpi.w  #$FFFF,d0
		beq.w   loc_78F4
		jsr     (j_GetEventFlag).l
		bne.w   loc_7898
loc_77C0:
		bsr.w   sub_80C4
		cmpi.b  #$3F,d3 
		beq.w   loc_7898
		clr.w   d7
		move.b  ((unk_FFB4C5-$1000000)).w,d7
		move.w  d7,((word_FFF844-$1000000)).w
		cmpi.b  #$3F,d3 
		bgt.w   loc_78B0
		move.w  d3,((word_FFF846-$1000000)).w
		jsr     (sub_304).l
		clr.w   ((word_FFC0BE-$1000000)).w
		movem.w d1,-(sp)
		move.b  ((unk_FFB4C5-$1000000)).w,d0
		move.w  ((word_FFF846-$1000000)).w,d1
		jsr     sub_2025C
		movem.w (sp)+,d1
		bcs.w   loc_7872
		trap    #0
		dc.w $D
		move.w  #$48,d0 
		trap    #8
		move.w  #$FB,d0 
		jsr     (sub_2E4).l
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     (sub_38C).l
		bsr.w   sub_788C
		cmpi.w  #$26,((word_FFF846-$1000000)).w 
		bne.s   return_7870
		moveq   #$37,d0 
		jsr     (sub_38C).l
		moveq   #$2B,d0 
		jsr     (j_GetEventFlag).l
		beq.s   return_7870
		moveq   #$25,d0 
		jsr     (sub_38C).l
		jsr     (sub_304).l
		move.w  #$169,d0
		trap    #8
		jsr     (sub_30C).l
		movea.l (dword_FF0EFE).l,sp
		jsr     (sub_22C).l
		clr.l   (dword_FF0EF6).l
		clr.w   d0
return_7870:
		rts

	; End of function sub_77A4


; START OF FUNCTION CHUNK FOR sub_77A4

loc_7872:
		movem.w d1-d2,-(sp)
		move.w  #$48,d0 
		trap    #8
		move.w  #$49,d0 
		trap    #8
		movem.w (sp)+,d1-d2
		jsr     sub_80C8

; END OF FUNCTION CHUNK FOR sub_77A4


; =============== S U B R O U T I N E =======================================

sub_788C:
		jsr     (sub_30C).l
		jmp     sub_8094

	; End of function sub_788C


; START OF FUNCTION CHUNK FOR sub_77A4

loc_7898:
		jsr     (sub_304).l
		move.w  #$4A,d0 
		trap    #8
loc_78A4:
		move.w  ((word_FFB7C4-$1000000)).w,d0
		jsr     (sub_38C).l
		bra.s   sub_788C
loc_78B0:
		subi.w  #$40,d3 
		add.w   d3,d3
		clr.l   d1
		move.w  word_78E2(pc,d3.w),d1
		move.l  d1,((dword_FFF900-$1000000)).w
		jsr     sub_20354
		jsr     (sub_304).l
		trap    #0

; END OF FUNCTION CHUNK FOR sub_77A4

		dc.w $D
		move.w  #$4C,d0 
		trap    #8
		jsr     (sub_2E4).l
		trap    #0
		dc.w $FB
		bra.s   loc_78A4
word_78E2:      dc.w $32
		dc.w $A
		dc.w $14
		dc.w $1E
		dc.w $28
		dc.w $32
		dc.w $3C
		dc.w $32
		dc.w $3C

; START OF FUNCTION CHUNK FOR sub_77A4

loc_78F4:
		tst.b   ((byte_FFB4D7-$1000000)).w
		beq.s   return_7908
		jsr     (sub_304).l
		move.w  #$4B,d0 
		trap    #8
		bsr.s   sub_788C
return_7908:
		rts

; END OF FUNCTION CHUNK FOR sub_77A4


; =============== S U B R O U T I N E =======================================

sub_790A:
		lea     wl_Options(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		move.b  ((unk_FF9C05-$1000000)).w,d0
		moveq   #$14,d1
loc_792A:
		btst    #3,(byte_FF0E99).l
		beq.s   loc_793E
		addq.w  #1,d0
		andi.w  #3,d0
		trap    #0
		dc.w $42
loc_793E:
		btst    #2,(byte_FF0E99).l
		beq.s   loc_7952
		subq.w  #1,d0
		andi.w  #3,d0
		trap    #0
		dc.w $42
loc_7952:
		btst    #4,(byte_FF0E99).l
		bne.w   loc_79A8
		btst    #5,(byte_FF0E99).l
		bne.w   loc_7982
		btst    #6,(byte_FF0E99).l
		bne.w   loc_7982
		bsr.w   sub_7B1A
		jsr     (sub_240).l
		bra.s   loc_792A
loc_7982:
		move.b  d0,((unk_FF9C05-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     wl_Options(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		rts

	; End of function sub_790A


; START OF FUNCTION CHUNK FOR sub_790A

loc_79A8:
		bset    #0,((unk_FFB4CA-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     wl_Options(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #$FFFFFFFF,d0
		rts

; END OF FUNCTION CHUNK FOR sub_790A


; =============== S U B R O U T I N E =======================================

sub_79D6:
		lea     unk_7C46(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		move.b  ((unk_FF9C06-$1000000)).w,d0
		moveq   #$14,d1
loc_79F6:
		btst    #3,(byte_FF0E99).l
		beq.s   loc_7A0A
		addq.w  #1,d0
		andi.w  #1,d0
		trap    #0
		dc.w $42
loc_7A0A:
		btst    #2,(byte_FF0E99).l
		beq.s   loc_7A1E
		subq.w  #1,d0
		andi.w  #1,d0
		trap    #0
		dc.w $42
loc_7A1E:
		btst    #4,(byte_FF0E99).l
		bne.w   loc_7A78
		btst    #5,(byte_FF0E99).l
		bne.w   loc_7A52
		btst    #6,(byte_FF0E99).l
		bne.w   loc_7A52
		add.w   d0,d0
		bsr.w   sub_7B1A
		lsr.w   #1,d0
		jsr     (sub_240).l
		bra.s   loc_79F6
loc_7A52:
		move.b  d0,((unk_FF9C06-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     unk_7C46(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d0
		rts

	; End of function sub_79D6


; START OF FUNCTION CHUNK FOR sub_79D6

loc_7A78:
		bset    #0,((unk_FFB4CA-$1000000)).w
		clr.w   d1
		bsr.w   sub_7B1A
		lea     unk_7C46(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     sub_8020
		clr.w   d1
		bsr.w   sub_7B1A
		moveq   #$FFFFFFFF,d0
		rts

; END OF FUNCTION CHUNK FOR sub_79D6


; =============== S U B R O U T I N E =======================================

sub_7AA6:
		lea     unk_7D34(pc), a0
		move.w  #$1107,d0
		move.l  #$81C0814,d1
		move.w  #4,d2
		jsr     sub_8020
		jsr     (sub_348).l
		tst.b   ((byte_FFB528-$1000000)).w
		bge.w   loc_7AEE
		lea     unk_7D34(pc), a0
		move.w  #$1107,d0
		move.l  #$814081C,d1
		move.w  #4,d2
		jsr     sub_8020
		bset    #0,((unk_FFB4CA-$1000000)).w
		moveq   #$FFFFFFFF,d0
		rts

	; End of function sub_7AA6


; START OF FUNCTION CHUNK FOR sub_7AA6

loc_7AEE:
		lea     unk_7D34(pc), a0
		move.w  #$1107,d0
		move.l  #$8142014,d1
		move.w  #4,d2
		jsr     sub_8020
		jsr     (sub_32C).l
		jsr     (sub_22C).l
		trap    #0

; END OF FUNCTION CHUNK FOR sub_7AA6

		dc.w $FD
		bra.w   sub_3284

; =============== S U B R O U T I N E =======================================

sub_7B1A:
		lea     (unk_FF0D28).l,a0
		cmpi.w  #7,d1
		bge.s   loc_7B32
		move.w  #1,(a0)
		move.w  #1,6(a0)
		bra.s   loc_7B46
loc_7B32:
		move.w  d0,d2
		add.w   d2,d2
		add.w   d0,d2
		lsl.w   #3,d2
		addi.w  #$D8,d2 
		move.w  d2,6(a0)
		move.w  #$138,(a0)
loc_7B46:
		clr.b   2(a0)
		move.w  #$C085,4(a0)
		subq.w  #1,d1
		bne.s   return_7B56
		moveq   #$14,d1
return_7B56:
		rts

	; End of function sub_7B1A

wl_Options:     dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $41 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $77 
		dc.b $C0 
		dc.b $68 
		dc.b $C0 
		dc.b $61 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $73 
		dc.b $C0 
		dc.b $70 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $64 
		dc.b $C0 
		dc.b $3F 
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $31 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $32 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $33 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $34 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $53 
		dc.b $C0 
		dc.b $6C 
		dc.b $C0 
		dc.b $6F 
		dc.b $C0 
		dc.b $77 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $2D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $2D 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $46 
		dc.b $C0 
		dc.b $61 
		dc.b $C0 
		dc.b $73 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
unk_7C46:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $42 
		dc.b $C0 
		dc.b $61 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $6C 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $6D 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $73 
		dc.b $C0 
		dc.b $73 
		dc.b $C0 
		dc.b $61 
		dc.b $C0 
		dc.b $67 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $3F 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $4F 
		dc.b $C0 
		dc.b $4E 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $4F 
		dc.b $C0 
		dc.b $46 
		dc.b $C0 
		dc.b $46 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
unk_7D34:       dc.b $C0 
		dc.b $80 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C0 
		dc.b $81 
		dc.b $C8 
		dc.b $80 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $44 
		dc.b $C0 
		dc.b $6F 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $79 
		dc.b $C0 
		dc.b $6F 
		dc.b $C0 
		dc.b $75 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $77 
		dc.b $C0 
		dc.b $61 
		dc.b $C0 
		dc.b $6E 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $6F 
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $73 
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $6F 
		dc.b $C0 
		dc.b $70 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $74 
		dc.b $C0 
		dc.b $68 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $67 
		dc.b $C0 
		dc.b $61 
		dc.b $C0 
		dc.b $6D 
		dc.b $C0 
		dc.b $65 
		dc.b $C0 
		dc.b $3F 
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $C0 
		dc.b $90 
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C0 
		dc.b $20
		dc.b $C8 
		dc.b $90 
		dc.b $D0 
		dc.b $80 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D0 
		dc.b $81 
		dc.b $D8 
		dc.b $80 
algn_7E22:      align $8000
