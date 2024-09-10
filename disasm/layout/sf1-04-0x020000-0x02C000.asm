
; GAME SECTION 04 :
; 0x020000..0x02C000 : Stats engine, ...
; FREE SPACE : 123 bytes.



; =============== S U B R O U T I N E =======================================

j_InitializeNewGame:
		
		jmp     InitializeNewGame(pc)

    ; End of function j_InitializeNewGame


; =============== S U B R O U T I N E =======================================

j_InitializeBattleCombatants:
		
		jmp     InitializeBattleCombatants(pc)

    ; End of function j_InitializeBattleCombatants


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

j_RefillWholeForceHp:
		
		jmp     RefillWholeForceHp(pc)

    ; End of function j_RefillWholeForceHp


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

j_GetMaxHp:
		jmp     GetMaxHp(pc)    

    ; End of function j_GetMaxHp


; =============== S U B R O U T I N E =======================================

j_GetCurrentHp:
		
		jmp     GetCurrentHp(pc)

    ; End of function j_GetCurrentHp


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

j_SetMaxHp:
		jmp     SetMaxHp(pc)    

    ; End of function j_SetMaxHp


; =============== S U B R O U T I N E =======================================

j_SetCurrentHp:
		
		jmp     SetCurrentHp(pc)

    ; End of function j_SetCurrentHp


; =============== S U B R O U T I N E =======================================

j_SetMaxMp:
		jmp     SetMaxMp(pc)    

    ; End of function j_SetMaxMp


; =============== S U B R O U T I N E =======================================

j_SetCurrentMp:
		
		jmp     SetCurrentMp(pc)

    ; End of function j_SetCurrentMp


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

j_SetMaxHpForCombatant:
		
		jmp     SetMaxHpForCombatant(pc)

    ; End of function j_SetMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

j_SetCurrentHpForCombatant:
		
		jmp     SetCurrentHpForCombatant(pc)

    ; End of function j_SetCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

j_SetMaxMpForCombatant:
		
		jmp     SetMaxMpForCombatant(pc)

    ; End of function j_SetMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

j_SetCurrentMpForCombatant:
		
		jmp     SetCurrentMpForCombatant(pc)

    ; End of function j_SetCurrentMpForCombatant


; =============== S U B R O U T I N E =======================================

j_SetStatusEffectsForCombatant:
		
		jmp     SetStatusEffectsForCombatant(pc)

    ; End of function j_SetStatusEffectsForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseExperience:
		
		jmp     IncreaseExperience(pc)

    ; End of function j_IncreaseExperience


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentMp:
		
		jmp     IncreaseCurrentMp(pc)

    ; End of function j_IncreaseCurrentMp


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

j_IncreaseMaxHp:
		
		jmp     IncreaseMaxHp(pc)

    ; End of function j_IncreaseMaxHp


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentHp:
		
		jmp     IncreaseCurrentHp(pc)

    ; End of function j_IncreaseCurrentHp


; =============== S U B R O U T I N E =======================================

j_IncreaseMaxMp:
		
		jmp     IncreaseMaxMp(pc)

    ; End of function j_IncreaseMaxMp


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

j_IncreaseMaxHpForCombatant:
		
		jmp     IncreaseMaxHpForCombatant(pc)

    ; End of function j_IncreaseMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentHpForCombatant:
		
		jmp     IncreaseCurrentHpForCombatant(pc)

    ; End of function j_IncreaseCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseMaxMpForCombatant:
		
		jmp     IncreaseMaxMpForCombatant(pc)

    ; End of function j_IncreaseMaxMpForCombatant


; =============== S U B R O U T I N E =======================================

j_IncreaseCurrentMpForCombatant:
		
		jmp     IncreaseCurrentMpForCombatant(pc)

    ; End of function j_IncreaseCurrentMpForCombatant


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

