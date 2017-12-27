@echo off
 @echo off
set color=0a
echo @@           @@     @                       @@@@      @@@@             @@@@@@@@
echo @ @         @ @                            @    @    @                @
echo @  @       @  @     @                      @    @    @                @
echo @   @     @   @     @      @@@      @@@    @    @     @@@@            @    @@@@
echo @    @   @    @     @     @        @       @    @         @           @       @
echo @     @ @     @     @     @        @       @    @         @           @       @
echo @      @      @     @      @@@     @        @@@@      @@@@             @@@@@@@@
echo Live CD or Install? Type in the number.
echo 1. Live CD 2. Install
echo @Copyright Micr0S INC 2017
set /p input=
if %input% == 1 goto live
if %input% == 2 goto setup




















 :setup
cls
color %color%


title Micr0S Setup
set color=9e
echo @Copyright Micr0S INC 2017
echo Welcome to Micr0S Setup!
pause
echo Installing Micr0S Components...
pause
echo What is your username?
set /p name=
echo What will your password be?
set /p pass=
echo Loading core components...
pause
echo Restarting your computer
pause
goto login




:login
cls
color %color%
title Micr0S Login
echo Please login, %name%
echo Please type in your password
set /p pass2=
if %pass2% == %pass% goto menu
else goto login



:live
set color=9e
title MicrOS Live CD
goto menu










:menu
cls
title Micr0S G
set color=9e
color %color%
echo --------------------------------------------------------------------
echo Programs: Info, Notepad, Shutdown, Settings, Internet, About
echo ---------------------------------------------------------------------
echo.
echo.
echo ------------\
echo Run:
set /p minput=
if %minput% == info goto info
if %minput% == notepad goto note
if %minput% == settings goto sett
if %minput% == shutdown goto shut
if %minput% == internet goto inte
if %minput% == about goto abou
echo Error, unkown input
pause
goto menu






:info
cls
color %color%
echo --------------------------------------------------------------------
echo Options: Menu, Update
echo ---------------------------------------------------------------------
echo. 
echo.
echo.
echo ==============
echo Micr0S Gui
echo Pentium III
echo 1gb RAM
echo 120gb HDD
echo ==============
echo --------------\
echo Run:
set /p iinput=
if %iinput% == menu goto menu
if %iinput% == update goto update
echo Error, unkown input
pause
goto info




:update
color %color%
cls
echo 0 updates found.
echo You have the latest version.
pause
goto menu



:note
cls
color %color%
echo ------------------------------------
echo Options: Menu, New File, Open file
echo ------------------------------------
echo Notepad
echo.
echo.
echo.
echo ---------------\
echo Run:
set /p ninput=
if %ninput% == newfile goto new
if %ninput% == openfile goto open
if %ninput% == menu goto menu
echo Error, unkown input
pause
goto note



:new
cls 
color %color%
echo %type%
set /p type=
goto note




:open
cls
color %color%
echo %type%
set /p type=
goto note




:sett
color %color%
cls
echo ---------------------------------------------
echo Options: Menu, Color Change
echo ---------------------------------------------
echo.
echo.
echo.
echo ----------------\
echo Run:
set /p sinput=
if %sinput% == colorchange goto colo
if %sinput% == menu goto menu
echo Error, unkown input
pause
goto sett





:colo
cls
echo Type in your color code:
set /p color=
goto menu





:shut
cls
echo ---------------------------------------------
echo Options: Menu, Shutdown, Loggoff
echo ---------------------------------------------
echo.
echo.
echo.
echo ----------------\
echo Run:
set /p shinput=
if %shinput% == menu goto menu
if %shinput% == shutdown exit
if %shinput% == loggoff goto login
echo Error, unkown input
pause
goto shut



:inte
cls
color 0a
echo ---------------------------------------------
echo Options: Menu,
echo ---------------------------------------------
echo.
echo.
echo.
echo -------------------------------\
echo Type in the website you want to
echo view or type menu to go to menu: 
set /p internet=
start https:/%internet%
goto menu





:abou
cls
color 0f
echo ====================
echo Micr0S is an 0S that
echo is meant to be small
echo and compact. Just 
echo like this speech
echo bubble.
echo ====================
echo Hey, were still in beta!
echo Go to our website and help
echo support us!
echo (sites.google.com/view/micros-net)
pause
goto menu