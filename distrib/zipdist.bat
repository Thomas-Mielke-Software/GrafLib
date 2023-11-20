@echo off
rem Zip up an external distribution of CImage

if "%1" == "" goto usage
if "%2" == "" goto usage
echo About to archive an external CImage distribution:
echo   From   %1
echo   To     %2\cimage.zip
echo CTRL-C if this is not correct.
inkey /W4 `Press any key to continue...` %%input

erase %2\cimage.zip
cd %1
zip32 -@ %2\cimage.zip < %1\distrib\cimage.rsp

echo CImage archived.
goto end

:usage
echo CImage distribution.
echo Usage: zipdist source destination
echo e.g. zipdist c:\projects\cimage c:\projects\cimage\deliver

:end


