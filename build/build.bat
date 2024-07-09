echo off
cls
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
set month=0%Month%
set month=%month:~-2%
set day=0%Day%
set day=%day:~-2%
set today=%Year%%month%%day%
set hour=%Hour%
set hour=0%hour%
set hour=%hour:~-2%
set minutes=0%Minute%
set minutes=%minutes:~-2%
set seconds=0%Second%
set seconds=%seconds:~-2%
echo -------------------------------------------------------------
echo Start of assembly
echo Assembling sound driver ...
cd ../disasm/data/sound/
..\..\..\tools\asw\asw.exe ..\..\sounddriver.asm
..\..\..\tools\asw\p2bin.exe ..\..\sounddriver.p .\sounddriver.bin -k -r $0000-$1fff
cd musicbank0/
..\..\..\..\tools\asw\asw.exe -x -E errors.log .\musicbank0.asm
..\..\..\..\tools\asw\p2bin.exe .\musicbank0.p ..\musicbank0.bin -k -r $8000-$dfff
cd ../musicbank1/
..\..\..\..\tools\asw\asw.exe -x -E errors.log .\musicbank1.asm
..\..\..\..\tools\asw\p2bin.exe .\musicbank1.p ..\musicbank1.bin -k -r $8ae0-$ffff
cd ../../../
echo Assembling game ...
SET "buildname=sf1build-%today%-%hour%%minutes%%seconds%"
@"../tools/asm68k" /k /m /o ae- /p sf1.asm, "../build/%buildname%.bin", ../build/%buildname%.sym, ../build/%buildname%.lst > ../build/output.log
echo End of assembly, produced %buildname%.bin
cd ../build/

echo -------------------------------------------------------------
echo Checking build ...
IF EXIST "%buildname%.bin" ..\tools\fixheader "%buildname%.bin"
IF EXIST "%buildname%.bin" copy "%buildname%.bin" sf1build-last.bin
IF EXIST "%buildname%.bin" copy "%buildname%.lst" sf1build-last.lst
IF EXIST "%buildname%.bin" (IF EXIST ../rom/sf1.bin (fc /b "%buildname%.bin" ../rom/sf1.bin) ELSE echo sf1.bin does not exist in rom directory) ELSE echo "%buildname%.bin" does not exist, probably due to an assembly error. Check output.log.

pause