j_DecreaseMaxHp:
		
		jmp     DecreaseMaxHp(pc)

    ; End of function j_DecreaseMaxHp


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxMp:
		
		jmp     DecreaseMaxMp(pc)

    ; End of function j_DecreaseMaxMp


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

j_DecreaseCurrentHp:
		
		jmp     DecreaseCurrentHp(pc)

    ; End of function j_DecreaseCurrentHp


; =============== S U B R O U T I N E =======================================

j_DecreaseCurrentMp:
		
		jmp     DecreaseCurrentMp(pc)

    ; End of function j_DecreaseCurrentMp


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxHpForCombatant:
		
		jmp     DecreaseMaxHpForCombatant(pc)

    ; End of function j_DecreaseMaxHpForCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseMaxMpForCombatant:
		
		jmp     DecreaseMaxMpForCombatant(pc)

    ; End of function j_DecreaseMaxMpForCombatant


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

j_DecreaseCurrentHpForCombatant:
		
		jmp     DecreaseCurrentHpForCombatant(pc)

    ; End of function j_DecreaseCurrentHpForCombatant


; =============== S U B R O U T I N E =======================================

j_DecreaseCurrentMpForCombatant:
		
		jmp     DecreaseCurrentMpForCombatant(pc)

    ; End of function j_DecreaseCurrentMpForCombatant


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

j_GetBattlespritePaletteAndAnimationIndexes:
		
		jmp     GetBattlespritePaletteAndAnimationIndexes(pc)

    ; End of function j_GetBattlespritePaletteAndAnimationIndexes


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

j_RefillHp:
		jmp     RefillHp(pc)    

    ; End of function j_RefillHp


; =============== S U B R O U T I N E =======================================

j_RefillMp:
		jmp     RefillMp(pc)    

    ; End of function j_RefillMp


; =============== S U B R O U T I N E =======================================

j_RefillHpForCombatant:
		
		jmp     RefillHpForCombatant(pc)

    ; End of function j_RefillHpForCombatant


; =============== S U B R O U T I N E =======================================

j_RefillMpForCombatant:
		
		jmp     RefillMpForCombatant(pc)

    ; End of function j_RefillMpForCombatant


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
		dc.l table_InitialForceData
p_BattlespriteData:
		dc.l table_BattleSpriteData
p_ItemNames:    dc.l table_ItemNames
p_ItemData:     dc.l table_ItemData
p_WeaponSpriteData:
		dc.l table_WeaponSpriteData
p_ItemTypes:    dc.l table_ItemTypes
p_ClassNames:   dc.l table_ClassNames
p_ClassData:    dc.l table_ClassData
p_SpellNames:   dc.l table_SpellNames
p_SpellData:    dc.l table_SpellData
p_MoveCostData: dc.l table_MoveCostData
p_LandEffectData:
		dc.l table_LandEffectData
p_ForceAnimationData:
		dc.l table_ForceAnimationData
p_EnemyAnimationData:
		dc.l table_EnemyAnimationData
p_TerrainData:  dc.l table_TerrainData
p_table_26BF2:  dc.l table_26BF2
p_rpt_GrowthCurves:
		dc.l table_GrowthCurves
p_UnpromotedGrowths:
		dc.l table_UnpromotedGrowths
p_PromotedGrowths:
		dc.l table_PromotedGrowths
