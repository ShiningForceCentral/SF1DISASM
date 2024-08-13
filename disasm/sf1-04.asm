
; GAME SECTION 04 :
; Stats engine, ...
; FREE SPACE : 123 bytes.



; =============== S U B R O U T I N E =======================================

j_InitializeNewGame:
		
		jmp     InitializeNewGame(pc)

    ; End of function j_InitializeNewGame


; =============== S U B R O U T I N E =======================================

sub_20004:
		jmp     sub_21B80(pc)

    ; End of function sub_20004


; =============== S U B R O U T I N E =======================================

j_LoadCombatantData:
		
		jmp     LoadCombatantData(pc)

    ; End of function j_LoadCombatantData


; =============== S U B R O U T I N E =======================================

sub_2000C:
		jmp     sub_21BF6(pc)

    ; End of function sub_2000C


; =============== S U B R O U T I N E =======================================

sub_20010:
		jmp     sub_21DBC(pc)

    ; End of function sub_20010


; =============== S U B R O U T I N E =======================================

j_ResetCombatants:
		
		jmp     ResetCombatants(pc)

    ; End of function j_ResetCombatants


; =============== S U B R O U T I N E =======================================

j_JoinBattleParty:
		
		jmp     JoinBattleParty(pc)

    ; End of function j_JoinBattleParty


; =============== S U B R O U T I N E =======================================

j_LeaveBattleParty:
		
		jmp     LeaveBattleParty(pc)

    ; End of function j_LeaveBattleParty


; =============== S U B R O U T I N E =======================================

sub_20020:
		jmp     sub_21ED8(pc)

    ; End of function sub_20020


; =============== S U B R O U T I N E =======================================

sub_20024:
		jmp     sub_21F16(pc)

    ; End of function sub_20024


; =============== S U B R O U T I N E =======================================

sub_20028:
		jmp     sub_21F64(pc)

    ; End of function sub_20028


; =============== S U B R O U T I N E =======================================

j_JoinForce:
		jmp     JoinForce(pc)   

    ; End of function j_JoinForce

j_dup_IsInForce:jmp     dup_IsInForce(pc)

; =============== S U B R O U T I N E =======================================

j_PopulateForceMembersList:
		
		jmp     PopulateForceMembersList(pc)

    ; End of function j_PopulateForceMembersList


; =============== S U B R O U T I N E =======================================

j_PopulateBattlePartyMembersList:
		
		jmp     PopulateBattlePartyMembersList(pc)

    ; End of function j_PopulateBattlePartyMembersList


; =============== S U B R O U T I N E =======================================

j_PopulateReservePartyMembersList:
		
		jmp     PopulateReservePartyMembersList(pc)

    ; End of function j_PopulateReservePartyMembersList


; =============== S U B R O U T I N E =======================================

sub_20040:
		jmp     sub_2204C(pc)

    ; End of function sub_20040


; =============== S U B R O U T I N E =======================================

j_RefillWholeForceHP:
		
		jmp     RefillWholeForceHP(pc)

    ; End of function j_RefillWholeForceHP


; =============== S U B R O U T I N E =======================================

j_GetCombatantPosition:
		
		jmp     GetCombatantPosition(pc)

    ; End of function j_GetCombatantPosition


; =============== S U B R O U T I N E =======================================

j_GetStatusEffectCounter:
		
		jmp     GetStatusEffectCounter(pc)

    ; End of function j_GetStatusEffectCounter


; =============== S U B R O U T I N E =======================================

j_GetDisplayedNameAddress:
		
		jmp     GetDisplayedNameAddress(pc)

    ; End of function j_GetDisplayedNameAddress


; =============== S U B R O U T I N E =======================================

j_GetEntity:
		jmp     GetEntity(pc)   

    ; End of function j_GetEntity


; =============== S U B R O U T I N E =======================================

j_GetCombatantX:
		
		jmp     GetCombatantX(pc)

    ; End of function j_GetCombatantX


; =============== S U B R O U T I N E =======================================

j_GetCombatantY:
		
		jmp     GetCombatantY(pc)

    ; End of function j_GetCombatantY


; =============== S U B R O U T I N E =======================================

j_GetModifiedAttack:
		
		jmp     GetModifiedAttack(pc)

    ; End of function j_GetModifiedAttack


; =============== S U B R O U T I N E =======================================

j_GetModifiedDefense:
		
		jmp     GetModifiedDefense(pc)

    ; End of function j_GetModifiedDefense


; =============== S U B R O U T I N E =======================================

j_GetModifiedAgility:
		
		jmp     GetModifiedAgility(pc)

    ; End of function j_GetModifiedAgility


; =============== S U B R O U T I N E =======================================

j_GetModifiedMove:
		
		jmp     GetModifiedMove(pc)

    ; End of function j_GetModifiedMove


; =============== S U B R O U T I N E =======================================

j_GetModifiedCritical:
		
		jmp     GetModifiedCritical(pc)

    ; End of function j_GetModifiedCritical


; =============== S U B R O U T I N E =======================================

j_GetModifiedDoubleAttackMode:
		
		jmp     GetModifiedDoubleAttackMode(pc)

    ; End of function j_GetModifiedDoubleAttackMode


; =============== S U B R O U T I N E =======================================

j_GetClass:
		jmp     GetClass(pc)    

    ; End of function j_GetClass


; =============== S U B R O U T I N E =======================================

j_GetLevel:
		jmp     GetLevel(pc)    

    ; End of function j_GetLevel


; =============== S U B R O U T I N E =======================================

j_GetBaseAttack:
		
		jmp     GetBaseAttack(pc)

    ; End of function j_GetBaseAttack


; =============== S U B R O U T I N E =======================================

j_GetBaseDefense:
		
		jmp     GetBaseDefense(pc)

    ; End of function j_GetBaseDefense


; =============== S U B R O U T I N E =======================================

j_GetBaseAgility:
		
		jmp     GetBaseAgility(pc)

    ; End of function j_GetBaseAgility

j_GetBaseMove:  jmp     GetBaseMove(pc) 

; =============== S U B R O U T I N E =======================================

j_GetBaseCritical:
		
		jmp     GetBaseCritical(pc)

    ; End of function j_GetBaseCritical


; =============== S U B R O U T I N E =======================================

j_GetExperience:
		
		jmp     GetExperience(pc)

    ; End of function j_GetExperience


; =============== S U B R O U T I N E =======================================

j_GetMaxHP:
		jmp     GetMaxHP(pc)    

    ; End of function j_GetMaxHP


; =============== S U B R O U T I N E =======================================

j_GetCurrentHP:
		
		jmp     GetCurrentHP(pc)

    ; End of function j_GetCurrentHP


; =============== S U B R O U T I N E =======================================

j_GetMaxMP:
		jmp     GetMaxMP(pc)    

    ; End of function j_GetMaxMP


; =============== S U B R O U T I N E =======================================

j_GetCurrentMP:
		
		jmp     GetCurrentMP(pc)

    ; End of function j_GetCurrentMP


; =============== S U B R O U T I N E =======================================

j_GetStatusEffects:
		
		jmp     GetStatusEffects(pc)

    ; End of function j_GetStatusEffects


; =============== S U B R O U T I N E =======================================

j_GetClassForCombatant:
		
		jmp     GetClassForCombatant(pc)

    ; End of function j_GetClassForCombatant


; =============== S U B R O U T I N E =======================================

j_GetLevelForCombatant:
		
		jmp     GetLevelForCombatant(pc)

    ; End of function j_GetLevelForCombatant


; =============== S U B R O U T I N E =======================================

j_GetBaseAttackForCombatant:
		
		jmp     GetBaseAttackForCombatant(pc)

    ; End of function j_GetBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

j_GetBaseDefenseForCombatant:
		
		jmp     GetBaseDefenseForCombatant(pc)

    ; End of function j_GetBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

j_GetBaseAgilityForCombatant:
		
		jmp     GetBaseAgilityForCombatant(pc)

    ; End of function j_GetBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

j_GetBaseMoveForCombatant:
		
		jmp     GetBaseMoveForCombatant(pc)

    ; End of function j_GetBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

j_GetBaseCriticalForCombatant:
		
		jmp     GetBaseCriticalForCombatant(pc)

    ; End of function j_GetBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

j_GetExperienceForCombatant:
		
		jmp     GetExperienceForCombatant(pc)

    ; End of function j_GetExperienceForCombatant


; =============== S U B R O U T I N E =======================================

j_GetStatusEffectsForCombatant:
		
		jmp     GetStatusEffectsForCombatant(pc)

    ; End of function j_GetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

j_GetMaxHpForCombatant:
		
		jmp     GetMaxHpForCombatant(pc)

    ; End of function j_GetMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

j_GetCurrentHpForCombatant:
		
		jmp     GetCurrentHpForCombatant(pc)

    ; End of function j_GetCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

j_GetMaxMpForCombatant:
		
		jmp     GetMaxMpForCombatant(pc)

    ; End of function j_GetMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

j_GetCurrentMpForCombatant:
		
		jmp     GetCurrentMpForCombatant(pc)

    ; End of function j_GetCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

j_GetEntityStatsAddress:
		
		jmp     GetEntityStatsAddress(pc)

    ; End of function j_GetEntityStatsAddress


; =============== S U B R O U T I N E =======================================

j_GetEntityItemsAddress:
		
		jmp     GetEntityItemsAddress(pc)

    ; End of function j_GetEntityItemsAddress


; =============== S U B R O U T I N E =======================================

j_GetCharacterSpellsAddress:
		
		jmp     GetCharacterSpellsAddress(pc)

    ; End of function j_GetCharacterSpellsAddress


; =============== S U B R O U T I N E =======================================

j_GetEntityStatsAddressForCombatant:
		
		jmp     GetEntityStatsAddressForCombatant(pc)

    ; End of function j_GetEntityStatsAddressForCombatant


; =============== S U B R O U T I N E =======================================

j_GetEntityItemsAddressForCombatant:
		
		jmp     GetEntityItemsAddressForCombatant(pc)

    ; End of function j_GetEntityItemsAddressForCombatant


; =============== S U B R O U T I N E =======================================

j_GetEntitySpellsAddressForCombatant:
		
		jmp     GetEntitySpellsAddressForCombatant(pc)

    ; End of function j_GetEntitySpellsAddressForCombatant


; =============== S U B R O U T I N E =======================================

j_SetCombatantPosition:
		
		jmp     SetCombatantPosition(pc)

    ; End of function j_SetCombatantPosition


; =============== S U B R O U T I N E =======================================

j_SetStatusEffectCounter:
		
		jmp     SetStatusEffectCounter(pc)

    ; End of function j_SetStatusEffectCounter


; =============== S U B R O U T I N E =======================================

j_LoadForceMemberName:
		
		jmp     LoadForceMemberName(pc)

    ; End of function j_LoadForceMemberName


; =============== S U B R O U T I N E =======================================

j_SetEntityIndex:
		
		jmp     SetEntityIndex(pc)

    ; End of function j_SetEntityIndex


; =============== S U B R O U T I N E =======================================

j_SetCombatantX:
		
		jmp     SetCombatantX(pc)

    ; End of function j_SetCombatantX


; =============== S U B R O U T I N E =======================================

j_SetCombatantY:
		
		jmp     SetCombatantY(pc)

    ; End of function j_SetCombatantY


; =============== S U B R O U T I N E =======================================

j_SetModifiedAttack:
		
		jmp     SetModifiedAttack(pc)

    ; End of function j_SetModifiedAttack


; =============== S U B R O U T I N E =======================================

j_SetModifiedDefense:
		
		jmp     SetModifiedDefense(pc)

    ; End of function j_SetModifiedDefense


; =============== S U B R O U T I N E =======================================

j_SetModifiedAgility:
		
		jmp     SetModifiedAgility(pc)

    ; End of function j_SetModifiedAgility


; =============== S U B R O U T I N E =======================================

j_SetModifiedMove:
		
		jmp     SetModifiedMove(pc)

    ; End of function j_SetModifiedMove


; =============== S U B R O U T I N E =======================================

j_SetModifiedCritical:
		
		jmp     SetModifiedCritical(pc)

    ; End of function j_SetModifiedCritical


; =============== S U B R O U T I N E =======================================

j_SetModifiedDoubleAttackMode:
		
		jmp     SetModifiedDoubleAttackMode(pc)

    ; End of function j_SetModifiedDoubleAttackMode


; =============== S U B R O U T I N E =======================================

j_SetClass:
		jmp     SetClass(pc)    

    ; End of function j_SetClass


; =============== S U B R O U T I N E =======================================

j_SetLevel:
		jmp     SetLevel(pc)    

    ; End of function j_SetLevel


; =============== S U B R O U T I N E =======================================

j_SetBaseAttack:
		
		jmp     SetBaseAttack(pc)

    ; End of function j_SetBaseAttack


; =============== S U B R O U T I N E =======================================

j_SetBaseDefense:
		
		jmp     SetBaseDefense(pc)

    ; End of function j_SetBaseDefense


; =============== S U B R O U T I N E =======================================

j_SetBaseAgility:
		
		jmp     SetBaseAgility(pc)

    ; End of function j_SetBaseAgility


; =============== S U B R O U T I N E =======================================

j_SetBaseMove:
		
		jmp     SetBaseMove(pc) 

    ; End of function j_SetBaseMove


; =============== S U B R O U T I N E =======================================

j_SetBaseCritical:
		
		jmp     SetBaseCritical(pc)

    ; End of function j_SetBaseCritical


; =============== S U B R O U T I N E =======================================

j_SetExperience:
		
		jmp     SetExperience(pc)

    ; End of function j_SetExperience


; =============== S U B R O U T I N E =======================================

j_SetMaxHP:
		jmp     SetMaxHP(pc)    

    ; End of function j_SetMaxHP


; =============== S U B R O U T I N E =======================================

j_SetCurrentHP:
		
		jmp     SetCurrentHP(pc)

    ; End of function j_SetCurrentHP


; =============== S U B R O U T I N E =======================================

j_SetMaxMP:
		jmp     SetMaxMP(pc)    

    ; End of function j_SetMaxMP


; =============== S U B R O U T I N E =======================================

j_SetCurrentMP:
		
		jmp     SetCurrentMP(pc)

    ; End of function j_SetCurrentMP


; =============== S U B R O U T I N E =======================================

j_SetStatusEffects:
		
		jmp     SetStatusEffects(pc)

    ; End of function j_SetStatusEffects


; =============== S U B R O U T I N E =======================================

j_SetClassForCombatant:
		
		jmp     SetClassForCombatant(pc)

    ; End of function j_SetClassForCombatant


; =============== S U B R O U T I N E =======================================

j_SetLevelForCombatant:
		
		jmp     SetLevelForCombatant(pc)

    ; End of function j_SetLevelForCombatant


; =============== S U B R O U T I N E =======================================

j_SetBaseAttackForCombatant:
		
		jmp     SetBaseAttackForCombatant(pc)

    ; End of function j_SetBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

j_SetBaseDefenseForCombatant:
		
		jmp     SetBaseDefenseForCombatant(pc)

    ; End of function j_SetBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

j_SetBaseAgilityForCombatant:
		
		jmp     SetBaseAgilityForCombatant(pc)

    ; End of function j_SetBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

j_SetBaseMoveForCombatant:
		
		jmp     SetBaseMoveForCombatant(pc)

    ; End of function j_SetBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

j_SetBaseCriticalForCombatant:
		
		jmp     SetBaseCriticalForCombatant(pc)

    ; End of function j_SetBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

j_SetExperienceForCombatant:
		
		jmp     SetExperienceForCombatant(pc)

    ; End of function j_SetExperienceForCombatant


; =============== S U B R O U T I N E =======================================

j_SetMaxHPforCombatant:
		
		jmp     SetMaxHPforCombatant(pc)

    ; End of function j_SetMaxHPforCombatant


; =============== S U B R O U T I N E =======================================

j_SetCurrentHPforCombatant:
		
		jmp     SetCurrentHPforCombatant(pc)

    ; End of function j_SetCurrentHPforCombatant


; =============== S U B R O U T I N E =======================================

j_SetMaxMPforCombatant:
		
		jmp     SetMaxMPforCombatant(pc)

    ; End of function j_SetMaxMPforCombatant


; =============== S U B R O U T I N E =======================================

j_SetCurrentMPforCombatant:
		
		jmp     SetCurrentMPforCombatant(pc)

    ; End of function j_SetCurrentMPforCombatant


; =============== S U B R O U T I N E =======================================

j_SetStatusEffectsForCombatant:
		
		jmp     SetStatusEffectsForCombatant(pc)

    ; End of function j_SetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseExperience:
		
		jmp     IncreaseExperience(pc)

    ; End of function j_IncreaseExperience


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentMP:
		
		jmp     IncreaseCurrentMP(pc)

    ; End of function j_IncreaseCurrentMP


; =============== S U B R O U T I N E =======================================

j_IncreaseModifiedAttack:
		
		jmp     IncreaseModifiedAttack(pc)

    ; End of function j_IncreaseModifiedAttack


; =============== S U B R O U T I N E =======================================

j_IncreaseModifiedDefense:
		
		jmp     IncreaseModifiedDefense(pc)

    ; End of function j_IncreaseModifiedDefense


; =============== S U B R O U T I N E =======================================

j_IncreaseModifiedAgility:
		
		jmp     IncreaseModifiedAgility(pc)

    ; End of function j_IncreaseModifiedAgility


; =============== S U B R O U T I N E =======================================

j_IncreaseModifiedMove:
		
		jmp     IncreaseModifiedMove(pc)

    ; End of function j_IncreaseModifiedMove


; =============== S U B R O U T I N E =======================================

j_IncreaseModifiedCritical:
		
		jmp     IncreaseModifiedCritical(pc)

    ; End of function j_IncreaseModifiedCritical


; =============== S U B R O U T I N E =======================================

j_IncreaseLevel:
		
		jmp     IncreaseLevel(pc)

    ; End of function j_IncreaseLevel


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseAttack:
		
		jmp     IncreaseBaseAttack(pc)

    ; End of function j_IncreaseBaseAttack


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseDefense:
		
		jmp     IncreaseBaseDefense(pc)

    ; End of function j_IncreaseBaseDefense


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseAgility:
		
		jmp     IncreaseBaseAgility(pc)

    ; End of function j_IncreaseBaseAgility


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseMove:
		
		jmp     IncreaseBaseMove(pc)

    ; End of function j_IncreaseBaseMove


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseCritical:
		
		jmp     IncreaseBaseCritical(pc)

    ; End of function j_IncreaseBaseCritical


; =============== S U B R O U T I N E =======================================

j_IncreaseMaxHP:
		
		jmp     IncreaseMaxHP(pc)

    ; End of function j_IncreaseMaxHP


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentHP:
		
		jmp     IncreaseCurrentHP(pc)

    ; End of function j_IncreaseCurrentHP


; =============== S U B R O U T I N E =======================================

j_IncreaseMaxMP:
		
		jmp     IncreaseMaxMP(pc)

    ; End of function j_IncreaseMaxMP


; =============== S U B R O U T I N E =======================================

j_IncreaseLevelForCombatant:
		
		jmp     IncreaseLevelForCombatant(pc)

    ; End of function j_IncreaseLevelForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseAttackForCombatant:
		
		jmp     IncreaseBaseAttackForCombatant(pc)

    ; End of function j_IncreaseBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseDefenseForCombatant:
		
		jmp     IncreaseBaseDefenseForCombatant(pc)

    ; End of function j_IncreaseBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseAgilityForCombatant:
		
		jmp     IncreaseBaseAgilityForCombatant(pc)

    ; End of function j_IncreaseBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseMoveForCombatant:
		
		jmp     IncreaseBaseMoveForCombatant(pc)

    ; End of function j_IncreaseBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseBaseCriticalForCombatant:
		
		jmp     IncreaseBaseCriticalForCombatant(pc)

    ; End of function j_IncreaseBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseExperienceForCombatant:
		
		jmp     IncreaseExperienceForCombatant(pc)

    ; End of function j_IncreaseExperienceForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseMaxHPforCombatant:
		
		jmp     IncreaseMaxHPforCombatant(pc)

    ; End of function j_IncreaseMaxHPforCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentHPforCombatant:
		
		jmp     IncreaseCurrentHPforCombatant(pc)

    ; End of function j_IncreaseCurrentHPforCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseMaxMPforCombatant:
		
		jmp     IncreaseMaxMPforCombatant(pc)

    ; End of function j_IncreaseMaxMPforCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentMPforCombatant:
		
		jmp     IncreaseCurrentMPforCombatant(pc)

    ; End of function j_IncreaseCurrentMPforCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseModifiedAttack:
		
		jmp     DecreaseModifiedAttack(pc)

    ; End of function j_DecreaseModifiedAttack


; =============== S U B R O U T I N E =======================================

j_DecreaseModifiedDefense:
		
		jmp     DecreaseModifiedDefense(pc)

    ; End of function j_DecreaseModifiedDefense


; =============== S U B R O U T I N E =======================================

j_DecreaseModifiedAgility:
		
		jmp     DecreaseModifiedAgility(pc)

    ; End of function j_DecreaseModifiedAgility


; =============== S U B R O U T I N E =======================================

j_DecreaseModifiedMove:
		
		jmp     DecreaseModifiedMove(pc)

    ; End of function j_DecreaseModifiedMove


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxHP:
		
		jmp     DecreaseMaxHP(pc)

    ; End of function j_DecreaseMaxHP


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxMP:
		
		jmp     DecreaseMaxMP(pc)

    ; End of function j_DecreaseMaxMP


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseAttack:
		
		jmp     DecreaseBaseAttack(pc)

    ; End of function j_DecreaseBaseAttack


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseDefense:
		
		jmp     DecreaseBaseDefense(pc)

    ; End of function j_DecreaseBaseDefense


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseAgility:
		
		jmp     DecreaseBaseAgility(pc)

    ; End of function j_DecreaseBaseAgility


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseMove:
		
		jmp     DecreaseBaseMove(pc)

    ; End of function j_DecreaseBaseMove


; =============== S U B R O U T I N E =======================================

j_DecreaseCurrentHP:
		
		jmp     DecreaseCurrentHP(pc)

    ; End of function j_DecreaseCurrentHP


; =============== S U B R O U T I N E =======================================

j_DecreaseCurrentMP:
		
		jmp     DecreaseCurrentMP(pc)

    ; End of function j_DecreaseCurrentMP


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxHPforCombatant:
		
		jmp     DecreaseMaxHPforCombatant(pc)

    ; End of function j_DecreaseMaxHPforCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxMPforCombatant:
		
		jmp     DecreaseMaxMPforCombatant(pc)

    ; End of function j_DecreaseMaxMPforCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseAttackForCombatant:
		
		jmp     DecreaseBaseAttackForCombatant(pc)

    ; End of function j_DecreaseBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseDefenseForCombatant:
		
		jmp     DecreaseBaseDefenseForCombatant(pc)

    ; End of function j_DecreaseBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseAgilityForCombatant:
		
		jmp     DecreaseBaseAgilityForCombatant(pc)

    ; End of function j_DecreaseBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseBaseMoveForCombatant:
		
		jmp     DecreaseBaseMoveForCombatant(pc)

    ; End of function j_DecreaseBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseCurrentHPforCombatant:
		
		jmp     DecreaseCurrentHPforCombatant(pc)

    ; End of function j_DecreaseCurrentHPforCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseCurrentMPforCombatant:
		
		jmp     DecreaseCurrentMPforCombatant(pc)

    ; End of function j_DecreaseCurrentMPforCombatant


; =============== S U B R O U T I N E =======================================

j_GiveItem:
		jmp     GiveItem(pc)    

    ; End of function j_GiveItem


; =============== S U B R O U T I N E =======================================

j_RemoveItem:
		jmp     RemoveItem(pc)  

    ; End of function j_RemoveItem


; =============== S U B R O U T I N E =======================================

j_CountOccupiedItemSlots:
		
		jmp     CountOccupiedItemSlots(pc)

    ; End of function j_CountOccupiedItemSlots


; =============== S U B R O U T I N E =======================================

j_BreakItem:
		jmp     BreakItem(pc)   

    ; End of function j_BreakItem


; =============== S U B R O U T I N E =======================================

j_GiveItemForCombatant:
		
		jmp     GiveItemForCombatant(pc)

    ; End of function j_GiveItemForCombatant


; =============== S U B R O U T I N E =======================================

j_RemoveItemForCombatant:
		
		jmp     RemoveItemForCombatant(pc)

    ; End of function j_RemoveItemForCombatant


; =============== S U B R O U T I N E =======================================

j_CountOccupiedItemSlotsForCombatant:
		
		jmp     CountOccupiedItemSlotsForCombatant(pc)

    ; End of function j_CountOccupiedItemSlotsForCombatant


; =============== S U B R O U T I N E =======================================

j_BreakItemForCombatant:
		
		jmp     BreakItemForCombatant(pc)

    ; End of function j_BreakItemForCombatant


; =============== S U B R O U T I N E =======================================

j_GetItemType:
		
		jmp     GetItemType(pc) 

    ; End of function j_GetItemType


; =============== S U B R O U T I N E =======================================

j_GetItemPrice:
		
		jmp     GetItemPrice(pc)

    ; End of function j_GetItemPrice


; =============== S U B R O U T I N E =======================================

j_GetEquippedWeaponIndex:
		
		jmp     GetEquippedWeaponIndex(pc)

    ; End of function j_GetEquippedWeaponIndex


; =============== S U B R O U T I N E =======================================

j_GetEquippedItemForCombatant:
		
		jmp     GetEquippedItemForCombatant(pc)

    ; End of function j_GetEquippedItemForCombatant


; =============== S U B R O U T I N E =======================================

j_EquipItemForCombatant:
		
		jmp     EquipItemForCombatant(pc)

    ; End of function j_EquipItemForCombatant


; =============== S U B R O U T I N E =======================================

j_LoadEquippableItemsForCombatant:
		
		jmp     LoadEquippableItemsForCombatant(pc)

    ; End of function j_LoadEquippableItemsForCombatant


; =============== S U B R O U T I N E =======================================

j_IsItemEquippableForCombatant:
		
		jmp     IsItemEquippableForCombatant(pc)

    ; End of function j_IsItemEquippableForCombatant


; =============== S U B R O U T I N E =======================================

j_GetItemsCurseSettingsForCombatant:
		
		jmp     GetItemsCurseSettingsForCombatant(pc)

    ; End of function j_GetItemsCurseSettingsForCombatant


; =============== S U B R O U T I N E =======================================

j_GetEquippedItem:
		
		jmp     GetEquippedItem(pc)

    ; End of function j_GetEquippedItem


; =============== S U B R O U T I N E =======================================

j_EquipItem:
		jmp     EquipItem(pc)   

    ; End of function j_EquipItem


; =============== S U B R O U T I N E =======================================

j_LoadEquippableItems:
		
		jmp     LoadEquippableItems(pc)

    ; End of function j_LoadEquippableItems


; =============== S U B R O U T I N E =======================================

j_IsItemEquippable:
		
		jmp     IsItemEquippable(pc)

    ; End of function j_IsItemEquippable


; =============== S U B R O U T I N E =======================================

j_GetItemsCurseSettings:
		
		jmp     GetItemsCurseSettings(pc)

    ; End of function j_GetItemsCurseSettings


; =============== S U B R O U T I N E =======================================

j_FindItemToDrop:
		
		jmp     FindItemToDrop(pc)

    ; End of function j_FindItemToDrop


; =============== S U B R O U T I N E =======================================

j_GetMPCost:
		jmp     GetMPCost(pc)   

    ; End of function j_GetMPCost


; =============== S U B R O U T I N E =======================================

j_FindTargetableSpaces:
		
		jmp     FindTargetableSpaces(pc)

    ; End of function j_FindTargetableSpaces


; =============== S U B R O U T I N E =======================================

j_FindTargetsWithinArea:
		
		jmp     FindTargetsWithinArea(pc)

    ; End of function j_FindTargetsWithinArea


; =============== S U B R O U T I N E =======================================

j_JumpToRangeOrEquipEffect:
		
		jmp     JumpToRangeOrEquipEffect(pc)

    ; End of function j_JumpToRangeOrEquipEffect


; =============== S U B R O U T I N E =======================================

j_IncreaseStatOnItemUse:
		
		jmp     IncreaseStatOnItemUse(pc)

    ; End of function j_IncreaseStatOnItemUse


; =============== S U B R O U T I N E =======================================

j_CurePoison:
		jmp     CurePoison(pc)  

    ; End of function j_CurePoison


; =============== S U B R O U T I N E =======================================

j_FindTargetableSpacesForAttack:
		
		jmp     FindTargetableSpacesForAttack(pc)

    ; End of function j_FindTargetableSpacesForAttack


; =============== S U B R O U T I N E =======================================

j_CreateMovementGrid:
		
		jmp     CreateMovementGrid(pc)

    ; End of function j_CreateMovementGrid


; =============== S U B R O U T I N E =======================================

j_UseItem:
		jmp     UseItem(pc)     

    ; End of function j_UseItem


; =============== S U B R O U T I N E =======================================

j_FindTargetableSpacesForSpell:
		
		jmp     FindTargetableSpacesForSpell(pc)

    ; End of function j_FindTargetableSpacesForSpell


; =============== S U B R O U T I N E =======================================

sub_202CC:
		jmp     sub_23752(pc)   

    ; End of function sub_202CC


; =============== S U B R O U T I N E =======================================

j_MakeMoveEverywhereGrid:
		
		jmp     MakeMoveEverywhereGrid(pc)

    ; End of function j_MakeMoveEverywhereGrid


; =============== S U B R O U T I N E =======================================

sub_202D4:
		jmp     sub_237CA(pc)

    ; End of function sub_202D4


; =============== S U B R O U T I N E =======================================

j_PopulateTargetsList:
		
		jmp     PopulateTargetsList(pc)

    ; End of function j_PopulateTargetsList


; =============== S U B R O U T I N E =======================================

j_SetupBattleaction:
		
		jmp     SetupBattleaction(pc)

    ; End of function j_SetupBattleaction


; =============== S U B R O U T I N E =======================================

j_GetItemNameAddress:
		
		jmp     GetItemNameAddress(pc)

    ; End of function j_GetItemNameAddress


; =============== S U B R O U T I N E =======================================

j_GetClassNameAddress:
		
		jmp     GetClassNameAddress(pc)

    ; End of function j_GetClassNameAddress


; =============== S U B R O U T I N E =======================================

j_GetSpellNameAddress:
		
		jmp     GetSpellNameAddress(pc)

    ; End of function j_GetSpellNameAddress


; =============== S U B R O U T I N E =======================================

j_GetMoveCostEntryAddress:
		
		jmp     GetMoveCostEntryAddress(pc)

    ; End of function j_GetMoveCostEntryAddress


; =============== S U B R O U T I N E =======================================

j_GetLandEffectEntryAddress:
		
		jmp     GetLandEffectEntryAddress(pc)

    ; End of function j_GetLandEffectEntryAddress


; =============== S U B R O U T I N E =======================================

j_GetResistance:
		
		jmp     GetResistance(pc)

    ; End of function j_GetResistance


; =============== S U B R O U T I N E =======================================

sub_202F8:
		jmp     sub_2397C(pc)   

    ; End of function sub_202F8


; =============== S U B R O U T I N E =======================================

j_GetBaseDoubleAttackMode:
		
		jmp     GetBaseDoubleAttackMode(pc)

    ; End of function j_GetBaseDoubleAttackMode


; =============== S U B R O U T I N E =======================================

j_GetPortraitForCombatant:
		
		jmp     GetPortraitForCombatant(pc)

    ; End of function j_GetPortraitForCombatant


; =============== S U B R O U T I N E =======================================

j_GetPortrait:
		
		jmp     GetPortrait(pc) 

    ; End of function j_GetPortrait


; =============== S U B R O U T I N E =======================================

j_GetMapSpriteForCombatant:
		
		jmp     GetMapSpriteForCombatant(pc)

    ; End of function j_GetMapSpriteForCombatant


; =============== S U B R O U T I N E =======================================

j_GetMapSprite:
		
		jmp     GetMapSprite(pc)

    ; End of function j_GetMapSprite


; =============== S U B R O U T I N E =======================================

j_GetBattleSpritePaletteAndAnimationIndexes:
		
		jmp     GetBattleSpritePaletteAndAnimationIndexes(pc)

    ; End of function j_GetBattleSpritePaletteAndAnimationIndexes


; =============== S U B R O U T I N E =======================================

j_LoadBattlespriteDataWithWeapon:
		
		jmp     LoadBattlespriteDataWithWeapon(pc)

    ; End of function j_LoadBattlespriteDataWithWeapon


; =============== S U B R O U T I N E =======================================

j_LoadBattlespriteDataWithoutWeapon:
		
		jmp     LoadBattlespriteDataWithoutWeapon(pc)

    ; End of function j_LoadBattlespriteDataWithoutWeapon


; =============== S U B R O U T I N E =======================================

sub_2031C:
		jmp     sub_23B12(pc)

    ; End of function sub_2031C


; =============== S U B R O U T I N E =======================================

sub_20320:
		jmp     sub_23C88(pc)

    ; End of function sub_20320


; =============== S U B R O U T I N E =======================================

j_GetLandEffectForCombatant:
		
		jmp     GetLandEffectForCombatant(pc)

    ; End of function j_GetLandEffectForCombatant


; =============== S U B R O U T I N E =======================================

j_GetLandEffectAtPosition:
		
		jmp     GetLandEffectAtPosition(pc)

    ; End of function j_GetLandEffectAtPosition


; =============== S U B R O U T I N E =======================================

sub_2032C:
		jmp     sub_2466C(pc)

    ; End of function sub_2032C


; =============== S U B R O U T I N E =======================================

j_GetTerrainBackgrounds:
		
		jmp     GetTerrainBackgrounds(pc)

    ; End of function j_GetTerrainBackgrounds


; =============== S U B R O U T I N E =======================================

j_LevelUp:
		jmp     LevelUp(pc)

    ; End of function j_LevelUp


; =============== S U B R O U T I N E =======================================

j_IncreaseStatsOnLevelUp:
		
		jmp     IncreaseStatsOnLevelUp(pc)

    ; End of function j_IncreaseStatsOnLevelUp


; =============== S U B R O U T I N E =======================================

j_Promote:
		jmp     Promote(pc)     

    ; End of function j_Promote


; =============== S U B R O U T I N E =======================================

j_IsAsleep:
		jmp     IsAsleep(pc)    

    ; End of function j_IsAsleep


; =============== S U B R O U T I N E =======================================

j_HandleAfterTurnStatusEffects:
		
		jmp     HandleAfterTurnStatusEffects(pc)

    ; End of function j_HandleAfterTurnStatusEffects


; =============== S U B R O U T I N E =======================================

j_ResetForceMemberStats:
		
		jmp     ResetForceMemberStats(pc)

    ; End of function j_ResetForceMemberStats


; =============== S U B R O U T I N E =======================================

j_GetGold:
		jmp     GetGold(pc)     

    ; End of function j_GetGold


; =============== S U B R O U T I N E =======================================

j_SetGold:
		jmp     SetGold(pc)     

    ; End of function j_SetGold


; =============== S U B R O U T I N E =======================================

j_IncreaseGold:
		
		jmp     IncreaseGold(pc)

    ; End of function j_IncreaseGold


; =============== S U B R O U T I N E =======================================

j_DecreaseGold:
		
		jmp     DecreaseGold(pc)

    ; End of function j_DecreaseGold


; =============== S U B R O U T I N E =======================================

j_IncrementDealsStock:
		
		jmp     IncrementDealsStock(pc)

    ; End of function j_IncrementDealsStock


; =============== S U B R O U T I N E =======================================

j_DecrementDealsStock:
		
		jmp     DecrementDealsStock(pc)

    ; End of function j_DecrementDealsStock


; =============== S U B R O U T I N E =======================================

j_LoadDealsInventory:
		
		jmp     LoadDealsInventory(pc)

    ; End of function j_LoadDealsInventory


; =============== S U B R O U T I N E =======================================

j_IsItemInDealsOrHeldByForce:
		
		jmp     IsItemInDealsOrHeldByForce(pc)

    ; End of function j_IsItemInDealsOrHeldByForce


; =============== S U B R O U T I N E =======================================

j_IsItemHeldByCharacter:
		
		jmp     IsItemHeldByCharacter(pc)

    ; End of function j_IsItemHeldByCharacter


; =============== S U B R O U T I N E =======================================

j_IsItemHeldByForce:
		
		jmp     IsItemHeldByForce(pc)

    ; End of function j_IsItemHeldByForce


; =============== S U B R O U T I N E =======================================

j_LoadBaseAttack:
		
		jmp     LoadBaseAttack(pc)

    ; End of function j_LoadBaseAttack


; =============== S U B R O U T I N E =======================================

j_LoadBaseDefense:
		
		jmp     LoadBaseDefense(pc)

    ; End of function j_LoadBaseDefense


; =============== S U B R O U T I N E =======================================

j_LoadBaseAgility:
		
		jmp     LoadBaseAgility(pc)

    ; End of function j_LoadBaseAgility


; =============== S U B R O U T I N E =======================================

j_LoadBaseMove:
		
		jmp     LoadBaseMove(pc)

    ; End of function j_LoadBaseMove


; =============== S U B R O U T I N E =======================================

j_LoadBaseCritical:
		
		jmp     LoadBaseCritical(pc)

    ; End of function j_LoadBaseCritical


; =============== S U B R O U T I N E =======================================

j_RefillHP:
		jmp     RefillHP(pc)    

    ; End of function j_RefillHP


; =============== S U B R O U T I N E =======================================

j_RefillMP:
		jmp     RefillMP(pc)    

    ; End of function j_RefillMP


; =============== S U B R O U T I N E =======================================

j_RefillHPforCombatant:
		
		jmp     RefillHPforCombatant(pc)

    ; End of function j_RefillHPforCombatant


; =============== S U B R O U T I N E =======================================

j_RefillMPforCombatant:
		
		jmp     RefillMPforCombatant(pc)

    ; End of function j_RefillMPforCombatant


; =============== S U B R O U T I N E =======================================

j_ClearPassabilityFlags:
		
		jmp     ClearPassabilityFlags(pc)

    ; End of function j_ClearPassabilityFlags


; =============== S U B R O U T I N E =======================================

j_ClearTableAtFFA8C0:
		
		jmp     ClearTableAtFFA8C0(pc)

    ; End of function j_ClearTableAtFFA8C0


; =============== S U B R O U T I N E =======================================

j_InitializeBattleMap:
		
		jmp     InitializeBattleMap(pc)

    ; End of function j_InitializeBattleMap


; =============== S U B R O U T I N E =======================================

j_ClearTerrainAtOccupiedSquares:
		
		jmp     ClearTerrainAtOccupiedSpaces(pc)

    ; End of function j_ClearTerrainAtOccupiedSquares

p_InitialForceMembersData:
		dc.l InitialForceData
p_BattleSpriteData:
		dc.l BattleSpriteData
p_ItemNames:    dc.l ItemNames
p_ItemData:     dc.l ItemData
p_WeaponSpriteData:
		dc.l WeaponSpriteData
p_ItemTypes:    dc.l ItemTypes
p_ClassNames:   dc.l ClassNames
p_ClassData:    dc.l ClassData
p_SpellNames:   dc.l SpellNames
p_SpellData:    dc.l SpellData
p_MoveCostData: dc.l MoveCostData
p_LandEffectData:
		dc.l LandEffectData
p_ForceAnimationData:
		dc.l ForceAnimationData
p_EnemyAnimationData:
		dc.l EnemyAnimationData
p_TerrainData:  dc.l TerrainData
off_203E4:      dc.l byte_26BF2
p_GrowthCurves: dc.l GrowthCurves
p_UnpromotedGrowths:
		dc.l UnpromotedGrowths
p_PromotedGrowths:
		dc.l PromotedGrowths
p_SpellLearningData:
		dc.l SpellLearningData

; =============== S U B R O U T I N E =======================================

j_LoadEndingCreditsForce:
		
		jmp     LoadEndingCreditsForce(pc)

    ; End of function j_LoadEndingCreditsForce


; =============== S U B R O U T I N E =======================================

j_WriteEndingCreditsBattlesceneScript:
		
		jmp     WriteEndingCreditsBattlesceneScript(pc)

    ; End of function j_WriteEndingCreditsBattlesceneScript


; =============== S U B R O U T I N E =======================================

j_InitializeBattleData:
		
		jmp     InitializeBattleData(pc)

    ; End of function j_InitializeBattleData


; =============== S U B R O U T I N E =======================================

; In: A0 = move cost entry address

MakeEffectiveMoveCosts:
		
		bsr.w   LoadMoveCosts   
		bsr.w   BlockSpacesOccupiedByOpponents

    ; End of function MakeEffectiveMoveCosts


; =============== S U B R O U T I N E =======================================

; Setup registers to calculate and load total move costs to table at $FFA8C0
; 
; In: D1 = moving combatant's Y
;     D2 = moving combatant's X
;     D3 = moving combatant's modified move * 2 (i.e., move points)

PopulateTotalMoveCosts:
		
		movem.l d1/a0,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = moving combatant's position converted to offset
		adda.w  d1,a0           ; A0 = passability flags entry address
		moveq   #$FFFFFFFF,d1
		jsr     j_ClearPassabilityFlags
		jsr     j_ClearTableAtFFA8C0
		bsr.s   CalculateTotalMoveCosts
		movem.l (sp)+,d1/a0
		rts

    ; End of function PopulateTotalMoveCosts


; =============== S U B R O U T I N E =======================================

; Calculate total move costs to reachable spaces, load to table at $FFA8C0
; 
; In: A0 = passability flags entry address
;     D3 = moving combatant's modified move * 2 (i.e., move points)

CalculateTotalMoveCosts:
		
		movem.l d0-d5/a0-a1,-(sp)
		lea     bt_204F6(pc), a1
		clr.w   d0
		clr.w   d1
		clr.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
						; clear total move cost at starting position
		move.w  ((MAP_WIDTH-$1000000)).w,d4
loc_20446:
		suba.w  d4,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space up
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_20464       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_20464
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #0,(a0)
		bra.w   loc_20446

    ; End of function CalculateTotalMoveCosts


; =============== S U B R O U T I N E =======================================

sub_20464:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		adda.w  d4,a0
		adda.w  d4,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space down
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_2048C       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_2048C
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #4,(a0)
		bra.w   loc_20446

    ; End of function sub_20464


; =============== S U B R O U T I N E =======================================

sub_2048C:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		suba.w  d4,a0
		subq.l  #1,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space left
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_204B4       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_204B4
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #$C,(a0)
		bra.w   loc_20446

    ; End of function sub_2048C


; =============== S U B R O U T I N E =======================================

sub_204B4:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		addq.l  #1,a0
		addq.l  #1,a0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
						; D0 = cost to move one space right
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
						; D3 = remaining move points
		bcs.s   sub_204DC       ; branch if not enough move points
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0),d0
		bcc.s   sub_204DC
		move.b  d0,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		move.b  #8,(a0)
		bra.w   loc_20446

    ; End of function sub_204B4


; =============== S U B R O U T I N E =======================================

sub_204DC:
		sub.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d0
		add.b   OFFSET_PASSABILITY_FLAGS_TO_MOVE_COSTS(a0),d3
		subq.l  #1,a0
		tst.b   d0
		beq.s   loc_204F0
		move.b  (a0),d1
		jmp     (a1,d1.w)
loc_204F0:
		movem.l (sp)+,d0-d5/a0-a1
		rts

    ; End of function sub_204DC

bt_204F6:       bra.w   sub_20464       ; related to move costs calculation
		bra.w   sub_2048C
		bra.w   sub_204DC
		bra.w   sub_204B4

; =============== S U B R O U T I N E =======================================

; Load move costs table given entry at A0, mapped to current terrain data

LoadMoveCosts:
		
		movem.l d0-d2/a1-a2,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a1
		movea.l (p_TerrainData).l,a2
		clr.w   d2
		move.w  #$3FF,d0
loc_2051A:
		move.b  (a1),d1
		andi.w  #$FF,d1
		asl.w   #2,d1
		move.b  (a2,d1.w),d1    ; D1 = terrain type
		andi.w  #$FF,d1
		move.b  (a0,d1.w),d2
		move.b  d2,OFFSET_CURRENT_TERRAIN_DATA_TO_MOVE_COSTS(a1)
		addq.l  #1,a1
		dbf     d0,loc_2051A

		movem.l (sp)+,d0-d2/a1-a2
		rts

    ; End of function LoadMoveCosts


; =============== S U B R O U T I N E =======================================

; Block spaces occupied by opponents (bits 0 and 1 of D4 determine if enemies or force members should be blocked, respectively)

BlockSpacesOccupiedByOpponents:
		
		movem.l d0-d3/a0,-(sp)
		lea     ((MOVE_COSTS-$1000000)).w,a0
		move.w  #COMBATANT_ENTRIES_COUNTER,d0
loc_2054A:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_2057A
		tst.b   d1
		bge.s   loc_20562       ; branch if force member
		btst    #1,d4
		beq.s   loc_2057A       ; skip if not tasked to block spaces occupied by force members
		bra.s   loc_20568
loc_20562:
		btst    #0,d4
		beq.s   loc_2057A       ; skip if not tasked to block spaces occupied by enemies
loc_20568:
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  #$FF,(a0,d1.w)  ; make space at combatant position impassable
loc_2057A:
		dbf     d0,loc_2054A

		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function BlockSpacesOccupiedByOpponents


; =============== S U B R O U T I N E =======================================

; Setup registers to make effective move costs table for combatant D0

SetupEffectiveMoveCosts:
		
		movem.l d1-d4/a0,-(sp)
		jsr     j_GetMoveCostEntryAddress
loc_2058E:
		jsr     j_GetCombatantPosition
		bsr.w   MakeEffectiveMoveCosts
		movem.l (sp)+,d1-d4/a0
		rts

    ; End of function SetupEffectiveMoveCosts


; =============== S U B R O U T I N E =======================================

; Setup registers to make targeting move costs table

SetupTargetingMoveCosts:
		
		movem.l d1-d4/a0,-(sp)
		movea.l (p_MoveCostData).l,a0
		clr.w   d4
		bra.s   loc_2058E

    ; End of function SetupTargetingMoveCosts


; =============== S U B R O U T I N E =======================================

MakeEffectivePassabilityFlags:
		
		bsr.s   InitPassabilityFlags
		bsr.s   ClearAllowedToStayAtFlags
		rts

    ; End of function MakeEffectivePassabilityFlags


; =============== S U B R O U T I N E =======================================

; Initialize all spaces within move range as "allowed to pass through" and "allowed to stay at"

InitPassabilityFlags:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		movea.l (p_TerrainData).l,a1
		move.w  #$3FF,d0
loc_205C4:
		clr.b   (a0)
		cmpi.b  #$FF,OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a0)
		beq.s   loc_205D2       ; branch if space is outside move range
		ori.b   #3,(a0)
loc_205D2:
		addq.l  #1,a0
		dbf     d0,loc_205C4

		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function InitPassabilityFlags


; =============== S U B R O U T I N E =======================================

; Clear "allowed to stay at" in passability flags table for all occupied spaces

ClearAllowedToStayAtFlags:
		
		movem.l d0-d2/a0-a1,-(sp)
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		move.w  #COMBATANT_ENTRIES_COUNTER,d0
loc_205EE:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_20612       ; skip if combatant slot is empty
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = combatant's position converted to offset
		tst.b   (a0,d1.w)
		beq.s   loc_20612       ; skip if position is our own
		bclr    #1,(a1,d1.w)    ; clear "allowed to stay at" flag at this position
loc_20612:
		dbf     d0,loc_205EE

		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function ClearAllowedToStayAtFlags


; =============== S U B R O U T I N E =======================================

; Mark spaces within distances D2 to D1 as passable

MakeTargetingGrid:
		
		movem.l d0-d3/a0-a1,-(sp)
		cmpi.b  #SPECIAL_RANGE_LASER_EYE,d1
		bne.s   loc_2062E
		bsr.w   LoadLaserEyeTargetGrid
		bra.w   loc_2068C
loc_2062E:
		cmpi.b  #SPECIAL_RANGE_TORCH_EYE,d1
		bne.s   loc_2063C
		bsr.w   MakeTorchEyeTargetGrid
		bra.w   loc_2068C
loc_2063C:
		cmpi.b  #SPECIAL_RANGE_UNUSED,d1
		bne.s   loc_2064A
		bsr.w   MakeSpecialTargetGrid
		bra.w   loc_2068C
loc_2064A:
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		movea.l a0,a1
		movem.w d1-d2,-(sp)     ; -> push max and min distances
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = combatant's position converted to offset
		adda.w  d1,a0           ; A0 = passability flags entry address
		movem.w (sp)+,d1-d2     ; D1,D2 <- pull max and min distances
		move.w  d1,d3
		andi.w  #$7F,d1 
		move.w  #$3FF,d0
loc_20670:
		clr.b   (a1)
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a1),d1
		bcs.s   loc_20686
		cmp.b   OFFSET_PASSABILITY_FLAGS_TO_TABLE_AT_FFA8C0(a1),d2
		bhi.s   loc_20686
		bsr.s   sub_20692       
		bcs.s   loc_20686
		bset    #0,(a1)
loc_20686:
		addq.l  #1,a1
		dbf     d0,loc_20670

loc_2068C:
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function MakeTargetingGrid


; =============== S U B R O U T I N E =======================================

; In: A1 = current position into passability flags table

sub_20692:
		movem.l d0-d3/a2-a4,-(sp)
		move.l  a1,d1
		sub.l   a0,d1           ; D1 = offset to currently evaluated space
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		lea     word_206DC(pc), a2
		lea     OFFSET_PASSABILITY_FLAGS_TO_CURRENT_TERRAIN_DATA(a0),a3
						; A3 = current terrain data entry address
		move.w  #$1B,d0
loc_206AA:
		move.w  2(a2),d2
		muls.w  d3,d2
		add.w   (a2),d2
		cmp.w   d2,d1
		bne.s   loc_206CC
		move.w  6(a2),d2
		muls.w  d3,d2
		add.w   4(a2),d2
		tst.b   (a3,d2.w)
		bne.s   loc_206CC
		ori     #1,ccr
		bra.s   loc_206D6
loc_206CC:
		adda.w  #8,a2
		dbf     d0,loc_206AA

		tst.b   d0
loc_206D6:
		movem.l (sp)+,d0-d3/a2-a4
		rts

    ; End of function sub_20692

word_206DC:               ; Table of XY offsets, two bytes each X,Y
        dc.w 0,-3         ; Target relative position
		dc.w 0,-2         ; Obstruction relative position

		dc.w 0,-3
		dc.w 0,-1

		dc.w -1,-2
		dc.w -1,-1

		dc.w -1,-2
		dc.w 0,-1

		dc.w 0,-2
		dc.w 0,-1

		dc.w 1,-2
		dc.w 0,-1

		dc.w 1,-2
		dc.w 1,-1

		dc.w -2,-1
		dc.w -1,-1

		dc.w -2,-1
		dc.w -1,0

		dc.w 2,-1
		dc.w 1,-1

		dc.w 2,-1
		dc.w 1,0

		dc.w -3,0
		dc.w -2,0

		dc.w -3,0
		dc.w -1,0

		dc.w -2,0
		dc.w -1,0

		dc.w 2,0
		dc.w 1,0

		dc.w 3,0
		dc.w 1,0

		dc.w 3,0
		dc.w 2,0

		dc.w -2,1
		dc.w -1,0

		dc.w -2,1
		dc.w -1,1

		dc.w 2,1
		dc.w 1,0

		dc.w 2,1
		dc.w 1,1

		dc.w -1,2
		dc.w -1,1

		dc.w -1,2
		dc.w 0,1

		dc.w 0,2
		dc.w 0,1

		dc.w 1,2
		dc.w 0,1

		dc.w 1, 2
		dc.w 1,1

		dc.w 0,3
		dc.w 0,1

		dc.w 0,3
		dc.w 0,2

; =============== S U B R O U T I N E =======================================

; Get Laser Eye's predefined target grid address, load to passability flags table

LoadLaserEyeTargetGrid:
		
		move.l  a0,-(sp)
		lea     LaserEyeTargetGrid(pc), a0
		bsr.w   LoadPredefinedTargetGrid
		movea.l (sp)+,a0
		rts

    ; End of function LoadLaserEyeTargetGrid

LaserEyeTargetGrid:
		incbin "data/stats/ranges/lasereyetargetgrid.bin"

; =============== S U B R O U T I N E =======================================

; Make Torch Eye's special target grid, clear space occupied by combatant D0

MakeTorchEyeTargetGrid:
		
		movem.l d1-d2/a0,-(sp)
		bsr.s   MakeSpecialTargetGrid
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		clr.b   (a0,d1.w)
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function MakeTorchEyeTargetGrid


; =============== S U B R O U T I N E =======================================

; Clear passability flags, mark all spaces within 2 of combatant D0 as targetable

MakeSpecialTargetGrid:
		
		movem.l d1-d3/a0,-(sp)
		moveq   #0,d1
		jsr     j_ClearPassabilityFlags
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		move.w  ((MAP_HEIGHT-$1000000)).w,d1
		subq.w  #1,d1
		blt.s   loc_20862
loc_2083A:
		move.w  ((MAP_WIDTH-$1000000)).w,d2
		subq.w  #1,d2
		blt.s   loc_2085E
loc_20842:
		bsr.w   CalculateDistanceToTarget
		cmpi.w  #2,d7
		bgt.s   loc_2085A
		move.w  d1,d3
		mulu.w  ((MAP_WIDTH-$1000000)).w,d3
		add.w   d2,d3
		move.b  #1,(a0,d3.w)
loc_2085A:
		dbf     d2,loc_20842

loc_2085E:
		dbf     d1,loc_2083A

loc_20862:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function MakeSpecialTargetGrid


; =============== S U B R O U T I N E =======================================

; Calculate distance up to 3 of tiles around D2,D1

sub_20868:
		movem.l d0-d3/a0-a1,-(sp)
		lea     ((MOVE_COSTS-$1000000)).w,a0
		clr.w   d0
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		mulu.w  d3,d1
		add.w   d2,d1
loc_2087E:
		move.b  (a1,d1.w),d2
		tst.b   d2
		bne.s   loc_2088E
		clr.b   (a0)+
		addq.w  #1,d0
		add.w   d3,d1
		bra.s   loc_2087E
loc_2088E:
		cmpi.b  #4,d2
		bne.s   loc_2089E
		move.b  #1,(a0)+
		addq.w  #1,d0
		sub.w   d3,d1
		bra.s   loc_2087E
loc_2089E:
		cmpi.b  #8,d2
		bne.s   loc_208AE
		move.b  #2,(a0)+
		addq.w  #1,d0
		subq.w  #1,d1
		bra.s   loc_2087E
loc_208AE:
		cmpi.b  #$C,d2
		bne.s   loc_208BE
		move.b  #3,(a0)+
		addq.w  #1,d0
		addq.w  #1,d1
		bra.s   loc_2087E
loc_208BE:
		cmpi.w  #$F,d0
		ble.s   loc_208C6
		moveq   #$F,d0
loc_208C6:
		lea     ((byte_FFCB28-$1000000)).w,a1
		subq.w  #1,d0
		bcs.s   loc_208D4
loc_208CE:
		move.b  -(a0),(a1)+
		dbf     d0,loc_208CE

loc_208D4:
		move.b  #$FF,(a1)
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function sub_20868


; =============== S U B R O U T I N E =======================================

; Make total move costs table for enemy combatant D0
; 
; In: D3 = 

CreateTotalMoveCosts:
		
		movem.l d1-d4/a0,-(sp)
		jsr     j_GetMoveCostEntryAddress
		bsr.w   LoadMoveCosts   
		tst.w   d3
		bge.s   loc_208F6
		moveq   #1,d4
		bsr.w   BlockSpacesOccupiedByOpponents
loc_208F6:
		andi.w  #$7FFF,d3
		beq.s   loc_20900
		bsr.w   BlockAllOccupiedSpaces
loc_20900:
		jsr     j_GetModifiedMove
		move.w  d1,d3
		add.w   d3,d3           ; D3 = moving combatant's modified move * 2 (i.e., move points)
		jsr     j_GetCombatantPosition
		bsr.w   PopulateTotalMoveCosts
		movem.l (sp)+,d1-d4/a0
		rts

    ; End of function CreateTotalMoveCosts


; =============== S U B R O U T I N E =======================================

; In: D3 = 

BlockAllOccupiedSpaces:
		
		movem.l d0-d2/d5-a0,-(sp)
		jsr     j_GetCombatantPosition
		move.b  d0,d5
		move.w  ((MAP_WIDTH-$1000000)).w,d5
		lea     ((MOVE_COSTS-$1000000)).w,a0
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
@Loop:
		move.w  d1,-(sp)
		jsr     j_GetEntity
		move.w  d1,d6
		move.w  (sp)+,d1
		cmpi.b  #EMPTY_COMBATANT_SLOT,d6
		beq.s   @Next           ; go to next combatant if entry is unoccupied
		cmp.b   d6,d5
		beq.s   @Next
		cmpi.b  #EMPTY_COMBATANT_SLOT,d6
		beq.s   @Next           ; go to next combatant if entry is unoccupied (again!)
		tst.b   d6
		bge.s   @Next           ; go to next combatant if entity is a force member
		bsr.s   CalculateDistanceToTarget
		cmp.w   d3,d7
		bcs.s   @Next
		movem.w d1-d2,-(sp)
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  #$FF,(a0,d1.w)
		movem.w (sp)+,d1-d2
@Next:
		dbf     d0,@Loop

		movem.l (sp)+,d0-d2/d5-a0
		rts

    ; End of function BlockAllOccupiedSpaces


; =============== S U B R O U T I N E =======================================

; Calculate distance measured in spaces between positions D2,D1 and D6,D5 -> D7

CalculateDistance:
		
		movem.w d1-d2,-(sp)
		sub.w   d6,d2
		bge.s   loc_20984
		neg.w   d2
loc_20984:
		sub.w   d5,d1
		bge.s   loc_2098A
		neg.w   d1
loc_2098A:
		add.w   d2,d1
		move.w  d1,d7
		movem.w (sp)+,d1-d2
		rts

    ; End of function CalculateDistance


; =============== S U B R O U T I N E =======================================

; Calculate distance between combatant D0 and position D2,D1 -> D7

CalculateDistanceToTarget:
		
		movem.w d5-d6,-(sp)
		move.w  d2,d6
		move.w  d1,d5
		jsr     j_GetCombatantPosition
		bsr.w   CalculateDistance
		move.w  d6,d2
		move.w  d5,d1
		movem.w (sp)+,d5-d6
		rts

    ; End of function CalculateDistanceToTarget


; =============== S U B R O U T I N E =======================================

; Calculate distance between combatants D0 and D1 -> D7

CalculateDistanceBetweenCombatants:
		
		movem.w d1-d3,-(sp)
		move.w  d0,d3
		move.w  d1,d0
		jsr     j_GetCombatantPosition
		move.w  d3,d0
		bsr.w   CalculateDistanceToTarget
		movem.w (sp)+,d1-d3
		rts

    ; End of function CalculateDistanceBetweenCombatants


; =============== S U B R O U T I N E =======================================

; Check if space at position D2,D1 is occupied by a combatant
; 
; CCR: carry-bit set if true

IsSpaceOccupied:
		
		movem.l d0-d4,-(sp)
		clr.w   d4
		move.b  d2,d4           ; D4 = X
		clr.w   d3
		move.b  d1,d3           ; D3 = Y
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_209D8:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_209F8
		jsr     j_GetCombatantPosition
		cmp.w   d4,d2
		bne.s   loc_209F8
		cmp.w   d3,d1
		bne.s   loc_209F8
		ori     #1,ccr
		bra.s   loc_209FE
loc_209F8:
		dbf     d0,loc_209D8

		tst.w   d0
loc_209FE:
		movem.l (sp)+,d0-d4
		rts

    ; End of function IsSpaceOccupied

tbl_EffectData: incbin "data/stats/effects/effect00.bin"
		dc.w effect_PhysicalAttack-StartBattleaction
		incbin "data/stats/effects/effect01.bin"
		dc.w effect_DoomBlade-StartBattleaction
		incbin "data/stats/effects/effect02.bin"
		dc.w effect_PhysicalAttack-StartBattleaction
		incbin "data/stats/effects/effect03.bin"
		dc.w effect_AbsorbMp-StartBattleaction
		incbin "data/stats/effects/effect04.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect05.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect06.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect07.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect08.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect09.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect10.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect11.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect12.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect13.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect14.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction
		incbin "data/stats/effects/effect15.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect16.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect17.bin"
		dc.w EffectRoutine_Antidote-StartBattleaction
		incbin "data/stats/effects/effect18.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect19.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect20.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect21.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect22.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect23.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect24.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect25.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect26.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect27.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect28.bin"
		dc.w effect_Detox-StartBattleaction
		incbin "data/stats/effects/effect29.bin"
		dc.w effect_Detox-StartBattleaction
		incbin "data/stats/effects/effect30.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect31.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect32.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect33.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect34.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect35.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect36.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect37.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect38.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect39.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect40.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect41.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect42.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect43.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect44.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect45.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect46.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect47.bin"
		dc.w effect_MagicAttack-StartBattleaction
		incbin "data/stats/effects/effect48.bin"
		dc.w effect_Desoul-StartBattleaction
		incbin "data/stats/effects/effect49.bin"
		dc.w effect_Desoul-StartBattleaction
		incbin "data/stats/effects/effect50.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect51.bin"
		dc.w EffectRoutine_Heal-StartBattleaction
		incbin "data/stats/effects/effect52.bin"
		dc.w effect_InflictStatusNullifiableByShield-StartBattleaction
		incbin "data/stats/effects/effect53.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect54.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect55.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect56.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect57.bin"
		dc.w effect_IncreaseStat-StartBattleaction
		incbin "data/stats/effects/effect58.bin"
		dc.w effect_UnnullifiableMagicAttack-StartBattleaction

; =============== S U B R O U T I N E =======================================

; Effect Handler (calls 20C1C) -- Laser Eye range routine

DetermineLaserEyeAction:
		
		movem.l d1-d2/a0,-(sp)
		move.b  ((LASER_EYE_COUNTDOWN-$1000000)).w,d2
		cmpi.b  #5,d2
		blt.s   @Countdown
		bsr.w   StartBattleaction
		clr.b   ((LASER_EYE_COUNTDOWN-$1000000)).w
		bra.s   @Done
@Countdown:
		moveq   #-1,d1
		bsr.w   LoadBattlesceneActors
		lea     ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,a0
		andi.w  #$FF,d2
		addi.w  #$206,d2
		move.w  d2,(a0)
		bsr.w   CopyBattlesceneData
		bsr.s   InitializeBattlesceneAftermath
		bsr.w   sub_21620       
		addq.b  #1,((LASER_EYE_COUNTDOWN-$1000000)).w
@Done:
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function DetermineLaserEyeAction


; =============== S U B R O U T I N E =======================================

; In: d5.b = battleaction index

StartBattleaction:
		
		movem.l d5/a0-a2,-(sp)
		bsr.s   InitializeBattlesceneAftermath
		lea     tbl_EffectData(pc), a0
		andi.w  #$FF,d5
		asl.w   #3,d5
		adda.w  d5,a0
		move.w  EFFECTDEF_OFFSET_ROUTINE(a0),d5
		lea     StartBattleaction(pc,d5.w),a1
		bsr.w   ExecuteBattleaction
		movem.l (sp)+,d5/a0-a2
		rts

    ; End of function StartBattleaction


; =============== S U B R O U T I N E =======================================

; Clear experience, coins, and dropped items values.

InitializeBattlesceneAftermath:
		
		clr.w   ((EXPERIENCE_TO_GAIN-$1000000)).w
		clr.w   ((COINS_TO_GAIN-$1000000)).w
		move.w  #-1,((ITEM_DROPPED_FLAG-$1000000)).w
		rts

    ; End of function InitializeBattlesceneAftermath


; =============== S U B R O U T I N E =======================================

; In: A0 = effect data address
;     D0 = caster index
;     D1 = target index

EffectRoutine_Heal:
		
		movem.l d2-d3,-(sp)
		bsr.w   IsSpellNullified
		bcs.s   loc_20CAA
		movem.w d0-d1,-(sp)
		move.w  d1,d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d2
		jsr     j_GetCurrentHpForCombatant
		sub.w   d1,d2
		movem.w (sp)+,d0-d1
		move.b  EFFECTDEF_OFFSET_POWER(a0),d3
		cmpi.b  #$FF,d3
		bne.s   loc_20C82
		move.w  d2,d3
		bra.s   loc_20C88
loc_20C82:
		ext.w   d3
		bsr.w   ApplyDamageSpread
loc_20C88:
		cmp.w   d3,d2
		bge.s   loc_20C8E
		move.w  d2,d3
loc_20C8E:
		move.w  #1,((EFFECT_REACTION-$1000000)).w
		move.w  d3,((EFFECT_HP_CHANGE-$1000000)).w
		move.w  #$1C6,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] regains [Num] hit[Line]points."
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		ext.l   d3
		move.l  d3,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		bsr.s   CalculateHealingExperience
loc_20CAA:
		movem.l (sp)+,d2-d3
		rts

    ; End of function EffectRoutine_Heal


; =============== S U B R O U T I N E =======================================

CalculateHealingExperience:
		
		movem.l d0-d3,-(sp)
		bsr.s   IsHealerClass   
		bne.s   loc_20CDA       ; skip if caster is not a healer class
		move.w  d1,d0
		jsr     j_GetMaxHpForCombatant
		tst.w   d3
		beq.s   loc_20CDA       ; skip if healing amount is 0
		muls.w  #EXPERIENCE_HEAL_CAP,d3          ; max EXP per target = 20
		divs.w  d1,d3
		addq.w  #1,d3
		cmpi.w  #EXPERIENCE_PER_HEAL,d3
		bge.s   loc_20CD6
		move.w  #EXPERIENCE_PER_HEAL,d3
loc_20CD6:
		add.w   d3,((EXPERIENCE_TO_GAIN-$1000000)).w
loc_20CDA:
		bsr.s   CapExperienceToGain
		movem.l (sp)+,d0-d3
		rts

    ; End of function CalculateHealingExperience


; =============== S U B R O U T I N E =======================================

; Check if caster D0 is a healer class -> CCR zero-bit set if true

IsHealerClass:
		
		movem.l d1,-(sp)
		jsr     j_GetClassForCombatant
		cmpi.b  #CLASS_HEAL,d1
		beq.s   @Done
		cmpi.b  #CLASS_VICR,d1
		beq.s   @Done
		cmpi.b  #CLASS_MONK,d1
		beq.s   @Done
		cmpi.b  #CLASS_MSMK,d1
@Done:
		movem.l (sp)+,d1
		rts

    ; End of function IsHealerClass


; =============== S U B R O U T I N E =======================================

CapExperienceToGain:
		
		cmpi.w  #EXPERIENCE_ACTION_CAP,((EXPERIENCE_TO_GAIN-$1000000)).w
		bcs.s   @Return
		move.w  #EXPERIENCE_ACTION_CAP,((EXPERIENCE_TO_GAIN-$1000000)).w
@Return:
		rts

    ; End of function CapExperienceToGain


; =============== S U B R O U T I N E =======================================

EffectRoutine_Antidote:
		
		movem.l d2-d3,-(sp)
		bra.s   loc_20D28       

    ; End of function EffectRoutine_Antidote


; =============== S U B R O U T I N E =======================================

effect_Detox:
		movem.l d2-d3,-(sp)
		bsr.w   IsSpellNullified
		bcs.s   loc_20D76
loc_20D28:
		move.w  ((EFFECT_STATUS_CHANGE-$1000000)).w,d3
						; Cure poison
		tst.b   EFFECTDEF_OFFSET_STATUS(a0)
		bne.s   loc_20D3E
		andi.w  #(STATUSEFFECT_MASK-STATUSEFFECT_POISON),((EFFECT_STATUS_CHANGE-$1000000)).w
		move.w  #$1C8,d2        ; "All traces of poison are[Line]purged from [Name]."
		bra.s   loc_20D48
loc_20D3E:
		andi.w  #STATUSEFFECT_QUICK|STATUSEFFECT_BOOST|STATUSEFFECT_SHIELD,((EFFECT_STATUS_CHANGE-$1000000)).w
		move.w  #$1C9,d2        ; "[Name] recovers."
loc_20D48:
		cmp.w   ((EFFECT_STATUS_CHANGE-$1000000)).w,d3
		bne.s   loc_20D52
		move.w  #$1D1,d2        ; "But nothing happens."
loc_20D52:
		bsr.s   IsHealerClass   
		bne.s   loc_20D68
		cmp.w   ((EFFECT_STATUS_CHANGE-$1000000)).w,d3
		bne.s   loc_20D62
		addq.w  #1,((EXPERIENCE_TO_GAIN-$1000000)).w
		bra.s   loc_20D68
loc_20D62:
		addi.w  #EXPERIENCE_PER_HEAL,((EXPERIENCE_TO_GAIN-$1000000)).w
loc_20D68:
		move.w  #1,((EFFECT_REACTION-$1000000)).w
		move.w  d2,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
loc_20D76:
		movem.l (sp)+,d2-d3
		rts

    ; End of function effect_Detox


; =============== S U B R O U T I N E =======================================

effect_PhysicalAttack:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsEnemy         
		blt.s   loc_20D8E       
		move.w  #$1BB,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "Inflicts [Num] points of damage on[Line]the [Name]."
		bra.s   loc_20D94
loc_20D8E:
		move.w  #$1BC,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] suffers [Num][Line]points of damage."
loc_20D94:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		bsr.w   DetermineEvade  
		bcs.s   loc_20DE2
		clr.w   ((DAMAGE_MULTIPLIER-$1000000)).w
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		beq.s   loc_20DB4
		move.b  ((DEBUG_SPECIAL_ATTACK-$1000000)).w,((SPECIAL_ATTACK_INDEX-$1000000)).w
		move.b  #100,((SPECIAL_ATTACK_PERCENT-$1000000)).w
loc_20DB4:
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d2
		bsr.w   GenerateRandomNumber0To99
		cmp.b   ((SPECIAL_ATTACK_PERCENT-$1000000)).w,d7
		bge.s   loc_20DC8
		bsr.w   JumpToSpecialAttackRoutine
		bra.s   loc_20DCC
loc_20DC8:
		bsr.w   CalculateDamage 
loc_20DCC:
		bsr.w   HandleTargetDefeat
		ext.l   d3
		beq.s   loc_20DE2
		move.l  d3,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		neg.w   d3
		move.w  d3,((EFFECT_HP_CHANGE-$1000000)).w
		clr.w   ((EFFECT_REACTION-$1000000)).w
loc_20DE2:
		tst.w   ((EXPERIENCE_TO_GAIN-$1000000)).w
		bne.s   loc_20DEE
		move.w  #1,((EXPERIENCE_TO_GAIN-$1000000)).w
loc_20DEE:
		movem.l (sp)+,d2-d7
		rts

    ; End of function effect_PhysicalAttack


; =============== S U B R O U T I N E =======================================

; In: D3 = calculated damage

HandleTargetDefeat:
		
		movem.l d0-d6,-(sp)
		move.w  ((word_FFCB58-$1000000)).w,d4
		add.w   d3,((word_FFCB58-$1000000)).w
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d5
		jsr     j_GetCurrentHpForCombatant
		move.w  d1,d6
		movem.w (sp)+,d0-d1
		bsr.s   CalculateKillExperience
		bsr.w   CheckFatalDamage
		bgt.s   loc_20E38
		add.w   d2,((EXPERIENCE_TO_GAIN-$1000000)).w
		move.w  d6,d3
		sub.w   d4,d3
		bsr.w   LoadCoinsToGain 
		bsr.w   LoadItemToDrop  
		bsr.w   DetermineDarkDragonFinisher
		bsr.s   LoadDeathMessage
loc_20E38:
		muls.w  d3,d2
		divs.w  d5,d2
		add.w   d2,((EXPERIENCE_TO_GAIN-$1000000)).w
		bsr.w   CapExperienceToGain
		movem.l (sp)+,d0-d6
		rts

    ; End of function HandleTargetDefeat


; =============== S U B R O U T I N E =======================================

; Load death message depending on if target is force or enemy

LoadDeathMessage:
		
		move.l  d0,-(sp)
		move.w  d1,d0
		bsr.w   IsEnemy         
		blt.s   loc_20E5C       
		move.w  #$1C3,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
						; "[Name] can fight[Line]no longer."
		bra.s   loc_20E62
loc_20E5C:
		move.w  #$1C2,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
						; "[Name] is defeated!"
loc_20E62:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_2-$1000000)).w
		move.l  (sp)+,d0
		rts

    ; End of function LoadDeathMessage


; =============== S U B R O U T I N E =======================================

; Get experience for killing enemy based on level difference -> D2

CalculateKillExperience:
		
		move.l  d1,-(sp)
		bsr.w   CalculateLevelDifference
		cmpi.w  #-3,d1
		bge.s   loc_20E7A
		moveq   #-3,d1
		bra.s   loc_20E82
loc_20E7A:
		cmpi.w  #5,d1
		ble.s   loc_20E82
		moveq   #5,d1
loc_20E82:
		clr.w   d2
		move.b  (table_KillExperienceGains+3)(pc,d1.w),d2
		move.l  (sp)+,d1
		rts

    ; End of function CalculateKillExperience

table_KillExperienceGains:
		dc.b 48  ; 3 or more levels below target
		dc.b 32
		dc.b 24
		dc.b 16  ; same level as target
		dc.b 10
		dc.b 6
		dc.b 4
		dc.b 2
		dc.b 1   ; 5 or more levels above target
		dc.b $FF

; =============== S U B R O U T I N E =======================================

; Load coins for killing enemy

LoadCoinsToGain:
		
		movem.l d0-d1/a0-a1,-(sp)
		move.b  d1,d0
		bsr.w   IsEnemy         
		bge.s   loc_20EB4
		jsr     j_GetEntity
		move.b  d1,d0
		bsr.w   GetEnemyEntryAddress
		move.w  (a1),d0
		add.w   d0,((COINS_TO_GAIN-$1000000)).w
loc_20EB4:
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function LoadCoinsToGain


; =============== S U B R O U T I N E =======================================

; Give Jogurt Ring if Jogurt kills an enemy and it hasn't been given yet

LoadItemToDrop:
		
		movem.l d0-d2,-(sp)
		clr.w   d2
		move.b  d1,d2
		jsr     j_GetEntity
		cmpi.b  #ALLY_JOGURT,d1
		bne.s   loc_20EDE
		move.w  #ITEM_YOGURT_RING,d1
		jsr     j_IsItemInDealsOrHeldByForce
		bcc.s   loc_20EDE
		move.w  d0,d2
		bra.s   loc_20EE8
loc_20EDE:
		move.b  d2,d0
		jsr     j_FindItemToDrop
		blt.s   loc_20EF0
loc_20EE8:
		move.w  d2,((ITEM_DROPPED_FLAG-$1000000)).w
		move.w  d1,((ITEM_TO_DROP-$1000000)).w
loc_20EF0:
		movem.l (sp)+,d0-d2
		rts

    ; End of function LoadItemToDrop


; =============== S U B R O U T I N E =======================================

effect_DoomBlade:
		
		movem.l d2-d7,-(sp)
		bsr.w   DetermineEvade  
		bcs.w   loc_20DE2
		clr.w   ((DAMAGE_MULTIPLIER-$1000000)).w
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d2
		bsr.w   specialAttack_InstantDeath
		bra.w   loc_20DCC

    ; End of function effect_DoomBlade


; =============== S U B R O U T I N E =======================================

effect_UnnullifiableMagicAttack:
		
		movem.l d2-d7,-(sp)
		bra.w   loc_20F26

    ; End of function effect_UnnullifiableMagicAttack


; =============== S U B R O U T I N E =======================================

effect_MagicAttack:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsSpellNullified
		bcs.w   loc_20DE2
loc_20F26:
		bsr.w   IsEnemy         
		blt.s   loc_20F34       
		move.w  #$1BB,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "Inflicts [Num] points of damage on[Line]the [Name]."
		bra.s   loc_20F3A       
loc_20F34:
		move.w  #$1BC,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] suffers [Num][Line]points of damage."
loc_20F3A:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
						; load target's name index
		clr.w   ((DAMAGE_MULTIPLIER-$1000000)).w
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d2
		andi.b  #7,d2
		clr.w   d3
		move.b  EFFECTDEF_OFFSET_POWER(a0),d3
		bsr.w   ApplyDamageSpread
		bsr.w   ApplyResistance 
		move.b  EFFECTDEF_OFFSET_ELEMENT(a0),d4
		andi.w  #$18,d4
		asr.w   #2,d4
		move.w  table_MagicChanceToCriticalPercents(pc,d4.w),d4
		bsr.w   GenerateRandomNumber0To99
		cmp.w   d4,d7
		bcc.s   loc_20F74
		move.w  #3,((DAMAGE_MULTIPLIER-$1000000)).w
loc_20F74:
		bsr.w   ApplyCriticalDamage
		bra.w   loc_20DCC

    ; End of function effect_MagicAttack

table_MagicChanceToCriticalPercents:
		dc.w 3
		dc.w 4
		dc.w 6

; =============== S U B R O U T I N E =======================================

EffectRoutine_InflictStatus:
		
		movem.l d2-d7,-(sp)
		bra.s   loc_20F94       

    ; End of function EffectRoutine_InflictStatus


; =============== S U B R O U T I N E =======================================

effect_InflictStatusNullifiableByShield:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsSpellNullified
		bcs.w   loc_20DE2
loc_20F94:
		clr.w   d2              ; default to "Blaze" resistance
		cmpi.b  #EFFECT_STATUS_SLEEP,EFFECTDEF_OFFSET_STATUS(a0)
		bne.s   loc_20FA0
		moveq   #CLASS_RESISTANCE_SLEEP_AND_DESOUL,d2
loc_20FA0:
		tst.b   EFFECTDEF_OFFSET_CAN_FAIL(a0)
		beq.s   loc_20FB0
		bsr.w   DetermineEffectFailure
		bcc.s   loc_20FB0
		bsr.s   LoadEffectFailureMessage
		bra.s   loc_20FB6
loc_20FB0:
		move.b  EFFECTDEF_OFFSET_STATUS(a0),d2
		bsr.s   LoadEffectSuccessMessage
loc_20FB6:
		bra.w   loc_20DE2

    ; End of function effect_InflictStatusNullifiableByShield


; =============== S U B R O U T I N E =======================================

LoadEffectFailureMessage:
		
		move.w  d0,-(sp)
		tst.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		beq.s   loc_20FC8       
		move.w  #$1C4,d0        ; "But the spell doesn't work."
		bra.s   loc_20FCC
loc_20FC8:
		move.w  #$1D1,d0        ; "But nothing happens."
loc_20FCC:
		move.w  d0,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		move.w  (sp)+,d0
		rts

    ; End of function LoadEffectFailureMessage


; =============== S U B R O U T I N E =======================================

; In: D1 = target index
;     D2 = status effect index

LoadEffectSuccessMessage:
		
		movem.l d0/d2/d4/a0,-(sp)
		clr.w   d4
		move.b  d2,d4
		asl.w   #2,d4
		lea     table_StatusEffectMessageParameters(pc,d4.w),a0
		clr.w   d0
		move.b  d1,d0
		move.b  (a0)+,d4
		ext.w   d4
		blt.s   loc_20FF0
		addi.w  #$1D7,d4        ; "[Name]'s speed increases[Line]by [Num]. Defense level[Line]increases by [Num]."
loc_20FF0:
		move.w  d4,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
		move.w  d0,((BATTLE_MESSAGE_ARG_NAME_2-$1000000)).w
		moveq   #0,d4
		move.b  (a0)+,d4
		move.l  d4,((BATTLE_MESSAGE_ARG_NUMBER_2-$1000000)).w
		move.w  (a0),d4
		or.w    d4,((EFFECT_STATUS_CHANGE-$1000000)).w
		movem.l (sp)+,d0/d2/d4/a0
		rts

    ; End of function LoadEffectSuccessMessage

table_StatusEffectMessageParameters:
		; 4 bytes per entry : 
		dc.b 0                  ; Quick
		dc.b 10
		dc.w STATUSEFFECT_QUICK
		dc.b 1                  ; Slow
		dc.b 10
		dc.w STATUSEFFECT_SLOW
		dc.b 2                  ; Boost
		dc.b 15
		dc.w STATUSEFFECT_BOOST
		dc.b 3                  ; Dispel
		dc.b 0
		dc.w STATUSEFFECT_DISPEL
		dc.b 4                  ; Shield
		dc.b 0
		dc.w STATUSEFFECT_SHIELD
		dc.b 5                  ; Muddle
		dc.b 0
		dc.w STATUSEFFECT_MUDDLE
		dc.b 6                  ; Sleep
		dc.b 0
		dc.w STATUSEFFECT_SLEEP
		dc.b 7                  ; Poison
		dc.b 0
		dc.w STATUSEFFECT_POISON
		dc.b 8                  ; Curse
		dc.b 0
		dc.w STATUSEFFECT_CURSE
		dc.b 9                  ; Jogurt
		dc.b 0
		dc.w STATUSEFFECT_JOGURT

; =============== S U B R O U T I N E =======================================

effect_Desoul:
		
		movem.l d2-d7,-(sp)
		bsr.w   IsSpellNullified
		bcs.w   loc_20DE2
		bsr.w   IsEnemy         
		blt.s   loc_2104E       
		move.w  #$1CA,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] can no longer fight."
		bra.s   loc_21054
loc_2104E:
		move.w  #$1CB,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] can no longer fight."
loc_21054:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		bsr.w   IsVulnerableToInstantDeath
		beq.w   loc_21068
		moveq   #CLASS_RESISTANCE_SLEEP_AND_DESOUL,d2
		bsr.w   DetermineEffectFailure
		bcc.s   loc_21070       
loc_21068:
		bsr.w   LoadEffectFailureMessage
		bra.w   loc_20DE2
loc_21070:
		move.w  #999,d3         ; inflict 999 points of damage
		bra.w   loc_20DCC

    ; End of function effect_Desoul


; =============== S U B R O U T I N E =======================================

effect_AbsorbMp:
		
		movem.l d6-d7,-(sp)
		move.w  #$1D5,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "The [Item] makes a[Line]strange sound."
		move.w  ((SELECTED_ITEM_ENTRY-$1000000)).w,d6
		move.w  d6,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetCurrentMpForCombatant
		move.w  #3,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #2,d7
		cmp.w   d1,d7
		ble.s   loc_210A8
		move.w  d1,d7
loc_210A8:
		ext.l   d7
		movem.w (sp)+,d0-d1
		tst.l   d7
		beq.s   loc_210C6
		move.w  #$1D6,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] loses [Num] magic[Line]points."
		andi.w  #$FF,d0
		move.w  d0,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  d7,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		bra.s   loc_210CA
loc_210C6:
		bsr.w   LoadEffectFailureMessage
loc_210CA:
		add.b   d7,((byte_FFCB6C-$1000000)).w
		neg.w   d7
		move.w  d7,((EFFECT_MP_CHANGE-$1000000)).w
		movem.l (sp)+,d6-d7
		rts

    ; End of function effect_AbsorbMp


; =============== S U B R O U T I N E =======================================

effect_IncreaseStat:
		
		movem.l d0-d1,-(sp)
		move.b  d1,d0
		clr.w   d1
		move.b  2(a0),d1
		bsr.w   IncreaseStatOnItemUse
		movem.l (sp)+,d0-d1
		rts

    ; End of function effect_IncreaseStat


; =============== S U B R O U T I N E =======================================

; Calculate physical attack damage -> D3

CalculateDamage:
		
		movem.l d0-d1,-(sp)
		move.w  d1,-(sp)
		jsr     j_GetModifiedAttack
		move.w  d1,d3           ; D3 = attacker's Attack
		move.w  (sp)+,d1
		move.w  d0,-(sp)
		move.b  d1,d0           ; D0 = defender index
		jsr     j_GetModifiedDefense
		sub.w   d1,d3           ; D3 = (Defense - Attack)
		move.w  (sp)+,d0
		bsr.w   ApplyLandEffect 
		bsr.w   ApplyResistance 
		bsr.s   ApplyCriticalDamage
		bsr.s   ApplyDamageSpread
		tst.w   d3
		bgt.s   @Continue
		move.w  #1,d3           ; minimum 1 point of damage
@Continue:
		movem.l (sp)+,d0-d1
		rts

    ; End of function CalculateDamage


; =============== S U B R O U T I N E =======================================

; Determine critical hit, apply damage multiplier -> D3

ApplyCriticalDamage:
		
		movem.l d1/d7,-(sp)
		jsr     j_GetModifiedCritical
		bsr.w   GenerateRandomNumber0To99
		cmp.w   d1,d7
		bge.s   @Failure
		move.w  #4,((DAMAGE_MULTIPLIER-$1000000)).w
@Failure:
		move.w  ((DAMAGE_MULTIPLIER-$1000000)).w,d1
		beq.s   @Skip           ; skip if damage multiplier = 0
		muls.w  d1,d3
		asr.w   #1,d3
		bsr.s   LoadCriticalHitMessage
@Skip:
		movem.l (sp)+,d1/d7
		rts

    ; End of function ApplyCriticalDamage


; =============== S U B R O U T I N E =======================================

LoadCriticalHitMessage:
		
		bsr.w   IsEnemy         
		blt.s   @Enemy
		move.w  #$3E,((word_FFA9CC-$1000000)).w 
		move.w  #$1BF,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "A deadly attack inflicts[Line][Num] points of damage[Line]on [Name]."
		bra.s   @Continue
@Enemy:
		move.w  #$3E,((word_FFA9CC-$1000000)).w 
		move.w  #$1C0,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "A stunning attack! [Name][Line]suffers [Num] points[Line]of damage."
@Continue:
		tst.b   ((BATTLE_ANIMATION_TYPE-$1000000)).w
		bne.s   @Return
		move.b  #3,((BATTLE_ANIMATION_TYPE-$1000000)).w
@Return:
		rts

    ; End of function LoadCriticalHitMessage


; =============== S U B R O U T I N E =======================================

; Apply damage spread to D3

ApplyDamageSpread:
		
		movem.l d5-d7,-(sp)
		moveq   #21,d6
		jsr     (j_GenerateRandomNumber).l
		move.w  d7,d5
		jsr     (j_GenerateRandomNumber).l
		add.w   d5,d7
		asr.w   #1,d7
		addi.w  #80,d7
		muls.w  d7,d3
		divs.w  #100,d3
		movem.l (sp)+,d5-d7
		rts

    ; End of function ApplyDamageSpread


; =============== S U B R O U T I N E =======================================

; Apply land effect to damage D3

ApplyLandEffect:
		
		movem.l d0-d2/a0,-(sp)
		move.b  d1,d0           ; land effect bug! should move defender index to D1 before calling
		jsr     j_GetLandEffectForCombatant
		move.w  #100,d2
		sub.w   d1,d2           ; subtract LE from 100 and use as %
		muls.w  d2,d3
		divs.w  #100,d3
		movem.l (sp)+,d0-d2/a0
		rts

    ; End of function ApplyLandEffect


; =============== S U B R O U T I N E =======================================

; Apply resistance to element D2 unto damage D3

ApplyResistance:
		
		move.l  d2,-(sp)
		cmpi.b  #ELEMENT_NONE,d2
		bne.s   loc_211D2
		clr.w   d2
		bra.s   loc_211D4
loc_211D2:
		bsr.s   GetTargetCombatantResistance
loc_211D4:
		move.b  table_DamageResistancePercents(pc,d2.w),d2
		muls.w  d2,d3
		divs.w  #100,d3
		move.l  (sp)+,d2
		rts

    ; End of function ApplyResistance

table_DamageResistancePercents:
		dc.b 100
		dc.b 75
		dc.b 50
		dc.b 125

; =============== S U B R O U T I N E =======================================

; Get combatant D1 resistance to element D2 -> D2

GetTargetCombatantResistance:
		
		movem.l d0-d1,-(sp)
		move.b  d1,d0
		move.b  d2,d1
		jsr     j_GetResistance
		ext.w   d2
		movem.l (sp)+,d0-d1
		rts

    ; End of function GetTargetCombatantResistance


; =============== S U B R O U T I N E =======================================

; Check if spell is nullified by magic curtain

IsSpellNullified:
		
		movem.l d0-d1,-(sp)
		tst.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		beq.s   loc_2121E       ; skip if spell costs 0 MP to cast
		move.b  d1,d0
		jsr     j_GetStatusEffectsForCombatant
		andi.w  #STATUSEFFECT_SHIELD,d1
		beq.s   loc_2121E
		move.w  #$1C5,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "But the spell is nullified by[Line]the magic curtain."
		ori     #1,ccr
loc_2121E:
		movem.l (sp)+,d0-d1
		rts

    ; End of function IsSpellNullified


; =============== S U B R O U T I N E =======================================

; Determine whether targeted combatant D1 evades the attack
; 
;       In: D0 = attacker index
;           D1 = target index
; 
;       Out: CCR carry-bit set when successful

DetermineEvade:
		
		movem.l d1-d3/d7,-(sp)
		bsr.s   IsAbleToEvade   
		bcc.s   @Failure
		clr.w   d3
		move.b  d1,d3           ; d3.b = copy of target index
		move.w  #CLASS_RESISTANCE_EVASION,d2
		bsr.s   GetTargetCombatantResistance
		move.b  table_ChanceToEvadePercents(pc,d2.w),d2
						; get percent chance to evade according to resistance setting, and continue if != 0
		bne.s   @Continue
		moveq   #25,d2          ; 25% chance to evade if attacker is muddled
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_MUDDLE,d1
						; BUG : This instruction is causing the chance to evade when attacker is muddled to be applied only every other turn
                ;andi.w  #STATUSEFFECT_COUNTER_MUDDLE,d1    ; <- suggested fix to the aforementioned bug
                
		bne.s   @Continue
		moveq   #3,d2           ; 3% chance to evade under normal circumstances
@Continue:
		bsr.s   GenerateRandomNumber0To99
		cmp.b   d2,d7
		bge.s   @Failure        ; branch if failed the evade roll
		move.w  #$1BE,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] quickly evades."
		move.w  d3,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		ori     #1,ccr
@Failure:
		movem.l (sp)+,d1-d3/d7
		rts

    ; End of function DetermineEvade

table_ChanceToEvadePercents:
		dc.b 0
		dc.b 25
		dc.b 50
		dc.b 0

; =============== S U B R O U T I N E =======================================

; Check if combatant D1 is able to evade attacks -> CCR carry-bit set if true

IsAbleToEvade:
		
		movem.l d0-d1/a0,-(sp)
		move.b  d1,d0
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_SLEEP,d1
		bne.s   @NotAbleToEvade ; unable to evade when sleeping
		jsr     j_GetClassForCombatant
		lea     table_UnableToEvadeClasses(pc), a0
@Loop:
		move.b  (a0)+,d0
		cmpi.b  #$FF,d0
		beq.s   @Break          ; break out of loop when end of table is reached
		cmp.b   d0,d1
		beq.s   @NotAbleToEvade
		bra.s   @Loop
@Break:
		ori     #1,ccr
@Done:
		movem.l (sp)+,d0-d1/a0
		rts
@NotAbleToEvade:
		
		tst.w   d0
		bra.s   @Done

    ; End of function IsAbleToEvade

table_UnableToEvadeClasses:
		; List of class indexes which are unable to evade physical attacks, $FF terminated
		dc.b CLASS_LASER_EYE
		dc.b CLASS_DARK_DRAGON_1
		dc.b CLASS_DARK_DRAGON_2
		dc.b -1

; =============== S U B R O U T I N E =======================================

; Generate random number 0 to 99, returned in d7.w

GenerateRandomNumber0To99:
		
		move.l  d6,-(sp)
		move.w  #100,d6
		jsr     (j_GenerateRandomNumber).l
		move.l  (sp)+,d6
		rts

    ; End of function GenerateRandomNumber0To99


; =============== S U B R O U T I N E =======================================

; In: D1 = target index
;     D2 = resistance index
; 
; Out: CCR: carry-bit clear if successful

DetermineEffectFailure:
		
		movem.l d0-d2/d7,-(sp)
		tst.b   ((DEBUG_EFFECT_FAILURE-$1000000)).w
		bne.s   @Skip
		bsr.w   GetTargetCombatantResistance
		move.b  table_StatusEffectResistancePercents(pc,d2.w),d2
		muls.w  #37,d2
		divs.w  #100,d2
		bsr.s   GenerateRandomNumber0To99
		cmp.w   d7,d2
@Skip:
		movem.l (sp)+,d0-d2/d7
		rts

    ; End of function DetermineEffectFailure

table_StatusEffectResistancePercents:
		dc.b 100
		dc.b 50
		dc.b 0
		dc.b 125

; =============== S U B R O U T I N E =======================================

; Get level difference between attacker D0 and target D1 -> D1

CalculateLevelDifference:
		
		movem.w d0/d2,-(sp)
		move.w  d1,-(sp)
		bsr.w   CalculateEffectiveLevel
		move.w  d1,d2           ; D2 = attacker's effective level
		move.w  (sp)+,d0
		bsr.w   CalculateEffectiveLevel
		sub.w   d1,d2
		move.w  d2,d1
		movem.w (sp)+,d0/d2
		rts

    ; End of function CalculateLevelDifference


; =============== S U B R O U T I N E =======================================

; Check if combatant D1 is vulnerable to instant death attacks

IsVulnerableToInstantDeath:
		
		movem.w d2,-(sp)
		moveq   #CLASS_RESISTANCE_SLEEP_AND_DESOUL,d2
		bsr.w   GetTargetCombatantResistance
		move.b  table_StatusEffectResistancePercents(pc,d2.w),d2
		movem.w (sp)+,d2
		rts

    ; End of function IsVulnerableToInstantDeath


; =============== S U B R O U T I N E =======================================

JumpToSpecialAttackRoutine:
		
		clr.w   d3
		move.b  ((SPECIAL_ATTACK_INDEX-$1000000)).w,d3
		asl.w   #2,d3
		jsr     bt_SpecialAttacks(pc,d3.w)
		rts

    ; End of function JumpToSpecialAttackRoutine


; =============== S U B R O U T I N E =======================================

bt_SpecialAttacks:
		
		bra.w   specialAttack_150PercentCritical

    ; End of function bt_SpecialAttacks

		bra.w   specialAttack_200PercentCritical
		bra.w   specialAttack_DemonSmile
		bra.w   specialAttack_OminousIncantation
		bra.w   specialAttack_OminousIncantation
		bra.w   specialAttack_InflictPoison
		bra.w   specialAttack_InflictSleep
		bra.w   specialAttack_InflictSleep
		bra.w   *+4

; =============== S U B R O U T I N E =======================================

specialAttack_InstantDeath:
		
		movem.l d2/d7,-(sp)
		bsr.w   IsEnemy         
		blt.s   loc_21352       
		move.w  #$1BB,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "Inflicts [Num] points of damage on[Line]the [Name]."
		bra.s   loc_21358
loc_21352:
		move.w  #$1BC,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] suffers [Num][Line]points of damage."
loc_21358:
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		bsr.w   IsVulnerableToInstantDeath
		beq.s   loc_21382
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_21372       
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #6,d7           ; 6% death, or go back to normal attack
		bge.s   loc_21382
loc_21372:
		move.w  #$1D4,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Name] is killed with a[Line]single blow."
		move.w  #99,d3
		clr.b   ((byte_FFCB6B-$1000000)).w
		bra.s   loc_21386
loc_21382:
		bsr.w   CalculateDamage 
loc_21386:
		movem.l (sp)+,d2/d7
		rts

    ; End of function specialAttack_InstantDeath


; =============== S U B R O U T I N E =======================================

specialAttack_150PercentCritical:
		
		move.l  d7,-(sp)
		move.b  #3,d3
loc_21392:
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_213A2
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to score critical hit
		bge.s   loc_213AA
loc_213A2:
		move.w  d3,((DAMAGE_MULTIPLIER-$1000000)).w
		bsr.w   LoadCriticalHitMessage
loc_213AA:
		bsr.w   CalculateDamage 
		move.l  (sp)+,d7
		rts

    ; End of function specialAttack_150PercentCritical


; =============== S U B R O U T I N E =======================================

specialAttack_200PercentCritical:
		
		move.l  d7,-(sp)
		move.b  #4,d3
		bra.s   loc_21392

    ; End of function specialAttack_200PercentCritical


; =============== S U B R O U T I N E =======================================

specialAttack_DemonSmile:
		
		movem.l d6-d7,-(sp)
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetCurrentMpForCombatant
		moveq   #6,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #5,d7
		cmp.w   d1,d7
		ble.s   loc_213DA
		move.w  d1,d7
loc_213DA:
		ext.l   d7
		movem.w (sp)+,d0-d1
		move.w  #$3F,((word_FFA9CC-$1000000)).w 
		move.w  #$1CF,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] uses the Demon's[Line]Smile!"
		andi.w  #$FF,d0
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		tst.l   d7
		beq.s   loc_2140C       
		move.w  #$1D0,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Num] magic points are[Line]stolen from [Name]."
		andi.w  #$FF,d1
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  d7,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		bra.s   loc_21412
loc_2140C:
		move.w  #$1D1,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "But nothing happens."
loc_21412:
		add.b   d7,((byte_FFCB6C-$1000000)).w
		neg.w   d7
		move.w  d7,((EFFECT_MP_CHANGE-$1000000)).w
		clr.w   d3
		movem.l (sp)+,d6-d7
		rts

    ; End of function specialAttack_DemonSmile


; =============== S U B R O U T I N E =======================================

specialAttack_OminousIncantation:
		
		movem.l d6-d7,-(sp)
		move.w  #8,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #8,d7
		ext.l   d7
		move.w  #$3F,((word_FFA9CC-$1000000)).w 
		move.w  #$1D2,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] whispers an[Line]ominous incantation!"
		andi.w  #$FF,d0
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  #$1D3,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
						; "[Num] hit points are stolen[Line]from [Name]."
		move.w  d1,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		move.l  d7,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		move.w  d7,d3
		movem.l (sp)+,d6-d7
		rts

    ; End of function specialAttack_OminousIncantation


; =============== S U B R O U T I N E =======================================

specialAttack_InflictPoison:
		
		movem.l d2/d7,-(sp)
		bsr.w   CalculateDamage 
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_21478
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to inflict poison
		bge.s   loc_2147E
loc_21478:
		moveq   #EFFECT_STATUS_POISON,d2
		bsr.w   LoadEffectSuccessMessage
loc_2147E:
		movem.l (sp)+,d2/d7
		rts

    ; End of function specialAttack_InflictPoison


; =============== S U B R O U T I N E =======================================

specialAttack_InflictSleep:
		
		movem.l d2/d7,-(sp)
		bsr.w   CalculateDamage 
		tst.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bne.s   loc_2149C
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to inflict sleep
		bge.s   loc_214A2
loc_2149C:
		moveq   #EFFECT_STATUS_SLEEP,d2
		bsr.w   LoadEffectSuccessMessage
loc_214A2:
		movem.l (sp)+,d2/d7
		rts

    ; End of function specialAttack_InflictSleep


; =============== S U B R O U T I N E =======================================

; Perform a special animation if Max kills the last Dark Dragon head with the Chaos Breaker.

DetermineDarkDragonFinisher:
		
		movem.l d0-d4,-(sp)
		move.b  d1,d4
		jsr     j_GetClassForCombatant
		cmpi.b  #CLASS_HERO,d1
		bne.s   loc_2151A
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItemForCombatant
		bcs.s   loc_2151A
		cmpi.b  #ITEM_CHAOS_BREAKER,d2
		bne.s   loc_2151A
		move.b  d4,d0
		jsr     j_GetClassForCombatant  ; get class for target
		cmpi.b  #CLASS_DARK_DRAGON_1,d1
		beq.s   loc_214E0
		cmpi.b  #CLASS_DARK_DRAGON_2,d1
		bne.s   loc_2151A
loc_214E0:
		clr.w   d2
		move.b  #128,d0
		jsr     j_GetCurrentHP
		tst.w   d1
		beq.s   loc_214F2
		addq.w  #1,d2
loc_214F2:
		addq.b  #1,d0
		jsr     j_GetCurrentHP
		tst.w   d1
		beq.s   loc_21500
		addq.w  #1,d2
loc_21500:
		addq.b  #1,d0
		jsr     j_GetCurrentHP
		tst.w   d1
		beq.s   loc_2150E
		addq.w  #1,d2
loc_2150E:
		cmpi.b  #1,d2
		bgt.s   loc_2151A
		move.b  #4,((BATTLE_ANIMATION_TYPE-$1000000)).w
loc_2151A:
		movem.l (sp)+,d0-d4
		rts

    ; End of function DetermineDarkDragonFinisher


; =============== S U B R O U T I N E =======================================

; In: D0 = caster index
;     D1 = target index

LoadBattlesceneActors:
		
		movem.l d0-d2,-(sp)
		lea     (BATTLE_SCENE_ACTORS).l,a2
		move.w  d1,d2
		jsr     j_GetEntity
		tst.b   d1              ; is caster a force member?
		bge.s   @ForceMember
		exg     d0,d2           ; exchange caster and target indexes if caster is an enemy
@ForceMember:
		clr.w   (a2)+
		move.w  d2,(a2)+
		move.w  d0,(a2)+
		move.b  d0,((BATTLE_SCENE_ALLY-$1000000)).w
		move.b  d2,((BATTLE_SCENE_ENEMY-$1000000)).w
		movem.l (sp)+,d0-d2
		rts

    ; End of function LoadBattlesceneActors


; =============== S U B R O U T I N E =======================================

; Add battlescene member

sub_2154C:
		movem.w d0-d1,-(sp)
		clr.w   d0
		move.b  d1,d0
		jsr     j_GetEntity
		tst.b   d1              ; is force member?
		bge.s   @ForceMember
		move.w  #8,(a2)+
		move.w  d0,(a2)+
		move.b  d0,((BATTLE_SCENE_ENEMY-$1000000)).w
		bra.s   @Done
@ForceMember:
		move.w  #7,(a2)+
		move.w  d0,(a2)+
		move.b  d0,((BATTLE_SCENE_ALLY-$1000000)).w
@Done:
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_2154C


; =============== S U B R O U T I N E =======================================

; Add battlescene target

sub_2157A:
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_21592
		move.w  #2,(a2)+
		move.w  d3,(a2)+
		move.w  d4,(a2)+
		bra.s   loc_2159A
loc_21592:
		move.w  #1,(a2)+
		move.w  d3,(a2)+
		move.w  d4,(a2)+
loc_2159A:
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_2157A


; =============== S U B R O U T I N E =======================================

; Setup battlescene data

sub_215A0:
		move.w  d0,-(sp)
		move.w  d1,d0
		bsr.s   sub_2157A       
		move.w  (sp)+,d0
		rts

    ; End of function sub_215A0


; =============== S U B R O U T I N E =======================================

sub_215AA:
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_215BE
		move.w  #4,(a2)+
		bra.s   loc_215C2
loc_215BE:
		move.w  #3,(a2)+
loc_215C2:
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_215AA


; =============== S U B R O U T I N E =======================================

; Setup battlescene data

WriteBattlesceneCommand:
		
		movem.w d0-d1,-(sp)
		andi.w  #$FF,d0
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_215E0
		move.w  #$A,(a2)+
		bra.s   loc_215E4       
loc_215E0:
		move.w  #9,(a2)+
loc_215E4:
		move.w  d3,(a2)+        ; HP change
		move.w  d4,(a2)+        ; MP change
		move.w  d5,(a2)+        ; status effects change
		move.w  d6,(a2)+        ; command flags
		movem.w (sp)+,d0-d1
		rts

    ; End of function WriteBattlesceneCommand


; =============== S U B R O U T I N E =======================================

; Wrapper for 215C8

sub_215F2:
		move.w  d0,-(sp)
		move.w  d1,d0
		bsr.s   WriteBattlesceneCommand
		move.w  (sp)+,d0
		rts

    ; End of function sub_215F2


; =============== S U B R O U T I N E =======================================

; Copy battlescene data
; 
; In: A0 = source
;     A2 = destination

CopyBattlesceneData:
		
		move.l  a0,-(sp)
		move.w  #$F,(a2)+
		move.w  (a0)+,(a2)+     ; message index
		move.w  (a0)+,(a2)+     ; actor index
		move.w  (a0)+,(a2)+     ; item or spell index
		move.l  (a0)+,(a2)+     ; spell level
		movea.l (sp)+,a0
		rts

    ; End of function CopyBattlesceneData


; =============== S U B R O U T I N E =======================================

; Copy battlescene data 2

sub_2160E:
		move.l  a0,-(sp)
		move.w  #$12,(a2)+
		move.w  (a0)+,(a2)+
		move.w  (a0)+,(a2)+
		move.w  (a0)+,(a2)+
		move.l  (a0)+,(a2)+
		movea.l (sp)+,a0
		rts

    ; End of function sub_2160E


; =============== S U B R O U T I N E =======================================

; Setup Battle Messages

sub_21620:
		move.w  #$D,(a2)+
		move.w  #$E,(a2)+
		bsr.s   EndBattleaction 
		move.w  #$B,(a2)+
		move.w  ((EXPERIENCE_TO_GAIN-$1000000)).w,(a2)+
		move.w  #$C,(a2)+
		move.w  #$11,(a2)+
		move.w  #$FFFF,(a2)+
		rts

    ; End of function sub_21620


; =============== S U B R O U T I N E =======================================

; End of battle action (award money, break items, give exp, drop item)

EndBattleaction:
		
		movem.l d0-d3/d7-a0,-(sp)
		andi.w  #$FF,d0
		move.w  ((SELECTED_ITEM_SLOT-$1000000)).w,d3
		blt.s   loc_216C4
		movea.l (p_ItemTypes).l,a0
		move.w  ((SELECTED_ITEM_ENTRY-$1000000)).w,d1
		btst    #ITEMENTRY_BIT_BROKEN,d1
		beq.s   loc_21678
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		clr.w   d2
		move.b  (a0,d1.w),d2
		addi.w  #$1FA,d2
		move.w  #$12,(a2)+
		move.w  d2,(a2)+
		move.w  d1,(a2)+
		addq.l  #6,a2
		bra.s   loc_21684
loc_21678:
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_CONSUMABLE,d2
		beq.s   loc_2168E
loc_21684:
		move.w  d3,d1
		jsr     j_RemoveItemForCombatant
		bra.s   loc_216C4
loc_2168E:
		btst    #ITEMTYPE_BIT_CHANCE_TO_CRACK,d2
		beq.s   loc_216C4
		tst.b   ((DEBUG_CRACK_ITEM-$1000000)).w
		bne.s   loc_216A4
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7
		bge.s   loc_216C4
loc_216A4:
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		clr.w   d2
		move.b  (a0,d1.w),d2
		addi.w  #$1F4,d2
		move.w  #$12,(a2)+
		move.w  d2,(a2)+
		move.w  d1,(a2)+
		addq.l  #6,a2
		move.w  d3,d1
		jsr     j_BreakItemForCombatant
loc_216C4:
		moveq   #0,d1
		move.w  ((EXPERIENCE_TO_GAIN-$1000000)).w,d1
		beq.s   loc_216DA
		move.w  #$F,(a2)+
		move.w  #$200,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		move.l  d1,(a2)+
loc_216DA:
		move.w  ((COINS_TO_GAIN-$1000000)).w,d1
		beq.s   loc_216F4
		move.w  #$F,(a2)+
		move.w  #$201,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		move.l  d1,(a2)+
		jsr     j_IncreaseGold
loc_216F4:
		move.w  ((ITEM_DROPPED_FLAG-$1000000)).w,d2
		blt.s   loc_2173E
		move.w  ((ITEM_TO_DROP-$1000000)).w,d1
		jsr     j_GiveItemForCombatant
		bcc.s   loc_2170E
		jsr     j_IncrementDealsStock
		bra.s   loc_2173E
loc_2170E:
		cmpi.b  #$3A,d1 
		bne.s   loc_21722
		move.w  #$12,(a2)+
		move.w  #$204,(a2)+
		move.w  d0,(a2)+
		move.w  d1,(a2)+
		addq.l  #4,a2
loc_21722:
		move.w  #$12,(a2)+
		move.w  #$202,(a2)+
		move.w  d0,(a2)+
		move.w  d1,(a2)+
		addq.l  #4,a2
		move.w  #$12,(a2)+
		move.w  #$203,(a2)+
		move.w  d0,(a2)+
		move.w  d1,(a2)+
		addq.l  #4,a2
loc_2173E:
		movem.l (sp)+,d0-d3/d7-a0
		rts

    ; End of function EndBattleaction


; =============== S U B R O U T I N E =======================================

; Add empty battle action

NullBattleaction:
		
		move.l  a0,-(sp)
		lea     (BATTLE_SCENE_ACTORS).l,a2
		move.w  #-1,(a2)+
		movea.l (sp)+,a0
		rts

    ; End of function NullBattleaction


; =============== S U B R O U T I N E =======================================

; Battle action effect handler
; 
; In: D0 = actor index
;     A0 = effect entry address
;     A1 = pointer to effect routine

ExecuteBattleaction:
		
		        module
		movem.l d0-d6/a3-a4,-(sp)
		andi.w  #$FF,d0
		lea     ((TARGETS_LIST-$1000000)).w,a3
		bsr.w   IsTargetOpponent
		move.w  d1,((OPPONENT_TARGET_INDEX-$1000000)).w
		bsr.w   LoadBattlesceneActors
		jsr     j_GetItemsCurseSettingsForCombatant
		move.b  d1,((CURSED_ITEMS_SETTINGS-$1000000)).w
		bsr.w   DetermineCurseParalysis
		bcs.w   loc_218A8
		bsr.w   CheckDispel     
		bcc.s   loc_2178E
		move.w  #$1BA,((BATTLESCENE_MESSAGE_INDEX-$1000000)).w
						; "[Name] casts [Spell][Line]level [Num]![Line]But the spell fails."
		bra.w   loc_218A8
loc_2178E:
		clr.w   d3
		move.b  EFFECTDEF_OFFSET_MESSAGE(a0),d3
		bge.s   loc_2179A
		move.b  ((BATTLE_MESSAGE_OFFSET-$1000000)).w,d3
loc_2179A:
		andi.w  #$FF,d3
		addi.w  #$1B4,d3        ; "[Name] attacks!"
		move.w  d3,((BATTLESCENE_MESSAGE_INDEX-$1000000)).w
		move.w  d0,((BATTLESCENE_ACTOR_INDEX-$1000000)).w
		move.l  a0,-(sp)
		lea     ((BATTLESCENE_MESSAGE_INDEX-$1000000)).w,a0
		bsr.w   CopyBattlesceneData
		movea.l (sp)+,a0
		move.b  (a0),d3
		bge.s   @CheckMpCost    ; branch if battle message >= 0
		cmpi.b  #$FF,d3
		bne.s   loc_217C6
		ext.w   d3
		move.w  d3,d4
		bra.s   loc_217CE
loc_217C6:
		bsr.w   LoadBattlespriteData
		move.b  EFFECTDEF_OFFSET_ANIM(a0),d4
loc_217CE:
		bsr.w   MirrorSpellAnimationIfEnemy
		bsr.w   sub_2157A       
@CheckMpCost:
		move.w  ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w,d4
		beq.s   @CheckOpponent
		clr.w   d3
		neg.w   d4
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d5
		moveq   #-1,d6
		bsr.w   WriteBattlesceneCommand
@CheckOpponent:
		
		move.w  ((OPPONENT_TARGET_INDEX-$1000000)).w,d1
		bge.s   loc_21802       ; continue if target is an opponent
		move.w  (a3)+,d1
		blt.w   loc_218A8
		cmp.w   d0,d1
		beq.s   loc_21802
		bsr.w   sub_2154C       
loc_21802:
		bsr.w   DetermineDoubleAttack
loc_21806:
		bsr.w   sub_218D4       
loc_2180A:
		bsr.w   sub_218EE       
		jsr     (a1)            ; jump to effect routine
		move.l  a0,-(sp)
		lea     ((AFTER_TURN_MESSAGE_INDEX-$1000000)).w,a0
		cmpi.w  #-1,(a0)
		beq.s   loc_21820
		bsr.w   CopyBattlesceneData
loc_21820:
		movea.l (sp)+,a0
		move.w  ((word_FFA9CA-$1000000)).w,d3
		blt.s   loc_2183E
		bsr.w   LoadBattlespriteData
		move.w  ((word_FFA9CC-$1000000)).w,d4
		bsr.w   sub_2157A       
		tst.b   ((byte_FFCB6B-$1000000)).w
		bne.s   loc_2183E
		bsr.w   sub_215AA
loc_2183E:
		move.w  ((EFFECT_HP_CHANGE-$1000000)).w,d3
		move.w  ((EFFECT_MP_CHANGE-$1000000)).w,d4
		move.w  ((EFFECT_STATUS_CHANGE-$1000000)).w,d5
		move.w  ((EFFECT_REACTION-$1000000)).w,d6
		bsr.w   sub_215F2       
		tst.w   ((word_FFA9CA-$1000000)).w
		blt.s   loc_21862
		tst.b   ((byte_FFCB6B-$1000000)).w
		beq.s   loc_21862
		bsr.w   sub_215AA
loc_21862:
		move.l  a0,-(sp)
		lea     ((BATTLE_MESSAGE_INDEX_1-$1000000)).w,a0
		cmpi.w  #$FFFF,(a0)
		beq.s   loc_21872
		bsr.w   CopyBattlesceneData
loc_21872:
		lea     ((BATTLE_MESSAGE_INDEX_2-$1000000)).w,a0
		cmpi.w  #$FFFF,(a0)
		beq.s   loc_21880
		bsr.w   sub_2160E       
loc_21880:
		movea.l (sp)+,a0
		tst.w   ((word_FFA9CA-$1000000)).w
		blt.s   loc_21890
		move.w  #$D,(a2)+
		move.w  #$E,(a2)+
loc_21890:
		bsr.w   sub_219C0       
		subq.w  #1,((NUMBER_OF_ATTACKS-$1000000)).w
		bgt.w   loc_2180A
		move.w  (a3)+,d1
		blt.s   loc_218A8
		bsr.w   sub_2154C       
		bra.w   loc_21806
loc_218A8:
		bsr.w   sub_21A1C
		bsr.w   DetermineCurseDamage
		bsr.w   nullsub_21AC8
		bsr.w   sub_21ACA
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_218CA
		clr.w   ((EXPERIENCE_TO_GAIN-$1000000)).w
		clr.w   ((COINS_TO_GAIN-$1000000)).w
loc_218CA:
		bsr.w   sub_21620       
		movem.l (sp)+,d0-d6/a3-a4
		rts
        modend

    ; End of function ExecuteBattleaction


; =============== S U B R O U T I N E =======================================

; Initialize amount of damage to inflict and status effects change

sub_218D4:
		clr.w   ((word_FFCB58-$1000000)).w
		movem.w d0-d1,-(sp)
		move.b  d1,d0
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,((EFFECT_STATUS_CHANGE-$1000000)).w
		movem.w (sp)+,d0-d1
		rts

    ; End of function sub_218D4


; =============== S U B R O U T I N E =======================================

; Initialize battle action data

sub_218EE:
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((word_FFA9CA-$1000000)).w,a1
		move.b  (a0)+,d0
		bge.s   loc_21900
		move.w  #-1,(a1)+
		bra.s   loc_21906
loc_21900:
		andi.w  #7,d0
		move.w  d0,(a1)+
loc_21906:
		move.w  #-1,d0
		move.w  d0,(a1)+
		move.w  d0,(a1)+
		move.b  d0,((byte_FFCB6B-$1000000)).w
		clr.b   ((byte_FFCB6C-$1000000)).w
		lea     ((EFFECT_HP_CHANGE-$1000000)).w,a1
		clr.w   (a1)+
		clr.w   (a1)+
		addq.l  #2,a1
		moveq   #-1,d1
		move.w  d1,(a1)+
		move.w  d1,(a1)+
		move.w  d1,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		move.w  d1,((BATTLE_MESSAGE_INDEX_2-$1000000)).w
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_218EE


; =============== S U B R O U T I N E =======================================

; Check if target is an opponent, get its combatant index -> D1 if true, else D1 = $FFFF
; 
; In: A3 = target table entry address
;     D0 = caster index

IsTargetOpponent:
		
		movem.w d0/d2,-(sp)
		jsr     j_GetEntity
		move.w  d1,d2           ; D2 = caster's entity index
		move.w  (a3),d0
		jsr     j_GetEntity
		eor.w   d2,d1
		btst    #ENTITYENTRY_BIT_ENEMY,d1
		bne.s   @Opponent
		move.w  #-1,d1
		bra.s   @Done
@Opponent:
		move.w  (a3)+,d1
@Done:
		movem.w (sp)+,d0/d2
		rts

    ; End of function IsTargetOpponent


; =============== S U B R O U T I N E =======================================

DetermineDoubleAttack:
		
		movem.l d1-d2/d7,-(sp)
		tst.b   ((DEBUG_DOUBLE_ATTACK-$1000000)).w
		bne.s   loc_219A6
		moveq   #1,d2
		tst.b   ((BATTLE_MESSAGE_OFFSET-$1000000)).w
		bne.s   loc_219A8
		jsr     j_GetModifiedDoubleAttackMode
		cmpi.w  #DOUBLE_ATTACK_MODE_NEVER,d1
		beq.s   loc_219A8
		cmpi.w  #DOUBLE_ATTACK_MODE_HIGH,d1
		bne.s   loc_2198C
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #39,d7
		bra.s   loc_219A8
loc_2198C:
		jsr     j_GetEntity
		tst.w   d1
		beq.s   loc_219B2
		cmpi.b  #ALLY_HANZOU,d1
		beq.s   loc_219B2
		moveq   #7,d1
loc_2199E:
		bsr.w   GenerateRandomNumber0To99
		cmp.w   d1,d7
		bcc.s   loc_219A8
loc_219A6:
		moveq   #2,d2
loc_219A8:
		move.w  d2,((NUMBER_OF_ATTACKS-$1000000)).w
		movem.l (sp)+,d1-d2/d7
		rts
loc_219B2:
		bsr.w   CalculateEffectiveLevel
		add.w   d1,d1
		divu.w  #3,d1
		addq.w  #7,d1
		bra.s   loc_2199E

    ; End of function DetermineDoubleAttack


; =============== S U B R O U T I N E =======================================

; Attack cleanup - clear item dropped, set to single attack if first will kill enemy

sub_219C0:
		clr.b   ((DEBUG_SPECIAL_ATTACK-$1000000)).w
		bsr.s   CheckFatalDamage
		bgt.s   @Return
		move.w  #1,((NUMBER_OF_ATTACKS-$1000000)).w
@Return:
		rts

    ; End of function sub_219C0


; =============== S U B R O U T I N E =======================================

LoadBattlespriteData:
		
		andi.w  #1,d3
		bne.s   loc_219DE
		jsr     j_LoadBattlespriteDataWithWeapon
		bra.s   return_219E4
loc_219DE:
		jsr     j_LoadBattlespriteDataWithoutWeapon
return_219E4:
		rts

    ; End of function LoadBattlespriteData


; =============== S U B R O U T I N E =======================================

; Check if damage will defeat target

CheckFatalDamage:
		
		movem.w d0-d1,-(sp)
		move.w  d1,d0
		jsr     j_GetCurrentHpForCombatant
		cmp.w   ((word_FFCB58-$1000000)).w,d1
		movem.w (sp)+,d0-d1
		rts

    ; End of function CheckFatalDamage


; =============== S U B R O U T I N E =======================================

; Check if caster is under dispel status
; 
; Out: CCR = Carry-bit set if true

CheckDispel:
		movem.w d1,-(sp)
		tst.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		beq.s   @Skip
		jsr     j_GetStatusEffectsForCombatant
		andi.w  #STATUSEFFECT_DISPEL,d1
		beq.s   @Skip
		ori     #1,ccr
@Skip:
		movem.w (sp)+,d1
		rts

    ; End of function CheckDispel


; =============== S U B R O U T I N E =======================================

sub_21A1C:
		move.w  d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   loc_21A2E
		cmp.b   ((BATTLE_SCENE_ENEMY-$1000000)).w,d0
		bra.s   loc_21A32
loc_21A2E:
		cmp.b   ((BATTLE_SCENE_ALLY-$1000000)).w,d0
loc_21A32:
		beq.s   loc_21A3A
		move.w  d0,d1
		bsr.w   sub_2154C       
loc_21A3A:
		move.w  (sp)+,d1
		rts

    ; End of function sub_21A1C


; =============== S U B R O U T I N E =======================================

MirrorSpellAnimationIfEnemy:
		
		ext.w   d4
		blt.s   @Return
		bsr.w   IsEnemy         
		bge.s   @Return
		eori.w  #1,d4
@Return:
		rts

    ; End of function MirrorSpellAnimationIfEnemy


; =============== S U B R O U T I N E =======================================

; Carry-bit set if paralysis occurs

DetermineCurseParalysis:
		
		movem.l d7,-(sp)
		move.b  ((CURSED_ITEMS_SETTINGS-$1000000)).w,d7
		btst    #0,d7
		beq.s   @Skip
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #25,d7          ; 25% chance to be paralyzed
		bcc.s   @Skip
		move.w  #$1E8,d7        ; "A curse! [Name]'s body[Line]suddenly goes numb."
		move.w  #$F,(a2)+
		move.w  d7,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		addq.l  #4,a2
		ori     #1,ccr
@Skip:
		movem.l (sp)+,d7
		rts

    ; End of function DetermineCurseParalysis


; =============== S U B R O U T I N E =======================================

DetermineCurseDamage:
		
		movem.l d1/d3-d7,-(sp)
		btst    #1,((CURSED_ITEMS_SETTINGS-$1000000)).w
		beq.s   @Skip
		bsr.w   GenerateRandomNumber0To99
		cmpi.w  #50,d7          ; 50% chance to receive curse damage
		bcc.s   @Skip
		move.w  ((EFFECT_HP_CHANGE-$1000000)).w,d3
		bge.s   @Skip
		asr.w   #3,d3           ; curse damage = inflicted damage divided by 8
		clr.w   d4
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d5
		clr.w   d6
		bsr.w   WriteBattlesceneCommand
		neg.w   d3
		ext.l   d3
		move.w  #$1E9,d7        ; "A curse! [Name] suffers[Line][Num] points of damage."
		move.w  #$F,(a2)+
		move.w  d7,(a2)+
		move.w  d0,(a2)+
		move.w  d0,(a2)+
		move.l  d3,(a2)+
@Skip:
		movem.l (sp)+,d1/d3-d7
		rts

    ; End of function DetermineCurseDamage


; =============== S U B R O U T I N E =======================================

nullsub_21AC8:
		
		rts

    ; End of function nullsub_21AC8


; =============== S U B R O U T I N E =======================================

sub_21ACA:
		movem.l d1/d3-d7,-(sp)
		move.b  ((byte_FFCB6C-$1000000)).w,d4
		beq.s   loc_21AE8
		clr.w   d3
		ext.w   d4
		jsr     j_GetStatusEffectsForCombatant
		move.w  d1,d5
		move.w  #1,d6
		bsr.w   WriteBattlesceneCommand
loc_21AE8:
		movem.l (sp)+,d1/d3-d7
		rts

    ; End of function sub_21ACA


; =============== S U B R O U T I N E =======================================

InitializeNewGame:
		
		move.b  #2,((MESSAGE_SPEED-$1000000)).w
		clr.b   ((DISPLAY_BATTLE_MESSAGES_TOGGLE-$1000000)).w
		lea     ((EVENT_FLAGS-$1000000)).w,a0
		move.w  #EVENT_FLAGS_COUNTER,d0
@ClearEventFlags_Loop:
		
		clr.b   (a0)+
		dbf     d0,@ClearEventFlags_Loop
                
		lea     ((DEALS_ITEMS-$1000000)).w,a0
		move.w  #DEALS_ITEMS_BYTES_COUNTER,d0
@ClearDealsItems_Loop:
		
		clr.b   (a0)+
		dbf     d0,@ClearDealsItems_Loop
                
		clr.l   ((CURRENT_GOLD-$1000000)).w
		movea.l (p_InitialForceMembersData).l,a0
		lea     ((FORCE_MEMBERS_DATA-$1000000)).w,a1
		move.w  #FORCE_MEMBERS_DATA_BYTES_COUNTER,d0
@InitForceMembersData_Loop:
		
		move.b  (a0)+,(a1)+
		dbf     d0,@InitForceMembersData_Loop
                
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		move.w  #FORCE_MEMBERS_COUNTER,d0
@ClearPromotedAtLevels_Loop:
		
		clr.b   (a0)+
		dbf     d0,@ClearPromotedAtLevels_Loop
                
		moveq   #REGULAR_FORCE_MEMBERS_COUNTER,d0
@LevelUpRegularForce_Loop:
		
		jsr     j_GetLevel
		move.w  d1,d2
		clr.w   d1
		jsr     j_SetLevel
		subq.w  #1,d2
@IncreaseStatsOnLevelUp_Loop:
		
		jsr     j_IncreaseStatsOnLevelUp
		dbf     d2,@IncreaseStatsOnLevelUp_Loop
                
		jsr     j_RefillHP
		jsr     j_RefillMP
		dbf     d0,@LevelUpRegularForce_Loop
                
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		move.w  #BATTLE_PARTY_SLOTS_COUNTER,d0
@EmptyBattleParty_Loop:
		
		move.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)+
		dbf     d0,@EmptyBattleParty_Loop
                
		clr.w   d0
		bsr.w   JoinForce       ; Max joins
		rts

    ; End of function InitializeNewGame


; =============== S U B R O U T I N E =======================================

; initialize battle combatants

sub_21B80:
		movem.l d0-d2/a0-a1,-(sp)
		bsr.s   ClearCombatantData
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		movea.l ((FORCE_POSITIONS_POINTER-$1000000)).w,a1
		move.b  (a1)+,d0
loc_21B90:
		beq.s   loc_21BA0
		move.b  (a0)+,d1
		blt.s   loc_21BA0
		bsr.w   sub_21C78
		addq.l  #2,a1
		subq.b  #1,d0
		bra.s   loc_21B90
loc_21BA0:
		bsr.s   GetEnemyPositionsPointer
		beq.s   loc_21BBE
		lea     ((byte_FFA476-$1000000)).w,a0
		move.b  #$80,d1
		move.b  (a1)+,d0
loc_21BAE:
		beq.s   loc_21BBE
		move.b  BATTLEDATA_ENEMY_SPAWN_COUNTER(a1),(a0)+
		bsr.s   sub_21BF6
		addq.l  #4,a1
		addq.b  #1,d1
		subq.b  #1,d0
		bra.s   loc_21BAE
loc_21BBE:
		clr.b   ((LASER_EYE_COUNTDOWN-$1000000)).w
		clr.b   ((TRIGGERED_AI_REGIONS-$1000000)).w
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function sub_21B80


; =============== S U B R O U T I N E =======================================

; Get enemy positions pointer -> A1

GetEnemyPositionsPointer:
		
		movem.l d0,-(sp)
		movea.l ((ENEMY_POSITIONS_POINTER-$1000000)).w,a1
		move.l  a1,d0
		movem.l (sp)+,d0
		rts

    ; End of function GetEnemyPositionsPointer


; =============== S U B R O U T I N E =======================================

ClearCombatantData:
		
		movem.l d0/a0,-(sp)
		lea     ((COMBATANT_DATA-$1000000)).w,a0
		move.w  #511,d0
@Loop:
		move.b  #-1,(a0)+
		dbf     d0,@Loop
                
		movem.l (sp)+,d0/a0
		rts

    ; End of function ClearCombatantData


; =============== S U B R O U T I N E =======================================

sub_21BF6:
		movem.l d0/a0-a1,-(sp)
		bsr.s   sub_21C0C
		bcs.s   loc_21C06
		bsr.w   sub_21C78
		bcs.s   loc_21C06
		subq.b  #1,(a0)
loc_21C06:
		movem.l (sp)+,d0/a0-a1
		rts

    ; End of function sub_21BF6


; =============== S U B R O U T I N E =======================================

sub_21C0C:
		movem.l d0-d2,-(sp)
		bsr.w   GetEnemyPositionsPointer
		beq.w   loc_21C60
		move.w  d1,d2
		andi.w  #$7F,d2 
		asl.w   #2,d2
		lea     1(a1,d2.w),a1
		clr.w   d0
		move.b  2(a1),d0
		beq.s   loc_21C38
		addi.w  #$1D0,d0
		jsr     (j_CheckEventFlag).l
		beq.s   loc_21C60
loc_21C38:
		movem.l d1-d2/a1,-(sp)
		move.b  (a1)+,d2
		move.b  (a1),d1
		bsr.w   IsSpaceOccupied 
		movem.l (sp)+,d1-d2/a1
		bcs.s   loc_21C60
		lea     ((byte_FFA476-$1000000)).w,a0
		move.w  d1,d2
		andi.w  #$7F,d2 
		adda.w  d2,a0
		tst.b   (a0)
		beq.s   loc_21C60
loc_21C5A:
		movem.l (sp)+,d0-d2
		rts
loc_21C60:
		move.b  d1,d0
		clr.w   d1
		jsr     j_SetCurrentHP
		ori     #1,ccr
		bra.s   loc_21C5A

    ; End of function sub_21C0C


; =============== S U B R O U T I N E =======================================

sub_21C70:
		movem.l d0-d1/d3,-(sp)
		move.b  d1,d3
		bra.s   loc_21C8A

    ; End of function sub_21C70


; =============== S U B R O U T I N E =======================================

sub_21C78:
		movem.l d0-d1/d3,-(sp)
		move.b  d1,d3
		move.b  d1,d0
		jsr     j_GetCurrentHP
		tst.w   d1
		beq.s   loc_21C96
loc_21C8A:
		bsr.w   FindEmptyCombatantSlot
		bcs.s   loc_21C96
		move.b  d3,d1
		bsr.s   PopulateCombatantSlot
		tst.w   d0
loc_21C96:
		movem.l (sp)+,d0-d1/d3
		rts

    ; End of function sub_21C78


; =============== S U B R O U T I N E =======================================

; Populate combatant slot D0 with force member D1, and place them at coordinates A1

PopulateCombatantSlot:
		
		movem.l d1-d2/a1,-(sp)
		move.w  d1,-(sp)
		jsr     j_SetEntityIndex
		bsr.w   LoadCombatantData
		move.b  (a1)+,d2        ; X
		move.b  (a1)+,d1        ; Y
		jsr     j_SetCombatantPosition
		move.w  (sp)+,d1
		tst.b   d1
		bge.s   @Skip           ; skip if combatant is a force member
                
		lea     ((byte_FFA496-$1000000)).w,a1
		andi.w  #COMBATANT_INDEX_MASK,d1
		clr.b   (a1,d1.w)
@Skip:
		movem.l (sp)+,d1-d2/a1
		rts

    ; End of function PopulateCombatantSlot


; =============== S U B R O U T I N E =======================================

; Find first empty combatant slot -> D0
; 
; CCR: carry-bit set if not found

FindEmptyCombatantSlot:
		
		movem.w d1,-(sp)
		clr.w   d0
loc_21CD4:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_21CEC
		addq.w  #1,d0
		cmpi.b  #COMBATANT_ENTRIES_NUMBER,d0
		bne.s   loc_21CD4
		ori     #1,ccr
loc_21CEC:
		movem.w (sp)+,d1
		rts

    ; End of function FindEmptyCombatantSlot


; =============== S U B R O U T I N E =======================================

; Load combatant D0 data

LoadCombatantData:
		
		movem.l d1-d2/d4-d6/a0-a1,-(sp)
		jsr     j_LoadBaseAttack
		jsr     j_LoadBaseDefense
		jsr     j_LoadBaseAgility
		jsr     j_LoadBaseMove
		jsr     j_LoadBaseCritical
		jsr     j_GetBaseDoubleAttackMode
		jsr     j_SetModifiedDoubleAttackMode
		jsr     j_GetEntityItemsAddressForCombatant
		moveq   #ITEM_SLOTS_COUNTER,d2
@ApplyEquipOnStats_Loop:
		
		move.b  (a0),d1
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		beq.s   @NextItem
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.s   @NextItem
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_EQUIP_EFFECT(a1),d4
		move.b  ITEMDEF_OFFSET_EQUIP_EFFECT_VALUE(a1),d5
		jsr     j_JumpToRangeOrEquipEffect
@NextItem:
		addq.l  #1,a0
		dbf     d2,@ApplyEquipOnStats_Loop
                
		bsr.s   ApplyStatusEffectsOnStats
		movem.l (sp)+,d1-d2/d4-d6/a0-a1
		rts

    ; End of function LoadCombatantData


; =============== S U B R O U T I N E =======================================

ApplyStatusEffectsOnStats:
		
		movem.l d0-d3,-(sp)
		moveq   #STATUSEFFECT_BIT_QUICK,d1
		jsr     j_GetStatusEffectCounter
		beq.s   loc_21D74
		moveq   #10,d1
		jsr     j_IncreaseModifiedAgility
		moveq   #10,d1
		jsr     j_IncreaseModifiedDefense
loc_21D74:
		moveq   #STATUSEFFECT_BIT_SLOW,d1
		jsr     j_GetStatusEffectCounter
		beq.s   loc_21D8E
		moveq   #10,d1
		jsr     j_DecreaseModifiedAgility
		moveq   #10,d1
		jsr     j_DecreaseModifiedDefense
loc_21D8E:
		moveq   #STATUSEFFECT_BIT_BOOST,d1
		jsr     j_GetStatusEffectCounter
		beq.s   loc_21DA0
		moveq   #15,d1
		jsr     j_IncreaseModifiedAttack
loc_21DA0:
		movem.l (sp)+,d0-d3
		rts

    ; End of function ApplyStatusEffectsOnStats


; =============== S U B R O U T I N E =======================================

LoadCombatantDataForForceMember:
		
		movem.w d0,-(sp)
		bsr.w   FindCombatantEntry
		bne.s   loc_21DB6
		jsr     j_LoadCombatantData
loc_21DB6:
		movem.w (sp)+,d0
		rts

    ; End of function LoadCombatantDataForForceMember


; =============== S U B R O U T I N E =======================================

sub_21DBC:
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((ENEMY_DATA-$1000000)).w,a0
		move.w  #$4FF,d0
loc_21DC8:
		move.b  #$FF,(a0)+
		dbf     d0,loc_21DC8
                
		bsr.w   GetEnemyPositionsPointer
		beq.s   loc_21DEC
		move.b  #$80,d0
		move.b  (a1),d1
loc_21DDC:
		beq.s   loc_21DE8
		bsr.w   LoadEnemyStats
		addq.b  #1,d0
		subq.b  #1,d1
		bra.s   loc_21DDC
loc_21DE8:
		bsr.w   SetForceLeaderStatsInBattleTestMode
loc_21DEC:
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_21DBC


; =============== S U B R O U T I N E =======================================

LoadEnemyStats:
		
		movem.l d0-d1/a0-a3,-(sp)
		bsr.w   GetEnemyEntryAddress
		bcs.w   loc_21EA0
		movea.l a0,a2
		movea.l a1,a3
		move.b  ENEMY_OFFSET_CLASS(a3),d1
		jsr     j_SetClass
		move.b  ENEMY_OFFSET_LEVEL(a3),d1
		jsr     j_SetLevel
		move.b  ENEMY_OFFSET_ATTACK(a3),d1
		jsr     j_SetBaseAttack
		move.b  ENEMY_OFFSET_DEFENSE(a3),d1
		jsr     j_SetBaseDefense
		move.b  ENEMY_OFFSET_AGILITY(a3),d1
		jsr     j_SetBaseAgility
		move.b  ENEMY_OFFSET_MOVE(a3),d1
		jsr     j_SetBaseMove
		move.w  ENEMY_OFFSET_HP(a3),d1
		jsr     j_SetMaxHP
		move.b  ENEMY_OFFSET_MP(a3),d1
		jsr     j_SetMaxMP
		clr.w   d1
		jsr     j_SetBaseCritical
		jsr     j_SetStatusEffects
		jsr     j_RefillHP
		jsr     j_RefillMP
		bsr.w   sub_21EA6
		jsr     j_GetEntityItemsAddress
		move.l  #$FFFFFFFF,(a0)  ; 4 empty item slots
		move.b  BATTLEDATA_ENEMY_ITEM_0(a2),d1
		move.b  d1,(a0)+
		cmp.b   BATTLEDATA_ENEMY_ITEM_1(a2),d1
		beq.s   loc_21E8E
		move.b  BATTLEDATA_ENEMY_ITEM_1(a2),d1
		move.b  d1,(a0)
loc_21E8E:
		jsr     j_GetCharacterSpellsAddress
		move.l  #$FFFFFFFF,(a0)  ; 4 empty spell slots
		move.b  BATTLEDATA_ENEMY_SPELL(a2),d1
		move.b  d1,(a0)
loc_21EA0:
		movem.l (sp)+,d0-d1/a0-a3
		rts

    ; End of function LoadEnemyStats


; =============== S U B R O U T I N E =======================================

sub_21EA6:
		movem.l d0-d1/a0-a1,-(sp)
		jsr     j_GetEntityStatsAddress
		movea.l a0,a1
		move.w  #9,d1
loc_21EB6:
		clr.b   (a0)+
		dbf     d1,loc_21EB6

		move.b  ENEMY_OFFSET_11(a3),d1
		movea.l ((dword_FFC612-$1000000)).w,a0
		bsr.w   GetVariableLengthEntryAddress
		beq.s   loc_21ED2
		subq.w  #1,d1
loc_21ECC:
		move.b  (a0)+,(a1)+
		dbf     d1,loc_21ECC

loc_21ED2:
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function sub_21EA6


; =============== S U B R O U T I N E =======================================

sub_21ED8:
		movem.l d0-d2/a0-a1,-(sp)
		bsr.w   GetEnemyPositionsPointer
		beq.w   loc_21F10
		lea     ((SAVED_BATTLE_DATA-$1000000)).w,a0
		move.b  #$80,d0
		move.b  (a1),d2
loc_21EEE:
		beq.s   loc_21F10
		move.w  (a0)+,d1
		jsr     j_SetCurrentHP
		move.b  (a0)+,d1
		jsr     j_SetCurrentMP
		addq.l  #1,a0
		move.w  (a0)+,d1
		jsr     j_SetStatusEffects
		addq.b  #1,d0
		subq.b  #1,d2
		bra.s   loc_21EEE
loc_21F10:
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function sub_21ED8


; =============== S U B R O U T I N E =======================================

sub_21F16:
		movem.l d0-d2/a0-a1,-(sp)
		bsr.w   GetEnemyPositionsPointer
		beq.w   loc_21F5E
		lea     ((SAVED_BATTLE_DATA-$1000000)).w,a0
		move.w  #191,d0
loc_21F2A:
		move.b  #-1,(a0)+
		dbf     d0,loc_21F2A
                
		lea     ((SAVED_BATTLE_DATA-$1000000)).w,a0
		move.b  #128,d0
		move.b  (a1),d2
loc_21F3C:
		beq.s   loc_21F5E
		jsr     j_GetCurrentHP
		move.w  d1,(a0)+
		jsr     j_GetCurrentMP
		move.b  d1,(a0)+
		addq.l  #1,a0
		jsr     j_GetStatusEffects
		move.w  d1,(a0)+
		addq.b  #1,d0
		subq.b  #1,d2
		bra.s   loc_21F3C
loc_21F5E:
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function sub_21F16


; =============== S U B R O U T I N E =======================================

sub_21F64:
		movem.l d0-d3/a0-a1,-(sp)
		move.l  ((dword_FFC60A-$1000000)).w,d3
		beq.s   loc_21F72
		movea.l d3,a0
		jsr     (a0)
loc_21F72:
		clr.w   d3
		lea     ((byte_FFA8C2-$1000000)).w,a0
		tst.b   ((byte_FFB4D7-$1000000)).w
		bne.s   loc_21FDE
		bsr.w   GetEnemyPositionsPointer
		beq.s   loc_21FDE
		move.b  #$80,d0
		move.b  (a1)+,d1
loc_21F8A:
		beq.s   loc_21FDE
		movem.w d1,-(sp)
		jsr     j_GetCurrentHP
		tst.w   d1
		movem.w (sp)+,d1
		bgt.s   loc_21FD6
		movem.l d1/a0-a1,-(sp)
		move.b  d0,d1
		bsr.w   sub_21C0C
		movem.l (sp)+,d1/a0-a1
		bcs.s   loc_21FD6
		movem.w d0,-(sp)
		bsr.w   FindEmptyCombatantSlot
		move.w  d0,d2
		movem.w (sp)+,d0
		bcs.s   loc_21FD6
		movem.w d1,-(sp)
		bsr.w   LoadEnemyStats
		move.b  d0,d1
		bsr.w   sub_21BF6
		movem.w (sp)+,d1
		addq.w  #1,d3
		move.b  d2,(a0)+
		st      (a0)+
loc_21FD6:
		addq.l  #4,a1
		addq.b  #1,d0
		subq.b  #1,d1
		bra.s   loc_21F8A
loc_21FDE:
		st      (a0)
		move.w  d3,((TABLE_AT_FFA8C0-$1000000)).w
		jsr     RegenerateHP(pc)
		nop
		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function sub_21F64


; =============== S U B R O U T I N E =======================================

; Get enemy D0 (from enemies list) entry address -> A1 if they exists, carry-bit set if not

GetEnemyEntryAddress:
		
		movem.l d0-d1,-(sp)
		movea.l ((ENEMIES_LIST_POINTER-$1000000)).w,a0
		move.l  a0,d1
		beq.s   loc_2201C
		andi.w  #FORCEMEMBERENTRY_MASK_INDEX_0,d0
		asl.w   #2,d0
		adda.w  d0,a0
		move.b  (a0),d1
		cmpi.b  #$FF,d1
		beq.s   loc_2201C
		movea.l ((ENEMY_DATA_POINTER-$1000000)).w,a1
		andi.w  #$FF,d1
		asl.w   #4,d1
		adda.w  d1,a1
		tst.b   d0
		bra.s   loc_22020
loc_2201C:
		ori     #1,ccr
loc_22020:
		movem.l (sp)+,d0-d1
		rts

    ; End of function GetEnemyEntryAddress


; =============== S U B R O U T I N E =======================================

ResetCombatants:
		
		movem.l d0-d1/a1,-(sp)
		bsr.w   ClearCombatantData
		lea     byte_2204A(pc), a1
		moveq   #FORCE_MEMBERS_COUNTER,d0
@Loop:
		bsr.w   IsInForce       
		beq.s   @Next
		move.w  d0,d1
		bsr.w   PopulateCombatantSlot
@Next:
		dbf     d0,@Loop
                
		movem.l (sp)+,d0-d1/a1
		rts

    ; End of function ResetCombatants

byte_2204A:     dc.b $FF
		dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_2204C:
		movem.l d1/a0-a1,-(sp)
		lea     byte_2204A(pc), a1
		bsr.w   sub_22090
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
loc_2205C:
		move.b  (a0)+,d1
		blt.s   loc_22066
		bsr.w   sub_21C70
		bra.s   loc_2205C
loc_22066:
		movem.l (sp)+,d1/a0-a1
		rts

    ; End of function sub_2204C


; =============== S U B R O U T I N E =======================================

RefreshMembersList:
		
		lea     ((FORCE_MEMBERS_LIST-$1000000)).w,a0
		clr.w   d1
		clr.w   d0
@Loop:
		jsr     (a1)
		beq.s   @Skip
		move.b  d0,(a0)+        ; add member to list
		addq.w  #1,d1           ; increment list length
@Skip:
		addq.w  #1,d0
		cmpi.w  #FORCE_MEMBERS_NUMBER,d0
		bcs.s   @Loop
                
		move.w  d1,((FORCE_MEMBERS_LIST_LENGTH-$1000000)).w
		st      (a0)
		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function RefreshMembersList


; =============== S U B R O U T I N E =======================================

sub_22090:
		movem.l d0-d1/a0-a1,-(sp)
		lea     sub_22100(pc), a1
		bra.s   RefreshMembersList

    ; End of function sub_22090


; =============== S U B R O U T I N E =======================================

PopulateForceMembersList:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     IsInForce(pc), a1
		bra.s   RefreshMembersList

    ; End of function PopulateForceMembersList


; =============== S U B R O U T I N E =======================================

PopulateBattlePartyMembersList:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     IsInForceAndBattleParty(pc), a1
		bra.s   RefreshMembersList

    ; End of function PopulateBattlePartyMembersList


; =============== S U B R O U T I N E =======================================

PopulateReservePartyMembersList:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     IsInForceAndReserveParty(pc), a1
		bra.s   RefreshMembersList

    ; End of function PopulateReservePartyMembersList


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has joined -> CCR zero-bit cleared if true

IsInForce:
		movem.l d1,-(sp)
		move.l  ((FORCE_MEMBER_FLAGS-$1000000)).w,d1
		btst    d0,d1
		movem.l (sp)+,d1
		rts

    ; End of function IsInForce


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has joined and is in battle party
; 
;     Out: D1 = 0 if not in battle party, 1 otherwise
;          CCR zero-bit set if member has not joined, cleared otherwise

IsInForceAndBattleParty:
		
		bsr.s   IsInForce       
		beq.s   @Return         ; return if member has not joined
		bsr.s   IsInBattleParty 
@Return:
		rts

    ; End of function IsInForceAndBattleParty


; =============== S U B R O U T I N E =======================================

; Check if force member D0 is in battle party -> D1 = 0 if false, 1 if true

IsInBattleParty:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
@Loop:
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)
		beq.s   @Break
		cmp.b   (a0)+,d0
		bne.s   @Next
		moveq   #1,d1
		bra.s   @Break
@Next:
		dbf     d1,@Loop

		clr.w   d1
@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function IsInBattleParty


; =============== S U B R O U T I N E =======================================

IsInForceAndReserveParty:
		
		bsr.s   IsInForce       
		beq.s   @Return
		bsr.s   IsInBattleParty 
		eori    #4,ccr
@Return:
		rts

    ; End of function IsInForceAndReserveParty


; =============== S U B R O U T I N E =======================================

sub_22100:
		movem.l d0,-(sp)
		bsr.w   FindCombatantEntry
		movem.l (sp)+,d0
		rts

    ; End of function sub_22100


; =============== S U B R O U T I N E =======================================

; Add force member D0 to battle party

JoinBattleParty:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
@FindEmptyBattleSlot_Loop:
		
		cmp.b   (a0),d0
		beq.s   @Break
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)
		bne.s   @Next
		move.b  d0,(a0)
		bsr.s   SortBattlePartyMembers
		bra.s   @Break
@Next:
		addq.l  #1,a0
		dbf     d1,@FindEmptyBattleSlot_Loop

@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function JoinBattleParty


; =============== S U B R O U T I N E =======================================

; Remove force member D0 from battle party

LeaveBattleParty:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
@Loop:
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)
		beq.s   @Break
		cmp.b   (a0),d0
		bne.s   @Next
		st      (a0)
		bsr.s   SortBattlePartyMembers
		bra.s   @Break
@Next:
		addq.l  #1,a0
		dbf     d1,@Loop

@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function LeaveBattleParty


; =============== S U B R O U T I N E =======================================

; Get first empty slot in battle party -> D2

GetEmptyBattlePartySlot:
		
		movem.l d1/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		clr.w   d2
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d1
@Loop:
		cmpi.b  #EMPTY_BATTLE_PARTY_SLOT,(a0)+
		beq.s   @Break
		addq.w  #1,d2
		dbf     d1,@Loop

@Break:
		movem.l (sp)+,d1/a0
		rts

    ; End of function GetEmptyBattlePartySlot


; =============== S U B R O U T I N E =======================================

SortBattlePartyMembers:
		
		movem.l d0-d3/a0,-(sp)
		lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a0
		moveq   #BATTLE_PARTY_SLOTS_COUNTER,d0
loc_22180:
		ble.s   loc_221A8
		move.w  d0,d1
loc_22184:
		subq.w  #1,d1
		blt.s   loc_221A4
		move.b  (a0,d0.w),d2
		cmp.b   (a0,d1.w),d2
		bcc.s   loc_221A2
		move.b  (a0,d0.w),d2
		move.b  (a0,d1.w),d3
		move.b  d3,(a0,d0.w)
		move.b  d2,(a0,d1.w)
loc_221A2:
		bra.s   loc_22184
loc_221A4:
		subq.w  #1,d0
		bra.s   loc_22180
loc_221A8:
		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function SortBattlePartyMembers


; =============== S U B R O U T I N E =======================================

; Add character D0 to force (if not already)     

JoinForce:
		movem.l d1-d2,-(sp)
		bsr.s   dup_IsInForce   
		bne.s   loc_221CE
		move.l  ((FORCE_MEMBER_FLAGS-$1000000)).w,d1
		bset    d0,d1
		move.l  d1,((FORCE_MEMBER_FLAGS-$1000000)).w
		bsr.w   GetEmptyBattlePartySlot
		cmpi.w  #BATTLE_PARTY_SLOTS_NUMBER,d2
		bge.s   loc_221CE
		bsr.w   JoinBattleParty 
loc_221CE:
		movem.l (sp)+,d1-d2
		rts

    ; End of function JoinForce


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has joined (duplicate)

dup_IsInForce:
		
		movem.l d1,-(sp)
		move.l  ((FORCE_MEMBER_FLAGS-$1000000)).w,d1
		btst    d0,d1
		movem.l (sp)+,d1
		rts

    ; End of function dup_IsInForce


; =============== S U B R O U T I N E =======================================

RegenerateHP:
		movem.l d0-d2/a0,-(sp)
		moveq   #COMBATANT_ENTRIES_COUNTER,d2
@Loop:
		move.b  d2,d0
		bsr.w   alt_GetEntity   
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   @Skip           ; skip if combatant entry is unpopulated
		jsr     j_GetClass
		bsr.w   GetClassEntryAddress
		btst    #CLASS_PROPERTY_HP_REGEN_TOGGLE,CLASSDEF_OFFSET_PROPERTIES(a0)
		beq.s   @Skip           ; skip if class is not set to regenerate HP
		jsr     j_GetMaxHP
		asr.w   #2,d1           ; D1 = max HP divided by 4
		jsr     j_IncreaseCurrentHP
@Skip:
		dbf     d2,@Loop

		movem.l (sp)+,d0-d2/a0
		rts

    ; End of function RegenerateHP


; =============== S U B R O U T I N E =======================================

RefillWholeForceHp:
		
		move.w  d0,-(sp)
		moveq   #FORCE_MEMBERS_COUNTER,d0
@Loop:
		jsr     j_RefillHP
		dbf     d0,@Loop
                
		move.w  (sp)+,d0
		rts

    ; End of function RefillWholeForceHp


; =============== S U B R O U T I N E =======================================

SetForceLeaderStatsInBattleTestMode:
		
		movem.l d0-d1/a0,-(sp)
		btst    #6,((byte_FF9C52-$1000000)).w
		bne.s   @Skip
		clr.w   d0
		move.w  #2000,d1
		jsr     j_SetMaxHP
		jsr     j_RefillHP
		move.w  #98,d1
		jsr     j_SetMaxMP
		jsr     j_RefillMP
		jsr     j_SetBaseAgility
		jsr     j_SetBaseMove
		jsr     j_LoadCombatantData
		jsr     j_GetEntityItemsAddress
		move.b  #ITEM_KINDAN_NOHAKO,2(a0)
		jsr     j_GetCharacterSpellsAddress
		addq.l  #1,a0
		move.b  #SPELL_BLAZE|LV_4,(a0)+
		move.b  #SPELL_FREEZE|LV_4,(a0)+
		move.b  #SPELL_BOLT|LV_4,(a0)+
@Skip:
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function SetForceLeaderStatsInBattleTestMode


; =============== S U B R O U T I N E =======================================

; Get combatant D0 entity index -> D1 if they exist, else D1 = -1

GetEntity:
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  (a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetEntity


; =============== S U B R O U T I N E =======================================

; Get combatant D0 X -> D1 if they exist, else D1 = -1

GetCombatantX:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_X(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCombatantX


; =============== S U B R O U T I N E =======================================

; Get combatant D0 Y -> D1 if they exist, else D1 = -1

GetCombatantY:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_Y(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCombatantY


; =============== S U B R O U T I N E =======================================

; Get combatant D0 modified attack -> D1 if they exist, else D1 = -1

GetModifiedAttack:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_ATTACK(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedAttack


; =============== S U B R O U T I N E =======================================

; Get combatant D0 modified defense -> D1 if they exist, else D1 = -1

GetModifiedDefense:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_DEFENSE(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedDefense


; =============== S U B R O U T I N E =======================================

; Get combatant D0 modified agility -> D1 if they exist, else D1 = -1

GetModifiedAgility:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_AGILITY(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedAgility


; =============== S U B R O U T I N E =======================================

; Get combatant D0 modified move -> D1 if they exist, else D1 = -1

GetModifiedMove:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_MOVE(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedMove


; =============== S U B R O U T I N E =======================================

; Get combatant D0 modified critical -> D1 if they exist, else D1 = -1

GetModifiedCritical:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_CRITICAL(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedCritical


; =============== S U B R O U T I N E =======================================

; Get combatant D0 modified double attack mode -> D1 if they exist, else D1 = -1

GetModifiedDoubleAttackMode:
		
		movem.l d0/d2/a0,-(sp)
		move.w  #-1,d1
		bsr.w   GetCombatantEntryAddress
		beq.s   @Skip           ; skip if combatant slot is empty
		move.b  COMBATANT_OFFSET_MODIFIED_DOUBLE_ATTACK_MODE(a0),d1
		ext.w   d1
@Skip:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetModifiedDoubleAttackMode


; =============== S U B R O U T I N E =======================================

; Get combatant D0 position X,Y -> D2,D1

GetCombatantPosition:
		
		jsr     j_GetCombatantX
		move.w  d1,d2
		jsr     j_GetCombatantY
		rts

    ; End of function GetCombatantPosition


; =============== S U B R O U T I N E =======================================

; Get force member's status effect counter D1 for combatant D0 -> D2

GetStatusEffectCounter:
		
		exg     d1,d2
		bsr.w   GetStatusEffectsForCombatant
		exg     d1,d2
		lsr.w   d1,d2
		andi.w  #STATUSEFFECT_MASK_COUNTER,d2
		rts

    ; End of function GetStatusEffectCounter


; =============== S U B R O U T I N E =======================================

; Get force member D0 class index -> D1

GetClass:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_CLASS(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetClass


; =============== S U B R O U T I N E =======================================

; Get force member D0 level -> D1

GetLevel:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_LEVEL(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetLevel


; =============== S U B R O U T I N E =======================================

; Get force member D0 base attack -> D1

GetBaseAttack:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_ATTACK(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseAttack


; =============== S U B R O U T I N E =======================================

; Get force member D0 base defense -> D1

GetBaseDefense:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_DEFENSE(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseDefense


; =============== S U B R O U T I N E =======================================

; Get force member D0 base agility -> D1

GetBaseAgility:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_AGILITY(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseAgility


; =============== S U B R O U T I N E =======================================

; Get force member D0 base move -> D1

GetBaseMove:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_MOVE(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseMove


; =============== S U B R O U T I N E =======================================

; Get force member D0 base critical -> D1

GetBaseCritical:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_BASE_CRITICAL(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetBaseCritical


; =============== S U B R O U T I N E =======================================

; Get force member D0 experience -> D1

GetExperience:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_EXPERIENCE(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetExperience


; =============== S U B R O U T I N E =======================================

; Get force member D0 max HP -> D1

GetMaxHP:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  FORCE_OFFSET_MAXIMUM_HP(a0),d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetMaxHP


; =============== S U B R O U T I N E =======================================

; Get force member D0 current HP -> D1

GetCurrentHP:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  FORCE_OFFSET_CURRENT_HP(a0),d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCurrentHP


; =============== S U B R O U T I N E =======================================

; Get force member D0 max MP -> D1

GetMaxMP:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_MAXIMUM_MP(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetMaxMP


; =============== S U B R O U T I N E =======================================

; Get force member D0 current MP -> D1

GetCurrentMP:
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  FORCE_OFFSET_CURRENT_MP(a0),d1
		ext.w   d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetCurrentMP


; =============== S U B R O U T I N E =======================================

; Get force member D0 status effects -> D1

GetStatusEffects:
		
		movem.l d0/d2/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  FORCE_OFFSET_STATUS_EFFECTS(a0),d1
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function GetStatusEffects


; =============== S U B R O U T I N E =======================================

; Get force member's class index for combatant D0 -> D1

GetClassForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetClass        
		move.w  (sp)+,d0
		rts

    ; End of function GetClassForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's level for combatant D0 -> D1

GetLevelForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetLevel        
		move.w  (sp)+,d0
		rts

    ; End of function GetLevelForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base attack for combatant D0 -> D1

GetBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseAttack   
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base defense for combatant D0 -> D1

GetBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseDefense  
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base agility for combatant D0 -> D1

GetBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseAgility  
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base move for combatant D0 -> D1

GetBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseMove     
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's base critical for combatant D0 -> D1

GetBaseCriticalForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetBaseCritical 
		move.w  (sp)+,d0
		rts

    ; End of function GetBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's experience for combatant D0 -> D1

GetExperienceForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetExperience   
		move.w  (sp)+,d0
		rts

    ; End of function GetExperienceForCombatant


; =============== S U B R O U T I N E =======================================

; Get force member's status effects for combatant D0 -> D1

GetStatusEffectsForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetStatusEffects
		move.w  (sp)+,d0
		rts

    ; End of function GetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's max HP for combatant D0 -> D1

GetMaxHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetMaxHP        
		move.w  (sp)+,d0
		rts

    ; End of function GetMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's current HP for combatant D0 -> D1

GetCurrentHpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetCurrentHP    
		move.w  (sp)+,d0
		rts

    ; End of function GetCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's max MP from combatant D0 -> D1

GetMaxMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetMaxMP        
		move.w  (sp)+,d0
		rts

    ; End of function GetMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's current MP for combatant D0 -> D1

GetCurrentMpForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetCurrentMP    
		move.w  (sp)+,d0
		rts

    ; End of function GetCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity D0 stats address -> A0

GetEntityStatsAddress:
		
		movem.l d0/d2,-(sp)
		bsr.w   GetEntityEntryAddress
		movem.l (sp)+,d0/d2
		rts

    ; End of function GetEntityStatsAddress


; =============== S U B R O U T I N E =======================================

; Get entity D0 items address -> A0

GetEntityItemsAddress:
		
		movem.l d0/d2,-(sp)
		bsr.w   GetEntityEntryAddress
		adda.w  #FORCE_OFFSET_ITEMS,a0
		movem.l (sp)+,d0/d2
		rts

    ; End of function GetEntityItemsAddress


; =============== S U B R O U T I N E =======================================

; Get entity D0 spells address -> A0

GetCharacterSpellsAddress:
		
		movem.l d0/d2,-(sp)
		bsr.w   GetEntityEntryAddress
		adda.w  #FORCE_OFFSET_SPELLS,a0
		movem.l (sp)+,d0/d2
		rts

    ; End of function GetCharacterSpellsAddress


; =============== S U B R O U T I N E =======================================

; Get entity stats address for combatant D0 -> A0

GetEntityStatsAddressForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetEntityStatsAddress
		move.w  (sp)+,d0
		rts

    ; End of function GetEntityStatsAddressForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity's items address for combatant D0 -> A0

GetEntityItemsAddressForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetEntityItemsAddress
		move.w  (sp)+,d0
		rts

    ; End of function GetEntityItemsAddressForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity spells address for combatant D0 -> A0

GetEntitySpellsAddressForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetCharacterSpellsAddress
		move.w  (sp)+,d0
		rts

    ; End of function GetEntitySpellsAddressForCombatant


; =============== S U B R O U T I N E =======================================

; Get combatant D0 entity index -> D0 (alternate implementation)

alt_GetEntity:
		
		move.l  a0,-(sp)
		andi.w  #$FF,d0
		asl.w   #4,d0
		lea     ((COMBATANT_DATA-$1000000)).w,a0
		move.b  (a0,d0.w),d0
		movea.l (sp)+,a0
		rts

    ; End of function alt_GetEntity


; =============== S U B R O U T I N E =======================================

; Find force member D0 combatant entry address -> A0

FindCombatantEntry:
		
		movem.l d1/a0,-(sp)
		move.b  d0,d1
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
		bsr.s   GetCombatantEntryAddress
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
@Loop:
		cmp.b   (a0),d1
		suba.w  #COMBATANT_ENTRY_SIZE,a0
		dbeq    d0,@Loop
		movem.l (sp)+,d1/a0
		rts

    ; End of function FindCombatantEntry


; =============== S U B R O U T I N E =======================================

; Get combatant D0 entry address -> A0 (CCR zero-bit set if slot is empty)

GetCombatantEntryAddress:
		
		andi.w  #$FF,d0
		asl.w   #4,d0
		lea     ((COMBATANT_DATA-$1000000)).w,a0
		adda.w  d0,a0
		cmpi.b  #EMPTY_COMBATANT_SLOT,(a0)
		rts

    ; End of function GetCombatantEntryAddress


; =============== S U B R O U T I N E =======================================

; Get entity (force member or enemy) D0 data entry address -> A0

GetEntityEntryAddress:
		
		tst.b   d0
		bpl.s   @ForceMember
		andi.b  #FORCEMEMBERENTRY_MASK_INDEX_0,d0
		lea     ((ENEMY_DATA-$1000000)).w,a0
		bra.s   @Continue
@ForceMember:
		lea     ((FORCE_MEMBERS_DATA-$1000000)).w,a0
@Continue:
		andi.w  #$FF,d0
		mulu.w  #FORCE_ENTRY_SIZE,d0
		adda.w  d0,a0
		rts

    ; End of function GetEntityEntryAddress


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 is an enemy -> CCR negative-bit set if true

IsEnemy:
		movem.w d1,-(sp)
		bsr.w   GetEntity       
		tst.b   d1
		movem.w (sp)+,d1
		rts

    ; End of function IsEnemy


; =============== S U B R O U T I N E =======================================

; Get combatant D0 displayed name address (load class name if enemy)
; 
; Out: A0 = name address for combatant
;      D1 = name length for combatant

GetDisplayedNameAddress:
		
		movem.l d0/d2/a1,-(sp)
		move.w  #FORCE_NAME_LENGTH,d1
		bsr.w   GetEntityStatsAddressForCombatant
		tst.b   (a0)
		bne.s   loc_2264E
		bsr.w   GetClassForCombatant
		jsr     j_GetClassNameAddress
		move.w  d1,d2
		lea     ((DISPLAYED_EMEMY_NAME-$1000000)).w,a1
		subq.w  #1,d2
loc_22642:
		move.b  (a0)+,(a1)+
		dbf     d2,loc_22642

		clr.b   (a1)
		lea     ((DISPLAYED_EMEMY_NAME-$1000000)).w,a0
loc_2264E:
		movem.l (sp)+,d0/d2/a1
		rts

    ; End of function GetDisplayedNameAddress


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 entity index

SetEntityIndex:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetEntityIndex


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 X

SetCombatantX:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_X(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCombatantX


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 Y

SetCombatantY:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_Y(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCombatantY


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified attack

SetModifiedAttack:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_ATTACK(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedAttack


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified defense

SetModifiedDefense:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_DEFENSE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedDefense


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified agility

SetModifiedAgility:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_AGILITY(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedAgility


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified move

SetModifiedMove:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_MOVE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedMove


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified critical

SetModifiedCritical:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_CRITICAL(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedCritical


; =============== S U B R O U T I N E =======================================

; Set D1 -> combatant D0 modified double attack mode

SetModifiedDoubleAttackMode:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetCombatantEntryAddress
		move.b  d1,COMBATANT_OFFSET_MODIFIED_DOUBLE_ATTACK_MODE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetModifiedDoubleAttackMode


; =============== S U B R O U T I N E =======================================

; Set Y = D1, X = D2 -> combatant D0 position

SetCombatantPosition:
		
		move.w  d1,-(sp)
		jsr     j_SetCombatantY
		move.w  d2,d1
		jsr     j_SetCombatantX
		move.w  (sp)+,d1
		rts

    ; End of function SetCombatantPosition


; =============== S U B R O U T I N E =======================================

; Set D2 -> force member's status effect counter D1 for combatant D0

SetStatusEffectCounter:
		
		movem.l d2-d3,-(sp)
		move.w  d1,d3
		jsr     j_GetStatusEffectsForCombatant
		ror.w   d3,d1
		andi.w  #3,d2
		andi.w  #$FFFC,d1
		or.w    d2,d1
		rol.w   d3,d1
		bsr.w   SetStatusEffectsForCombatant
		movem.l (sp)+,d2-d3
		rts

    ; End of function SetStatusEffectCounter


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 class index

SetClass:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_CLASS(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetClass


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 level

SetLevel:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_LEVEL(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetLevel


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base attack

SetBaseAttack:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_ATTACK(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseAttack


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base defense

SetBaseDefense:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_DEFENSE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseDefense


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base agility

SetBaseAgility:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_AGILITY(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseAgility


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base move

SetBaseMove:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_MOVE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseMove


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 base critical

SetBaseCritical:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_BASE_CRITICAL(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetBaseCritical


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 experience

SetExperience:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_EXPERIENCE(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetExperience


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 max HP

SetMaxHP:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  d1,FORCE_OFFSET_MAXIMUM_HP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetMaxHP


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 current HP

SetCurrentHP:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  d1,FORCE_OFFSET_CURRENT_HP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCurrentHP


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 max MP

SetMaxMP:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_MAXIMUM_MP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetMaxMP


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 current MP

SetCurrentMP:
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.b  d1,FORCE_OFFSET_CURRENT_MP(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetCurrentMP


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member D0 status effects

SetStatusEffects:
		
		movem.l d0/a0,-(sp)
		bsr.w   GetEntityEntryAddress
		move.w  d1,FORCE_OFFSET_STATUS_EFFECTS(a0)
		movem.l (sp)+,d0/a0
		rts

    ; End of function SetStatusEffects


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's class index for combatant D0

SetClassForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetClass        
		move.w  (sp)+,d0
		rts

    ; End of function SetClassForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's level for combatant D0

SetLevelForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetLevel        
		move.w  (sp)+,d0
		rts

    ; End of function SetLevelForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base attack for combatant D0

SetBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseAttack   
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base defense for combatant D0

SetBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseDefense  
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base agility for combatant D0

SetBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseAgility  
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base move for combatant D0

SetBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseMove     
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's base critical for combatant D0

SetBaseCriticalForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetBaseCritical 
		move.w  (sp)+,d0
		rts

    ; End of function SetBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's experience for combatant D0

SetExperienceForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetExperience   
		move.w  (sp)+,d0
		rts

    ; End of function SetExperienceForCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's max HP for combatant D0

SetMaxHPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetMaxHP        
		move.w  (sp)+,d0
		rts

    ; End of function SetMaxHPforCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's current HP for combatant D0

SetCurrentHPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetCurrentHP    
		move.w  (sp)+,d0
		rts

    ; End of function SetCurrentHPforCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's max MP for combatant D0

SetMaxMPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetMaxMP        
		move.w  (sp)+,d0
		rts

    ; End of function SetMaxMPforCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's current MP for combatant D0

SetCurrentMPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetCurrentMP    
		move.w  (sp)+,d0
		rts

    ; End of function SetCurrentMPforCombatant


; =============== S U B R O U T I N E =======================================

; Set D1 -> force member's status effects for combatant D0

SetStatusEffectsForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   SetStatusEffects
		move.w  (sp)+,d0
		rts

    ; End of function SetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

; Load force member name from A0 into stats table

LoadForceMemberName:
		
		movem.l d0/a1,-(sp)
		movea.l a0,a1
		jsr     j_GetEntityStatsAddress
		moveq   #FORCE_MEMBER_NAME_COUNTER,d0
@Loop:
		move.b  (a1)+,(a0)+
		dbf     d0,@Loop

		movem.l (sp)+,d0/a1
		rts

    ; End of function LoadForceMemberName


; =============== S U B R O U T I N E =======================================

; Add D1 to combatant D0 modified attack, capping at 99

IncreaseModifiedAttack:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedAttack
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_228FC
		clr.w   d1
		bra.s   loc_22906
loc_228FC:
		cmpi.w  #STATCAP_ATT,d1
		ble.s   loc_22906
		move.w  #STATCAP_ATT,d1
loc_22906:
		bsr.w   SetModifiedAttack
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedAttack


; =============== S U B R O U T I N E =======================================

; Add D1 to combatant D0 modified defense, capping at 99

IncreaseModifiedDefense:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedDefense
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22926
		clr.w   d1
		bra.s   loc_22930
loc_22926:
		cmpi.w  #STATCAP_DEF,d1
		ble.s   loc_22930
		move.w  #STATCAP_DEF,d1
loc_22930:
		bsr.w   SetModifiedDefense
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedDefense


; =============== S U B R O U T I N E =======================================

; Add D1 to combatant D0 modified agility, capping at 99

IncreaseModifiedAgility:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedAgility
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22950
		clr.w   d1
		bra.s   loc_2295A
loc_22950:
		cmpi.w  #STATCAP_AGI,d1
		ble.s   loc_2295A
		move.w  #STATCAP_AGI,d1
loc_2295A:
		bsr.w   SetModifiedAgility
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedAgility


; =============== S U B R O U T I N E =======================================

; Add D1 to combatant D0 modified move, capping at 9

IncreaseModifiedMove:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedMove 
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_2297A
		clr.w   d1
		bra.s   loc_22984
loc_2297A:
		cmpi.w  #STATCAP_MOV,d1
		ble.s   loc_22984
		move.w  #STATCAP_MOV,d1
loc_22984:
		bsr.w   SetModifiedMove 
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedMove


; =============== S U B R O U T I N E =======================================

; Add D1 to combatant D0 modified critical, capping at 99

IncreaseModifiedCritical:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetModifiedCritical
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_229A4
		clr.w   d1
		bra.s   loc_229AE
loc_229A4:
		cmpi.w  #STATCAP_CRIT,d1
		ble.s   loc_229AE
		move.w  #STATCAP_CRIT,d1
loc_229AE:
		bsr.w   SetModifiedCritical
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseModifiedCritical


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 level, capping at 99

IncreaseLevel:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetLevel        
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_229CE
		clr.w   d1
		bra.s   loc_229D8
loc_229CE:
		cmpi.w  #STATCAP_LV,d1
		ble.s   loc_229D8
		move.w  #STATCAP_LV,d1
loc_229D8:
		bsr.w   SetLevel        
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseLevel


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 base attack, capping at 99

IncreaseBaseAttack:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseAttack   
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_229F8
		clr.w   d1
		bra.s   loc_22A02
loc_229F8:
		cmpi.w  #STATCAP_ATT,d1
		ble.s   loc_22A02
		move.w  #STATCAP_ATT,d1
loc_22A02:
		bsr.w   SetBaseAttack   
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseAttack


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 base defense, capping at 99

IncreaseBaseDefense:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseDefense  
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22A22
		clr.w   d1
		bra.s   loc_22A2C
loc_22A22:
		cmpi.w  #STATCAP_DEF,d1
		ble.s   loc_22A2C
		move.w  #STATCAP_DEF,d1
loc_22A2C:
		bsr.w   SetBaseDefense  
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseDefense


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 base agility, capping at 99

IncreaseBaseAgility:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseAgility  
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22A4C
		clr.w   d1
		bra.s   loc_22A56
loc_22A4C:
		cmpi.w  #STATCAP_AGI,d1
		ble.s   loc_22A56
		move.w  #STATCAP_AGI,d1
loc_22A56:
		bsr.w   SetBaseAgility  
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseAgility


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 base move, capping at 9

IncreaseBaseMove:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseMove     
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22A76
		clr.w   d1
		bra.s   loc_22A80
loc_22A76:
		cmpi.w  #STATCAP_MOV,d1
		ble.s   loc_22A80
		move.w  #STATCAP_MOV,d1
loc_22A80:
		bsr.w   SetBaseMove     
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseMove


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 base critical, capping at 99

IncreaseBaseCritical:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetBaseCritical 
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22AA0
		clr.w   d1
		bra.s   loc_22AAA
loc_22AA0:
		cmpi.w  #STATCAP_CRIT,d1
		ble.s   loc_22AAA
		move.w  #STATCAP_CRIT,d1
loc_22AAA:
		bsr.w   SetBaseCritical 
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseBaseCritical


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 max HP, capping at 99

IncreaseMaxHP:
		
		movem.l d0/d2,-(sp)
		move.w  d1,d2
		bsr.w   GetMaxHP        
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22AC8
		clr.w   d1
		bra.s   loc_22AD2
loc_22AC8:
		cmpi.w  #STATCAP_HP,d1
		ble.s   loc_22AD2
		move.w  #STATCAP_HP,d1
loc_22AD2:
		bsr.w   SetMaxHP        
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseMaxHP


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 current HP, capping at max HP

IncreaseCurrentHP:
		
		movem.l d2-d3,-(sp)
		move.w  d1,d2
		bsr.w   GetMaxHP        
		move.w  d1,d3
		bsr.w   GetCurrentHP    
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22AF6
		clr.w   d1
		bra.s   loc_22AFC
loc_22AF6:
		cmp.w   d3,d1
		ble.s   loc_22AFC
		move.w  d3,d1
loc_22AFC:
		bsr.w   SetCurrentHP    
		movem.l (sp)+,d2-d3
		rts

    ; End of function IncreaseCurrentHP


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 max MP, capping at 99

IncreaseMaxMP:
		
		movem.l d0/d2,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetMaxMP        
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22B1C
		clr.w   d1
		bra.s   loc_22B26
loc_22B1C:
		cmpi.w  #STATCAP_MP,d1
		ble.s   loc_22B26
		move.w  #STATCAP_MP,d1
loc_22B26:
		bsr.w   SetMaxMP        
		movem.l (sp)+,d0/d2
		rts

    ; End of function IncreaseMaxMP


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's level for combatant D0

IncreaseLevelForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseLevel   
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseLevelForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base attack for combatant D0

IncreaseBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseAttack
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base defense for combatant D0

IncreaseBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseDefense
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base agility for combatant D0

IncreaseBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseAgility
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base move for combatant D0

IncreaseBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseMove
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's base critical for combatant D0

IncreaseBaseCriticalForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseBaseCritical
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseBaseCriticalForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's experience for combatant D0

IncreaseExperienceForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseExperience
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseExperienceForCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's max HP for combatant D0

IncreaseMaxHPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseMaxHP   
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseMaxHPforCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's current HP for combatant D0

IncreaseCurrentHPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseCurrentHP
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseCurrentHPforCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's max MP for combatant D0

IncreaseMaxMPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseMaxMP   
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseMaxMPforCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member's current MP for combatant D0

IncreaseCurrentMPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IncreaseCurrentMP
		move.w  (sp)+,d0
		rts

    ; End of function IncreaseCurrentMPforCombatant


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 current MP, capping at max MP

IncreaseCurrentMP:
		
		movem.w d2-d3,-(sp)
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetCurrentMP    
		cmpi.w  #STATCAP_MP,d1
		bgt.s   loc_22BFA       ; skip if current MP > 99
		move.w  d1,-(sp)
		bsr.w   GetMaxMP        
		move.w  d1,d3
		move.w  (sp)+,d1
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22BF0
		clr.w   d1
		bra.s   loc_22BF6
loc_22BF0:
		cmp.w   d3,d1
		ble.s   loc_22BF6
		move.w  d3,d1
loc_22BF6:
		bsr.w   SetCurrentMP    
loc_22BFA:
		movem.w (sp)+,d2-d3
		rts

    ; End of function IncreaseCurrentMP


; =============== S U B R O U T I N E =======================================

; Add D1 to force member D0 experience, capping at 99 if at level cap

IncreaseExperience:
		
		movem.l d0/d2-d3,-(sp)
		moveq   #100,d3
		bsr.s   IsAtLevelCap    
		bcc.s   loc_22C0C
		moveq   #99,d3
loc_22C0C:
		move.b  d1,d2
		ext.w   d2
		bsr.w   GetExperience   
		add.w   d2,d1
		tst.w   d1
		bge.s   loc_22C1E
		clr.w   d1
		bra.s   loc_22C24
loc_22C1E:
		cmp.w   d3,d1
		ble.s   loc_22C24
		move.w  d3,d1
loc_22C24:
		bsr.w   SetExperience   
		movem.l (sp)+,d0/d2-d3
		rts

    ; End of function IncreaseExperience


; =============== S U B R O U T I N E =======================================

; Check if force member D0 has reached the level cap -> CCR carry-bit set if true

IsAtLevelCap:
		movem.l d1-d2,-(sp)
		tst.b   d0
		blt.s   loc_22C50
		moveq   #FORCE_LEVEL_CAP_UNPROMOTED,d2
		jsr     j_GetClass
		cmpi.w  #PROMOTED_CLASSES_START,d1
		bcs.s   loc_22C46
		moveq   #FORCE_LEVEL_CAP_PROMOTED,d2
loc_22C46:
		jsr     j_GetLevel
		cmp.w   d2,d1
		blt.s   loc_22C56
loc_22C50:
		ori     #1,ccr
		bra.s   loc_22C58
loc_22C56:
		tst.b   d0
loc_22C58:
		movem.l (sp)+,d1-d2
		rts

    ; End of function IsAtLevelCap


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified attack

DecreaseModifiedAttack:
		
		neg.b   d1
		bsr.w   IncreaseModifiedAttack
		rts

    ; End of function DecreaseModifiedAttack


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified defense

DecreaseModifiedDefense:
		
		neg.b   d1
		bsr.w   IncreaseModifiedDefense
		rts

    ; End of function DecreaseModifiedDefense


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified agility

DecreaseModifiedAgility:
		
		neg.b   d1
		bsr.w   IncreaseModifiedAgility
		rts

    ; End of function DecreaseModifiedAgility


; =============== S U B R O U T I N E =======================================

; Subtract D1 from combatant D0 modified move

DecreaseModifiedMove:
		
		neg.b   d1
		bsr.w   IncreaseModifiedMove
		rts

    ; End of function DecreaseModifiedMove


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 max HP

DecreaseMaxHP:
		
		neg.w   d1
		bsr.w   IncreaseMaxHP   
		rts

    ; End of function DecreaseMaxHP


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 max MP

DecreaseMaxMP:
		
		neg.b   d1
		bsr.w   IncreaseMaxMP   
		rts

    ; End of function DecreaseMaxMP


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base attack

DecreaseBaseAttack:
		
		neg.b   d1
		bsr.w   IncreaseBaseAttack
		rts

    ; End of function DecreaseBaseAttack


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base defense

DecreaseBaseDefense:
		
		neg.b   d1
		bsr.w   IncreaseBaseDefense
		rts

    ; End of function DecreaseBaseDefense


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base agility

DecreaseBaseAgility:
		
		neg.b   d1
		bsr.w   IncreaseBaseAgility
		rts

    ; End of function DecreaseBaseAgility


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 base move

DecreaseBaseMove:
		
		neg.b   d1
		bsr.w   IncreaseBaseMove
		rts

    ; End of function DecreaseBaseMove


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 current HP

DecreaseCurrentHP:
		
		neg.w   d1
		bsr.w   IncreaseCurrentHP
		rts

    ; End of function DecreaseCurrentHP


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member D0 current MP

DecreaseCurrentMP:
		
		neg.b   d1
		bsr.w   IncreaseCurrentMP
		rts

    ; End of function DecreaseCurrentMP


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's max HP for combatant D0

DecreaseMaxHPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseMaxHP   
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseMaxHPforCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's max MP for combatant D0

DecreaseMaxMPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseMaxMP   
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseMaxMPforCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base attack for combatant D0

DecreaseBaseAttackForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseAttack
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseAttackForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base defense for combatant D0

DecreaseBaseDefenseForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseDefense
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseDefenseForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base agility for combatant D0

DecreaseBaseAgilityForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseAgility
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseAgilityForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's base move for combatant D0

DecreaseBaseMoveForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseBaseMove
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseBaseMoveForCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's current HP for combatant D0

DecreaseCurrentHPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseCurrentHP
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseCurrentHPforCombatant


; =============== S U B R O U T I N E =======================================

; Subtract D1 from force member's current MP for combatant D0

DecreaseCurrentMPforCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   DecreaseCurrentMP
		move.w  (sp)+,d0
		rts

    ; End of function DecreaseCurrentMPforCombatant


; =============== S U B R O U T I N E =======================================

; Move item D1 to force member D0 first empty item slot if available
; 
; CCR: carry-bit set if empty item slot not found

GiveItem:
		movem.l d0-d1/a0,-(sp)
		andi.b  #ITEMENTRY_MASK_INDEX_AND_BROKEN_BIT,d1
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d0
loc_22D3E:
		cmpi.b  #EMPTY_ITEM_SLOT,(a0)
		bne.s   loc_22D48
		move.b  d1,(a0)
		bra.s   loc_22D52
loc_22D48:
		addq.l  #1,a0
		dbf     d0,loc_22D3E

		ori     #1,ccr
loc_22D52:
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function GiveItem


; =============== S U B R O U T I N E =======================================

; Move item D1 to force member's first empty item slot for combatant D0 if available
; 
; CCR: carry-bit set if empty item slot not found

GiveItemForCombatant:
		
		movem.w d0-d2,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		move.b  d1,d0
		move.b  d2,d1
		bsr.s   GiveItem        
		movem.w (sp)+,d0-d2
		rts

    ; End of function GiveItemForCombatant


; =============== S U B R O U T I N E =======================================

; Empty force member D0 item slot D1 and rotate remaining down

RemoveItem:
		movem.l d0-d1/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		andi.w  #$FF,d1
loc_22D7E:
		cmpi.w  #3,d1
		bcc.s   loc_22D8E
		move.b  1(a0,d1.w),(a0,d1.w)
		addq.w  #1,d1
		bra.s   loc_22D7E
loc_22D8E:
		move.b  #EMPTY_ITEM_SLOT,3(a0)
		bsr.w   LoadCombatantDataForForceMember
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function RemoveItem


; =============== S U B R O U T I N E =======================================

; Empty force member's item slot D1 for combatant D0 and rotate remaining down

RemoveItemForCombatant:
		
		movem.w d0-d2,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		move.b  d1,d0
		move.b  d2,d1
		bsr.s   RemoveItem      
		movem.w (sp)+,d0-d2
		rts

    ; End of function RemoveItemForCombatant


; =============== S U B R O U T I N E =======================================

; Count force member D0 empty item slots -> D1
; 
;       CCR carry-bit set if all slots are occupied

CountOccupiedItemSlots:
		
		movem.l d0/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		clr.w   d1
		moveq   #ITEM_SLOTS_COUNTER,d0
@Loop:
		cmpi.b  #EMPTY_ITEM_SLOT,(a0)+
		bne.s   @IncrementOccupiedItemSlotsCounter
		tst.w   d0
		bra.s   @Break
@IncrementOccupiedItemSlotsCounter:
		
		addq.w  #1,d1
		dbf     d0,@Loop

		ori     #1,ccr
@Break:
		movem.l (sp)+,d0/a0
		rts

    ; End of function CountOccupiedItemSlots


; =============== S U B R O U T I N E =======================================

; Count force member's empty item slots for combatant D0 -> D1

CountOccupiedItemSlotsForCombatant:
		
		movem.w d0,-(sp)
		jsr     j_GetEntity
		move.b  d1,d0
		bsr.s   CountOccupiedItemSlots
		movem.w (sp)+,d0
		rts

    ; End of function CountOccupiedItemSlotsForCombatant


; =============== S U B R O U T I N E =======================================

; Break force member D0 item in slot D1

BreakItem:
		movem.l d1/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		andi.w  #$FF,d1
		bset    #ITEMENTRY_BIT_BROKEN,(a0,d1.w)
		movem.l (sp)+,d1/a0
		rts

    ; End of function BreakItem


; =============== S U B R O U T I N E =======================================

; Break force member's item in slot D1 for combatant D0

BreakItemForCombatant:
		
		movem.w d0-d2,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		move.b  d1,d0
		move.b  d2,d1
		bsr.s   BreakItem       
		movem.w (sp)+,d0-d2
		rts

    ; End of function BreakItemForCombatant


; =============== S U B R O U T I N E =======================================

; Get item and slot indexes of a given type currently equipped by combatant
; 
;     In: D0 = force member index
;         D1 = item type mask
; 
;     Out: D2 = item index
;          D3 = item slot index
;          CCR carry-bit set if no equipped item found

GetEquippedItemForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetEquippedItem 
		movem.w (sp)+,d0
		rts

    ; End of function GetEquippedItemForCombatant


; =============== S U B R O U T I N E =======================================

; Equip force member with item in slot D2 for combatant D0

EquipItemForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   EquipItem       
		movem.w (sp)+,d0
		rts

    ; End of function EquipItemForCombatant


; =============== S U B R O U T I N E =======================================

; Load table of equippable items for combatant D0

LoadEquippableItemsForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   LoadEquippableItems
		movem.w (sp)+,d0
		rts

    ; End of function LoadEquippableItemsForCombatant


; =============== S U B R O U T I N E =======================================

; Check if item D2 type D1 can be equipped for combatant D0

IsItemEquippableForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   IsItemEquippable
		movem.w (sp)+,d0
		rts

    ; End of function IsItemEquippableForCombatant


; =============== S U B R O U T I N E =======================================

; Check if force member is allowed to unequip for combatant D0

GetItemsCurseSettingsForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.w   GetItemsCurseSettings
		movem.w (sp)+,d0
		rts

    ; End of function GetItemsCurseSettingsForCombatant


; =============== S U B R O U T I N E =======================================

; Get address of item D1 entry -> A1

GetItemEntryAddress:
		
		move.w  d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		asl.w   #4,d1
		movea.l (p_ItemData).l,a1
		adda.w  d1,a1
		move.w  (sp)+,d1
		rts

    ; End of function GetItemEntryAddress


; =============== S U B R O U T I N E =======================================

; Get item D1 word-sized type flags -> D2

GetItemType:
		move.l  a1,-(sp)
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		bne.s   @OccupiedItemSlot
		clr.w   d2
		bra.s   @Continue
@OccupiedItemSlot:
		
		bsr.s   GetItemEntryAddress
		move.w  ITEMDEF_OFFSET_TYPE(a1),d2
@Continue:
		movea.l (sp)+,a1
		rts

    ; End of function GetItemType


; =============== S U B R O U T I N E =======================================

; Get price of item D1 -> D2

GetItemPrice:
		move.l  a1,-(sp)
		bsr.s   GetItemEntryAddress
		moveq   #0,d2
		move.w  ITEMDEF_OFFSET_PRICE(a1),d2
		movea.l (sp)+,a1
		rts

    ; End of function GetItemPrice


; =============== S U B R O U T I N E =======================================

; Out: d2.w, d3.w

GetEquippedWeaponIndex:
		
		move.w  ((word_FFCBAC-$1000000)).w,d2
		move.w  ((EQUIPPED_WEAPON_INDEX-$1000000)).w,d3
		rts

    ; End of function GetEquippedWeaponIndex


; =============== S U B R O U T I N E =======================================

; Get item and slot indexes of a given type currently equipped by entity
; 
;     In: D0 = entity index
;         D1 = item type mask
; 
;     Out: D2 = item entry
;          D3 = item slot index
;          CCR carry-bit set if no equipped item found

GetEquippedItem:
		
		movem.l d1/d4/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		move.w  d1,d4
		move.w  #ITEM_SLOTS_COUNTER,d3
@Loop:
		move.b  (a0,d3.w),d1
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		beq.s   @Next
		btst    #ITEMENTRY_BIT_EQUIPPED,d1
		beq.s   @Next
		bsr.s   GetItemType     
		and.w   d4,d2
		bne.s   @GetItemIndex
@Next:
		dbf     d3,@Loop

		move.w  d3,d2
		ori     #1,ccr
		bra.s   @Continue
@GetItemIndex:
		
		move.b  d1,d2
		andi.w  #ITEMENTRY_MASK_INDEX,d2
@Continue:
		movem.l (sp)+,d1/d4/a0
		rts

    ; End of function GetEquippedItem


; =============== S U B R O U T I N E =======================================

; Equip force member D0 with item type D1 in slot D2, unequip old item

EquipItem:
		movem.l d0-d4/a0,-(sp)
		clr.w   d4
		move.b  d2,d4
		jsr     j_GetEntityItemsAddress
		bsr.w   GetEquippedItem 
		bcs.s   loc_22F18
		andi.b  #ITEMENTRY_MASK_INDEX_AND_BROKEN_BIT,(a0,d3.w)
						; unequip old item
loc_22F18:
		cmpi.w  #ITEM_SLOTS_NUMBER,d4
		bcc.s   loc_22F24
		ori.b   #ITEMENTRY_MASK_EQUIPPED_BIT,(a0,d4.w)
loc_22F24:
		bsr.w   FindCombatantEntry
		bne.s   loc_22F30
		jsr     j_LoadCombatantData
loc_22F30:
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function EquipItem


; =============== S U B R O U T I N E =======================================

; Load table of items equippable by force member D0

LoadEquippableItems:
		
		movem.l d0-d4/a0-a1,-(sp)
		lea     ((byte_FFA8C2-$1000000)).w,a1
		moveq   #-1,d3
		move.l  d3,(a1)+
		move.l  d3,(a1)+
		move.l  d3,(a1)+
		move.l  d3,(a1)+
		jsr     j_GetEntityItemsAddress
		clr.w   d3
		lea     ((byte_FFA8C2-$1000000)).w,a1
		clr.w   d4
loc_22F56:
		move.b  (a0)+,d2
		cmpi.b  #-1,d2
		beq.s   loc_22F70
		bsr.s   IsItemEquippable
		bcs.s   loc_22F68
		addq.w  #1,d3
		move.w  d4,(a1)+
		move.w  d2,(a1)+
loc_22F68:
		addq.w  #1,d4
		cmpi.w  #ITEM_SLOTS_NUMBER,d4
		bcs.s   loc_22F56
loc_22F70:
		move.w  d3,((TABLE_AT_FFA8C0-$1000000)).w
		movem.l (sp)+,d0-d4/a0-a1
		rts

    ; End of function LoadEquippableItems


; =============== S U B R O U T I N E =======================================

; Check if item D2 type D1 can be equipped by force member D0
; 
;       Out: CCR carry-bit set if false

IsItemEquippable:
		
		movem.l d1-d3/a1,-(sp)
		exg     d1,d2
		bsr.w   GetItemEntryAddress
		move.w  ITEMDEF_OFFSET_TYPE(a1),d3
		and.w   d2,d3
		beq.s   loc_22FA0
		jsr     j_GetClass
		move.l  (a1),d3         ; D3 = item equip flags
		btst    d1,d3
		beq.s   loc_22F9E       ; branch if item cannot be equipped
loc_22F98:
		movem.l (sp)+,d1-d3/a1
		rts
loc_22F9E:
		tst.l   (a1)
loc_22FA0:
		ori     #1,ccr
		bra.s   loc_22F98

    ; End of function IsItemEquippable


; =============== S U B R O U T I N E =======================================

; Get curse settings for all items equipped by entity D0 -> D1

GetItemsCurseSettings:
		
		movem.w d2-d4,-(sp)
		clr.w   d4
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_CURSE,d1
		beq.s   @Skip           ; skip if entity is not cursed
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		bsr.w   GetItemCurseSetting
		move.w  #ITEMTYPE_MASK_RING,d1
		bsr.w   GetItemCurseSetting
		tst.w   d4
		bne.s   @Skip
		bset    #7,d4
@Skip:
		move.w  d4,d1
		movem.w (sp)+,d2-d4
		rts

    ; End of function GetItemsCurseSettings


; =============== S U B R O U T I N E =======================================

; Get curse setting of item type D1 currently equipped by entity D0 -> D4

GetItemCurseSetting:
		
		bsr.w   GetEquippedItem 
		bcs.s   @Return         ; return if item of given type is not equipped
		move.b  d2,d1
		bsr.w   GetItemType     
		btst    #ITEMTYPE_BIT_CURSED,d2
		beq.s   @Return         ; return if item is not cursed
		andi.w  #ITEMTYPE_MASK_CURSE_SETTING,d2
		bset    d2,d4           ; bit 0 set = chance to paralyze, bit 1 set = chance to inflict damage back to attacker
@Return:
		rts

    ; End of function GetItemCurseSetting


; =============== S U B R O U T I N E =======================================

; Find enemy combatant D0 item index to drop -> D1 if it exists, else D1 = $FFFF

FindItemToDrop:
		
		movem.l d0/d2-d3/a0-a1,-(sp)
		bsr.w   alt_GetEntity   
		cmpi.b  #EMPTY_COMBATANT_SLOT,d0
		beq.s   @Skip           ; skip if combatant entry is unoccupied
		tst.b   d0
		bge.s   @Skip           ; skip if force member
		jsr     j_GetEntityItemsAddress
		move.w  #ITEM_SLOTS_COUNTER,d1
@Loop:
		move.b  (a0)+,d2
		cmpi.b  #EMPTY_ITEM_SLOT,d2
		beq.s   @Skip           ; skip if item slot is empty
		andi.w  #ITEMENTRY_MASK_INDEX,d2
		lea     tbl_ItemsToDrop(pc), a1
@FindItem:
		move.b  (a1)+,d3
		blt.s   @Skip           ; skip if reached end of list
		cmp.b   d2,d3
		bne.s   @Next
		move.w  d2,d1
		bra.s   @ItemFound
@Next:
		bra.s   @FindItem
		dbf     d1,@Loop

@Skip:
		move.w  #-1,d1
@ItemFound:
		movem.l (sp)+,d0/d2-d3/a0-a1
		rts

    ; End of function FindItemToDrop

tbl_ItemsToDrop:; List of item indexes to be dropped by enemies, $FF terminated
		dc.b ITEM_DOOM_BLADE
		dc.b ITEM_HEAT_AXE
		dc.b ITEM_ATLAS
		dc.b ITEM_DEMON_ROD
		dc.b ITEM_YOGURT_RING
		dc.b $FF

; =============== S U B R O U T I N E =======================================

; Get address of spell D1 entry -> A1

GetSpellEntryAddress:
		
		move.w  d1,-(sp)
		rol.b   #2,d1
		andi.w  #$FF,d1
		asl.w   #2,d1
		movea.l (p_SpellData).l,a1
		adda.w  d1,a1
		move.w  (sp)+,d1
		rts

    ; End of function GetSpellEntryAddress


; =============== S U B R O U T I N E =======================================

; Get MP cost of spell D1 -> D2

GetMPCost:
		movem.l d1/a1,-(sp)
		bsr.s   GetSpellEntryAddress
		clr.w   d2
		move.b  SPELL_OFFSET_MP_COST(a1),d2
		movem.l (sp)+,d1/a1
		rts

    ; End of function GetMPCost


; =============== S U B R O U T I N E =======================================

; Get address of range D4 entry -> A1

GetRangeEntryAddress:
		
		move.w  d4,-(sp)
		lea     tbl_RangeData(pc), a1
		andi.w  #$FF,d4
		asl.w   #3,d4
		adda.w  d4,a1
		move.w  (sp)+,d4
		rts

    ; End of function GetRangeEntryAddress


; =============== S U B R O U T I N E =======================================

; Find targetable spaces from range D4

FindTargetableSpaces:
		
		movem.l d0-d4/a0-a1,-(sp)
		cmpi.b  #$FF,d4
		beq.s   loc_230DA
		bsr.s   GetRangeEntryAddress
		clr.w   d1
		jsr     j_ClearPassabilityFlags
		clr.b   ((TARGETING_GROUP_BITFIELD-$1000000)).w
		move.b  RANGE_OFFSET_GROUP(a1),d4
		beq.w   loc_230D4
		moveq   #3,d3           ; max range cap
		clr.w   d4
		bsr.w   SetupTargetingMoveCosts
		move.b  RANGE_OFFSET_GROUP(a1),d1
		andi.b  #RANGE_GROUP_MASK_TARGETS,d1
		move.b  d1,((TARGETING_GROUP_BITFIELD-$1000000)).w
		move.b  (a1),d1         ; D1 = max distance
		move.b  RANGE_OFFSET_MIN_DISTANCE(a1),d2
		bsr.w   MakeTargetingGrid
		clr.w   d1
		move.b  RANGE_OFFSET_AREA(a1),d1
		bge.s   loc_230CA
		andi.w  #$7F,d1 
		lea     tbl_AreaCursors_2(pc), a1
		bra.s   loc_230CE
loc_230CA:
		lea     tbl_AreaCursors_1(pc), a1
loc_230CE:
		move.b  (a1,d1.w),((AREA_CURSOR_INDEX-$1000000)).w
loc_230D4:
		movem.l (sp)+,d0-d4/a0-a1
		rts
loc_230DA:
		clr.b   ((TARGETING_GROUP_BITFIELD-$1000000)).w
		clr.b   d1
		jsr     j_ClearPassabilityFlags
		clr.b   ((AREA_CURSOR_INDEX-$1000000)).w
		bra.s   loc_230D4

    ; End of function FindTargetableSpaces

tbl_AreaCursors_1:
		dc.b 0
		dc.b 17
		dc.b 18
tbl_AreaCursors_2:
		dc.b 0
		dc.b 0
		dc.b 18

; =============== S U B R O U T I N E =======================================

; In: D0 = caster index
;     D1 = target index
;     D4 = range index

FindTargetsWithinArea:
		
		movem.l d0-d4/a1,-(sp)
		cmpi.b  #255,d4
		beq.s   @Skip           ; skip if range index = 255
		movem.w d0-d1/d4,-(sp)
		move.b  d1,d0
		moveq   #3,d3
		clr.w   d4
		bsr.w   SetupTargetingMoveCosts
		movem.w (sp)+,d0-d1/d4
		bsr.w   GetRangeEntryAddress
		move.b  RANGE_OFFSET_GROUP(a1),d4
		bsr.s   GetAdjustedGroupFlags
		move.b  d4,((TARGETING_GROUP_BITFIELD-$1000000)).w
		move.b  d1,d0
		move.b  RANGE_OFFSET_AREA(a1),d1
		clr.b   d2
		bsr.w   MakeTargetingGrid
@Continue:
		movem.l (sp)+,d0-d4/a1
		rts
@Skip:
		jsr     j_ClearPassabilityFlags
		bra.s   @Continue

    ; End of function FindTargetsWithinArea


; =============== S U B R O U T I N E =======================================

; Check if casting combatant D0 is an enemy and adjust group flags D4 accordingly

GetAdjustedGroupFlags:
		
		move.w  d1,-(sp)
		jsr     j_GetEntity
		tst.b   d1
		bge.s   @Skip           ; skip if combatant is a force member
		bsr.s   AdjustGroupFlags
@Skip:
		move.w  (sp)+,d1
		rts

    ; End of function GetAdjustedGroupFlags


; =============== S U B R O U T I N E =======================================

; convert group desigantion for enemy actions

AdjustGroupFlags:
		
		move.w  d5,-(sp)
		move.w  d4,d5
		andi.w  #RANGE_GROUP_MASK_ALL,d4
		andi.w  #RANGE_GROUP_MASK_TARGETS,d5
		or.b    tbl_AdjustedGroupFlags(pc,d5.w),d4
		move.w  (sp)+,d5
		rts

    ; End of function AdjustGroupFlags

tbl_AdjustedGroupFlags:
		dc.b RANGE_TARGETS_NONE
		dc.b RANGE_TARGETS_FOES
		dc.b RANGE_TARGETS_FRIENDS
		dc.b RANGE_TARGETS_FRIENDS|RANGE_TARGETS_FOES

; =============== S U B R O U T I N E =======================================

; Jump to range/equip effect routine

JumpToRangeOrEquipEffect:
		
		movem.l d4/a1,-(sp)
		cmpi.b  #255,d4
		beq.s   @Skip           ; skip if range or equip effect index = 255
		bsr.w   GetRangeEntryAddress
		jsr     RANGE_OFFSET_ROUTINE(a1)
@Skip:
		movem.l (sp)+,d4/a1
		rts

    ; End of function JumpToRangeOrEquipEffect

    include "data\stats\ranges\rangedata.asm"

; =============== S U B R O U T I N E =======================================

nullsub_23378:
		
		rts

    ; End of function nullsub_23378


; =============== S U B R O U T I N E =======================================

; Stat increasing item routine
; 
;       In: D0 = character index
;           D1 = stat index

IncreaseStatOnItemUse:
		
		movem.l d1-d4/d6-a0,-(sp)
		move.w  d1,d2
		addi.w  #$20B,d2        ; "[Name]'s attack level[Line]increases by [Num].[Wait2]"
		move.w  d2,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		clr.w   d2
		move.b  d0,d2
		move.w  d2,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		moveq   #2,d6
		jsr     (j_GenerateRandomNumber).l
		addq.w  #1,d7
		move.w  d7,d2
		move.w  d1,d3
		asl.w   #2,d3
		jsr     bt_GetBaseStatForCombatant(pc,d3.w)
		exg     d1,d2
		jsr     bt_IncreaseBaseStatForCombatant(pc,d3.w)
		sub.w   d2,d1
		ext.l   d1
		move.l  d1,((BATTLE_MESSAGE_ARG_NUMBER_1-$1000000)).w
		jsr     j_LoadCombatantData
		movem.l (sp)+,d1-d4/d6-a0
		rts

    ; End of function IncreaseStatOnItemUse


; =============== S U B R O U T I N E =======================================

bt_GetBaseStatForCombatant:
		
		bra.w   GetBaseAttackForCombatant
		bra.w   GetBaseDefenseForCombatant
		bra.w   GetBaseAgilityForCombatant
		bra.w   GetBaseMoveForCombatant
		bra.w   GetMaxHpForCombatant

    ; End of function bt_GetBaseStatForCombatant


; =============== S U B R O U T I N E =======================================

bt_IncreaseBaseStatForCombatant:
		
		bra.w   IncreaseBaseAttackForCombatant
		bra.w   IncreaseBaseDefenseForCombatant
		bra.w   IncreaseBaseAgilityForCombatant
		bra.w   IncreaseBaseMoveForCombatant
		bra.w   IncreaseMaxHPforCombatant

    ; End of function bt_IncreaseBaseStatForCombatant


; =============== S U B R O U T I N E =======================================

; Cure poison of combatant D0

CurePoison:
		movem.l d1-d2,-(sp)
		jsr     j_GetStatusEffectsForCombatant
		bclr    #STATUSEFFECT_BIT_POISON,d1
		beq.s   loc_233FC       
		move.w  #$1C8,d2        ; "All traces of poison are[Line]purged from [Name]."
		bra.s   loc_23400
loc_233FC:
		move.w  #$1D1,d2        ; "But nothing happens."
loc_23400:
		jsr     j_SetStatusEffectsForCombatant
		move.w  d2,((BATTLE_MESSAGE_INDEX_1-$1000000)).w
		clr.w   d2
		move.b  d0,d2
		move.w  d2,((BATTLE_MESSAGE_ARG_NAME_1-$1000000)).w
		movem.l (sp)+,d1-d2
		rts

    ; End of function CurePoison


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified attack

EquipEffect_IncreaseAttack:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedAttack
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAttack


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified defense

EquipEffect_IncreaseDefense:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedDefense
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseDefense


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified agility

EquipEffect_IncreaseAgility:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedAgility
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAgility


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified move

EquipEffect_IncreaseMove:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedMove
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseMove


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 current HP (not functional)

AfterTurn_RecoverHP:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseCurrentHP
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_RecoverHP


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 current MP (not functional)

AfterTurn_RecoverMP:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseCurrentMP
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_RecoverMP


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 max HP (not functional)

AfterTurn_GainHP:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseMaxHP
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainHP


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base attack (not functional)

AfterTurn_GainATK:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseAttack
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainATK


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base defense (not functional)

AfterTurn_GainDEF:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseDefense
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainDEF


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base agility (not functional)

AfterTurn_GainAGI:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseAgility
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainAGI


; =============== S U B R O U T I N E =======================================

; Add D5 to force member D0 base move (not functional)

AfterTurn_GainMOV:
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseBaseMove
		move.w  (sp)+,d1
		rts

    ; End of function AfterTurn_GainMOV


; =============== S U B R O U T I N E =======================================

; Add D5 to combatant D0 modified attack, set modified critical to 13

EquipEffect_IncreaseAttackSetCritical:
		
		move.w  d1,-(sp)
		move.b  d5,d1
		jsr     j_IncreaseModifiedAttack
		move.b  #13,d1
		jsr     j_SetModifiedCritical
		move.w  (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAttackSetCritical


; =============== S U B R O U T I N E =======================================

; Add 4 to combatant D0 modified attack and 8 to modified defense

EquipEffect_IncreaseAttackAndDefense:
		
		movem.l d1/d5/a0,-(sp)
		lea     byte_234EE(pc), a0
		andi.w  #$FF,d5
		adda.w  d5,a0
		move.b  (a0)+,d1
		jsr     j_IncreaseModifiedAttack
		move.b  (a0),d1
		jsr     j_IncreaseModifiedDefense
		movem.l (sp)+,d1/d5/a0
		rts
byte_234EE:
		dc.b 4
		dc.b 8
EquipEffect_IncreaseAttackSetDoubleAttackMode:
		
		movem.l d1,-(sp)        ; Add D5 to combatant D0 modified attack, set modified double attack mode to "high"
		move.b  d5,d1
		jsr     j_IncreaseModifiedAttack
		moveq   #DOUBLE_ATTACK_MODE_HIGH,d1
		jsr     j_SetModifiedDoubleAttackMode
		movem.l (sp)+,d1
		rts

    ; End of function EquipEffect_IncreaseAttackAndDefense


; =============== S U B R O U T I N E =======================================

; Set Jogurt status effect to combatant D0

EquipEffect_SetJogurtStatus:
		
		movem.l d1,-(sp)
		jsr     j_GetStatusEffectsForCombatant
		bset    #STATUSEFFECT_BIT_JOGURT,d1
		jsr     j_SetStatusEffectsForCombatant
		movem.l (sp)+,d1
		rts

    ; End of function EquipEffect_SetJogurtStatus


; =============== S U B R O U T I N E =======================================

sub_23524:
		jmp     sub_124018

    ; End of function sub_23524


; =============== S U B R O U T I N E =======================================

; Level Up Party (Kindan NoHako)

KindanNoHako:
		movem.l d0-d3/a0,-(sp)
		bsr.w   NullBattleaction
		moveq   #FORCE_MEMBERS_COUNTER,d2
loc_23534:
		move.b  d2,d0
		jsr     j_GetLevel
		move.w  #18,d3
		sub.w   d1,d3
		bsr.w   FindCombatantEntry
		bne.s   loc_23550
loc_23548:
		bsr.w   IncreaseStatsOnLevelUpForCombatant
		dbf     d3,loc_23548

loc_23550:
		jsr     j_RefillHPforCombatant
		jsr     j_RefillMPforCombatant
		dbf     d2,loc_23534

		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function KindanNoHako


; =============== S U B R O U T I N E =======================================

; Make movement area grid for combatant D0

CreateMovementGrid:
		
		movem.l d0-d4/a0,-(sp)
		jsr     j_GetModifiedMove
		cmpi.w  #9,d1
		ble.s   loc_2357C
		bsr.w   MakeMoveEverywhereGrid
		bra.s   loc_2358E
loc_2357C:
		move.w  d1,d3
		bsr.s   IsForceMemberOrEnemy
		jsr     j_GetMoveCostEntryAddress
		bsr.w   SetupEffectiveMoveCosts
		bsr.w   MakeEffectivePassabilityFlags
loc_2358E:
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function CreateMovementGrid


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 is force member or enemy, return in D4 (1 = enemy, 2 = force)

IsForceMemberOrEnemy:
		
		move.w  d1,-(sp)
		jsr     j_GetEntity
		moveq   #2,d4
		tst.b   d1
		bge.s   @ForceMember
		moveq   #1,d4
@ForceMember:
		move.w  (sp)+,d1
		rts

    ; End of function IsForceMemberOrEnemy


; =============== S U B R O U T I N E =======================================

; Find targetable spaces for "attack" battle action

FindTargetableSpacesForAttack:
		
		movem.l d4-d5,-(sp)
		bsr.s   Battleaction_Attack
		jsr     j_FindTargetableSpaces
		movem.l (sp)+,d4-d5
		rts

    ; End of function FindTargetableSpacesForAttack


; =============== S U B R O U T I N E =======================================

; Prepare to attack (get attack range and effect, check for special attack)
; 
; Out: D4 = attack range index
;      D5 = attack effect index

Battleaction_Attack:
		
		movem.l d1-d3/a0-a1,-(sp)
		tst.b   ((CURRENT_ATTACK_TYPE-$1000000)).w
		beq.s   @RegularAttack
		clr.b   ((SPECIAL_ATTACK_PERCENT-$1000000)).w
		move.b  ((CURRENT_RANGE-$1000000)).w,d4
		move.b  ((CURRENT_EFFECT-$1000000)).w,d5
		bra.s   @Skip           ; skip if not a regular attack
@RegularAttack:
		
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItemForCombatant
		bcc.s   @AttackWithEquippedWeapon
		move.b  CLASSDEF_OFFSET_UNARMED_RANGE(a0),d4
		move.b  CLASSDEF_OFFSET_UNARMED_EFFECT(a0),d5
		bra.s   @UnarmedAttack
@AttackWithEquippedWeapon:
		
		move.b  d2,d1
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_ATTACK_RANGE(a1),d4
		move.b  ITEMDEF_OFFSET_ATTACK_EFFECT(a1),d5
@UnarmedAttack:
		
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d1
		andi.w  #CLASS_PROPERTY_MASK_SPECIAL_ATTACK_CHANCE,d1
		move.b  tbl_SpecialAttackPercents(pc,d1.w),((SPECIAL_ATTACK_PERCENT-$1000000)).w
		move.b  CLASSDEF_OFFSET_SPECIAL_ATTACK_INDEX(a0),((SPECIAL_ATTACK_INDEX-$1000000)).w
@Skip:
		movem.l (sp)+,d1-d3/a0-a1
		rts

    ; End of function Battleaction_Attack

tbl_SpecialAttackPercents:
		dc.b 0
		dc.b 25
		dc.b 50
		dc.b 75

; =============== S U B R O U T I N E =======================================

; Use item D1 in battle

UseItem:
		movem.l d1-d2/d4-d5,-(sp)
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_USABLE,d2
		beq.s   @NotUsable      
		move.b  d1,d2
		move.w  #ITEMTYPE_MASK_USABLE,d1
		jsr     j_IsItemEquippableForCombatant
		bcs.s   @CheckEquipFlags
		move.b  d2,d1
		bsr.w   GetItemUseRangeAndEffect
		clr.b   d1
		bra.s   @Done
@CheckEquipFlags:
		
		bne.s   @CannotBeUsedByCurrentActor
						; branch if item has at least one equip flag set
@NotUsable:
		moveq   #1,d1           ; item is either not usable, or not a piece of equipment
		bra.s   @Continue
@CannotBeUsedByCurrentActor:
		
		moveq   #2,d1           ; item is piece of equipment, but cannot be equipped by current actor
@Continue:
		moveq   #-1,d4
@Done:
		move.b  d1,((CANNOT_USE_ITEM_FLAG-$1000000)).w
		jsr     j_FindTargetableSpaces
		movem.l (sp)+,d1-d2/d4-d5
		rts

    ; End of function UseItem


; =============== S U B R O U T I N E =======================================

; Get item D1 use range and effect indexes -> D4 = range, D5 = effect

GetItemUseRangeAndEffect:
		
		movem.l d1/a1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		move.w  d1,((BATTLESCENE_ITEM_OR_SPELL_INDEX-$1000000)).w
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_USE_RANGE(a1),d4
		cmpi.b  #255,d4         ; skip if range index = 255
		beq.s   @Skip
		move.b  ITEMDEF_OFFSET_USE_EFFECT(a1),d5
@Skip:
		movem.l (sp)+,d1/a1
		rts

    ; End of function GetItemUseRangeAndEffect


; =============== S U B R O U T I N E =======================================

; Prepare to use item slot D1 from combatant D0 (load item index and slot number)
; 
; Out: D4 = range index
;      D5 = effect index

Battleaction_UseItem:
		
		movem.l d1/a0,-(sp)
		jsr     j_GetEntityItemsAddressForCombatant
		andi.w  #$FF,d1
		move.w  d1,((SELECTED_ITEM_SLOT-$1000000)).w
		move.b  (a0,d1.w),d1
		move.w  d1,((SELECTED_ITEM_ENTRY-$1000000)).w
		bsr.s   GetItemUseRangeAndEffect
		movem.l (sp)+,d1/a0
		rts

    ; End of function Battleaction_UseItem


; =============== S U B R O U T I N E =======================================

; Find targetable spaces for the "cast spell" battleaction.

FindTargetableSpacesForSpell:
		
		movem.l d4-d5,-(sp)
		bsr.s   Battleaction_CastSpell
		jsr     j_FindTargetableSpaces
		movem.l (sp)+,d4-d5
		rts

    ; End of function FindTargetableSpacesForSpell


; =============== S U B R O U T I N E =======================================

; Prepare to cast spell D1 (load index, level and MP cost)
; 
; Out: D4 = spell range index
;      D5 = spell effect index

Battleaction_CastSpell:
		
		movem.l d2/a1,-(sp)
		move.b  d1,d2
		andi.w  #SPELLENTRY_MASK_INDEX,d2
		move.w  d2,((BATTLESCENE_ITEM_OR_SPELL_INDEX-$1000000)).w
		move.b  d1,d2
		andi.l  #SPELLENTRY_MASK_LEVEL,d2
		asr.l   #6,d2
		addq.l  #1,d2
		move.l  d2,((BATTLESCENE_SPELL_LEVEL-$1000000)).w
		bsr.w   GetSpellEntryAddress
		clr.w   d4
		move.b  SPELL_OFFSET_MP_COST(a1),d4
		move.w  d4,((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		move.b  (a1),d4         ; D4 = range index
		move.b  SPELL_OFFSET_EFFECT(a1),d5
		movem.l (sp)+,d2/a1
		rts

    ; End of function Battleaction_CastSpell


; =============== S U B R O U T I N E =======================================

; Get effect, range and targetable spaces for current battleaction.

SetupBattleaction:
		
		movem.l d0-d5/a0,-(sp)
		lea     ((CASTER_INDEX-$1000000)).w,a0
		clr.w   d2
		move.b  BATTLE_ACTION_OFFSET_TYPE(a0),d2
		cmpi.b  #3,d2
		bcc.s   @Skip           ; skip if battleaction type >= 3
		move.b  d2,((BATTLE_MESSAGE_OFFSET-$1000000)).w
		clr.w   ((MP_COST_OF_SPELL_BEING_CAST-$1000000)).w
		move.w  #-1,((SELECTED_ITEM_SLOT-$1000000)).w
		clr.b   ((SPECIAL_ATTACK_PERCENT-$1000000)).w
		move.b  (a0),d0         ; D0 = caster index
		move.b  BATTLE_ACTION_OFFSET_SPELL_INDEX(a0),d1
		asl.w   #2,d2
		jsr     bt_Battleactions(pc,d2.w)
		cmpi.b  #255,d4         ; skip if range index = 255
		beq.s   @Skip
		move.b  (a0),d0         ; D0 = caster index
		move.b  BATTLE_ACTION_OFFSET_TARGET_INDEX(a0),d1
		jsr     j_FindTargetsWithinArea
		jsr     j_PopulateTargetsList
		jsr     j_JumpToRangeOrEquipEffect
@Skip:
		movem.l (sp)+,d0-d5/a0
		rts

    ; End of function SetupBattleaction


; =============== S U B R O U T I N E =======================================

bt_Battleactions:
		
		bra.w   Battleaction_Attack
		bra.w   Battleaction_CastSpell
		bra.w   Battleaction_UseItem

    ; End of function bt_Battleactions


; =============== S U B R O U T I N E =======================================

; hardcoded "GIVE" item menu action range (?)

sub_23752:
		movem.l d0-d4/a0,-(sp)
		moveq   #1,d3
		clr.w   d4
		bsr.w   SetupTargetingMoveCosts
		moveq   #1,d1
		move.w  d1,d2
		move.b  #1,((TARGETING_GROUP_BITFIELD-$1000000)).w
		bsr.w   MakeTargetingGrid
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function sub_23752


; =============== S U B R O U T I N E =======================================

; Make movement area grid for combatant D0 when modified move is greater than 9 (i.e., force leader in battle test mode)

MakeMoveEverywhereGrid:
		
		movem.l d1-d2/a0-a1,-(sp)
		jsr     j_GetMoveCostEntryAddress
		bsr.w   LoadMoveCosts   
		lea     ((MOVE_COSTS-$1000000)).w,a0
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a1
		move.w  #$3FF,d1
loc_2378C:
		move.b  (a0)+,(a1)+     ; copy move costs table to table at $FFA8C0
		dbf     d1,loc_2378C    

		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; D1 = moving combatant's position converted to offset
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
		clr.b   (a0,d1.w)       ; clear move cost at moving combatant's starting position
		bsr.w   MakeEffectivePassabilityFlags
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		move.w  #$3FF,d1
loc_237B2:
		cmpi.b  #$D,(a0)
		bne.s   loc_237BE
		bset    #2,-OFFSET_PASSABILITY_FLAGS_TO_CURRENT_TERRAIN_DATA(a0)
loc_237BE:
		addq.l  #1,a0
		dbf     d1,loc_237B2

		movem.l (sp)+,d1-d2/a0-a1
		rts

    ; End of function MakeMoveEverywhereGrid


; =============== S U B R O U T I N E =======================================

sub_237CA:
		movem.l d1-d4/a0,-(sp)
		jsr     j_GetMoveCostEntryAddress
		move.w  d1,-(sp)
		jsr     j_GetModifiedMove
		move.w  d1,d3
		move.w  (sp)+,d1
		addq.w  #3,d3
		bsr.w   IsForceMemberOrEnemy
		bsr.w   MakeEffectiveMoveCosts
		jsr     j_GetCombatantPosition
		bsr.w   sub_20868       
		movem.l (sp)+,d1-d4/a0
		rts

    ; End of function sub_237CA


; =============== S U B R O U T I N E =======================================

PopulateTargetsList:
		
		movem.l d0-d5/a0-a2,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		move.b  ((TARGETING_GROUP_BITFIELD-$1000000)).w,d3
		clr.w   d4
		lea     ((byte_FFA8C2-$1000000)).w,a1
						; target positions
		lea     ((TARGETS_LIST-$1000000)).w,a2
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_23812:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_2385A
		tst.b   d1
		bge.s   loc_2382A       ; branch if force member
		btst    #1,d3
		beq.s   loc_2385A       ; branch if not tasked to target enemies
		bra.s   loc_23830
loc_2382A:
		btst    #0,d3
		beq.s   loc_2385A       ; branch if not tasked to target force members
loc_23830:
		jsr     j_GetCombatantPosition
		move.w  d1,d5
		mulu.w  ((MAP_WIDTH-$1000000)).w,d5
		add.w   d2,d5           ; D5 = combatant's position converted to offset
		btst    #2,d3
		bne.s   loc_2384C       ; branch if tasked to target all
		btst    #0,(a0,d5.w)
		beq.s   loc_2385A
loc_2384C:
		bset    #1,(a0,d5.w)
		addq.w  #1,d4
		move.w  d2,(a1)+        ; load target X
		move.w  d1,(a1)+        ; load target Y
		move.w  d0,(a2)+        ; load target index
loc_2385A:
		dbf     d0,loc_23812

		move.w  d4,((TABLE_AT_FFA8C0-$1000000)).w
						; load target list length
		moveq   #-1,d4
		move.w  d4,(a1)+
		move.w  d4,(a2)+
		movem.l (sp)+,d0-d5/a0-a2
		bsr.s   sub_23870
		rts

    ; End of function PopulateTargetsList


; =============== S U B R O U T I N E =======================================

sub_23870:
		movem.l d0-d2/a0-a3,-(sp)
		lea     ((byte_FFA8C2-$1000000)).w,a0
		lea     ((TARGETS_LIST-$1000000)).w,a1
		move.w  ((TABLE_AT_FFA8C0-$1000000)).w,d0
		subq.w  #1,d0
loc_23882:
		ble.s   loc_238BC
		lea     4(a0),a2
		lea     2(a1),a3
		move.w  d0,d1
loc_2388E:
		subq.w  #1,d1
		blt.s   loc_238B4
		move.w  2(a2),d2
		cmp.w   2(a0),d2
		bne.s   loc_238A0
		move.w  (a2),d2
		cmp.w   (a0),d2
loc_238A0:
		bcc.s   loc_238AE
		move.l  (a0),d2
		move.l  (a2),(a0)
		move.l  d2,(a2)
		move.w  (a1),d2
		move.w  (a3),(a1)
		move.w  d2,(a3)
loc_238AE:
		addq.l  #4,a2
		addq.l  #2,a3
		bra.s   loc_2388E
loc_238B4:
		addq.l  #4,a0
		addq.l  #2,a1
		subq.w  #1,d0
		bra.s   loc_23882
loc_238BC:
		movem.l (sp)+,d0-d2/a0-a3
		rts

    ; End of function sub_23870


; =============== S U B R O U T I N E =======================================

; Get item D1 name address and length
; 
; Out: A0 = item name address
;      D1 = item name length

GetItemNameAddress:
		
		andi.b  #ITEMENTRY_MASK_INDEX,d1
		movea.l (p_ItemNames).l,a0

    ; End of function GetItemNameAddress


; =============== S U B R O U T I N E =======================================

; Get D1th entry address from table which is stored with length values
; 
; Out: A0 = entry address
;      D1 = entry length

GetVariableLengthEntryAddress:
		
		movem.w d0,-(sp)
		clr.w   d0
		tst.b   d1
		beq.s   loc_238E0
loc_238D6:
		move.b  (a0),d0
		lea     1(a0,d0.w),a0
		subq.b  #1,d1
		bne.s   loc_238D6
loc_238E0:
		move.b  (a0)+,d0
		move.w  d0,d1
		movem.w (sp)+,d0
		rts

    ; End of function GetVariableLengthEntryAddress


; =============== S U B R O U T I N E =======================================

; Get spell D1 name address and length
; 
; Out: A0 = spell name address
;      D1 = spell name length

GetSpellNameAddress:
		
		andi.b  #SPELLENTRY_MASK_INDEX,d1
		movea.l (p_SpellNames).l,a0
		bra.s   GetVariableLengthEntryAddress

    ; End of function GetSpellNameAddress


; =============== S U B R O U T I N E =======================================

; Get class D1 name address and length
; 
; Out: A0 = class name address
;      D1 = class name length

GetClassNameAddress:
		
		movea.l (p_ClassNames).l,a0
		bra.s   GetVariableLengthEntryAddress

    ; End of function GetClassNameAddress


; =============== S U B R O U T I N E =======================================

LoadVariableLengthEntry:
		
		movem.l d1/a0,-(sp)
		bsr.s   GetVariableLengthEntryAddress
		beq.s   loc_2390E
		subq.w  #1,d1
loc_23908:
		move.b  (a0)+,(a1)+
		dbf     d1,loc_23908

loc_2390E:
		movem.l (sp)+,d1/a0
		rts

    ; End of function LoadVariableLengthEntry


; =============== S U B R O U T I N E =======================================

; Get class D1 entry address -> A0

GetClassEntryAddress:
		
		move.w  d1,-(sp)
		movea.l (p_ClassData).l,a0
		andi.w  #$FF,d1
		asl.w   #3,d1
		adda.w  d1,a0
		move.w  (sp)+,d1
		rts

    ; End of function GetClassEntryAddress


; =============== S U B R O U T I N E =======================================

; Get combatant D0 move cost entry address -> A0

GetMoveCostEntryAddress:
		
		movea.l (p_MoveCostData).l,a0
		bra.s   loc_23936

    ; End of function GetMoveCostEntryAddress


; =============== S U B R O U T I N E =======================================

; Get combatant D0 land effect entry address -> A0

GetLandEffectEntryAddress:
		
		movea.l (p_LandEffectData).l,a0
loc_23936:
		movem.l d1/a1,-(sp)
		movea.l a0,a1
		jsr     j_GetClassForCombatant
		bsr.s   GetClassEntryAddress
		move.b  (a0),d1         ; D1 = move type index
		andi.w  #$FF,d1
		asl.w   #4,d1
		movea.l a1,a0
		adda.w  d1,a0
		movem.l (sp)+,d1/a1
		rts

    ; End of function GetLandEffectEntryAddress


; =============== S U B R O U T I N E =======================================

; Get combatant D0 resistance to element D1 -> D2

GetResistance:
		
		movem.l d1/a0,-(sp)
		move.b  d1,d2
		jsr     j_GetClassForCombatant
		bsr.s   GetClassEntryAddress
		move.b  d2,d1
		move.w  CLASSDEF_OFFSET_RESISTANCES(a0),d2
		andi.b  #7,d1
		ror.w   d1,d2
		ror.w   d1,d2
		andi.w  #3,d2
		movem.l (sp)+,d1/a0
		rts

    ; End of function GetResistance


; =============== S U B R O U T I N E =======================================

; Get combatant D0 special bit 6 from class (unused)  set: d1 = 2 / clear: d1 = 1

sub_2397C:
		move.l  a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d1
		andi.w  #AISETTING_BIT6,d1 
		asr.w   #CLASS_PROPERTY_BIT6,d1
		addq.w  #1,d1
		movea.l (sp)+,a0
		rts

    ; End of function sub_2397C


; =============== S U B R O U T I N E =======================================

; Get combatant D0 base double attack mode from class -> D1

GetBaseDoubleAttackMode:
		
		move.l  a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d1
		andi.w  #CLASS_PROPERTY_MASK_DOUBLE_ATTACK_MODE,d1
		asr.w   #2,d1
		movea.l (sp)+,a0
		rts

    ; End of function GetBaseDoubleAttackMode


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 has flying or hovering move type

IsFlyingOrHovering:
		
		movem.l d1/a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  (a0),d1
		cmpi.b  #MOVE_TYPE_FLYING,d1
		beq.s   @IsFlying
		cmpi.b  #MOVE_TYPE_HOVERING,d1
@IsFlying:
		movem.l (sp)+,d1/a0
		rts

    ; End of function IsFlyingOrHovering


; =============== S U B R O U T I N E =======================================

; Get entity's portrait index for combatant D0 -> D1

GetPortraitForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   GetPortrait     
		move.w  (sp)+,d0
		rts

    ; End of function GetPortraitForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity D0 portrait index -> D1 (check if changed into jogurt or promoted)

GetPortrait:
		movem.l a0-a1,-(sp)
		tst.b   d0
		bge.s   @ForceMember
		                
		bsr.w   GetEnemyEntryAddress
		move.b  ENEMY_OFFSET_PORTRAIT(a1),d1
		ext.w   d1
		bra.s   @Done
@ForceMember:
		cmpi.b  #ALLY_NOVA,d0
		bne.s   @CheckIfChangedIntoJogurt
		move.w  #PORTRAIT_NOVA,d1
		bra.s   @Done
@CheckIfChangedIntoJogurt:
		
		bsr.w   IsEntityChangedIntoJogurt
		beq.s   @CheckIfPromoted
		move.w  #PORTRAIT_JOGURT,d1
		bra.s   @Done
@CheckIfPromoted:
		
		clr.w   d1
		move.b  d0,d1
		bsr.w   IsPromoted      
		beq.s   @Done
		move.b  table_PromotedPortraits(pc,d1.w),d1
@Done:
		movem.l (sp)+,a0-a1
		rts

    ; End of function GetPortrait

    include "data\stats\allies\promotedportraits.asm"

; =============== S U B R O U T I N E =======================================

; Get entity's map sprite index for combatant D0 -> D1

GetMapSpriteForCombatant:
		
		move.w  d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   GetMapsprite    
		move.w  (sp)+,d0
		rts

    ; End of function GetMapSpriteForCombatant


; =============== S U B R O U T I N E =======================================

; Get entity D0 map sprite index -> D1
; 
;     - Check if changed into Jogurt
;     - Apply outfits if applicable
;     - Add 30 to index if promoted

GetMapsprite:
		movem.l d0/a0-a1,-(sp)
		cmpi.b  #$FF,d0
		beq.s   @Done
		tst.b   d0
		bge.s   @ForceMember
		                
		bsr.w   GetEnemyEntryAddress
		clr.w   d1
		move.b  ENEMY_OFFSET_MAPSPRITE(a1),d1
		bra.s   @Done
@ForceMember:
		cmpi.b  #ALLY_NOVA,d0
		bne.s   @isChangedIntoJogurt
		move.w  #MAPSPRITE_NOVA,d1
		bra.s   @Done
@isChangedIntoJogurt:
		
		bsr.w   IsEntityChangedIntoJogurt
		beq.s   @ApplyOutfits
		move.w  #MAPSPRITE_JOGURT_1,d1
		bra.s   @Done
@ApplyOutfits:
		
		bsr.s   ApplyOutfitItems
		bcc.s   @Done
		clr.w   d1
		move.b  d0,d1
		bsr.w   IsPromoted      
		beq.s   @Done
		addi.w  #PROMOTED_MAPSPRITES_START,d1
@Done:
		movem.l (sp)+,d0/a0-a1
		rts

    ; End of function GetMapsprite


; =============== S U B R O U T I N E =======================================

; Apply outfit items -> D1 = new map sprite index

ApplyOutfitItems:
		
		movem.l d2-d5/a0-a1,-(sp)
		lea     tbl_OutfitItems(pc), a1
@FindForceMember:
		
		cmp.b   (a1)+,d0
		bcs.s   @Skip
		beq.s   @Found
		addq.l  #2,a1
		bra.s   @FindForceMember
@Found:
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d1
@Loop:
		move.b  (a0)+,d2
		andi.b  #ITEMENTRY_MASK_INDEX,d2
		cmp.b   (a1),d2
		bne.s   @NextItemSlot
		clr.w   d1
		move.b  1(a1),d1
		bra.s   @Done
@NextItemSlot:
		
		dbf     d1,@Loop

@Skip:
		ori     #1,ccr
@Done:
		movem.l (sp)+,d2-d5/a0-a1
		rts

    ; End of function ApplyOutfitItems

    include "data\stats\allies\costumes.asm"

; =============== S U B R O U T I N E =======================================

GetBattleSpritePaletteAndAnimationIndexes:
		
		bsr.w   LoadBattlespriteAndPaletteIndexes
		bsr.w   LoadWeaponSpriteIndex
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_SPRITE_INDEX-$1000000)).w,d1
		move.w  ((BATTLESCENE_PALETTE_INDEX-$1000000)).w,d2
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function GetBattleSpritePaletteAndAnimationIndexes


; =============== S U B R O U T I N E =======================================

LoadBattlespriteDataWithWeapon:
		
		bsr.s   LoadBattlespriteAndPaletteIndexes
		bsr.w   LoadWeaponSpriteIndex
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function LoadBattlespriteDataWithWeapon


; =============== S U B R O U T I N E =======================================

LoadBattlespriteDataWithoutWeapon:
		
		bsr.s   LoadBattlespriteAndPaletteIndexes
		move.w  #129,((WEAPON_SPRITE_INDEX-$1000000)).w
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function LoadBattlespriteDataWithoutWeapon


; =============== S U B R O U T I N E =======================================

sub_23B12:
		bsr.s   LoadBattlespriteAndPaletteIndexes
		move.w  #130,((WEAPON_SPRITE_INDEX-$1000000)).w
		bsr.w   LoadBattleAnimationIndex
		move.w  ((BATTLESCENE_ANIMATION_INDEX-$1000000)).w,d3
		rts

    ; End of function sub_23B12


; =============== S U B R O U T I N E =======================================

; Load battle sprite and palette indexes in RAM

LoadBattlespriteAndPaletteIndexes:
		
		movem.l d0-d2/a0-a1,-(sp)
		moveq   #-1,d1
		move.w  d1,((BATTLESCENE_SPRITE_INDEX-$1000000)).w
		move.w  d1,((BATTLESCENE_PALETTE_INDEX-$1000000)).w
		bsr.w   alt_GetEntity   
		cmpi.b  #EMPTY_COMBATANT_SLOT,d0
		beq.s   @Skip           ; skip if combatant entry is unpopulated
		clr.w   d1
		clr.w   d2
		tst.b   d0
		bge.s   @ForceMember
		                
		bsr.w   GetEnemyEntryAddress
		lea     ENEMY_OFFSET_BATTLESPRITE(a1),a0
		move.b  (a0)+,d1        ; D1 = battle sprite index
		move.b  (a0),d2         ; D2 = battle sprite palette index
		bra.s   @Load
@ForceMember:
		bsr.w   IsEntityChangedIntoJogurt
		beq.s   @GetBattlespriteData
		move.w  #BATTLESPRITE_JOGURT,d1
		clr.w   d2
		bra.s   @Load
@GetBattlespriteData:
		
		movea.l (p_BattleSpriteData).l,a0
		adda.w  d0,a0
		adda.w  d0,a0
		move.b  (a0)+,d1
		move.b  (a0),d2
		bsr.w   IsPromoted      
		beq.s   @Load
		addi.w  #PROMOTED_BATTLESPRITES_START,d1
@Load:
		move.w  d1,((BATTLESCENE_SPRITE_INDEX-$1000000)).w
		move.w  d2,((BATTLESCENE_PALETTE_INDEX-$1000000)).w
@Skip:
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function LoadBattlespriteAndPaletteIndexes


; =============== S U B R O U T I N E =======================================

LoadWeaponSpriteIndex:
		
		movem.l d1-d3/a0,-(sp)
		move.w  #-1,((EQUIPPED_WEAPON_INDEX-$1000000)).w
		move.w  #128,((WEAPON_SPRITE_INDEX-$1000000)).w
		bsr.w   IsCombatantChangedIntoJogurt
		bne.s   @Skip           ; skip if changed into Jogurt
		bsr.w   GetAnimationDataAddress
		move.b  (a0),d1
		beq.s   @Continue
		cmp.b   ((BATTLE_ANIMATION_TYPE-$1000000)).w,d1
		bne.s   @Continue
		move.w  #130,((WEAPON_SPRITE_INDEX-$1000000)).w
@Continue:
		bsr.w   IsEnemy         
		blt.s   @Skip           ; skip if enemy
		move.w  #ITEMTYPE_MASK_WEAPON,d1
		jsr     j_GetEquippedItemForCombatant
		bcs.s   @Skip           ; skip if no equipped item found
		movea.l (p_WeaponSpriteData).l,a0
		andi.w  #ITEMENTRY_MASK_INDEX,d2
		move.w  d2,((EQUIPPED_WEAPON_INDEX-$1000000)).w
		sub.b   (a0)+,d2
		bcs.s   @Skip
		clr.w   d1
		move.b  (a0,d2.w),d1
		cmpi.w  #128,((WEAPON_SPRITE_INDEX-$1000000)).w
		bne.s   @Skip
		move.w  d1,((WEAPON_SPRITE_INDEX-$1000000)).w
@Skip:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function LoadWeaponSpriteIndex


; =============== S U B R O U T I N E =======================================

LoadBattleAnimationIndex:
		
		movem.l d1-d2/a0,-(sp)
		move.w  #-1,d1
		move.w  d1,((BATTLESCENE_ANIMATION_INDEX-$1000000)).w
		move.w  d1,((word_FFCBAC-$1000000)).w
		bsr.s   GetAnimationDataAddress
		addq.l  #1,a0
		move.w  ((WEAPON_SPRITE_INDEX-$1000000)).w,d2
FindWeaponSprite_Loop:
		
		move.b  (a0)+,d1
		cmpi.b  #$FF,d1
		beq.s   @End            ; reached end of table
		cmp.b   d2,d1
		beq.s   @Found
		adda.l  #2,a0
		bra.s   FindWeaponSprite_Loop
@Found:
		move.b  (a0)+,d1
		ext.w   d1
		move.w  d1,((BATTLESCENE_ANIMATION_INDEX-$1000000)).w
		move.b  (a0),d1
		ext.w   d1
		move.w  d1,((word_FFCBAC-$1000000)).w
@End:
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function LoadBattleAnimationIndex


; =============== S U B R O U T I N E =======================================

; Get address of animation data for battle sprite -> A0

GetAnimationDataAddress:
		
		movem.w d1-d2,-(sp)
		move.w  ((BATTLESCENE_SPRITE_INDEX-$1000000)).w,d2
		add.w   d2,d2
		jsr     j_GetEntity
		tst.b   d1
		bge.s   @ForceMember
		                
		movea.l (p_EnemyAnimationData).l,a0
		bra.s   @Continue
@ForceMember:
		movea.l (p_ForceAnimationData).l,a0
@Continue:
		move.w  (a0,d2.w),d2
		adda.w  d2,a0
		movem.w (sp)+,d1-d2
		rts

    ; End of function GetAnimationDataAddress


; =============== S U B R O U T I N E =======================================

; Check if combatant D0 is under Jogurt status effect -> CCR zero-bit cleared if true

IsCombatantChangedIntoJogurt:
		
		movem.l d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   IsEntityChangedIntoJogurt
		movem.l (sp)+,d0
		rts

    ; End of function IsCombatantChangedIntoJogurt


; =============== S U B R O U T I N E =======================================

; Check if entity D0 is under Jogurt status effect -> CCR zero-bit cleared if true

IsEntityChangedIntoJogurt:
		
		movem.l d1,-(sp)
		tst.b   d0
		blt.s   @Enemy
		jsr     j_GetStatusEffects
		btst    #STATUSEFFECT_BIT_JOGURT,d1
		bra.s   @Done
@Enemy:
		clr.w   d1
@Done:
		movem.l (sp)+,d1
		rts

    ; End of function IsEntityChangedIntoJogurt


; =============== S U B R O U T I N E =======================================

sub_23C88:
		movem.l d7-a2,-(sp)
		bsr.w   DetermineAiAction
		bcc.s   @Continue       ; continue if not regular attack
		bsr.w   LoadRegularAttackData
@Continue:
		lea     ((CASTER_INDEX-$1000000)).w,a1
		move.b  d0,(a1)+
		bsr.w   sub_2425C       
		bsr.w   sub_24292
		addq.w  #1,d7
		asl.w   #2,d7
		lea     sub_23CB6(pc), a2
		jsr     (a2,d7.w)
		movem.l (sp)+,d7-a2
		rts

    ; End of function sub_23C88


; =============== S U B R O U T I N E =======================================

sub_23CB6:
		bra.w   sub_23CC6
		bra.w   sub_23CDA
		bra.w   sub_23D1A
		bra.w   sub_23D32

    ; End of function sub_23CB6


; =============== S U B R O U T I N E =======================================

sub_23CC6:
		move.w  d1,-(sp)
		moveq   #-1,d1
		move.b  d1,((byte_FFCB28-$1000000)).w
		bsr.w   sub_24306
		move.b  #3,(a1)
		move.w  (sp)+,d1
		rts

    ; End of function sub_23CC6


; =============== S U B R O U T I N E =======================================

sub_23CDA:
		movem.l d0-d4/d7-a0,-(sp)
		moveq   #-1,d1
		bsr.w   sub_24306
		clr.w   d2
		move.b  (a0)+,d2
		clr.w   d1
		move.b  (a0),d1
		clr.w   d3
		bsr.w   sub_23D9C
		movem.l (sp)+,d0-d4/d7-a0
loc_23CF6:
		bsr.w   sub_23EFA
		bne.s   loc_23D0C
		bsr.w   LoadRegularAttackData
		bsr.w   sub_23EFA
		bne.s   loc_23D0C
		move.b  #3,(a1)
		bra.s   return_23D18
loc_23D0C:
		move.b  ((CURRENT_BATTLEACTION_TYPE-$1000000)).w,(a1)+
		move.b  ((CURRENT_ITEM_OR_SPELL-$1000000)).w,(a1)+
		move.b  ((byte_FFA947-$1000000)).w,(a1)
return_23D18:
		rts

    ; End of function sub_23CDA


; =============== S U B R O U T I N E =======================================

sub_23D1A:
		movem.l d1/d7-a0,-(sp)
		moveq   #-1,d1
		bsr.w   sub_24306
		clr.w   d1
		move.b  (a0),d1
		bsr.w   sub_241A2
		movem.l (sp)+,d1/d7-a0
		bra.s   loc_23CF6

    ; End of function sub_23D1A


; =============== S U B R O U T I N E =======================================

sub_23D32:
		movem.l d1-d4/a0,-(sp)
		clr.w   d1
		move.b  (a0),d1
		adda.w  d1,a0
		st      ((byte_FFCB28-$1000000)).w
		jsr     j_GetCombatantPosition
		move.w  d2,((word_FFCB38-$1000000)).w
		move.w  d1,((word_FFCB3A-$1000000)).w
		bsr.w   sub_242EC
		move.w  d1,d4
		cmpi.w  #-1,d4
		beq.s   loc_23D94
loc_23D5A:
		clr.w   d2
		move.b  (a0,d4.w),d2
		clr.w   d1
		move.b  1(a0,d4.w),d1
		cmpi.b  #$FF,d2
		bne.s   loc_23D82
		cmpi.b  #$FF,d1
		bne.s   loc_23D7A
		jsr     j_GetCombatantPosition
		bra.s   loc_23D82
loc_23D7A:
		ext.w   d1
		add.w   d1,d4
		addq.w  #1,d4
		bra.s   loc_23D5A
loc_23D82:
		clr.w   d3
		bsr.w   sub_23D9C
		tst.w   d7
		bne.s   loc_23D8E
		addq.w  #2,d4
loc_23D8E:
		move.w  d4,d1
		bsr.w   sub_24306
loc_23D94:
		movem.l (sp)+,d1-d4/a0
		bra.w   loc_23CF6

    ; End of function sub_23D32


; =============== S U B R O U T I N E =======================================

sub_23D9C:
		movem.l d3-d6,-(sp)
		move.w  d3,d4
		bsr.w   CalculateDistanceToTarget
		cmp.w   d4,d7
		bge.s   loc_23DAE
		bsr.w   sub_23E9A
loc_23DAE:
		moveq   #-1,d6
		clr.w   d3
		bsr.s   sub_23DDE
		beq.w   loc_23DD8
		bsr.w   CalculateDistanceToTarget
		move.w  d7,d3
		asr.w   #1,d3
		bsr.s   sub_23DDE
		beq.w   loc_23DD8
		move.w  #$8001,d3
		bsr.s   sub_23DDE
		beq.w   loc_23DD8
		cmp.w   d3,d5
		beq.s   loc_23DD8
		move.w  d5,d3
		bsr.s   sub_23DEC
loc_23DD8:
		movem.l (sp)+,d3-d6
		rts

    ; End of function sub_23D9C


; =============== S U B R O U T I N E =======================================

sub_23DDE:
		bsr.s   sub_23DEC
		cmp.w   d6,d7
		bcc.s   loc_23DE8
		move.w  d3,d5
		move.w  d7,d6
loc_23DE8:
		cmp.w   d6,d4
		rts

    ; End of function sub_23DDE


; =============== S U B R O U T I N E =======================================

sub_23DEC:
		movem.l d0-d6/a0-a2,-(sp)
		move.w  d4,((word_FFCB3C-$1000000)).w
		bsr.w   CreateTotalMoveCosts
		bsr.w   sub_20868       
		move.w  d2,d6
		move.w  d1,d5
		jsr     j_GetModifiedMove
		move.w  d1,d3
		moveq   #1,d4
		bsr.w   SetupEffectiveMoveCosts
		bsr.w   MakeEffectivePassabilityFlags
		lea     ((byte_FFCB28-$1000000)).w,a0
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		jsr     j_GetCombatantPosition
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		mulu.w  d3,d1
		add.w   d2,d1
loc_23E28:
		btst    #1,(a1,d1.w)
		beq.s   loc_23E34
		movea.l a0,a2
		move.w  d1,d2
loc_23E34:
		movem.w d1-d2,-(sp)
		bsr.w   sub_23E8E
		movem.w (sp)+,d1-d2
		cmp.w   ((word_FFCB3C-$1000000)).w,d7
		ble.w   loc_23E7A
		tst.b   (a0)
		bne.s   loc_23E50
		sub.w   d3,d1
		bra.s   loc_23E70
loc_23E50:
		cmpi.b  #1,(a0)
		bne.s   loc_23E5A
		add.w   d3,d1
		bra.s   loc_23E70
loc_23E5A:
		cmpi.b  #2,(a0)
		bne.s   loc_23E64
		addq.w  #1,d1
		bra.s   loc_23E70
loc_23E64:
		cmpi.b  #3,(a0)
		bne.s   loc_23E6E
		subq.w  #1,d1
		bra.s   loc_23E70
loc_23E6E:
		bra.s   loc_23E7A
loc_23E70:
		addq.w  #1,a0
		btst    #0,(a1,d1.w)
		bne.s   loc_23E28
loc_23E7A:
		move.b  #$FF,(a2)
		bsr.s   sub_23E8E
		move.w  d2,((word_FFCB38-$1000000)).w
		move.w  d1,((word_FFCB3A-$1000000)).w
		movem.l (sp)+,d0-d6/a0-a2
		rts

    ; End of function sub_23DEC


; =============== S U B R O U T I N E =======================================

sub_23E8E:
		divu.w  d3,d2
		move.w  d2,d1
		swap    d2
		bsr.w   CalculateDistance
		rts

    ; End of function sub_23E8E


; =============== S U B R O U T I N E =======================================

sub_23E9A:
		movem.l d3/d5-d6/a0-a1,-(sp)
		move.w  d1,d5
		move.w  d2,d6
		jsr     j_GetCombatantPosition
		jsr     j_GetMoveCostEntryAddress
		bsr.w   LoadMoveCosts   
		lea     ((MOVE_COSTS-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d4
		addq.w  #1,d2
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		subq.w  #2,d2
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		addq.w  #1,d2
		addq.w  #1,d1
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		subq.w  #2,d1
		bsr.s   sub_23EE2
		bcc.s   loc_23EDA
		move.w  d5,d1
		move.w  d6,d2
		bra.s   loc_23EDC
loc_23EDA:
		clr.w   d4
loc_23EDC:
		movem.l (sp)+,d3/d5-d6/a0-a1
		rts

    ; End of function sub_23E9A


; =============== S U B R O U T I N E =======================================

sub_23EE2:
		bsr.w   IsSpaceOccupied 
		bcs.s   @Return
		move.w  d1,d3
		mulu.w  d4,d3
		add.w   d2,d3
		tst.b   (a1,d3.w)
		bge.s   @Return
		ori     #1,ccr
@Return:
		rts

    ; End of function sub_23EE2


; =============== S U B R O U T I N E =======================================

sub_23EFA:
		movem.l d1-d2/a3,-(sp)
		jsr     j_GetCombatantPosition
		movem.w d1-d2,-(sp)
		move.w  ((word_FFCB38-$1000000)).w,d2
		move.w  ((word_FFCB3A-$1000000)).w,d1
		jsr     j_SetCombatantPosition
		move.b  ((CURRENT_BATTLEACTION_TYPE-$1000000)).w,d1
		cmpi.b  #BATTLE_ACTION_TYPE_CAST_SPELL,d1
		bne.s   loc_23F30
		move.b  ((CURRENT_ITEM_OR_SPELL-$1000000)).w,d1
		jsr     j_FindTargetableSpacesForSpell
		movea.l ((PRIORITY_ROUTINE_ADDRESS-$1000000)).w,a3
		bra.s   loc_23F50
loc_23F30:
		cmpi.b  #BATTLE_ACTION_TYPE_USE_ITEM,d1
		bne.s   loc_23F46
		move.b  ((CURRENT_ITEM_OR_SPELL-$1000000)).w,d1
		jsr     j_UseItem
		movea.l ((PRIORITY_ROUTINE_ADDRESS-$1000000)).w,a3
		bra.s   loc_23F50
loc_23F46:
		jsr     j_FindTargetableSpacesForAttack
		lea     priority_ClassDistanceHealth(pc), a3
loc_23F50:
		bsr.w   sub_24324       
		bcc.s   loc_23F5A
		clr.w   ((TABLE_AT_FFA8C0-$1000000)).w
loc_23F5A:
		movem.w (sp)+,d1-d2
		jsr     j_SetCombatantPosition
		tst.w   ((TABLE_AT_FFA8C0-$1000000)).w
		movem.l (sp)+,d1-d2/a3
		rts

    ; End of function sub_23EFA


; =============== S U B R O U T I N E =======================================

; Determine AI action -> CCR carry-bit set if regular attack

DetermineAiAction:
		
		movem.l d1-d2/d7-a0,-(sp)
		jsr     j_GetClassForCombatant
		bsr.w   GetClassEntryAddress
		move.b  CLASSDEF_OFFSET_PROPERTIES(a0),d2
		andi.w  #CLASS_PROPERTY_MASK_AI_ACTION_CHANCE,d2
		asr.w   #4,d2
		move.b  tbl_AiActionPercents(pc,d2.w),d2
		bsr.w   GenerateRandomNumber0To99
		cmp.b   d2,d7
		bcc.s   @RegularAttack
		move.b  CLASSDEF_OFFSET_AI_ACTION(a0),d2
		cmpi.b  #AI_ACTION_REGULAR_ATTACK,d2
		beq.s   @RegularAttack
		                
		cmpi.b  #AI_ACTION_CAST_SPELL,d2
		bne.s   @CheckUseItemSlot0
		bsr.w   AiAction_CastSpell
		bra.s   @Done
@CheckUseItemSlot0:
		
		cmpi.b  #AI_ACTION_USE_ITEM_SLOT_0,d2
		bne.s   @CheckUseItemSlot1
		clr.w   d2              ; use item in slot 0
		bsr.w   AiAction_UseItem
		bra.s   @Done
@CheckUseItemSlot1:
		
		cmpi.b  #AI_ACTION_USE_ITEM_SLOT_1,d2
		bne.s   @CheckDarkDragon
		moveq   #1,d2           ; use item in slot 1
		bsr.w   AiAction_UseItem
		bra.s   @Done
@CheckDarkDragon:
		
		cmpi.b  #AI_ACTION_DARK_DRAGON,d2
		bne.s   @SpecialAttack
		bsr.w   AiAction_DarkDragon
		bra.s   @Done
@SpecialAttack:
		
		move.b  #1,((CURRENT_ATTACK_TYPE-$1000000)).w
		move.b  #2,((BATTLE_ANIMATION_TYPE-$1000000)).w
		ext.w   d2
		add.w   d2,d2
		lea     tbl_SpecialAiActionDefs(pc,d2.w),a0
		move.b  (a0)+,d4        ; D4 = range index
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		bsr.w   LoadRangeData   
		move.b  (a0),((CURRENT_EFFECT-$1000000)).w
		clr.b   ((CURRENT_BATTLEACTION_TYPE-$1000000)).w
@Done:
		movem.l (sp)+,d1-d2/d7-a0
		rts
@RegularAttack:
		
		ori     #1,ccr
		bra.s   @Done

    ; End of function DetermineAiAction

tbl_AiActionPercents:
		dc.b 100
		dc.b 25
		dc.b 50
		dc.b 75

    include "data\stats\enemies\specialaiactions.asm"

; =============== S U B R O U T I N E =======================================

; Cast spell AI -> CCR carry-bit set if unable to proceed

AiAction_CastSpell:
		
		movem.l d1-d4/a0-a1,-(sp)
		jsr     j_GetEntitySpellsAddressForCombatant
		cmpi.b  #EMPTY_SPELL_SLOT,(a0)
		beq.w   @RegularAttack  ; skip if spell slot is empty
		jsr     j_GetCurrentMpForCombatant
		move.w  d1,d3           ; D3 = caster's current MP
		move.b  (a0),d1         ; D1 = spell index
		move.b  d1,d4
		andi.w  #SPELLENTRY_MASK_LEVEL,d4
		asr.w   #6,d4           ; D4 = spell level counter
@Loop:
		jsr     j_GetMPCost
		cmp.w   d2,d3
		bge.s   @Break          ; break out of loop if current MP is sufficient to cast spell at level being currently evaluated
		subi.b  #$40,d1 ; get previous level spell index
		dbf     d4,@Loop
                
		bra.s   @RegularAttack  ; fall back to regular attack if unable to cast
@Break:
		bsr.s   LoadAiSpellcastData
@Done:
		movem.l (sp)+,d1-d4/a0-a1
		rts
@RegularAttack:
		
		ori     #1,ccr
		bra.s   @Done

    ; End of function AiAction_CastSpell


; =============== S U B R O U T I N E =======================================

; Caster AI : prepare to cast spell D1

LoadAiSpellcastData:
		
		movem.l d1/d4/a0-a1,-(sp)
		bsr.w   GetSpellEntryAddress
		move.b  (a1),d4
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		bsr.w   LoadRangeData   
		move.b  SPELL_OFFSET_EFFECT(a1),((CURRENT_EFFECT-$1000000)).w
		move.b  #1,((CURRENT_BATTLEACTION_TYPE-$1000000)).w
		move.b  d1,((CURRENT_ITEM_OR_SPELL-$1000000)).w
		andi.w  #SPELLENTRY_MASK_INDEX,d1
		add.w   d1,d1
		lea     rp_PriorityRoutine_Heal(pc,d1.w),a0
		move.w  (a0),d1
		adda.w  d1,a0
		move.l  a0,((PRIORITY_ROUTINE_ADDRESS-$1000000)).w
		movem.l (sp)+,d1/d4/a0-a1
		rts

    ; End of function LoadAiSpellcastData

rp_PriorityRoutine_Heal:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Heal
rp_PriorityRoutine_Aura:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Aura
rp_PriorityRoutine_Detox:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Detox
rp_PriorityRoutine_Quick:
		dc.w PriorityRoutine_NotQuickened-rp_PriorityRoutine_Quick
rp_PriorityRoutine_Slow:
		dc.w PriorityRoutine_NotSlowed-rp_PriorityRoutine_Slow
rp_PriorityRoutine_Boost:
		dc.w PriorityRoutine_NotBoosted-rp_PriorityRoutine_Boost
rp_PriorityRoutine_Dispel:
		dc.w PriorityRoutine_NotDispelled-rp_PriorityRoutine_Dispel
rp_PriorityRoutine_Shield:
		dc.w PriorityRoutine_NotShielded-rp_PriorityRoutine_Shield
rp_PriorityRoutine_Muddle:
		dc.w PriorityRoutine_NotMuddled-rp_PriorityRoutine_Muddle
rp_PriorityRoutine_Blaze:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Blaze
rp_PriorityRoutine_Freeze:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Freeze
rp_PriorityRoutine_Bolt:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Bolt
rp_PriorityRoutine_Desoul:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Desoul
rp_PriorityRoutine_Egress:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_Egress
rp_PriorityRoutine_dummy:
		dc.w PriorityRoutine_LowHealth-rp_PriorityRoutine_dummy
rp_PriorityRoutine_Sleep:
		dc.w priority_ClassDistanceHealth-rp_PriorityRoutine_Sleep

; =============== S U B R O U T I N E =======================================

AiAction_DarkDragon:
		
		movem.l d1/d7-a0,-(sp)
		bsr.w   GenerateRandomNumber0To99
		lea     tbl_DarkDragonSpells(pc), a0
@Loop:
		sub.b   (a0)+,d7
		bcs.s   @Break
		addq.l  #1,a0
		bra.s   @Loop
@Break:
		move.b  (a0),d1
		bsr.w   LoadAiSpellcastData
		movem.l (sp)+,d1/d7-a0
		rts

    ; End of function AiAction_DarkDragon

    include "data\stats\enemies\darkdragonspells.asm"

; =============== S U B R O U T I N E =======================================

; Use item AI -> CCR carry-bit set if unable to proceed

AiAction_UseItem:
		
		movem.l d1-d2/d4/a0-a1,-(sp)
		move.b  d2,((CURRENT_ITEM_OR_SPELL-$1000000)).w
		jsr     j_GetEntityItemsAddressForCombatant
		move.b  (a0,d2.w),d1    ; D1 = item index in slot number D2
		cmpi.b  #EMPTY_ITEM_SLOT,d1
		beq.s   @RegularAttack  ; fall back to regular attack if item slot is empty
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_USABLE,d2
		beq.s   @RegularAttack  ; fall back to regular attack if item is not usable
		bsr.w   GetItemEntryAddress
		move.b  ITEMDEF_OFFSET_USE_RANGE(a1),d4
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		bsr.s   LoadRangeData   
		move.b  ITEMDEF_OFFSET_USE_EFFECT(a1),((CURRENT_EFFECT-$1000000)).w
		bsr.w   GetRangeEntryAddress
		btst    #RANGE_GROUP_FLAG_FRIENDS,RANGE_OFFSET_GROUP(a1)
		beq.s   @TargetingFoes
		lea     PriorityRoutine_LowHealth(pc), a1
		bra.s   @Continue
@TargetingFoes:
		
		lea     priority_ClassDistanceHealth(pc), a1
@Continue:
		move.l  a1,((PRIORITY_ROUTINE_ADDRESS-$1000000)).w
		move.b  #2,((CURRENT_BATTLEACTION_TYPE-$1000000)).w
@Done:
		movem.l (sp)+,d1-d2/d4/a0-a1
		rts
@RegularAttack:
		
		ori     #1,ccr
		bra.s   @Done

    ; End of function AiAction_UseItem


; =============== S U B R O U T I N E =======================================

LoadRegularAttackData:
		
		movem.l d4-d5,-(sp)
		clr.b   ((CURRENT_ATTACK_TYPE-$1000000)).w
		clr.b   ((BATTLE_ANIMATION_TYPE-$1000000)).w
		bsr.w   Battleaction_Attack
		move.b  d4,((CURRENT_RANGE-$1000000)).w
		move.b  d5,((CURRENT_EFFECT-$1000000)).w
		bsr.s   LoadRangeData   
		clr.b   ((CURRENT_BATTLEACTION_TYPE-$1000000)).w
		movem.l (sp)+,d4-d5
		rts

    ; End of function LoadRegularAttackData


; =============== S U B R O U T I N E =======================================

; Load range D4 data

LoadRangeData:
		
		movem.l d4/a1,-(sp)
		bsr.w   GetRangeEntryAddress
		clr.w   d4
		move.b  (a1),d4
		cmpi.b  #4,d4           ; max distance must lower than 4
		bcs.s   @Continue
		moveq   #1,d4
@Continue:
		move.w  d4,((CURRENT_RANGE_MAX_DISTANCE-$1000000)).w
		move.b  RANGE_OFFSET_MIN_DISTANCE(a1),d4
		move.w  d4,((CURRENT_RANGE_MIN_DISTANCE-$1000000)).w
		move.b  RANGE_OFFSET_GROUP(a1),d4
		bsr.w   GetAdjustedGroupFlags
		move.b  d4,((TARGETING_RANGE_BITFIELD-$1000000)).w
		movem.l (sp)+,d4/a1
		rts

    ; End of function LoadRangeData


; =============== S U B R O U T I N E =======================================

sub_241A2:
		movem.w d1,-(sp)
		cmpi.b  #$FF,d1
		bne.s   loc_241B0
		bsr.w   sub_241CA
loc_241B0:
		move.w  ((TARGETS_LIST-$1000000)).w,d1
		cmpi.b  #$FF,d1
		beq.s   loc_241C0
		bsr.w   sub_24220
		bra.s   loc_241C4
loc_241C0:
		bsr.w   sub_2423E
loc_241C4:
		movem.w (sp)+,d1
		rts

    ; End of function sub_241A2


; =============== S U B R O U T I N E =======================================

sub_241CA:
		movem.l d0-d4,-(sp)
		jsr     j_GetModifiedMove
		move.w  d1,d3
		add.w   d3,d3
		clr.w   d4
		bsr.w   SetupEffectiveMoveCosts
		bsr.w   MakeEffectivePassabilityFlags
		move.b  -2(a0),d1
		bsr.w   sub_241F8
		lea     priority_ClassDistanceHealth(pc), a3
		bsr.w   sub_24324       
		movem.l (sp)+,d0-d4
		rts

    ; End of function sub_241CA


; =============== S U B R O U T I N E =======================================

sub_241F8:
		movem.l d0/d2/a0-a1,-(sp)
		lea     ((byte_FFB0C0-$1000000)).w,a0
		lea     -$C00(a0),a1
		clr.w   d2
		move.w  #$3FF,d0
loc_2420A:
		move.b  (a0)+,d2
		btst    d2,d1
		beq.s   loc_24214
		andi.b  #1,(a1)
loc_24214:
		addq.w  #1,a1
		dbf     d0,loc_2420A

		movem.l (sp)+,d0/d2/a0-a1
		rts

    ; End of function sub_241F8


; =============== S U B R O U T I N E =======================================

sub_24220:
		movem.l d0-d4,-(sp)
		move.b  d0,d4
		move.b  d1,d0
		jsr     j_GetCombatantPosition
		move.b  d4,d0
		move.w  ((CURRENT_RANGE_MAX_DISTANCE-$1000000)).w,d3
		bsr.w   sub_23D9C
		movem.l (sp)+,d0-d4
		rts

    ; End of function sub_24220


; =============== S U B R O U T I N E =======================================

sub_2423E:
		movem.w d1-d2,-(sp)
		move.b  #$FF,((byte_FFCB28-$1000000)).w
		jsr     j_GetCombatantPosition
		move.w  d2,((word_FFCB38-$1000000)).w
		move.w  d1,((word_FFCB3A-$1000000)).w
		movem.w (sp)+,d1-d2
		rts

    ; End of function sub_2423E


; =============== S U B R O U T I N E =======================================

; Trigger AI regions (or set AI regions to trigger?)

sub_2425C:
		movem.l d0-d3/a0,-(sp)
		clr.b   d3
		lea     ((byte_FFB0C0-$1000000)).w,a0
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_24268:
		jsr     j_GetEntity
		tst.b   d1
		blt.s   loc_24284       ; branch if enemy
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  (a0,d1.w),d2
		bset    d2,d3
loc_24284:
		dbf     d0,loc_24268

		move.b  d3,((TRIGGERED_AI_REGIONS-$1000000)).w
		movem.l (sp)+,d0-d3/a0
		rts

    ; End of function sub_2425C


; =============== S U B R O U T I N E =======================================

sub_24292:
		movem.l d1-d3,-(sp)
		movea.l ((ENEMY_BEHAVIORS_POINTER-$1000000)).w,a0
		move.l  a0,d2
		beq.w   loc_242E6
		jsr     j_GetEntity
		andi.w  #$7F,d1 
loc_242AA:
		clr.w   d2
		move.b  (a0),d2
		cmpi.b  #$FF,d2
		beq.w   loc_242E6
		tst.b   d1
		beq.s   loc_242C4
		asl.w   #2,d2
		lea     1(a0,d2.w),a0
		subq.w  #1,d1
		bra.s   loc_242AA
loc_242C4:
		addq.l  #1,a0
		tst.w   d2
loc_242C8:
		beq.w   loc_242E6
		move.b  ((TRIGGERED_AI_REGIONS-$1000000)).w,d3
		and.b   (a0),d3
		bne.s   loc_242DA
		addq.l  #4,a0
		subq.w  #1,d2
		bra.s   loc_242C8
loc_242DA:
		addq.l  #1,a0
		clr.w   d7
		move.b  (a0)+,d7
loc_242E0:
		movem.l (sp)+,d1-d3
		rts
loc_242E6:
		move.w  #-1,d7
		bra.s   loc_242E0

    ; End of function sub_24292


; =============== S U B R O U T I N E =======================================

sub_242EC:
		move.l  a0,-(sp)
		jsr     j_GetEntity
		andi.w  #$7F,d1 
		lea     ((byte_FFA496-$1000000)).w,a0
		move.b  (a0,d1.w),d1
		ext.w   d1
		movea.l (sp)+,a0
		rts

    ; End of function sub_242EC


; =============== S U B R O U T I N E =======================================

sub_24306:
		movem.l d2/a0,-(sp)
		move.b  d1,d2
		jsr     j_GetEntity
		andi.w  #$7F,d1 
		lea     ((byte_FFA496-$1000000)).w,a0
		move.b  d2,(a0,d1.w)
		movem.l (sp)+,d2/a0
		rts

    ; End of function sub_24306


; =============== S U B R O U T I N E =======================================

; In: A3 = priority routine address

sub_24324:
		movem.l d1/d6/a0-a2,-(sp)
		move.b  ((TARGETING_RANGE_BITFIELD-$1000000)).w,((TARGETING_GROUP_BITFIELD-$1000000)).w
		jsr     j_PopulateTargetsList
		lea     ((byte_FFA8C2-$1000000)).w,a0
		lea     $84(a0),a1
		lea     $C6(a0),a2
		move.w  -2(a0),d1
		subq.w  #1,d1
		blt.s   loc_24372
loc_24348:
		jsr     (a3)
		move.w  d6,(a2)+
		adda.w  #4,a0
		adda.w  #2,a1
		dbf     d1,loc_24348

		bsr.w   sub_245A2
		tst.w   ((TARGET_PRIORITY_TABLE-$1000000)).w
		beq.s   loc_24372
		move.w  ((TARGETS_LIST-$1000000)).w,d1
		bsr.w   CalculateDistanceBetweenCombatants
		tst.w   d0
loc_2436C:
		movem.l (sp)+,d1/d6/a0-a2
		rts
loc_24372:
		ori     #1,ccr
		bra.s   loc_2436C

    ; End of function sub_24324


; =============== S U B R O U T I N E =======================================

priority_ClassDistanceHealth:
		
		clr.w   d6
		bsr.s   ApplyClassToTargetPriority
		bsr.w   ApplyDistanceToTargetPriority
		bsr.w   ApplyHealthToTargetPriority
		rts

    ; End of function priority_ClassDistanceHealth


; =============== S U B R O U T I N E =======================================

; Apply class to target priority -> d6.w
; 
; 2 points per class priority value.

ApplyClassToTargetPriority:
		
		movem.l d0-d1/a0,-(sp)
		lea     table_AiPriority_Null(pc), a0
		move.w  (a1),d0
		jsr     j_GetClassForCombatant
		move.b  (a0,d1.w),d1             ; BUG: does not offset to proper table for movetype
		andi.w  #$FF,d1
		muls.w  #2,d1
		add.w   d1,d6
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function ApplyClassToTargetPriority

    include "data\battles\global\aipriority.asm"

; =============== S U B R O U T I N E =======================================

; Apply distance to target priority -> d6.w
; 
; Starts at 400 points for adjacent targets, -40 points per distance greater than 1 space.

ApplyDistanceToTargetPriority:
		
		movem.l d1-d2/a0,-(sp)
		move.w  (a0)+,d2
		move.w  (a0),d1
		bsr.w   CalculateDistanceToTarget
		move.w  #100,d1
		subq.w  #1,d7
		muls.w  #10,d7
		sub.w   d7,d1
		ble.s   loc_244EA
		muls.w  #4,d1
		add.w   d1,d6
loc_244EA:
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function ApplyDistanceToTargetPriority


; =============== S U B R O U T I N E =======================================

ApplyHealthToTargetPriority:
		
		movem.l d0-d2,-(sp)
		move.w  (a1),d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d2
		jsr     j_GetCurrentHpForCombatant
		muls.w  #100,d1
		divs.w  d2,d1
		muls.w  #1,d1
		add.w   d1,d6
		movem.l (sp)+,d0-d2
		rts

    ; End of function ApplyHealthToTargetPriority


; =============== S U B R O U T I N E =======================================

PriorityRoutine_LowHealth:
		
		movem.l d0-d2,-(sp)
		move.w  (a1),d0
		jsr     j_GetMaxHpForCombatant
		move.w  d1,d2
		jsr     j_GetCurrentHpForCombatant
		move.w  d2,-(sp)
		sub.w   d1,d2
		muls.w  #100,d2
		move.w  (sp)+,d1
		divs.w  d1,d2
		move.w  d2,d6
		movem.l (sp)+,d0-d2
		rts

    ; End of function PriorityRoutine_LowHealth


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotQuickened:
		
		move.w  #STATUSEFFECT_QUICK,d6
		bra.s   sub_24562

    ; End of function PriorityRoutine_NotQuickened


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotBoosted:
		
		move.w  #STATUSEFFECT_BOOST,d6
		bra.s   sub_24562

    ; End of function PriorityRoutine_NotBoosted


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotShielded:
		
		move.w  #STATUSEFFECT_SHIELD,d6
		bra.s   sub_24562

    ; End of function PriorityRoutine_NotShielded


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotSlowed:
		
		move.w  #STATUSEFFECT_SLOW,d6
		bra.s   sub_24580

    ; End of function PriorityRoutine_NotSlowed


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotDispelled:
		
		move.w  #STATUSEFFECT_DISPEL,d6
		bra.s   sub_24580

    ; End of function PriorityRoutine_NotDispelled


; =============== S U B R O U T I N E =======================================

PriorityRoutine_NotMuddled:
		
		move.w  #STATUSEFFECT_MUDDLE,d6
		bra.s   sub_24580

    ; End of function PriorityRoutine_NotMuddled


; =============== S U B R O U T I N E =======================================

sub_24562:
		movem.l d0-d1,-(sp)
		move.w  (a1),d0
		jsr     j_GetStatusEffectsForCombatant
		and.w   d6,d1
		beq.s   loc_24576
		clr.w   d6
		bra.s   loc_2457A
loc_24576:
		move.w  #100,d6
loc_2457A:
		movem.l (sp)+,d0-d1
		rts

    ; End of function sub_24562


; =============== S U B R O U T I N E =======================================

sub_24580:
		movem.l d0-d2,-(sp)
		move.b  d0,d2
		move.w  (a1),d0
		jsr     j_GetStatusEffectsForCombatant
		and.w   d6,d1
		beq.s   loc_24596
		clr.w   d6
		bra.s   loc_2459C
loc_24596:
		move.b  d2,d0
		bsr.w   priority_ClassDistanceHealth
loc_2459C:
		movem.l (sp)+,d0-d2
		rts

    ; End of function sub_24580


; =============== S U B R O U T I N E =======================================

sub_245A2:
		movem.l d0-d2/a0-a5,-(sp)
		lea     ((byte_FFA8C2-$1000000)).w,a0
		lea     $84(a0),a1
		lea     $C6(a0),a2
		move.w  -2(a0),d0
		subq.w  #1,d0
loc_245B8:
		ble.s   loc_24602
		lea     4(a0),a3
		lea     2(a1),a4
		lea     2(a2),a5
		move.w  d0,d1
loc_245C8:
		subq.w  #1,d1
		blt.s   loc_245F2
		move.w  (a2),d2
		cmp.w   (a5),d2
		bcc.s   loc_245E4
		move.l  (a0),d2
		move.l  (a3),(a0)
		move.l  d2,(a3)
		move.w  (a1),d2
		move.w  (a4),(a1)
		move.w  d2,(a4)
		move.w  (a2),d2
		move.w  (a5),(a2)
		move.w  d2,(a5)
loc_245E4:
		adda.w  #4,a3
		adda.w  #2,a4
		adda.w  #2,a5
		bra.s   loc_245C8
loc_245F2:
		adda.w  #4,a0
		adda.w  #2,a1
		adda.w  #2,a2
		subq.w  #1,d0
		bra.s   loc_245B8
loc_24602:
		movem.l (sp)+,d0-d2/a0-a5
		rts

    ; End of function sub_245A2


; =============== S U B R O U T I N E =======================================

; Get land effect of space occupied by combatant D0 -> D1

GetLandEffectForCombatant:
		
		move.w  d2,-(sp)
		jsr     j_GetCombatantPosition
		bsr.s   GetLandEffectAtPosition
		move.w  (sp)+,d2
		rts

    ; End of function GetLandEffectForCombatant


; =============== S U B R O U T I N E =======================================

; Get land effect of space at position D2,D1 -> D1

GetLandEffectAtPosition:
		
		movem.l d2/a1,-(sp)
		bsr.s   GetTerrainEntryAddress
		movea.l a0,a1
		move.b  (a1),d1
		jsr     j_GetLandEffectEntryAddress
		andi.w  #$FF,d1
		clr.w   d2
		move.b  (a0,d1.w),d2
		move.b  1(a1),d1
		movea.l (off_203E4).l,a0
		bsr.w   GetVariableLengthEntryAddress
		move.w  d2,d1
		movem.l (sp)+,d2/a1
		rts

    ; End of function GetLandEffectAtPosition


; =============== S U B R O U T I N E =======================================

; Get terrain entry address of space at position D2,D1 -> A0

GetTerrainEntryAddress:
		
		movem.w d1-d2,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1
		move.b  (a0,d1.w),d1
		movea.l (p_TerrainData).l,a0
		andi.w  #$FF,d1
		asl.w   #2,d1
		adda.w  d1,a0
		movem.w (sp)+,d1-d2
		rts

    ; End of function GetTerrainEntryAddress


; =============== S U B R O U T I N E =======================================

sub_2466C:
		movem.l d2/a0,-(sp)
		bsr.w   IsFlyingOrHovering
		bne.s   loc_2467A
		clr.w   d1
		bra.s   loc_24688
loc_2467A:
		jsr     j_GetCombatantPosition
		bsr.s   GetTerrainEntryAddress
		move.b  3(a0),d1
		ext.w   d1
loc_24688:
		movem.l (sp)+,d2/a0
		rts

    ; End of function sub_2466C


; =============== S U B R O U T I N E =======================================

; Get background layers for terrain -> D0, D1

GetTerrainBackgrounds:
		
		movem.l d2/a0,-(sp)
		jsr     j_GetCombatantPosition
		bsr.s   GetTerrainEntryAddress
		move.w  #$FFFF,d0
		move.b  2(a0),d1
		ext.w   d1
		cmpi.w  #$FFFF,d1
		beq.s   loc_246CE
		tst.b   d1
		bge.s   loc_246CA
		clr.w   d0
		move.b  ((CURRENT_CHAPTER-$1000000)).w,d0
		cmpi.b  #9,d0
		bcc.s   loc_246C0
		move.b  byte_246D4-1(pc,d0.w),d0
		bra.s   loc_246C8
loc_246C0:
		move.b  ((byte_FFCBB3-$1000000)).w,d0
		move.b  byte_246DB(pc,d0.w),d0
loc_246C8:
		ext.w   d0
loc_246CA:
		andi.w  #$7F,d1 
loc_246CE:
		movem.l (sp)+,d2/a0
		rts

    ; End of function GetTerrainBackgrounds

byte_246D4:
        dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b $FF
		dc.b 0
		dc.b 0
byte_246DB:
        dc.b 8
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 0
		dc.b 8
		dc.b 8
		dc.b 8
		dc.b $FF

; =============== S U B R O U T I N E =======================================

LevelUp:
		bsr.s   IncreaseStatsOnLevelUpForCombatant
		bcs.s   @Return
		bsr.w   DisplayLevelUpMessages
		tst.b   d0
@Return:
		rts

    ; End of function LevelUp


; =============== S U B R O U T I N E =======================================

; Increase stats on level up by force index

IncreaseStatsOnLevelUpForCombatant:
		
		movem.w d0,-(sp)
		bsr.w   alt_GetEntity   
		bsr.s   IncreaseStatsOnLevelUp
		movem.w (sp)+,d0
		rts

    ; End of function IncreaseStatsOnLevelUpForCombatant


; =============== S U B R O U T I N E =======================================

; Increase stats for force member D0 on level up

IncreaseStatsOnLevelUp:
		
		movem.l d0-d4/a0,-(sp)
		bsr.w   IsAtLevelCap    
		bcs.w   loc_247EA       ; if so, exit
		cmpi.b  #ALLY_JOGURT,d0
		beq.s   loc_24722       ; if force member is Jogurt, skip
		moveq   #1,d1           ; otherwise add 1 to level
		jsr     j_IncreaseLevel
loc_24722:
		clr.w   d1              ; set EXP to 0
		jsr     j_SetExperience
		jsr     j_GetLevel
		move.w  d1,d3           ; get new level, save to D3
		clr.w   d4
		lea     ((STATS_TO_GAIN-$1000000)).w,a0
		jsr     j_GetBaseAttack
		move.w  d1,d2           ; get current Attack to D2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+        ; store difference for message box
		jsr     j_SetBaseAttack
		addq.w  #1,d4
		jsr     j_GetBaseDefense
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetBaseDefense
		addq.w  #1,d4
		jsr     j_GetBaseAgility
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetBaseAgility
		addq.w  #1,d4
		jsr     j_GetMaxHP
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetMaxHP
		addq.w  #1,d4
		jsr     j_GetMaxMP
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetMaxMP
		addq.w  #1,d4
		jsr     j_GetBaseCritical
		move.w  d1,d2
		move.w  d4,d1
		bsr.w   CalculateTotalStatGrowth
		bsr.w   CalculateStatGain
		move.b  d2,(a0)+
		jsr     j_SetBaseCritical
		addq.w  #1,d4
		bsr.w   LearnSpell      
		bsr.w   LoadCombatantDataForForceMember
		tst.b   d0
loc_247EA:
		movem.l (sp)+,d0-d4/a0
		rts

    ; End of function IncreaseStatsOnLevelUp


; =============== S U B R O U T I N E =======================================

; Calculate maximum increase of stat given target D1, current D2 and level D3 -> D2

CalculateStatGain:
		
		movem.l d6-d7,-(sp)
		tst.w   d1              ; check that target stat value isn't zero
		bne.s   loc_247FC       
		clr.w   d2
		bra.s   loc_2484C       ; if so, just end
loc_247FC:
		cmpi.w  #GROWTH_PROJECTION_LEVEL,d3
						; check if level <= 20
		ble.s   loc_2481A
		cmpi.w  #FORCE_STAT_CAP,d2; check if stat >= 99
		bge.s   loc_2481A
		                
		move.w  d2,d1           ; set target stat to current value
		moveq   #4,d6           ; get random number in the range 0-3
		jsr     (j_GenerateRandomNumber).l
		tst.w   d7
		bne.s   loc_24818
		addq.w  #1,d1           ; if zero add one to target (1/4 chance of increasing target by 1)
loc_24818:
		bra.s   loc_24846
loc_2481A:
		move.w  d1,d6
		asr.w   #2,d6           ; increase target stat randomly, anywhere from 0 to 25% of target or 4, whichever is lower
		cmpi.w  #5,d6
		ble.s   loc_24826
		moveq   #5,d6
loc_24826:
		jsr     (j_GenerateRandomNumber).l
		add.w   d7,d1
		jsr     (j_GenerateRandomNumber).l
						; do it again but substract
		sub.w   d7,d1
		cmpi.w  #FORCE_STAT_CAP,d1; cap target at 99
		ble.s   loc_24840       
		move.w  #FORCE_STAT_CAP,d1
loc_24840:
		cmp.w   d2,d1           ; keep highest of current (D2) and target (D1)
		bge.s   loc_24846
		move.w  d2,d1
loc_24846:
		move.w  d1,d7
		sub.w   d2,d7
		move.w  d7,d2
loc_2484C:
		movem.l (sp)+,d6-d7
		rts

    ; End of function CalculateStatGain


; =============== S U B R O U T I N E =======================================

DisplayLevelUpMessages:
		
		movem.l d0-d2/a0-a1,-(sp)
		movem.l d0-a6,-(sp)
		jsr     sub_8014
		jsr     sub_124020
		movem.l (sp)+,d0-a6
		trap    #5
		lea     ((MESSAGE_ARG_NAME_1-$1000000)).w,a0
		move.w  d0,(a0)+
		move.w  d0,(a0)
		lea     ((MESSAGE_ARG_NUMBER-$1000000)).w,a0
		moveq   #0,d1
		jsr     j_GetLevelForCombatant
		move.l  d1,(a0)
		jsr     j_GetEntity
		cmpi.b  #ALLY_JOGURT,d1
		bne.s   loc_2489A       
		move.w  #$1F3,d0        ; "...[Wait2]It appears that [Name]'s[Line]level increases to [Num].[Line]"
		trap    #DISPLAY_MESSAGE
		bra.w   loc_2490A
		bra.s   loc_248A0
loc_2489A:
		move.w  #$1EB,d0        ; "[Name]'s level increases[Line]to [Num]![Wait2]"
		trap    #DISPLAY_MESSAGE
loc_248A0:
		lea     ((STATS_TO_GAIN-$1000000)).w,a1
		move.b  (a1)+,d1
		beq.s   loc_248B0
		move.l  d1,(a0)
		move.w  #$1EC,d0        ; "Attack level increases[Line]by [Num].[Wait2]"
		trap    #DISPLAY_MESSAGE
loc_248B0:
		move.b  (a1)+,d1
		beq.s   loc_248BC
		move.l  d1,(a0)
		move.w  #$1ED,d0        ; "Defense level increases[Line]by [Num].[Wait2]"
		trap    #DISPLAY_MESSAGE
loc_248BC:
		move.b  (a1)+,d1
		beq.s   loc_248C8
		move.l  d1,(a0)
		move.w  #$1EE,d0        ; "Speed increases by [Num].[Wait2]"
		trap    #DISPLAY_MESSAGE
loc_248C8:
		move.b  (a1)+,d1
		beq.s   loc_248D4
		move.l  d1,(a0)
		move.w  #$1EF,d0        ; "Maximum hit points increases[Line]by [Num].[Wait2]"
		trap    #DISPLAY_MESSAGE
loc_248D4:
		move.b  (a1)+,d1
		beq.s   loc_248E0
		move.l  d1,(a0)
		move.w  #$1F0,d0        ; "Maximum magic points[Line]increases by [Num].[Wait2]"
		trap    #DISPLAY_MESSAGE
loc_248E0:
		addq.l  #1,a1
loc_248E2:
		move.b  (a1)+,d1
		cmpi.b  #$FF,d1
		beq.s   loc_2490A
		move.b  d1,d2
		andi.w  #SPELLENTRY_MASK_INDEX,d2
		move.w  d2,((MESSAGE_ARG_NAME_1-$1000000)).w
		asr.l   #6,d1
		addq.l  #1,d1
		move.w  #$1F1,d0        ; "And learns a new[Line][Spell] spell.[Wait2]"
		move.l  d1,(a0)
		cmpi.b  #1,d1
		beq.s   loc_24906
		addq.w  #1,d0
loc_24906:
		trap    #DISPLAY_MESSAGE
		bra.s   loc_248E2
loc_2490A:
		trap    #6
		movem.l (sp)+,d0-d2/a0-a1
		rts

    ; End of function DisplayLevelUpMessages


; =============== S U B R O U T I N E =======================================

; Promote force member D0 (save level promoted at to $FFA16A table, add 16 to class index)

Promote:
		movem.l d0-d2,-(sp)
		jsr     j_GetLevel
		andi.w  #$FF,d0
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		move.b  d1,(a0,d0.w)
		jsr     j_GetClass
		addi.w  #16,d1
		jsr     j_SetClass
		clr.w   d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseAttack
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseDefense
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseAgility
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetMaxHP
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetMaxMP
		addq.w  #1,d2
		move.w  d2,d1
		bsr.w   CalculateInitialStatValue
		jsr     j_SetBaseCritical
		addq.w  #1,d2
		                
		moveq   #1,d1
		jsr     j_SetLevel
		clr.w   d1
		jsr     j_SetExperience
		jsr     j_GetCurrentHP
		move.w  d1,d2
		jsr     j_GetMaxHP
		cmp.w   d2,d1
		bge.s   loc_249B6
		jsr     j_SetCurrentHP
loc_249B6:
		jsr     j_GetCurrentMP
		move.w  d1,d2
		jsr     j_GetMaxMP
		cmp.w   d2,d1
		bge.s   loc_249CE
		jsr     j_SetCurrentMP
loc_249CE:
		bsr.w   LoadCombatantDataForForceMember
		movem.l (sp)+,d0-d2
		rts

    ; End of function Promote


; =============== S U B R O U T I N E =======================================

; Calculate force member D0 total growth for stat D1 -> D1

CalculateTotalStatGrowth:
		
		movem.l d2-d4/a0,-(sp)
		bsr.w   GetGrowthEntryAddress
		move.b  (a0,d1.w),d2    ; D2 = stat D1 growth value
		bsr.s   MapStatToForceEntryOffset
		bsr.s   CalculateInitialStatValue
		move.w  d1,d4           ; D4 = stat D1 base value
		jsr     j_GetLevel
		bsr.w   CalculateGrowthTarget
		add.w   d4,d1
		movem.l (sp)+,d2-d4/a0
		rts

    ; End of function CalculateTotalStatGrowth


; =============== S U B R O U T I N E =======================================

; Calculate force member D0 initial stat D1 value, factoring in promoted at level -> D1

CalculateInitialStatValue:
		
		movem.l d2-d4/a0,-(sp)
		bsr.w   GetUnpromotedGrowthEntryAddress
		move.b  (a0,d1.w),d2    ; D2 = stat D1 unpromoted growth value
		bsr.s   MapStatToForceEntryOffset
		bsr.w   GetInitialForceEntryAddress
		clr.w   d4
		move.b  (a0,d3.w),d4    ; D4 = stat D1 unpromoted initial value
		bsr.w   GetPromotedAtLevel
		beq.s   loc_24A26       ; if not promoted, skip
		bsr.s   CalculateGrowthTarget
		add.w   d1,d4           ; add growth target to initial value
		muls.w  #85,d4          ; and multiply by 0.85
		divs.w  #100,d4
loc_24A26:
		move.w  d4,d1
		movem.l (sp)+,d2-d4/a0
		rts

    ; End of function CalculateInitialStatValue


; =============== S U B R O U T I N E =======================================

; Map stat D1 to force entry offset -> D3

MapStatToForceEntryOffset:
		
		move.w  d1,d3
		asl.w   #1,d3
		move.w  StatOffsets(pc,d3.w),d3; get address of corresponding stat into force data
		rts

    ; End of function MapStatToForceEntryOffset

StatOffsets:    dc.w FORCE_OFFSET_BASE_ATTACK
		dc.w FORCE_OFFSET_BASE_DEFENSE
		dc.w FORCE_OFFSET_BASE_AGILITY
		dc.w FORCE_OFFSET_MAXIMUM_HP_LOW_BYTE
		dc.w FORCE_OFFSET_MAXIMUM_MP
		dc.w FORCE_OFFSET_BASE_CRITICAL

; =============== S U B R O U T I N E =======================================

; Calculate growth target value based on level D1 and growth value D2 -> D1

CalculateGrowthTarget:
		
		move.l  d2,-(sp)
		bsr.s   CalculateGrowthPercent
		andi.w  #GROWTH_MASK_VALUE,d2; multiply curve % by growth to get target value
		muls.w  d2,d1
		divs.w  #100,d1
		move.l  (sp)+,d2
		rts

    ; End of function CalculateGrowthTarget


; =============== S U B R O U T I N E =======================================

; Calculate growth percent based on level D1 and growth curve D2 -> D1

CalculateGrowthPercent:
		
		movem.l d2-d5/a0,-(sp)
		cmpi.w  #GROWTH_PROJECTION_LEVEL,d1
		ble.s   loc_24A66       ; continue if level <= 20
		move.w  #100,d1
		bra.s   loc_24A9C       ; else, return 100%
loc_24A66:
		andi.w  #GROWTH_MASK_CURVE_INDEX,d2
						; find growth curve
		asr.w   #5,d2
		movea.l (p_GrowthCurves).l,a0
		move.w  (a0,d2.w),d2    ; D2 = offset to curve entry
		lea     (a0,d2.w),a0    ; A0 = curve entry address
		moveq   #1,d2           ; find break point in curve
		clr.b   d3
loc_24A7E:
		cmp.b   (a0),d1
		ble.s   loc_24A88       
		move.b  (a0)+,d2
		move.b  (a0)+,d3
		bra.s   loc_24A7E
loc_24A88:
		sub.w   d2,d1           ; interpolate to get growth %
		clr.w   d4
		move.b  (a0)+,d4
		sub.w   d2,d4
		clr.w   d5
		move.b  (a0)+,d5
		sub.w   d3,d5
		muls.w  d5,d1
		divs.w  d4,d1
		add.w   d3,d1
loc_24A9C:
		movem.l (sp)+,d2-d5/a0
		rts

    ; End of function CalculateGrowthPercent


; =============== S U B R O U T I N E =======================================

; Get force member D0 growth entry address based on if promoted -> A0

GetGrowthEntryAddress:
		
		bsr.s   IsPromoted      
		beq.s   GetUnpromotedGrowthEntryAddress
						; branch if not promoted
		movea.l (p_PromotedGrowths).l,a0
		bra.s   loc_24AB4

    ; End of function GetGrowthEntryAddress


; =============== S U B R O U T I N E =======================================

; Get force member D0 unpromoted growth entry address -> A0

GetUnpromotedGrowthEntryAddress:
		
		movea.l (p_UnpromotedGrowths).l,a0
loc_24AB4:
		move.l  d0,-(sp)
		andi.w  #$FF,d0         ; index into growth table to find member's entry
		mulu.w  #6,d0
		adda.w  d0,a0
		move.l  (sp)+,d0
		rts

    ; End of function GetUnpromotedGrowthEntryAddress


; =============== S U B R O U T I N E =======================================

; Get force member D0 initial data entry address -> A0

GetInitialForceEntryAddress:
		
		move.w  d0,-(sp)
		movea.l (p_InitialForceMembersData).l,a0
		andi.w  #$FF,d0
		mulu.w  #$28,d0 
		adda.w  d0,a0
		move.w  (sp)+,d0
		rts

    ; End of function GetInitialForceEntryAddress


; =============== S U B R O U T I N E =======================================

; Check if force member D0 is promoted

IsPromoted:
		movem.w d1,-(sp)
		bsr.s   GetPromotedAtLevel
		movem.w (sp)+,d1
		rts

    ; End of function IsPromoted


; =============== S U B R O U T I N E =======================================

; Get force member D0 promoted at level -> D1 (0 if not promoted)

GetPromotedAtLevel:
		
		movem.l d0/a1,-(sp)
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a1
		andi.w  #$FF,d0
		clr.w   d1
		move.b  (a1,d0.w),d1
		movem.l (sp)+,d0/a1
		rts

    ; End of function GetPromotedAtLevel


; =============== S U B R O U T I N E =======================================

; Learn new spell on level up

LearnSpell:
		movem.l d1-d3/a0-a1,-(sp)
		lea     ((SPELLS_TO_LEARN-$1000000)).w,a1
		bsr.w   GetSpellLearningEntryAddress
		bcs.s   loc_24B26
		bsr.w   CalculateTotalLevel
		move.b  d1,d2
		move.b  (a0)+,d3
loc_24B14:
		beq.s   loc_24B26
		cmp.b   (a0)+,d2
		bcs.s   loc_24B26
		bne.s   loc_24B1E
		move.b  (a0),(a1)+
loc_24B1E:
		move.b  (a0)+,d1
		bsr.s   AddSpell        
		subq.b  #1,d3
		bra.s   loc_24B14
loc_24B26:
		move.b  #$FF,(a1)
		movem.l (sp)+,d1-d3/a0-a1
		rts

    ; End of function LearnSpell


; =============== S U B R O U T I N E =======================================

; Add spell D1 to character D0

AddSpell:
		movem.l d2-d4/a0,-(sp)
		move.b  d1,d2
		andi.b  #SPELLENTRY_MASK_INDEX,d2
		jsr     j_GetCharacterSpellsAddress
		moveq   #3,d3
loc_24B42:
		move.b  (a0),d4
		cmpi.b  #$FF,d4
		beq.s   loc_24B5A
		andi.b  #SPELLENTRY_MASK_INDEX,d4
		cmp.b   d2,d4
		beq.s   loc_24B5A
		addq.l  #1,a0
		dbf     d3,loc_24B42

		bra.s   loc_24B5C
loc_24B5A:
		move.b  d1,(a0)
loc_24B5C:
		movem.l (sp)+,d2-d4/a0
		rts

    ; End of function AddSpell


; =============== S U B R O U T I N E =======================================

; Get address of character D0 spells learning data to A0

GetSpellLearningEntryAddress:
		
		movem.w d1,-(sp)
		movea.l (p_SpellLearningData).l,a0
loc_24B6C:
		cmpi.b  #$FF,(a0)
		beq.s   loc_24B86
		cmp.b   (a0)+,d0
		beq.s   loc_24B80
		clr.w   d1
		move.b  (a0)+,d1
		add.w   d1,d1
		adda.w  d1,a0
		bra.s   loc_24B6C
loc_24B80:
		movem.w (sp)+,d1
		rts
loc_24B86:
		ori     #1,ccr
		bra.s   loc_24B80

    ; End of function GetSpellLearningEntryAddress


; =============== S U B R O U T I N E =======================================

; Get total level of character D0 (current level + level promoted at) -> D1

CalculateTotalLevel:
		
		movem.l d0/d2/a0,-(sp)
		jsr     j_GetLevel
		lea     ((PROMOTED_AT_LEVELS-$1000000)).w,a0
		andi.w  #$FF,d0
		move.b  (a0,d0.w),d2
		ble.s   @Done
		add.b   d2,d1
@Done:
		movem.l (sp)+,d0/d2/a0
		rts

    ; End of function CalculateTotalLevel


; =============== S U B R O U T I N E =======================================

; Get level of character D0 (+10 if promoted) -> D1

CalculateEffectiveLevel:
		
		move.w  d2,-(sp)
		jsr     j_GetLevelForCombatant
		move.w  d1,d2
		jsr     j_GetClassForCombatant
		cmpi.w  #PROMOTED_CLASSES_START,d1
		bcs.s   @Skip
		cmpi.w  #CLASS_YGRT,d1
		bcc.s   @Skip
		addi.w  #10,d2
@Skip:
		move.w  d2,d1
		move.w  (sp)+,d2
		rts

    ; End of function CalculateEffectiveLevel


; =============== S U B R O U T I N E =======================================

; Check if character D0 asleep

IsAsleep:
		movem.l d0-d1,-(sp)
		clr.b   ((IS_ASLEEP_FLAG-$1000000)).w
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_SLEEP,d1
		beq.s   @Done
		move.b  #1,((IS_ASLEEP_FLAG-$1000000)).w
@Done:
		movem.l (sp)+,d0-d1
		rts

    ; End of function IsAsleep


; =============== S U B R O U T I N E =======================================

HandleAfterTurnStatusEffects:
		
		movem.l d0-d5/a0,-(sp)
		moveq   #0,d3
		bsr.w   HandlePoison
		bsr.w   HandleSleep
		lea     tbl_StatusEffectBits(pc), a0
		moveq   #STATUSEFFECT_COUNTERS_COUNTER,d2
loc_24C06:
		move.b  (a0)+,d1
		bsr.w   DecrementStatusEffectCounter
		addq.l  #1,a0
		dbf     d2,loc_24C06
                
		tst.l   d3
		beq.w   loc_24C92
		bsr.w   sub_24CA6       
		trap    #5
		andi.w  #$FF,d0
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		btst    #31,d3
		beq.s   loc_24C3E
		move.w  #$1CD,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "The poison in [Name]'s[Line]body inflicts [Num] points of[Line]damage.[Wait2]"
		move.l  #2,((AFTER_TURN_MESSAGE_ARG_NUMBER-$1000000)).w
		bsr.w   DisplayAfterTurnMessage
loc_24C3E:
		btst    #30,d3
		beq.s   loc_24C50
		move.w  #$1CE,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] can no longer fight.[Wait2]"
		bsr.w   DisplayAfterTurnMessage
		bra.s   loc_24C8A
loc_24C50:
		btst    #29,d3
		beq.s   loc_24C60
		move.w  #$1CC,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
						; "[Name] is asleep.[Wait2]"
		bsr.w   DisplayAfterTurnMessage
loc_24C60:
		move.w  d0,((AFTER_TURN_MESSAGE_ARG_NAME_2-$1000000)).w
		lea     tbl_StatusEffectSpells(pc), a0
		clr.w   d4
		move.w  #$1E1,d0        ; "The [Spell] spell ends. Speed[Line]and defense levels[Line]return to normal.[Wait2]"
		moveq   #6,d2
loc_24C70:
		move.b  (a0)+,d4
		move.w  d4,((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w
		move.b  (a0)+,d4
		btst    d4,d3
		beq.s   loc_24C84
		move.w  d0,((AFTER_TURN_MESSAGE_INDEX-$1000000)).w
		bsr.w   DisplayAfterTurnMessage
loc_24C84:
		addq.w  #1,d0
		dbf     d2,loc_24C70

loc_24C8A:
		trap    #CLOSE_MESSAGE_WINDOW
		jsr     j_LoadCursorTiles
loc_24C92:
		movem.l (sp)+,d0-d5/a0
		rts

    ; End of function HandleAfterTurnStatusEffects

tbl_StatusEffectSpells:
		; Status effect spells table : 7 entries, 2 bytes per entry
		dc.b SPELL_QUICK|LV_1
tbl_StatusEffectBits:
		dc.b STATUSEFFECT_BIT_QUICK
		dc.b SPELL_SLOW|LV_1
		dc.b STATUSEFFECT_BIT_SLOW
		dc.b SPELL_BOOST|LV_1
		dc.b STATUSEFFECT_BIT_BOOST
		dc.b SPELL_DISPEL|LV_1
		dc.b STATUSEFFECT_BIT_DISPEL
		dc.b SPELL_SHIELD|LV_1
		dc.b STATUSEFFECT_BIT_SHIELD
		dc.b SPELL_MUDDLE|LV_1
		dc.b STATUSEFFECT_BIT_MUDDLE
		dc.b SPELL_SLEEP|LV_1
		dc.b STATUSEFFECT_BIT_SLEEP

; =============== S U B R O U T I N E =======================================

; related to the battle cursor

sub_24CA6:
		move.w  #1,(SPRITE_03_PROPERTIES).l
		move.l  #$10F3F,(SPRITE_54_PROPERTIES).l   ; Y = 1, size = V4|H4, link = 47
		rts

    ; End of function sub_24CA6


; =============== S U B R O U T I N E =======================================

HandlePoison:
		movem.l d0-d1,-(sp)
		clr.b   ((IS_POISONED_FLAG-$1000000)).w
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_POISON,d1
		beq.s   loc_24CE8
		bset    #31,d3
		moveq   #2,d1           ; inflict 2 points of damage
		jsr     j_DecreaseCurrentHPforCombatant
		tst.w   d1
		bne.s   loc_24CE8
		bset    #30,d3
		move.b  #1,((IS_POISONED_FLAG-$1000000)).w
loc_24CE8:
		movem.l (sp)+,d0-d1
		rts

    ; End of function HandlePoison


; =============== S U B R O U T I N E =======================================

HandleSleep:
		movem.l d0-d1,-(sp)
		moveq   #STATUSEFFECT_BIT_SLEEP,d1
		bsr.w   TerminateStatusEffectRandomly
		jsr     j_GetStatusEffectsForCombatant
		btst    #STATUSEFFECT_BIT_SLEEP,d1
		beq.s   loc_24D08
		bset    #29,d3
loc_24D08:
		movem.l (sp)+,d0-d1
		rts

    ; End of function HandleSleep


; =============== S U B R O U T I N E =======================================

; Clear statuses of all members and restore HP/MP to max

ResetForceMemberStats:
		
		movem.l d0-d1,-(sp)
		moveq   #FORCE_MEMBERS_COUNTER,d0
loc_24D14:
		jsr     j_GetStatusEffects
		andi.w  #STATUSEFFECT_POISON|STATUSEFFECT_CURSE,d1
		jsr     j_SetStatusEffects
		jsr     j_GetCurrentHP
		tst.w   d1
		beq.s   loc_24D34
		jsr     j_RefillHP
loc_24D34:
		jsr     j_RefillMP
		dbf     d0,loc_24D14

		movem.l (sp)+,d0-d1
		rts

    ; End of function ResetForceMemberStats


; =============== S U B R O U T I N E =======================================

; Decrement counter for status effect D1, with chance to end it early

DecrementStatusEffectCounter:
		
		movem.l d2/d7,-(sp)
		jsr     j_GetStatusEffectCounter
		beq.s   loc_24D6A
		bsr.w   GenerateRandomNumber0To99
		cmp.b   table_StatusEffectEndingPercents(pc,d2.w),d7
		bge.s   loc_24D5E
		clr.w   d2
		bra.s   loc_24D60
loc_24D5E:
		subq.w  #1,d2
loc_24D60:
		bne.s   loc_24D64
		bset    d1,d3
loc_24D64:
		jsr     j_SetStatusEffectCounter
loc_24D6A:
		movem.l (sp)+,d2/d7
		rts

    ; End of function DecrementStatusEffectCounter

table_StatusEffectEndingPercents:
		; Chances to end status effect early, indexed by counter
		dc.b 100
		dc.b 100
		dc.b 33
		dc.b 0

; =============== S U B R O U T I N E =======================================

; Clear status effect bit D1, 50% of the time

TerminateStatusEffectRandomly:
		
		movem.l d2/d7,-(sp)
		move.w  d1,d2
		jsr     j_GetStatusEffectsForCombatant
		btst    d2,d1
		beq.s   loc_24D98
		bsr.w   GenerateRandomNumber0To99
		cmpi.b  #50,d7
		bge.s   loc_24D98
		bclr    d2,d1
		jsr     j_SetStatusEffectsForCombatant
		bset    d2,d3
loc_24D98:
		movem.l (sp)+,d2/d7
		rts

    ; End of function TerminateStatusEffectRandomly


; =============== S U B R O U T I N E =======================================

DisplayAfterTurnMessage:
		
		move.l  d0,-(sp)
		move.w  ((AFTER_TURN_MESSAGE_INDEX-$1000000)).w,d0
		move.w  ((AFTER_TURN_MESSAGE_ARG_NAME_1-$1000000)).w,((MESSAGE_ARG_NAME_1-$1000000)).w
		move.w  ((AFTER_TURN_MESSAGE_ARG_NAME_2-$1000000)).w,((MESSAGE_ARG_NAME_2-$1000000)).w
		move.l  ((AFTER_TURN_MESSAGE_ARG_NUMBER-$1000000)).w,((MESSAGE_ARG_NUMBER-$1000000)).w
		trap    #DISPLAY_MESSAGE
		move.l  (sp)+,d0
		rts

    ; End of function DisplayAfterTurnMessage


; =============== S U B R O U T I N E =======================================

; Get current gold -> D1

GetGold:
		move.l  (CURRENT_GOLD).l,d1
		rts

    ; End of function GetGold


; =============== S U B R O U T I N E =======================================

; Set D1 -> current gold

SetGold:
		move.l  d1,(CURRENT_GOLD).l
		rts

    ; End of function SetGold


; =============== S U B R O U T I N E =======================================

; Add D1 to current gold, cap at 999999

IncreaseGold:
		add.l   (CURRENT_GOLD).l,d1
		cmpi.l  #FORCE_GOLD_CAP,d1
		ble.s   loc_24DE0
		move.l  #FORCE_GOLD_CAP,d1
loc_24DE0:
		move.l  d1,(CURRENT_GOLD).l
		rts

    ; End of function IncreaseGold


; =============== S U B R O U T I N E =======================================

; Sub D1 from current gold, cap at 0

DecreaseGold:
		sub.l   d1,(CURRENT_GOLD).l
		bge.s   loc_24DF6
		clr.l   (CURRENT_GOLD).l
loc_24DF6:
		move.l  (CURRENT_GOLD).l,d1
		rts

    ; End of function DecreaseGold


; =============== S U B R O U T I N E =======================================

; Add 1 to deals stock for item D1

IncrementDealsStock:
		
		move.w  d2,-(sp)
		jsr     j_GetItemType
		btst    #ITEMTYPE_BIT_RARE,d2
		beq.s   loc_24E18
		bsr.s   GetDealsStock   
		addq.w  #1,d2
		cmpi.w  #16,d2
		bcc.s   loc_24E18
		bsr.s   SetDealsStock   
loc_24E18:
		move.w  (sp)+,d2
		rts

    ; End of function IncrementDealsStock


; =============== S U B R O U T I N E =======================================

; Sub 1 from deals stock for item D1

DecrementDealsStock:
		
		move.w  d2,-(sp)
		bsr.s   GetDealsStock   
		subq.w  #1,d2
		bcs.s   loc_24E26
		bsr.s   SetDealsStock   
loc_24E26:
		move.w  (sp)+,d2
		rts

    ; End of function DecrementDealsStock


; =============== S U B R O U T I N E =======================================

; Get stock of item D1 currently in deals -> D2

GetDealsStock:
		
		movem.l d1/a0,-(sp)
		bsr.s   GetDealsStockEntryAddress
		bcs.s   loc_24E38
		move.b  (a0),d2
		asr.w   #4,d2
		bra.s   loc_24E3A
loc_24E38:
		move.b  (a0),d2
loc_24E3A:
		andi.w  #$F,d2
		movem.l (sp)+,d1/a0
		rts

    ; End of function GetDealsStock


; =============== S U B R O U T I N E =======================================

; Set D2 -> stock of item D1 currently in deals

SetDealsStock:
		
		movem.l d1-d2/a0,-(sp)
		andi.w  #$F,d2
		bsr.s   GetDealsStockEntryAddress
		bcs.s   loc_24E58
		asl.b   #4,d2
		andi.b  #$F,(a0)
		bra.s   loc_24E5C
loc_24E58:
		andi.b  #$F0,(a0)
loc_24E5C:
		or.b    d2,(a0)
		movem.l (sp)+,d1-d2/a0
		rts

    ; End of function SetDealsStock


; =============== S U B R O U T I N E =======================================

; Get item D1 deals stock entry address -> A0

GetDealsStockEntryAddress:
		
		lea     (DEALS_ITEMS).l,a0
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		asr.w   #1,d1
		adda.w  d1,a0
		rts

    ; End of function GetDealsStockEntryAddress


; =============== S U B R O U T I N E =======================================

; Load items currently in deals into shop inventory
; 
; In: A0 = shop data address
;     D0 = shop type (0: weapon shop, 1: item shop)

LoadDealsInventory:
		
		movem.l d0-d3/a0-a1/a3,-(sp)
		clr.w   d3
		lea     (TABLE_AT_FFA8C0).l,a3; shop inventory
		clr.w   d1
loc_24E82:
		jsr     j_GetItemType
		tst.b   d0
		bne.s   loc_24E94       ; branch if item shop
		btst    #ITEMTYPE_BIT_WEAPON,d2
		beq.s   loc_24EB0       ; weapon shop : branch if item not a weapon
		bra.s   loc_24E9A
loc_24E94:
		btst    #ITEMTYPE_BIT_WEAPON,d2
		bne.s   loc_24EB0       ; item shop : branch if item is a weapon
loc_24E9A:
		movea.l a0,a1
loc_24E9C:
		move.b  (a1)+,d2
		blt.s   loc_24EA6       ; branch out upon reaching end of shop data
		cmp.b   d2,d1
		beq.s   loc_24EB0       ; skip displaying item in deals if regularly for sale
		bra.s   loc_24E9C
loc_24EA6:
		bsr.w   GetDealsStock   
		beq.s   loc_24EB0       ; branch if no item in stock
		addq.w  #1,d3
		move.w  d1,(a3)+
loc_24EB0:
		addq.w  #1,d1
		cmpi.w  #ITEM_NOTHING_ITEM,d1
		bne.s   loc_24E82
		move.w  d3,(SHOP_INVENTORY_LENGTH).l
		movem.l (sp)+,d0-d3/a0-a1/a3
		rts

    ; End of function LoadDealsInventory


; =============== S U B R O U T I N E =======================================

; Check if item D1 not in deals stock or held by any character

IsItemInDealsOrHeldByForce:
		
		movem.l d0-d1,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		bsr.w   GetDealsStock   
		bne.s   loc_24ED4
		bsr.s   IsItemHeldByForce
loc_24ED4:
		movem.l (sp)+,d0-d1
		rts

    ; End of function IsItemInDealsOrHeldByForce


; =============== S U B R O U T I N E =======================================

; Check if character has item D1

IsItemHeldByCharacter:
		
		movem.l d1-d3/a0,-(sp)
		jsr     j_GetEntityItemsAddress
		moveq   #ITEM_SLOTS_COUNTER,d2
loc_24EE6:
		move.b  (a0)+,d3
		andi.w  #ITEMENTRY_MASK_INDEX,d3
		cmp.b   d1,d3
		beq.s   loc_24EF8
		dbf     d2,loc_24EE6

		ori     #1,ccr
loc_24EF8:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function IsItemHeldByCharacter


; =============== S U B R O U T I N E =======================================

; Check if any character has item D1

IsItemHeldByForce:
		
		movem.l d1-d3/a0,-(sp)
		andi.w  #ITEMENTRY_MASK_INDEX,d1
		moveq   #FORCE_MEMBERS_COUNTER,d0
loc_24F08:
		bsr.s   IsItemHeldByCharacter
		bcc.s   loc_24F14
		dbf     d0,loc_24F08

		ori     #1,ccr
loc_24F14:
		movem.l (sp)+,d1-d3/a0
		rts

    ; End of function IsItemHeldByForce


; =============== S U B R O U T I N E =======================================

; Load force member's base attack to combatant D0 entry

LoadBaseAttack:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseAttackForCombatant
		jsr     j_SetModifiedAttack
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseAttack


; =============== S U B R O U T I N E =======================================

; Load force member's base defense to combatant D0 entry

LoadBaseDefense:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseDefenseForCombatant
		jsr     j_SetModifiedDefense
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseDefense


; =============== S U B R O U T I N E =======================================

; Load force member's base agility to combatant D0 entry

LoadBaseAgility:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseAgilityForCombatant
		jsr     j_SetModifiedAgility
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseAgility


; =============== S U B R O U T I N E =======================================

; Load force member's base move to combatant D0 entry

LoadBaseMove:
		move.l  d1,-(sp)
		jsr     j_GetBaseMoveForCombatant
		jsr     j_SetModifiedMove
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseMove


; =============== S U B R O U T I N E =======================================

; Load force member's base critical to combatant D0 entry

LoadBaseCritical:
		
		move.l  d1,-(sp)
		jsr     j_GetBaseCriticalForCombatant
		jsr     j_SetModifiedCritical
		move.l  (sp)+,d1
		rts

    ; End of function LoadBaseCritical


; =============== S U B R O U T I N E =======================================

; Refill force member D0 HP

RefillHP:
		move.l  d1,-(sp)
		jsr     j_GetMaxHP
		jsr     j_SetCurrentHP
		move.l  (sp)+,d1
		rts

    ; End of function RefillHP


; =============== S U B R O U T I N E =======================================

; Refill force member D0 MP

RefillMP:
		move.l  d1,-(sp)
		jsr     j_GetMaxMP
		jsr     j_SetCurrentMP
		move.l  (sp)+,d1
		rts

    ; End of function RefillMP


; =============== S U B R O U T I N E =======================================

; Refill force member's HP for combatant D0

RefillHPforCombatant:
		
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		move.w  d1,d0
		bsr.w   RefillHP        
		movem.w (sp)+,d0-d1
		rts

    ; End of function RefillHPforCombatant


; =============== S U B R O U T I N E =======================================

; Refill force member's MP for combatant D0

RefillMPforCombatant:
		
		movem.w d0-d1,-(sp)
		jsr     j_GetEntity
		move.w  d1,d0
		bsr.w   RefillMP        
		movem.w (sp)+,d0-d1
		rts

    ; End of function RefillMPforCombatant


; =============== S U B R O U T I N E =======================================

ClearPassabilityFlags:
		
		movem.l d0/a0,-(sp)
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a0
		bra.s   loc_24FD6

    ; End of function ClearPassabilityFlags


; =============== S U B R O U T I N E =======================================

ClearTableAtFFA8C0:
		
		movem.l d0/a0,-(sp)
		lea     ((TABLE_AT_FFA8C0-$1000000)).w,a0
loc_24FD6:
		move.w  #$3FF,d0
loc_24FDA:
		move.b  d1,(a0)+        ; Clear RAM Table (A0)
		dbf     d0,loc_24FDA

		movem.l (sp)+,d0/a0
		rts

    ; End of function ClearTableAtFFA8C0


; =============== S U B R O U T I N E =======================================

; Wrapper for 25026 and 24FEC

InitializeBattleMap:
		
		bsr.s   sub_25026       
		bsr.s   TrimBattleTerrain
		rts

    ; End of function InitializeBattleMap


; =============== S U B R O U T I N E =======================================

; Trim battle terrain table down to map size

TrimBattleTerrain:
		
		movem.l d0-d1/a0-a1,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		movea.l a0,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d1
		subq.w  #1,d1
loc_25000:
		clr.b   (a0)
		clr.b   -1(a0,d0.w)
		adda.w  d0,a0
		dbf     d1,loc_25000

		move.w  ((MAP_HEIGHT-$1000000)).w,d1
		subq.w  #1,d1
		mulu.w  d0,d1
		subq.w  #1,d0
loc_25016:
		clr.b   (a1,d1.w)
		clr.b   (a1)+
		dbf     d0,loc_25016

		movem.l (sp)+,d0-d1/a0-a1
		rts

    ; End of function TrimBattleTerrain


; =============== S U B R O U T I N E =======================================

; Load map size and terrain data

sub_25026:
		movem.l d0-d3/a0-a2,-(sp)
		movea.l ((BATTLE_HEADER_POINTER-$1000000)).w,a2
		lea     BATTLEHEADER_OFFSET_MAP_WIDTH(a2),a0
		clr.w   d0
		move.b  (a0)+,d0
		addq.w  #2,d0
		move.w  d0,((MAP_WIDTH-$1000000)).w
		move.b  (a0)+,d0
		addq.w  #2,d0
		move.w  d0,((MAP_HEIGHT-$1000000)).w
		lea     ((TERRAIN_DATA-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		lea     1(a1,d0.w),a1
		moveq   #$FFFFFFFF,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d2
		subq.w  #3,d2
loc_25058:
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		subq.w  #3,d3
loc_2505E:
		tst.w   d0
		bge.s   loc_25074
		move.b  (a0)+,d0
		move.b  d0,d1
		andi.w  #$F0,d0 
		asr.w   #4,d0
		andi.w  #$F,d1
		move.b  (a2,d1.w),d1
loc_25074:
		move.b  d1,(a1)+
		subq.w  #1,d0
		dbf     d3,loc_2505E

		adda.w  #2,a1
		dbf     d2,loc_25058

		move.l  ((AI_REGIONS_POINTER-$1000000)).w,d0
		beq.w   loc_250D4
		movea.l d0,a0
		lea     ((byte_FFB0C0-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		lea     1(a1,d0.w),a1
		moveq   #$FFFFFFFF,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d2
		subq.w  #3,d2
loc_250A2:
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		subq.w  #3,d3
loc_250A8:
		tst.w   d0
		bge.s   loc_250BA
		move.b  (a0)+,d0
		move.b  d0,d1
		andi.w  #$F0,d0 
		asr.w   #4,d0
		andi.w  #$F,d1
loc_250BA:
		tst.b   -$400(a1)
		bne.s   loc_250C4
		clr.b   (a1)+
		bra.s   loc_250C8
loc_250C4:
		move.b  d1,(a1)+
		subq.w  #1,d0
loc_250C8:
		dbf     d3,loc_250A8

		adda.w  #2,a1
		dbf     d2,loc_250A2

loc_250D4:
		movem.l (sp)+,d0-d3/a0-a2
		rts

    ; End of function sub_25026


; =============== S U B R O U T I N E =======================================

ClearTerrainAtOccupiedSpaces:
		
		movem.l d0-d2/a0,-(sp)
		lea     ((TERRAIN_DATA-$1000000)).w,a0
		moveq   #COMBATANT_ENTRIES_COUNTER,d0
loc_250E4:
		jsr     j_GetEntity
		cmpi.b  #EMPTY_COMBATANT_SLOT,d1
		beq.s   loc_25100
		jsr     j_GetCombatantPosition
		mulu.w  ((MAP_WIDTH-$1000000)).w,d1
		add.w   d2,d1           ; convert coordinates to offset
		clr.b   (a0,d1.w)
loc_25100:
		dbf     d0,loc_250E4

		movem.l (sp)+,d0-d2/a0
		rts

    ; End of function ClearTerrainAtOccupiedSpaces


; =============== S U B R O U T I N E =======================================

; Reset target grid (i.e., passability flags table) and load from A0

LoadPredefinedTargetGrid:
		
		movem.l d0-d3/a0-a1,-(sp)
		bsr.w   ClearPassabilityFlags
		lea     ((PASSABILITY_FLAGS-$1000000)).w,a1
		move.w  ((MAP_WIDTH-$1000000)).w,d0
		lea     1(a1,d0.w),a1
		moveq   #-1,d0
		move.w  ((MAP_HEIGHT-$1000000)).w,d2
		subq.w  #3,d2
loc_25126:
		move.w  ((MAP_WIDTH-$1000000)).w,d3
		subq.w  #3,d3
loc_2512C:
		tst.w   d0
		bge.s   loc_2513E
		move.b  (a0)+,d0
		move.b  d0,d1
		andi.w  #$F0,d0 
		asr.w   #4,d0
		andi.w  #$F,d1
loc_2513E:
		move.b  d1,(a1)+
		subq.w  #1,d0
		dbf     d3,loc_2512C

		adda.w  #2,a1
		dbf     d2,loc_25126

		movem.l (sp)+,d0-d3/a0-a1
		rts

    ; End of function LoadPredefinedTargetGrid

		include "data\stats\allies\chardata.asm"
		include "data\stats\allies\battlespritedata.asm"
        include "data\stats\items\itemnames.asm"
        include "data\stats\items\itemdata.asm"
		include "data\stats\items\weaponsprites.asm"
ItemTypes:      incbin "data/stats/items/itemtypes.bin"
        include "data\stats\classes\classnames.asm"
        include "data\stats\classes\classdata.asm"
        include "data\stats\spells\spellnames.asm"
        include "data\stats\spells\spelldata.asm"
        include "data\battles\global\movecosts.asm"
        include "data\battles\global\landeffects.asm"
ForceAnimationData:
		incbin "data/stats/allies/forceanimationdata.bin"
EnemyAnimationData:
		incbin "data/stats/enemies/enemyanimationdata.bin"
TerrainData:    incbin "data/battles/global/terraindata.bin"
byte_26BF2:     dc.b 2
		dc.b $41
		dc.b 0
		dc.b $FF
        include "data\stats\allies\growthcurves.asm"
        include "data\stats\allies\charactergrowths.asm"
        include "data\stats\allies\spelllearningdata.asm"

; =============== S U B R O U T I N E =======================================

; Prepare Ending Sequence

LoadEndingCreditsForce:
		
		movem.l d0-d1/a0-a3,-(sp)
		lea     EndingCreditsForceData(pc), a1
		lea     (PROMOTED_AT_LEVELS).l,a2
		lea     (BATTLE_PARTY_MEMBERS).l,a3
		clr.w   d0
loc_26E2C:
		move.b  (a1)+,d0
		blt.s   loc_26E54
		move.b  d0,(a3)+
		jsr     j_RefillHP
		move.b  (a1)+,d1
		jsr     j_SetClass
		move.b  #$14,(a2,d0.w)
		jsr     j_GetEntityItemsAddress
		moveq   #-1,d1
		move.l  d1,(a0)
		move.b  (a1)+,(a0)
		bra.s   loc_26E2C
loc_26E54:
		st      (a3)
		move.l  #$90000FF,(CURRENT_CHAPTER).l
		jsr     j_InitializeBattleData
		jsr     j_InitializeBattleMap
		jsr     sub_20010
		jsr     sub_20004
		movem.l (sp)+,d0-d1/a0-a3
		rts

    ; End of function LoadEndingCreditsForce


; =============== S U B R O U T I N E =======================================

; In: d0.w

WriteEndingCreditsBattlesceneScript:
		
		movem.l d0-d2/a0/a2,-(sp)
		lea     EndingAnimationSequence(pc), a0
		clr.w   d1
		move.w  d0,d1
		asl.w   #2,d1
		adda.w  d1,a0
		lea     (BATTLE_SCENE_ACTORS).l,a2
		move.b  (a0)+,d1
		ext.w   d1
		move.b  (a0)+,d2
		ext.w   d2
		clr.w   (a2)+           ; battlescene command
		move.w  d2,(a2)+        ; enemy
		move.w  d1,(a2)+        ; ally
		move.b  (a0)+,d1
		ext.w   d1
		move.b  (a0)+,d2
		ext.w   d2
		btst    #0,d0
		bne.s   loc_26EC6
		move.w  #1,(a2)+
		move.w  d1,(a2)+
		move.w  d2,(a2)+
		move.w  #$A,(a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		bra.s   loc_26EDA
loc_26EC6:
		move.w  #2,(a2)+
		move.w  d1,(a2)+
		move.w  d2,(a2)+
		move.w  #9,(a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
		clr.w   (a2)+
loc_26EDA:
		move.w  #-1,(a2)+
		movem.l (sp)+,d0-d2/a0/a2
		rts

    ; End of function WriteEndingCreditsBattlesceneScript

		include "data\stats\allies\endcreditsforcedata.asm"
EndingAnimationSequence:
		incbin "data/stats/allies/endinganimationsequence.bin"

; =============== S U B R O U T I N E =======================================

InitializeBattleData:
		
		movem.l d0-d1/a0-a3,-(sp)
		lea     (BATTLE_HEADER_POINTER).l,a0
		lea     table_EnemyDefs(pc), a2
		move.l  a2,$C(a0)
		lea     byte_2751A(pc), a2
		move.l  a2,$10(a0)
		lea     rpt_MapHeaders(pc), a3
		lea     rpt_MapHeaders(pc), a1
		move.b  (CURRENT_CHAPTER).l,d0
		ext.w   d0
		subq.w  #1,d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_26F7E
		suba.l  a1,a1
		bra.s   loc_26F82
loc_26F7E:
		lea     (a3,d0.w),a1
loc_26F82:
		move.b  (CURRENT_REGION).l,d0
		ext.w   d0
		addq.w  #1,d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_26F98
		suba.l  a1,a1
		bra.s   loc_26F9C
loc_26F98:
		lea     (a3,d0.w),a1
loc_26F9C:
		move.w  (a1)+,d0
		bne.s   loc_26FA4
		suba.l  a2,a2
		bra.s   loc_26FA8
loc_26FA4:
		lea     (a3,d0.w),a2
loc_26FA8:
		move.l  a2,(a0)
		move.b  (CURRENT_MAP_VERSION).l,d0
		ext.w   d0
		addq.w  #1,d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_26FC0
		suba.l  a1,a1
		bra.s   loc_26FC4
loc_26FC0:
		lea     (a3,d0.w),a1
loc_26FC4:
		move.w  (a1)+,d0
		bne.s   loc_26FCC
		suba.l  a2,a2
		bra.s   loc_26FD0
loc_26FCC:
		lea     (a3,d0.w),a2
loc_26FD0:
		move.l  a2,4(a0)
		move.w  (a1)+,d0
		bne.s   loc_26FDC
		suba.l  a2,a2
		bra.s   loc_26FE0
loc_26FDC:
		lea     (a3,d0.w),a2
loc_26FE0:
		move.l  a2,8(a0)
		move.w  (a1)+,d0
		bne.s   loc_26FEC
		suba.l  a2,a2
		bra.s   loc_26FF0
loc_26FEC:
		lea     (a3,d0.w),a2
loc_26FF0:
		move.l  a2,$14(a0)
		move.w  (a1)+,d0
		bne.s   loc_26FFC
		suba.l  a2,a2
		bra.s   loc_27000
loc_26FFC:
		lea     (a3,d0.w),a2
loc_27000:
		move.l  a2,$1C(a0)
		move.w  (a1)+,d0
		bne.s   loc_2700C
		suba.l  a2,a2
		bra.s   loc_27010
loc_2700C:
		lea     (a3,d0.w),a2
loc_27010:
		move.l  a2,$20(a0)
		move.b  (CURRENT_MAP_ENTRANCE).l,d0
		ext.w   d0
		add.w   d0,d0
		move.w  (a1,d0.w),d0
		bne.s   loc_27028
		suba.l  a1,a1
		bra.s   loc_2702C
loc_27028:
		lea     (a3,d0.w),a1
loc_2702C:
		move.l  a1,$18(a0)
		movem.l (sp)+,d0-d1/a0-a3
		rts

    ; End of function InitializeBattleData


; =============== S U B R O U T I N E =======================================

; Flag AI Regions as triggered

sub_27036:
		move.w  d0,-(sp)
		move.b  (byte_FF9C88).l,d0
		or.b    (TRIGGERED_AI_REGIONS).l,d0
		move.b  d0,(byte_FF9C88).l
		move.w  (sp)+,d0
		rts

    ; End of function sub_27036

rpt_MapHeaders: incbin "data/maps/global/mapheaders.bin"
byte_2751A:
        dc.b 0
		dc.b $FF
    include "data\stats\enemies\enemydefs.asm"
table_BattleTerrain:
		incbin "data/battles/global/battleterrain.bin"
    include "data\battles\global\battledata.asm"
		align $4000
