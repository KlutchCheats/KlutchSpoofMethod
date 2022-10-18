echo off
title Klutch's Val Cleaner
cls
echo --------------------
echo Klutch's Val Cleaner
echo --------------------
set /p choice="Are you sure you want to clean? [Y/N]"
if %choice%==Y GOTO cleaner
if %choice%==y GOTO cleaner
if %choice%==N GOTO Exit
if %choice%==n GOTO Exit

:Exit
cls
exit

:cleaner
cls

taskkill /im vgtray.exe
taskkill /im vgc.exe
taskkill /im log-uploader.exe
taskkill /im vgc.ico
taskkill /im vanguardemulate.exe
echo ------------------------
echo Disabled vanguard (TEMP)
echo ------------------------
del /f "C:\Windows\apppatch\Custom\vanguardemulate.exe"
del /f "C:\Windows\win.ini"
del /f "C:\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
del /f "C:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
del /f "C:\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
del /f "C:\Riot Games\Riot Client\UX\icudtl.dat"
del /f "C:\Riot Games\Riot Client\UX\natives_blob.bin"
del /f "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del /f "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
del /f "C:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del /f "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
del /f "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /f "C:\Users\%username%\ntuser.ini"
del /f "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /f "C:\System Volume Information\tracking.log"
del /f "D:\System Volume Information\tracking.log"
del /f "C:\Users\%username%\AppData\Local\VALORANT\Saved\Logs"
del /f "C:\Users\%username%\AppData\Local\VALORANT\Saved"
del /f "C:\Windows\Prefetch\VALORANT-WIN64-SHIPPING.EXE-D4EB2DF4.pf"
del /f "C:\Windows\Prefetch\VALORANT.EXE-B4BC886D.pf"
del /f "C:\Program Files\Riot Vanguard"
echo ---------------------------
echo cleaned traces for valorant
echo ---------------------------
pause