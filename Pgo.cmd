@echo off
CHCP 65001 >nul
echo Loading...
cd %appdata%\PGo
Colorcode.colora -s "━━━━╺━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cls
echo Loading..
Colorcode.colora -s "━━━━━━━━╺━━━━━━━━━━━━━━━━━━━━━━━━━━━"
del "main.Pgo"
cls
echo Loading...
Colorcode.colora -s "━━━━━━━━━━╺━━━━━━━━━━━━━━━━━━━━━━━━━"
copy %1 "main.Pgo"
cls
echo Reading Dlls...
title DLLLoader.exe
powershell ./Command.ps1
cls
call c %2 %3 %4 %5 %6
exit
