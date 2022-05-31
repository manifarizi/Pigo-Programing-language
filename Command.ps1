$Wgo="$args[1]"
$star="*"

Add-Content ./C.txt "@echo off" 
(gc -encoding UTF8 Main.PGO) -replace "#.PGo.Start{}", '
cls
@echo off
CHCP 65001 >nul
title Pigo Application
' | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.rand{}", 'Set /a "_AArand=(%RANDOM%*(%randmax%-%randmin%+1)/32768)+%randmin%"' | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.frame/", ":" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "{", " " | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "}", "" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "FrameGo.ttl", "title" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.in", "set /p" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.calc", "set /a" | Out-File -encoding UTF8 C.txt

(gc -encoding UTF8 C.txt) -replace "__", "%" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.echo", "echo" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.var", "set" | Out-File -encoding UTF8 C.txt

(gc -encoding UTF8 C.txt) -replace ",", " " | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.beep", "rundll32.exe cmdext.dll,MessageBeepStub" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.Doit", "FOR /L %%v IN (1,1,%Dott%) DO " | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.Playset", "set playsound=" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.Play", "powershell -c (New-Object Media.SoundPlayer '%Playsound%').PlaySync();" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "FrameGo.R0", "pause >nul" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "PGo.Array", "call :array" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "Pgo.Print -Array", ' call Printarray' | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "pgo.", "call $Wgo" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "CMD.", "" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "_n_", " & echo." | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "_c_", "," | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "FrameGo.GO", "Goto" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "~~-removeme-~~", "" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "FrameGo.stop", "exit" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "{{And}}", " & " | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "{{To}}", ">" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "{{From}}", "<" | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "#.", "call " | Out-File -encoding UTF8 C.txt
(gc -encoding UTF8 C.txt) -replace "//", "::::" | Out-File -encoding UTF8 C.txt
del c.bat
ren c.txt c.bat
Add-Content ./C.bat '@echo off
:Array
set %1[1]=%2
set %1[2]=%3
set %1[3]=%4
set %1[4]=%5
set %1[5]=%6
set %1[6]=%7
set %1[7]=%8
set %1[8]=%9

'