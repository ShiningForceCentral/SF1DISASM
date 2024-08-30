
; ASM FILE data\stats\allies\growthcurves.asm :
; 0x26BF6..0x26C1A : Growth curve tables

GrowthCurves:

        dc.w StatCurve_Linear-GrowthCurves
        dc.w StatCurve_Late-GrowthCurves
        dc.w StatCurve_EarlyLate-GrowthCurves
        dc.w StatCurve_Early-GrowthCurves
        
StatCurve_Linear:
        dc.b 20,100    ; level, percentage
        
StatCurve_Late:
        dc.b 10,20
        dc.b 14,40
        dc.b 20,100
        
StatCurve_Early:
        dc.b 4,50
        dc.b 6,70
        dc.b 10,90
        dc.b 14,95
        dc.b 20,100
        
StatCurve_EarlyLate:
        dc.b 4,30
        dc.b 6,40
        dc.b 14,60
        dc.b 16,70
        dc.b 20,100

