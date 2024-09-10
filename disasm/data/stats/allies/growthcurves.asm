
; ASM FILE data\stats\allies\growthcurves.asm :
; 0x26BF6..0x26C1A : Growth curve tables

rpt_GrowthCurves:

        dc.w table_LinearGrowth-rpt_GrowthCurves
        dc.w table_LateGrowth-rpt_GrowthCurves
        dc.w table_EarlyAndLateGrowth-rpt_GrowthCurves
        dc.w table_EarlyGrowth-rpt_GrowthCurves
        
table_LinearGrowth:
        dc.b 20,100    ; level, percentage
        
table_LateGrowth:
        dc.b 10,20
        dc.b 14,40
        dc.b 20,100
        
table_EarlyGrowth:
        dc.b 4,50
        dc.b 6,70
        dc.b 10,90
        dc.b 14,95
        dc.b 20,100
        
table_EarlyAndLateGrowth:
        dc.b 4,30
        dc.b 6,40
        dc.b 14,60
        dc.b 16,70
        dc.b 20,100

