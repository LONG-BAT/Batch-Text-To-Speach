@echo off
echo screen setup 
timeout 3 > nul
cls
@echo off
color 3
title Text To Speach
mode 200 , 200                                                                                                         
taskkill /F /im wscript.exe
set user=%userprofile%\documents
cd \
cd %user%
mkdir tpm
cd tpm
cls

:S
cls
del temp.vbs
cls
echo d888888b d88888b db    db d888888b   d888888b  .d88b.    .d8888. d8888b. d88888b  .d8b.   .o88b. db   db    
echo `~~88~~' 88'     `8b  d8' `~~88~~'   `~~88~~' .8P  Y8.   88'  YP 88  `8D 88'     d8' `8b d8P  Y8 88   88    
echo    88    88ooooo  `8bd8'     88         88    88    88   `8bo.   88oodD' 88ooooo 88ooo88 8P      88ooo88    
echo    88    88~~~~~  .dPYb.     88         88    88    88     `Y8b. 88~~~   88~~~~~ 88~~~88 8b      88~~~88    
echo    88    88.     .8P  Y8.    88         88    `8b  d8'   db   8D 88      88.     88   88 Y8b  d8 88   88  db 
echo    YP    Y88888P YP    YP    YP         YP     `Y88P'    `8888Y' 88      Y88888P YP   YP  `Y88P' YP   YP  VP 
echo use .EXIT to close.
set /p prompt="what would you like me to say? : " 
echo %prompt%>>log.txt
if "%prompt%" == ".EXIT" goto E 
if "%prompt%" == ".CHANGE_VOICE" goto VC
echo set speech = Wscript.createObject("SAPI.spVoice") : speech.speak "%prompt%" > temp.vbs
echo set speech = Wscript.createObject("SAPI.spVoice") : speech.speak "%prompt%" >> VBSdebug
start temp.vbs
timeout 2 > nuld
goto S







:E
cls
taskkill /F /im wscript.exe
del temp.vbs
exit
