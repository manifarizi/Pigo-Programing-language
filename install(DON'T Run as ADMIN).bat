@echo off
mkdir %appdata%\PGo >nul
cd install.folder
copy * %appdata%\PGo

exit