p_SpellLearningData:
		dc.l table_SpellLearningData

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

		include "code\gameflow\battle\battlefieldengine.asm"		; Battlefield engine
		include "code\gameflow\battle\battleactionsengine.asm"		; Battle actions engine
		include "code\gameflow\battle\battlescenes\battlesceneengine.asm"		; Battlescene engine
		include "code\gameflow\start\newgame.asm"		; New game initialization functions
		include "code\common\stats\statsengine_1.asm"		; Character stats engine
		include "data\stats\ranges\rangedata.asm"		; Battleactions range data table
		include "code\common\stats\statsengine_2.asm"		; Character stats engine
		include "data\stats\allies\promotedportraits.asm"		; Portraits used for promoted allies
		include "code\common\stats\statsengine_3.asm"		; Character stats engine
		include "data\stats\allies\outfits.asm"		; Character outfits data
		include "code\common\stats\statsengine_4.asm"		; Character stats engine
		include "data\stats\enemies\specialaiactions.asm"		; Special AI actions
		include "code\common\stats\statsengine_5.asm"		; Character stats engine
		include "data\stats\enemies\darkdragonspells.asm"		; Dark Dragon spells table

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
		btst    #RANGE_GROUP_BIT_FRIENDS,RANGE_OFFSET_GROUP(a1)
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
		cmpi.b  #-1,d1
		bne.s   loc_241B0
		bsr.w   sub_241CA
loc_241B0:
		move.w  ((TARGETS_LIST-$1000000)).w,d1
		cmpi.b  #-1,d1
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
		move.b  #-1,((byte_FFCB28-$1000000)).w
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
		cmpi.b  #-1,d2
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
		move.b  (a0,d1.w),d1    ; BUG: does not offset to proper table for movetype
		andi.w  #$FF,d1
		muls.w  #2,d1
		add.w   d1,d6
		movem.l (sp)+,d0-d1/a0
		rts

    ; End of function ApplyClassToTargetPriority

		include "data\battles\global\aipriority.asm"		; AI priority values by movetype and class
		include "code\common\stats\statsengine_6.asm"		; Character stats engine
		include "code\common\stats\levelup.asm"		; Level up functions
		include "code\common\stats\statsfunctions.asm"		; Stats functions
		include "code\gameflow\battle\battlefunctions.asm"		; Battle functions
		include "data\stats\allies\characterdata.asm"		; Initial character data
		include "data\stats\allies\battlespritedata.asm"		; Ally battlesprites table
		include "data\stats\items\itemnames.asm"		; Item names
		include "data\stats\items\itemdata.asm"		; Item definitions
		include "data\stats\items\weaponsprites.asm"		; Weaponsprite table
		include "data\stats\items\itemtypes.asm"		; Item types table
		include "data\stats\classes\classnames.asm"		; Names for enemies and ally classes
		include "data\stats\classes\classdata.asm"		; Enemy and ally class definitions
		include "data\stats\spells\spellnames.asm"		; Spell names
		include "data\stats\spells\spelldata.asm"		; Spell definitions
		include "data\battles\global\movecosts.asm"		; Move costs table
		include "data\battles\global\landeffects.asm"		; Land effect table
		include "data\stats\allies\allyanimations.asm"		; Ally battlescene animations data
		include "data\stats\enemies\enemyanimations.asm"		; Enemy battlescene animations data
		include "data\battles\global\terraindefs.asm"		; Battlefield terrain definitions
table_26BF2:    dc.b 2
		dc.b $41
		dc.b 0
		dc.b $FF
		include "data\stats\allies\growthcurves.asm"		; Growth curve tables
		include "data\stats\allies\charactergrowths.asm"		; Ally growth tables
		include "data\stats\allies\spelllearningdata.asm"		; Ally spell tables
		include "code\gameflow\end\endingcreditsbattlescenes_1.asm"		; Ending credits battle scenes, part 1
		include "data\stats\allies\endcreditsforcedata.asm"		; Ally data for credits scenes
		include "code\gameflow\end\endingcreditsbattlescenes_2.asm"		; Ending credits battle scenes, part 2
		include "code\gameflow\battle\battleinit.asm"		; Battle initialization functions
		include "data\battles\global\battlemapheaders.asm"		; Battle map headers relative pointer table
table_2751A:    dc.b 0
		dc.b $FF
		include "data\stats\enemies\enemydefs.asm"		; Enemy definitions
		include "data\battles\global\battleterrain.asm"		; Battle terrain data
		include "data\battles\global\battledata.asm"		; Position/enemy/ai data for battles
		dc.b $FF
		align $4000
