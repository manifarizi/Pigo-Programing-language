@echo off
set "location=%~dp0"
CHCP 65001 >nul
echo Loading...
Colorcode.colora -s "━━━━╺━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cd "%location%"
cls
echo Loading..
Colorcode.colora -s "━━━━━━━━╺━━━━━━━━━━━━━━━━━━━━━━━━━━━"
del "%cd%\main.Pgo"
cls
echo Loading...
Colorcode.colora -s "━━━━━━━━━━╺━━━━━━━━━━━━━━━━━━━━━━━━━"
copy %1 "%cd%\main.Pgo"
cls
echo Reading Dlls...
title DLLLoader.exe
powershell ./Command.ps1 "%location%" >nul
cls
call c %2 %3 %4 %5 %6
exit