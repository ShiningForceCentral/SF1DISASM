
; ASM FILE code\common\scripting\battleexits.asm :
; 0x3F0E..0x49EE : Battle exit scripts functions

; =============== S U B R O U T I N E =======================================

ExecuteMapExitScript:
		
		move.b  #-1,((byte_FF9C4D-$1000000)).w
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  rjt_MapExitScripts(pc,d0.w),d0
		jmp     rjt_MapExitScripts(pc,d0.w)

    ; End of function ExecuteMapExitScript

rjt_MapExitScripts:
		dc.w mes0_Chapter1-rjt_MapExitScripts
		dc.w mes1_Chapter2-rjt_MapExitScripts
		dc.w mes2_Chapter3-rjt_MapExitScripts
		dc.w mes3_Chapter4-rjt_MapExitScripts
		dc.w mes4_Chapter5-rjt_MapExitScripts
		dc.w mes5_Chapter6-rjt_MapExitScripts
		dc.w mes6_Chapter7-rjt_MapExitScripts
		dc.w mes7_Chapter8-rjt_MapExitScripts

; =============== S U B R O U T I N E =======================================

mes0_Chapter1:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  rjt_MapExitScript0_Regions(pc,d0.w),d0
		jmp     rjt_MapExitScript0_Regions(pc,d0.w)

    ; End of function mes0_Chapter1

rjt_MapExitScript0_Regions:
		dc.w mes0_Region0-rjt_MapExitScript0_Regions
		dc.w mes0_Region1-rjt_MapExitScript0_Regions
		dc.w mes0_Region2-rjt_MapExitScript0_Regions
		dc.w mes0_Region3-rjt_MapExitScript0_Regions
		dc.w mes0_Region4-rjt_MapExitScript0_Regions
		dc.w mes0_Region5-rjt_MapExitScript0_Regions
		dc.w mes0_Region0-rjt_MapExitScript0_Regions

; =============== S U B R O U T I N E =======================================

mes0_Region0:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  rjt_MapExitScript0_Region0_Exits(pc,d0.w),d0
		jmp     rjt_MapExitScript0_Region0_Exits(pc,d0.w)

    ; End of function mes0_Region0

rjt_MapExitScript0_Region0_Exits:
		dc.w mes0_r0_Exit0-rjt_MapExitScript0_Region0_Exits
		dc.w mes0_r0_Exit1-rjt_MapExitScript0_Region0_Exits
		dc.w mes0_r0_Exit2-rjt_MapExitScript0_Region0_Exits
		dc.w mes0_r0_Exit3-rjt_MapExitScript0_Region0_Exits

; =============== S U B R O U T I N E =======================================

mes0_r0_Exit0:
		
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_r0_Exit0


; =============== S U B R O U T I N E =======================================

mes0_r0_Exit1:
		
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   loc_3F9E
		move.b  #3,((EGRESS_LOCATION-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_3FA4
loc_3F9E:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_3FA4:
		rts

    ; End of function mes0_r0_Exit1


; =============== S U B R O U T I N E =======================================

mes0_r0_Exit2:
		
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_r0_Exit2


; =============== S U B R O U T I N E =======================================

mes0_r0_Exit3:
		
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_r0_Exit3


; =============== S U B R O U T I N E =======================================

mes0_Region1:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_3FBC:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #40,d0
		bsr.w   CheckEventFlag
		beq.s   return_4010
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_3FF4
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((byte_FF9C4D-$1000000)).w
		move.b  #4,((EGRESS_LOCATION-$1000000)).w
		bra.s   return_4010
loc_3FF4:
		moveq   #48,d0
		bsr.w   CheckEventFlag
		beq.s   return_4010
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   return_4010
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((byte_FF9C4D-$1000000)).w
return_4010:
		rts

    ; End of function mes0_Region1


; =============== S U B R O U T I N E =======================================

mes0_Region2:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function mes0_Region2


; =============== S U B R O U T I N E =======================================

mes0_Region3:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #51,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4030
		bsr.w   ClearEventFlag
		move.b  #1,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
loc_4030:
		bra.s   loc_3FBC

    ; End of function mes0_Region3


; =============== S U B R O U T I N E =======================================

mes0_Region4:
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_3FBC

    ; End of function mes0_Region4


; =============== S U B R O U T I N E =======================================

mes0_Region5:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #49,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4052
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_3FBC
		bra.s   return_4064
