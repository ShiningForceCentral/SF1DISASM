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
cd ../disasm/
SET "buildname=sf1build-%today%-%hour%%minutes%%seconds%.bin"
echo Executing assembler ...
@"../tools/asm68k" /o ae- /p sf1.asm, "../build/%buildname%" > ../build/output.log
echo End of assembly, produced %buildname%
cd ../build/

echo -------------------------------------------------------------
echo Checking build ...
IF EXIST "%buildname%" (IF EXIST sf1.bin (fc /b "%buildname%" sf1.bin) ELSE echo sf1.bin does not exist in build directory) ELSE echo "%buildname%" does not exist, probably due to an assembly error. Check output.log.

pause