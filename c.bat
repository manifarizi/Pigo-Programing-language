
cls
@echo off
CHCP 65001 >nul
title Pigo Application

:main
    set playsound= "C:\Windows\Media\alarm01.wav"
    powershell -c (New-Object Media.SoundPlayer '%Playsound%').PlaySync(); 

Goto main
@echo off
:Array
set %1[1]=%2
set %1[2]=%3
set %1[3]=%4
set %1[4]=%5
set %1[5]=%6
set %1[6]=%7
set %1[7]=%8
set %1[8]=%9