loc_4052:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
return_4064:
		rts

    ; End of function mes0_Region5


; =============== S U B R O U T I N E =======================================

mes1_Chapter2:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_407C(pc,d0.w),d0
		jmp     off_407C(pc,d0.w)

    ; End of function mes1_Chapter2

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_40A2(pc,d0.w),d0
		jmp     off_40A2(pc,d0.w)

    ; End of function sub_408E

off_40A2:       dc.w sub_40A8-off_40A2
		dc.w sub_40B0-off_40A2
		dc.w sub_40B8-off_40A2

; =============== S U B R O U T I N E =======================================

sub_40A8:
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40A8


; =============== S U B R O U T I N E =======================================

sub_40B0:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40B0


; =============== S U B R O U T I N E =======================================

sub_40B8:
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40B8


; =============== S U B R O U T I N E =======================================

sub_40C0:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40C0


; =============== S U B R O U T I N E =======================================

sub_40CE:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40CE


; =============== S U B R O U T I N E =======================================

sub_40DC:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_40DC


; =============== S U B R O U T I N E =======================================

sub_40EA:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_413A
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_40F8:
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #49,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4118
		move.b  #2,((CURRENT_REGION-$1000000)).w
		bra.s   return_4138
loc_4118:
		moveq   #48,d0
		bsr.w   CheckEventFlag
		beq.s   return_4138
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   return_4138
		move.b  #1,((byte_FF9C4D-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
return_4138:
		rts
loc_413A:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_415A
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4160
loc_415A:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4160:
		rts

    ; End of function sub_40EA


; =============== S U B R O U T I N E =======================================

sub_4162:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_4170
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_40F8
loc_4170:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #4,((CURRENT_REGION-$1000000)).w
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4190
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4196
loc_4190:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4196:
		rts

    ; End of function sub_4162


; =============== S U B R O U T I N E =======================================

sub_4198:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_41A8
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_40F8
loc_41A8:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #5,((CURRENT_REGION-$1000000)).w
		moveq   #43,d0
		bsr.w   CheckEventFlag
		bne.s   loc_41CE
		move.b  #7,((EGRESS_LOCATION-$1000000)).w
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_41D4
loc_41CE:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_41D4:
		rts

    ; End of function sub_4198


; =============== S U B R O U T I N E =======================================

mes2_Chapter3:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_41EC(pc,d0.w),d0
		jmp     off_41EC(pc,d0.w)

    ; End of function mes2_Chapter3

off_41EC:       dc.w sub_41F4-off_41EC
		dc.w sub_423E-off_41EC
		dc.w sub_424C-off_41EC
		dc.w sub_427A-off_41EC

; =============== S U B R O U T I N E =======================================

sub_41F4:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_4208(pc,d0.w),d0
		jmp     off_4208(pc,d0.w)

    ; End of function sub_41F4

off_4208:       dc.w sub_420C-off_4208
		dc.w sub_421A-off_4208

; =============== S U B R O U T I N E =======================================

sub_420C:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_420C


; =============== S U B R O U T I N E =======================================

sub_421A:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4236
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_423C
loc_4236:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_423C:
		rts

    ; End of function sub_421A


; =============== S U B R O U T I N E =======================================

sub_423E:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_423E


; =============== S U B R O U T I N E =======================================

sub_424C:
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4272
		move.b  #1,((byte_FF9C4D-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4278
loc_4272:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4278:
		rts

    ; End of function sub_424C


; =============== S U B R O U T I N E =======================================

sub_427A:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_42AE
		clr.b   ((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_42A6
		move.b  #1,((byte_FF9C4D-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_42AC
loc_42A6:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_42AC:
		rts
loc_42AE:
		move.b  #1,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   loc_42CC
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_42D2
loc_42CC:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_42D2:
		rts

    ; End of function sub_427A


; =============== S U B R O U T I N E =======================================

mes3_Chapter4:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_42EA(pc,d0.w),d0
		jmp     off_42EA(pc,d0.w)

    ; End of function mes3_Chapter4

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_4310(pc,d0.w),d0
		jmp     off_4310(pc,d0.w)

    ; End of function sub_42FC

off_4310:       dc.w sub_4316-off_4310
		dc.w sub_4324-off_4310
		dc.w sub_435E-off_4310

; =============== S U B R O U T I N E =======================================

sub_4316:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_4316


; =============== S U B R O U T I N E =======================================

sub_4324:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4340
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_REGION-$1000000)).w
		bra.s   return_435C
