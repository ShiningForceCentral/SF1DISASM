
; ASM FILE data\stats\enemies\darkdragonspells.asm :
; 0x..0x : Special AI actions
  
tbl_DarkDragonSpells:
		; Spells available to Dark Dragon's side heads, 2 bytes per entry : 
		dc.b 25
		dc.b SPELL_BLAZE|LV_3
		dc.b 25
		dc.b SPELL_BOLT|LV_2
		dc.b 25
		dc.b SPELL_FREEZE|LV_2
		dc.b 12
		dc.b SPELL_DESOUL|LV_2
		dc.b 12
		dc.b SPELL_BOLT|LV_4
		dc.b 100
		dc.b SPELL_BLAZE|LV_4

            
