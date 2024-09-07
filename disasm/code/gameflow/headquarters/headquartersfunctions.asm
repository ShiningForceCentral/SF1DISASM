
; ASM FILE code\gameflow\headquarters\headquartersfunctions.asm :
; 0x66FA..0x69D4 : Headquarters functions

; =============== S U B R O U T I N E =======================================

sub_66FA:
		move.w  #1,(CURRENT_OBJECT).l
		bra.w   PositionHeadquartersMembers

    ; End of function sub_66FA


; =============== S U B R O U T I N E =======================================

sub_6706:
		move.l  sp,(dword_FF0EFE).l
		clr.w   (CURRENT_OBJECT).l
		jsr     (j_DisableDisplayAndInterrupts).l
		bsr.w   InitializeHeadquarters
		jsr     j_ClearTerrainAtOccupiedSquares
		clr.b   (byte_FFB53A).l
		move.w  #$15,(SCREEN_POSITION).l
		move.w  #$21A,(CURSOR_POSITION_X).l
		move.b  #1,(byte_FFB4D7).l
		jsr     sub_8024
		clr.b   (AREA_CURSOR_INDEX).l
		move.b  #-1,(byte_FFB4D3).l
loc_6754:
		clr.w   d0
		jsr     j_GetCombatantX
		lsl.w   #8,d1
		move.w  d1,d6
		jsr     j_GetCombatantY
		or.w    d1,d6
		move.w  d0,-(sp)
		move.w  d6,d0
		jsr     j_LoadCursorTiles
		clr.b   (byte_FFB538).l
		jsr     (j_WaitForVInt).l
		jsr     sub_8098
		move.w  (sp)+,d0
		move.b  d0,(ACTOR_BLINKING_TOGGLE).l
		jsr     sub_809C
		jsr     sub_8090
		bra.s   loc_6754

    ; End of function sub_6706


; =============== S U B R O U T I N E =======================================

InitializeHeadquarters:
		
		move.b  #-1,(CURRENT_REGION).l
		move.b  #-1,(CURRENT_MAP_VERSION).l
		clr.b   (CURRENT_MAP_ENTRANCE).l
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
PositionHeadquartersMembers:
		
		moveq   #-1,d1
		moveq   #FORCE_MEMBERS_COUNTER,d7
		clr.w   d0
@ClearEntities_Loop:
		
		jsr     j_SetEntityIndex
		addq.w  #1,d0
		dbf     d7,@ClearEntities_Loop
                
		                ; Position advisor
		moveq   #1,d0
		lea     table_HeadquartersMembersPositions(pc), a1
		jsr     j_PopulateBattlePartyMembersList
		lea     (byte_FFCB85).l,a0; FORCE_MEMBERS_LIST+1
		moveq   #ALLY_NOVA,d1
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetCombatantX
		move.b  (a1)+,d1
		jsr     j_SetCombatantY
		moveq   #2,d0
@PositionBattlePartyMembers_Loop:
		
		move.b  (a0)+,d1
		blt.s   @PositionReservePartyMembers
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetCombatantX
		move.b  (a1)+,d1
		jsr     j_SetCombatantY
		addq.w  #1,d0
		bra.s   @PositionBattlePartyMembers_Loop
@PositionReservePartyMembers:
		
		jsr     j_PopulateReservePartyMembersList
		lea     (FORCE_MEMBERS_LIST).l,a0
@PositionReservePartyMembers_Loop:
		
		move.b  (a0)+,d1
		blt.s   loc_6860
		clr.w   d2
		move.b  (a1)+,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		move.b  (a1)+,d1
		jsr     j_SetCombatantX
		move.b  (a1)+,d1
		jsr     j_SetCombatantY
		addq.w  #1,d0
		bra.s   @PositionReservePartyMembers_Loop
loc_6860:
		clr.w   d0
		clr.w   d1
		tst.w   (CURRENT_OBJECT).l
		bne.s   loc_688C
		moveq   #1,d2
		jsr     j_SetEntityIndex
		jsr     LoadHeadquartersMapsprite(pc)
		nop
		moveq   #2,d1
		jsr     j_SetCombatantX
		moveq   #$1A,d1
		jsr     j_SetCombatantY
		bra.s   return_6892
loc_688C:
		jsr     j_SetEntityIndex
return_6892:
		rts

    ; End of function InitializeHeadquarters


; =============== S U B R O U T I N E =======================================

sub_6894:
		move.w  #1,(CURRENT_OBJECT).l

    ; End of function sub_6894


; =============== S U B R O U T I N E =======================================

; Load headquarters map sprite

LoadHeadquartersMapsprite:
		
		movem.w d0-d2,-(sp)
		movem.l a0-a1,-(sp)
		move.w  d0,-(sp)
		move.w  d1,d0
		cmpi.w  #ALLY_NOVA,d1
		beq.s   loc_68B8
		jsr     j_GetCurrentHp
		tst.w   d1
		beq.s   loc_68C0
loc_68B8:
		jsr     j_GetMapSprite
		bra.s   loc_68C2
loc_68C0:
		moveq   #MAPSPRITE_BLUE_FLAME,d1
loc_68C2:
		bsr.w   sub_690A
		move.w  (sp)+,d0
		lea     (FF3000_LOADING_SPACE).l,a0
		move.w  d0,d7
		lsl.w   #3,d0
		add.w   d7,d0
		add.w   d0,d0
		addi.w  #$100,d0
		lsl.w   #5,d0
		movea.w d0,a1
		move.w  #$120,d0
		moveq   #2,d1
		tst.w   (CURRENT_OBJECT).l
		bne.s   loc_68F4
		jsr     (j_ApplyImmediateVramDma).l
		bra.s   loc_6900
loc_68F4:
		jsr     (j_ApplyVIntVramDma).l
loc_68FA:
		jsr     (j_WaitForDmaQueueProcessing).l
loc_6900:
		movem.l (sp)+,a0-a1
		movem.w (sp)+,d0-d2
		rts

    ; End of function LoadHeadquartersMapsprite


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
		movea.l (p_pt_MapSprites).l,a0
loc_6924:
		move.w  d1,d0
		lsl.w   #2,d0
		movea.l (a0,d0.w),a0
		jmp     (sub_300).l

    ; End of function sub_691E


; =============== S U B R O U T I N E =======================================

sub_6932:
		movea.l (p_pt_MapSprites+8).l,a0; mapsprite_Back table
		bra.s   loc_6924

    ; End of function sub_6932


; =============== S U B R O U T I N E =======================================

sub_693A:
		bsr.w   sub_69CA
		lea     (FF3000_LOADING_SPACE).l,a0
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
		lea     (byte_FF3240).l,a0
		lea     (FF3000_LOADING_SPACE).l,a1
		move.w  #$240,d7
		jsr     (j_CopyBytes).l
		movem.l (sp)+,d7-a1
		rts

    ; End of function sub_693A


; =============== S U B R O U T I N E =======================================

sub_69CA:
		movea.l (p_pt_MapSprites+4).l,a0; mapsprite_Side table
		bra.w   loc_6924

    ; End of function sub_69CA