loc_4340:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #48,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4356
		move.b  #3,((CURRENT_REGION-$1000000)).w
		bra.s   return_435C
loc_4356:
		move.b  #4,((CURRENT_REGION-$1000000)).w
return_435C:
		rts

    ; End of function sub_4324


; =============== S U B R O U T I N E =======================================

sub_435E:
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_435E


; =============== S U B R O U T I N E =======================================

sub_4366:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_437A(pc,d0.w),d0
loc_4376:
		jmp     off_437A(pc,d0.w)

    ; End of function sub_4366

off_437A:       dc.w sub_4396-off_437A
		dc.w sub_4380-off_437A
		dc.w sub_4388-off_437A

; =============== S U B R O U T I N E =======================================

sub_4380:
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_4380


; =============== S U B R O U T I N E =======================================

sub_4388:
		move.b  #8,((CURRENT_REGION-$1000000)).w
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_4388


; =============== S U B R O U T I N E =======================================

sub_4396:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_439C:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   loc_43BA
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #1,((byte_FF9C4D-$1000000)).w
		bra.s   return_43CC
loc_43BA:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		move.b  #2,((byte_FF9C4D-$1000000)).w
return_43CC:
		rts

    ; End of function sub_4396


; =============== S U B R O U T I N E =======================================

sub_43CE:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #8,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_43CE


; =============== S U B R O U T I N E =======================================

sub_43DC:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_439C

    ; End of function sub_43DC


; =============== S U B R O U T I N E =======================================

sub_43E2:
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_439C

    ; End of function sub_43E2


; =============== S U B R O U T I N E =======================================

sub_43EA:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
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
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4428
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4434
loc_4428:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4434:
		rts

    ; End of function sub_4406


; =============== S U B R O U T I N E =======================================

sub_4436:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4458
		move.b  #2,((CURRENT_REGION-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4464
loc_4458:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4464:
		rts

    ; End of function sub_4436


; =============== S U B R O U T I N E =======================================

sub_4466:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #5,((CURRENT_REGION-$1000000)).w
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4482
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_4488
loc_4482:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4488:
		rts

    ; End of function sub_4466


; =============== S U B R O U T I N E =======================================

mes4_Chapter5:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_44A0(pc,d0.w),d0
		jmp     off_44A0(pc,d0.w)

    ; End of function mes4_Chapter5

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_44C2(pc,d0.w),d0
		jmp     off_44C2(pc,d0.w)

    ; End of function sub_44AE

off_44C2:       dc.w sub_44C8-off_44C2
		dc.w sub_44E0-off_44C2
		dc.w sub_44EE-off_44C2

; =============== S U B R O U T I N E =======================================

sub_44C8:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_REGION-$1000000)).w
		move.b  #5,((EGRESS_LOCATION-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_44C8


; =============== S U B R O U T I N E =======================================

sub_44E0:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_44E0


; =============== S U B R O U T I N E =======================================

sub_44EE:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		move.b  #6,((EGRESS_LOCATION-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_44EE


; =============== S U B R O U T I N E =======================================

sub_4508:
		moveq   #40,d0
		bsr.w   CheckEventFlag
		beq.s   loc_452E
		moveq   #36,d0
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #3,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   return_4538
loc_452E:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
return_4538:
		rts

    ; End of function sub_4508


; =============== S U B R O U T I N E =======================================

sub_453A:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_453A


; =============== S U B R O U T I N E =======================================

sub_4546:
		move.b  #6,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		rts

    ; End of function sub_4546


; =============== S U B R O U T I N E =======================================

sub_4552:
		moveq   #36,d0
loc_4554:
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4576
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #4,((WORLD_CUTSCENE_SCRIPT-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   return_459C
loc_4576:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4596
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_459C
loc_4596:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_459C:
		rts

    ; End of function sub_4552


; =============== S U B R O U T I N E =======================================

sub_459E:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_459E


; =============== S U B R O U T I N E =======================================

sub_45B4:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_45B4


; =============== S U B R O U T I N E =======================================

mes5_Chapter6:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_45E2(pc,d0.w),d0
		jmp     off_45E2(pc,d0.w)

    ; End of function mes5_Chapter6

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
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  off_4602(pc,d0.w),d0
		jmp     off_4602(pc,d0.w)

    ; End of function sub_45EE

