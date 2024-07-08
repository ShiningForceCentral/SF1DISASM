; ---------------------------------------------------------------------------
; Dialogue Script Macros
; ---------------------------------------------------------------------------


setMessageBank: macro
    move.w  #/1,d6
    endm
    
backupMessageBank: macro
    move.w  d6,-(sp)
    endm
    
restoreMessageBank: macro
    move.w  (sp)+,d6
    endm
    
setPortrait: macro
    moveq   #/1,d0
    jsr     (a4)
    endm
    
setTextSound: macro
    move.l  d0,-(sp)
    move.b  #/1,d0
    bsr.w   sub_17F64
    move.l  (sp)+,d0
    endm
    
setSpriteDirection: macro
    moveq   #/1,d0
    moveq   #/2,d1
    jsr     sub_11126
    endm
    
displayMessage: macro
    moveq   #/1,d0
    jsr     (a5)
    endm
    
displayYesNoPrompt: macro
    move.w  #/1*256|/2,d0
    bsr.w   sub_18046
    endm
    
executeChurchMenu: mcaro
    clr.w   d1
    move.b  -3(a6),d1
    move.b  -1(a6),d2
    lsl.w   #8,d2
    move.b  -2(a6),d2
    bsr.w   ExecuteChurchMenu
    tst.w   d1
    sne     -3(a6)
    move.b  d2,-2(a6)
    endm
    
executeShopMenu: macro
    moveq   #/1,d0
    clr.w   d1
    move.b  -3(a6),d1
    move.b  -1(a6),d2
    lsl.w   #8,d2
    move.b  -2(a6),d2
    bsr.w   ExecuteShopMenu
    tst.w   d1
    sne     -3(a6)
    move.b  d2,-2(a6)
    endm
    
setEvent: macro
    move.w  #/1,d0
    bsr.w   j_j_SetEventFlag
    endm
    
branchOnNo: macro
    bsr.w   sub_18056
    beq.s   /1
    endm
    
end: macro
    rts
    endm
    
