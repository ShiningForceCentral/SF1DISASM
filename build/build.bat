echo off
cls

echo -------------------------------------------------------------
echo Start of assembly
cd ../disasm/
SET "buildname=sf1build-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%%time:~6,2%.bin"
echo Executing assembler ...
@"../tools/asm68k" /o ae- /p sf1.asm, "../build/%buildname%" > ../build/output.log
echo End of assembly, produced %buildname%
cd ../build/

echo -------------------------------------------------------------
echo Checking build ...
IF EXIST "%buildname%" (IF EXIST sf1.bin (fc /b "%buildname%" sf1.bin) ELSE echo sf1.bin does not exist in build directory) ELSE echo "%buildname%" does not exist, probably due to an assembly error. Check output.log.

pause