off_4602:       dc.w sub_4608-off_4602
		dc.w sub_4610-off_4602
		dc.w sub_4618-off_4602

; =============== S U B R O U T I N E =======================================

sub_4608:
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_4608


; =============== S U B R O U T I N E =======================================

sub_4610:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_4610


; =============== S U B R O U T I N E =======================================

sub_4618:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #3,((CURRENT_REGION-$1000000)).w
		moveq   #43,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4634
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_463A
loc_4634:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_463A:
		rts

    ; End of function sub_4618


; =============== S U B R O U T I N E =======================================

sub_463C:
		moveq   #48,d0
		bsr.w   CheckEventFlag
		bne.s   loc_464C
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_4652
loc_464C:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_4652:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_463C


; =============== S U B R O U T I N E =======================================

sub_465A:
		move.b  #2,((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_4660:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #86,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4694
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4692
		move.b  #2,((byte_FF9C4D-$1000000)).w
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
loc_4692:
		bra.s   return_46A6
loc_4694:
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   return_46A6
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((byte_FF9C4D-$1000000)).w
return_46A6:
		rts

    ; End of function sub_465A


; =============== S U B R O U T I N E =======================================

sub_46A8:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_4660

    ; End of function sub_46A8


; =============== S U B R O U T I N E =======================================

sub_46AE:
		moveq   #48,d0
		bsr.w   CheckEventFlag
		beq.s   loc_46DA
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_46D2
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_46D8
loc_46D2:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_46D8:
		rts
loc_46DA:
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.w   loc_4660

    ; End of function sub_46AE


; =============== S U B R O U T I N E =======================================

mes6_Chapter7:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_46FA(pc,d0.w),d0
		jmp     off_46FA(pc,d0.w)

    ; End of function mes6_Chapter7

off_46FA:       dc.w sub_4706-off_46FA
		dc.w sub_4706-off_46FA
		dc.w sub_472E-off_46FA
		dc.w sub_474A-off_46FA
		dc.w sub_4758-off_46FA
		dc.w sub_47D0-off_46FA

; =============== S U B R O U T I N E =======================================

sub_4706:
		clr.w   d0
		move.b  ((CURRENT_MAP_ENTRANCE-$1000000)).w,d0
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		add.w   d0,d0
		move.w  sub_471A(pc,d0.w),d0
		jmp     sub_471A(pc,d0.w)

    ; End of function sub_4706


; =============== S U B R O U T I N E =======================================

sub_471A:
		ori.b   #$C,d4
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_471A


; =============== S U B R O U T I N E =======================================

sub_4726:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_4726


; =============== S U B R O U T I N E =======================================

sub_472E:
		move.b  #5,((CURRENT_REGION-$1000000)).w
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4742
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   return_4748
loc_4742:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
return_4748:
		rts

    ; End of function sub_472E


; =============== S U B R O U T I N E =======================================

sub_474A:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #4,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_474A


; =============== S U B R O U T I N E =======================================

sub_4758:
		cmpi.b  #$10,((byte_FFF807-$1000000)).w
		beq.w   loc_47A8
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
loc_4766:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		moveq   #124,d0
		bsr.w   CheckEventFlag
		beq.s   loc_4794
		move.b  #1,((CURRENT_REGION-$1000000)).w
		moveq   #43,d0
		bsr.w   CheckEventFlag
		bne.s   loc_4792
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
loc_4792:
		bra.s   return_47A6
loc_4794:
		moveq   #40,d0
loc_4796:
		bsr.w   CheckEventFlag
		bne.s   return_47A6
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((byte_FF9C4D-$1000000)).w
return_47A6:
		rts
loc_47A8:
		move.b  #3,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   loc_47C8
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_47CE
loc_47C8:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_47CE:
		rts

    ; End of function sub_4758


; =============== S U B R O U T I N E =======================================

sub_47D0:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.w   loc_47E0
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		bra.s   loc_4766
loc_47E0:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #36,d0
		bsr.w   ClearEventFlag
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_480C
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
loc_47FE:
		move.b  #1,((byte_FF9C4D-$1000000)).w
		move.b  #4,((EGRESS_LOCATION-$1000000)).w
		bra.s   return_4812
loc_480C:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
return_4812:
		rts

    ; End of function sub_47D0


; =============== S U B R O U T I N E =======================================

