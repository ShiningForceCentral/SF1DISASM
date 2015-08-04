echo off
cls
echo Start of split operation for file split/sf1.bin
echo Executing tools/splitrom.exe ...
cd ../disasm/
@"../tools/splitrom" ../split/sf1.bin ../split/sf1splits.txt
echo End of split operation. Data extracted in disasm/ folder.
pause