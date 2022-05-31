@echo off
set "x=1"
set space="%2"
for /f "tokens=2* delims==" %%v in ('set %1[%x%]')  do PrintO -s %2 & PrintO -s %%v
PrintO -s %Space%