mes7_Chapter8:
		
		moveq   #36,d0
		bsr.w   SetEventFlag
		clr.w   d0
		move.b  ((CURRENT_REGION-$1000000)).w,d0
		add.w   d0,d0
		move.w  off_482A(pc,d0.w),d0
		jmp     off_482A(pc,d0.w)

    ; End of function mes7_Chapter8

off_482A:       dc.w sub_483E-off_482A
		dc.w sub_4876-off_482A
		dc.w sub_487E-off_482A
		dc.w sub_48A4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_48E4-off_482A
		dc.w sub_492C-off_482A
		dc.w loc_4932-off_482A
		dc.w sub_4964-off_482A
		dc.w sub_497C-off_482A

; =============== S U B R O U T I N E =======================================

sub_483E:
		cmpi.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		beq.s   loc_484E
		move.b  #9,((CURRENT_REGION-$1000000)).w
		rts
loc_484E:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #49,d0
		bsr.w   CheckEventFlag
		beq.s   loc_486E
		move.b  #3,((CURRENT_REGION-$1000000)).w
		bra.s   return_4874
loc_486E:
		move.b  #8,((CURRENT_REGION-$1000000)).w
return_4874:
		rts

    ; End of function sub_483E


; =============== S U B R O U T I N E =======================================

sub_4876:
		cmpi.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		beq.s   loc_488C

    ; End of function sub_4876


; =============== S U B R O U T I N E =======================================

sub_487E:
		move.b  #4,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #9,((CURRENT_REGION-$1000000)).w
		rts

    ; End of function sub_487E


; START OF FUNCTION CHUNK FOR sub_4876

loc_488C:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #2,((CURRENT_REGION-$1000000)).w
		rts

; END OF FUNCTION CHUNK FOR sub_4876


; =============== S U B R O U T I N E =======================================

sub_48A4:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_48BC
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		rts
loc_48BC:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #42,d0
		bsr.w   CheckEventFlag
		bne.s   loc_48D6
		move.b  #2,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #4,((CURRENT_REGION-$1000000)).w
		bra.s   return_48E2
loc_48D6:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #5,((CURRENT_REGION-$1000000)).w
return_48E2:
		rts

    ; End of function sub_48A4


; =============== S U B R O U T I N E =======================================

sub_48E4:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4904
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #3,((CURRENT_REGION-$1000000)).w
		rts
loc_4904:
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #43,d0
		bsr.w   CheckEventFlag
		bne.s   loc_491E
		move.b  #3,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #6,((CURRENT_REGION-$1000000)).w
		bra.s   return_492A
loc_491E:
		move.b  #4,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
return_492A:
		rts

    ; End of function sub_48E4


; =============== S U B R O U T I N E =======================================

sub_492C:
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_494C

    ; End of function sub_492C

loc_4932:       moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #5,((CURRENT_REGION-$1000000)).w
		rts

; START OF FUNCTION CHUNK FOR sub_492C

loc_494C:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		move.b  #4,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #7,((CURRENT_REGION-$1000000)).w
		rts

; END OF FUNCTION CHUNK FOR sub_492C


; =============== S U B R O U T I N E =======================================

sub_4964:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_4964


; =============== S U B R O U T I N E =======================================

sub_497C:
		moveq   #36,d0
		bsr.w   ClearEventFlag
		tst.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		bne.s   loc_4998
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		rts
loc_4998:
		cmpi.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		beq.s   loc_49DC
		clr.b   ((CURRENT_MAP_ENTRANCE-$1000000)).w
		moveq   #40,d0
		bsr.w   CheckEventFlag
		bne.s   loc_49B8
		clr.b   ((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_REGION-$1000000)).w
		bra.s   return_49DA
loc_49B8:
		move.b  #2,((CURRENT_REGION-$1000000)).w
		moveq   #41,d0
		bsr.w   CheckEventFlag
		bne.s   loc_49CE
		move.b  #1,((CURRENT_MAP_VERSION-$1000000)).w
		bra.s   return_49DA
loc_49CE:
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		move.b  #1,((CURRENT_MAP_ENTRANCE-$1000000)).w
return_49DA:
		rts
loc_49DC:
		move.b  #3,((CURRENT_MAP_ENTRANCE-$1000000)).w
		clr.b   ((CURRENT_REGION-$1000000)).w
		move.b  #-1,((CURRENT_MAP_VERSION-$1000000)).w
		rts

    ; End of function sub_497C

