@echo off
echo Please run as admin if you run as admin press any key To continue...
pause >nul
cd %appdata%\PGo
copy PGo.bat "C:\windows\System32"
pause
exit