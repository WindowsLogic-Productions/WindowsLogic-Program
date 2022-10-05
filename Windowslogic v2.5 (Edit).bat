@echo off
title WindowsLogic Program Beta v2.5
color 0b
:home
title Log in to WindowsLogic Program v2.5
color 0b
cls
echo.
echo WindowsLogic Login Hub
echo """"""""""""""""""""""
echo.
echo Please sign in with your username and password!
echo.
echo [1] Log In
echo [2] Create account
echo [3] Exit
echo.
set /p op=
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
goto errorlog
:2
cls
echo Creating account
echo ===============
echo.
set /p newname="Enter new username:"
if "%newname%"=="%newname%" goto inputname
:inputname
cd "%userprofile%\documents"
if exist "cmdacoBin" goto skip
if not exist "cmdacoBin" goto noskip
:noskip
md "cmdacoBin"
goto skip
:skip
cd "%userprofile%\documents\cmdacoBin"
if exist "%newname%.bat" goto namexist
if not exist "%newname%.bat" goto skip2
:skip2
echo set realusername=%newname%> "%newname%.bat"
goto next
:next
echo.
set /p pswd=Enter new Password:
if "%pswd%"=="%pswd%" goto inputpass
:inputpass
cd "%userprofile%\documents\cmdacoBin"
echo set password=%pswd%>> "%newname%.bat"
goto next1
:namexist
echo.
echo The entered username already exists.
echo Press any key to return. . .
pause >nul
goto 2
:next1
cls
echo WindowsLogic Account
echo ====================
echo.
echo Your account has been successfully created!
echo.
pause
goto home
:1
color 0b
cls
echo *********************
echo *WindowsLogic Log In*
echo *********************
echo.
Set /p logname=Username:
if "%logname%"=="%logname%" goto 2.1
:2.1
echo.
set /p logpass="Password:"
if "%logpass%"=="%logpass%" goto login
:login
cd "%userprofile%\documents\cmdacoBin"
if exist "%logname%.bat" goto call
if not exist "%logname%.bat" goto errorlog
:call
call "%logname%.bat"
if "%password%"=="%logpass%" goto logdone
goto errorlog
:errorlog
color 0c
echo.
echo *********************************
echo *Username or Password incorrect.*
echo *********************************
echo *Access denied.                 *
echo *********************************
pause >nul
goto home
:logdone
cls
echo ****************************************************
echo *WindowsLogic Login                                *
echo ****************************************************
echo X                                                  X
echo ****************************************************
echo *Successfully logged into the WindowsLogic program!*
echo ****************************************************
pause
goto account
:account
cls
cd "%userprofile%\documents\cmdacoBin"
call "%realusername%color.bat"
call "%realusername%.bat"
color %colorcode%
cls
echo.
echo -------------------------------------------------------------------------------
echo %realusername%
echo -------------------------------------------------------------------------------
@echo off
break off
Title WindowsLogic Program
color 0a
cls
goto intromain
:intromain
color 0a
title WindowsLogic Program Beta v2.5
cls
echo.
echo ******************************************************************
echo *X   X X XX   X  XX  XXX X   X XX X   XXX XXX X XXX  X X XXX   XX* 
echo *X X X X X X  X  X X X X X X X X  X   X X X   X X    X X   X   X *
echo *X X X X X  X X  X X X X X X X  X X   X X X X X X    X X  X     X*
echo *XXXXX X X   XX  XX  XXX XXXXX XX XXX XXX XXX X XXX   X  XXX X XX*
echo ******************************************************************
echo X                                                                X
echo ******************************************************************
echo.                                                                 *
echo Hello and welcome to the WLP program                             *
echo.                                                                 *
echo The time is %TIME%                                          *
echo.                                                                 *
echo The date is %DATE%                                           *
echo.                                                                 *
echo MESSAGE: Welcome all to my program! This version mostly contains *
echo bug fixes and updates to the UI.                                 *
echo.                                                                 *
echo ******************************************************************
pause
cls
echo **************************************************
echo *~Root Menu~                                     *
echo **************************************************
echo X                                                X
echo **************************************************
echo *Remember scroll down for more features!         *
echo **************************************************
echo *[1] Release Notes.                              *
echo *[2] Matrix.                                     *
echo *[3] Disco! {Note: Do Not Use If Epileptic}      *
echo *[4] About.                                      *
echo *[5] IP info.                                    *
echo *[6] Exit.                                       *
echo *[Members] See the people who are in WLP.        *
echo *[Tic] Play tic tac toe.                         *
echo *[Windowslogic] Go to windowslogic channel 1.    *
echo *[Mariomario767] Go to windowslogic channel 2.   *
echo *[Logicast3] Go to windowslogic channel 3.       *
echo *[WLP4] Go to windowslogic channel 4.            *
echo *[UG] Go to Ubergooses channel.                  *
echo *[WLPWeb] Go to the WLP website.                 *
echo *[WLPIC] Go to the WLP info center.              *
echo *[SS] Go to the Minecraft server status website. *
echo *[Credits] Credits of program.                   *
echo *[Logoff] Log out of this user.                  *
echo **************************************************
set /p variable=Type your choice:
if %variable% == 1 goto rn
if %variable% == 2 goto cool
if %variable% == 3 goto disco
if %variable% == 4 goto about
if %variable% == 5 goto ipinfo
if %variable% == 6 goto leaving
if %variable% == Logicast3 goto youtube
if %variable% == Members goto theteam
if %variable% == Tic goto game
if %variable% == Windowslogic goto uberchannel
if %variable% == Mariomario767 goto youtube2
if %variable% == WLP4 goto youtube3
if %variable% == WLPWeb goto WLPWeb
if %variable% == WLPIC goto WLPIC
if %variable% == UG goto UG
if %variable% == SS goto SS
if %variable% == Credits goto credits
if %variable% == Logoff goto logoff

goto theerror
:internet
cls
echo Now disabling internet
pause
cls
ipconfig /release
if ERRORLEVEL1 ipconfig /release_all
:spam
cls
echo Now spamming internet
pause
cls
start www.google.com
start www.google.com
start www.google.com
start www.google.com
start www.google.com
start www.google.com
start www.google.com
start www.google.com
start www.google.com
start www.google.com
goto intromain
:shutdown
echo Now shutting down computer
SHUTDOWN -S -F -T 10 -C "Shutting down computer in 10 seconds -Love WindowsLogic"
exit
:cool
color 0a
cls
set Hello WindowsLogic Members
set /a len=18
call :DisplayText

ping localhost -n 2 >nul
set string=Hello WindowsLogic
set /a len=25
call :DisplayText

ping localhost -n 2 >nul
set string=Matrix time
set /a len=28
call :DisplayText

ping localhost -n 2 >nul
set string=Matrix begin!
set /a len=24
call :DisplayText

ping localhost -n 2 >nul


goto matrix


:DisplayText

set /a dispvar =1
set /a len +=1

:DisplayLoop

CALL SET str=%%string:~0,%dispvar%%%

cls
echo %str%
ping localhost -n 1 >nul

set /a dispvar +=1

if '%dispvar%'=='%len%' goto enddisplay

goto DisplayLoop

:enddisplay
exit /b

:matrix
setlocal enabledelayedexpansion
for /l %%A in (1,1,39) do (
set /a rnd=!random!%%5+1
if !rnd!==1 (
set /a rnd2=!random!%%26+1
set num=1
for %%A in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
if !rnd2!==!num! (
set add=%%A
)
set /a num+=1
)
) else set /a add=!rnd!%%2
set var=!var! !add!
)
echo !var!
call :matrix
:disco
cls
echo Disco time baby!
pause
cls
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
ping localhost -n 1 >nul
cls & color 90
ping localhost -n 1 >nul 
color a0 
ping localhost -n 1 >nul
color b0 
ping localhost -n 1 >nul
color c0 
ping localhost -n 1 >nul
color d0 
ping localhost -n 1 >nul
color e0 
ping localhost -n 1 >nul
color f0
color 07
pause
goto intromain
:about
cls
color 0d
echo This program was made by WindowsLogic
echo This program is only for members of WindowsLogic
echo If you want anything added to this program, just message Windowslogic on Skype
echo Thank you for using this program and I hope you like it!
pause
goto intromain
:ipinfo
cls
ipconfig /all
echo Press any key to go back to the menu
pause
cls
goto inromain
:nforce
cls
pause
start http://www.mediafire.com/?odxqcaotd2dk6ku
goto intromain
:leaving
cls
echo Thank you for using the WindowsLogic program!
pause
exit
:youtube
cls
echo Now opening the Logicast3 channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/logicast3
pause
goto intromain
:youtube2
cls
echo Now opening the Mariomario767 channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/Xmariomario767X
pause
goto intromain
:youtube3
cls
echo Now opening the WLP4 channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/wildgirl4991
pause
goto intromain
:theteam
cls
color 0f
echo **************************************************************************
echo *~Members~                                                               *
echo **************************************************************************
echo X                                                                        X
echo **************************************************************************
echo *Owner - WindowsLogic/Tim                                                *
echo *Co-Owner/Artist - Ubergooose/Amy                                        *
echo *Admin/Server Creator - MidnightScarlet/Anna                             *
echo *Member - MR_king2/Keane                                                 *
echo *Member - Meragon55/Rhys                                                 *
echo *Member - DanX951/Daniel W                                               *
echo *Member - Noxmind/Robin                                                  *
echo *Member - Donoskaro/Oskar                                                *
echo *Member - Crazywazy67/Grace                                              *
echo *Member - Cakedude2/Sam                                                  *
echo *Member - Kahooo/Daniel S                                                *
echo *Member - Jal238/Jonathan                                                *
echo **************************************************************************
echo X                                                                        X
echo **************************************************************************
echo *If this list is not up to date ask WindowsLogic when the next update is!*
echo **************************************************************************
pause
goto intromain
:game
color 02
cls
echo Get ready to play tic tac toe
pause
cls
setlocal enabledelayedexpansion



:main
	call :titleScreen
	if "%EXIT%"=="1" exit /b
	call :firstSetup

	:main_Loop
	call :resetBoard
	call :gameLoop
	call :endGameScreen %win%
	if /i %rematch%==Y (
		goto main_Loop
	)
	exit /b


:titleScreen
	echo Welcome to 0's and X's.
	echo.
	echo.
	echo Type EXIT to quit the game.
	echo.
	
	:askP1Type
		set p1Type=
		set /p p1Type="Player 1 - Human or computer? [H/C] - "
		if /i "!p1Type!"=="C" goto askP2Type
		if /i "!p1Type!"=="H" goto askP2Type
		if /i "!p1Type!"=="EXIT" (
			set EXIT=1
			exit /b
		)
	goto askP1Type

	:askP2Type
		set p2Type=
		set /p p2Type="Player 2 - Human or computer? [H/C] - "
		if /i "!p2Type!"=="C" exit /b
		if /i "!p2Type!"=="H" exit /b
		if /i "!p2Type!"=="EXIT" (
			set EXIT=1
			exit /b
		)
	goto askP2Type



:firstSetup
	set p1Score=0
	set p2Score=0
	set turn=
	set p1Char=X
	set p2Char=O
	set p1Score=0
	set p2Score=0
	set NL=^


	::winList contains all the possible winning lines, separated by the new line character.
	set winList=1 2 3 !NL! 4 5 6 !NL! 7 8 9 !NL! 1 4 7 !NL! 2 5 8 !NL! 3 6 9 !NL! 1 5 9 !NL! 3 5 7
	exit /b

:ResetBoard
	for /l %%I in (1,1,9) do (
		set G%%I=%%I
	)
	if "%turn%"=="" (
		set /a turn=%random% %% 2 + 1
	) else (
		set /a turn= 3 - %turn%
	)
	set turnCount=0
	set availableMoves=123456789
	set errorMessage=
	set win=0
	exit /b

:gameLoop
	set /a otherTurn= 3 - %turn%
	if /i "!p%turn%Type!"=="H" (
		call :humanTurn
	) else (
		call :computerTurn %turn% !p%turn%Char! !p%otherTurn%Char!
	)
	set /a turnCount+=1
	set availableMoves=!availableMoves:%move%=!
	if NOT %win%==0 exit /b
	if %turnCount%==9 exit /b
	set /a turn= 3 - %turn%
	goto GameLoop

:humanTurn
	call :displayGrid
	echo.
	echo.%infoMessage%
	set infoMessage=
	set move=
	set /p move= Player %turn%'s turn. Enter the number of your move [1-9] - 
	if !move! lss 1 (
		set infoMessage=Invalid move, enter a number between 1 and 9.
		goto humanTurn
	)
	if !move! gtr 9 (
		set infoMessage=Invalid move, enter a number between 1 and 9.
		goto humanTurn
	)
	if NOT "!G%Move%!"=="!Move!" (
		set infoMessage=That move has already been made, choose another.
		goto humanTurn
	)
	set G%move%=!p%turn%Char!
	call :CheckWin %turn% !p%turn%Char!
	exit /b

:computerTurn

	set move=
	for /f "tokens=1-3 delims= " %%I in ("!winList!") do (		
		if "!G%%I!!G%%J!!G%%K!"=="%2%2%%K" (
			set move=%%K
		)
		if "!G%%I!!G%%J!!G%%K!"=="%2%%J%2" (
			set move=%%J
		)
		if "!G%%I!!G%%J!!G%%K!"=="%%I%2%2" (
			set move=%%I
		)

		if NOT "!move!"=="" (
			set G!move!=%2
			set win=%1
			exit /b
		)

	)

	for /f "tokens=1-3 delims= " %%I in ("!winList!") do (
		if "!G%%I!!G%%J!!G%%K!"=="%3%3%%K" (
			set move=%%K
		)
		if "!G%%I!!G%%J!!G%%K!"=="%3%%J%3" (
			set move=%%J
		)
		if "!G%%I!!G%%J!!G%%K!"=="%%I%3%3" (
			set move=%%I
		)

		if NOT "!move!"=="" (
			set G!move!=%2
			exit /b
		)
	)
	set /a moveGuess= %random% %% ( 9 - %turnCount% )
	set move=!availableMoves:~%moveGuess%,1!
	set G%move%=!p%turn%Char!
	exit /b

:displayGrid
	cls
	echo.
	echo                          ^|   ^|
	echo                        %G1% ^| %G2% ^| %G3%
	echo                      -------------
	echo                        %G4% ^| %G5% ^| %G6%
	echo                      -------------
	echo                        %G7% ^| %G8% ^| %G9%
	echo                          ^|   ^|
	exit /b

:checkWin
	for /f "tokens=1-3 delims= " %%I in ("!winList!") do (
		if "!G%%I!!G%%J!!G%%K!"=="%2%2%2" (
			set win=%1
			exit /b
		)
	)
	set win=0
	exit /b

:endGameScreen
	if NOT %win%==0 (
		set /a p%win%Score+=1
	)
	call :Displaygrid
	echo.
	echo.
	if %win% gtr 0 (
		echo Player %win% wins^!
	) else (
		echo It's a draw^!
	)
	echo.
	echo.
	echo				   Current Scores
	echo				   --------------
 	echo Player 1 Score - %p1Score%				Player 2 Score - %p2Score%
	echo.
	set rematch=
	set /p rematch="Would you like a rematch? [Y/N] - "
	if /i "!rematch!"=="Y" exit /b
	if /i "!rematch!"=="N" (
		exit /b
	) else (
		goto endGameScreen
	)
:ddoser
cls
set Dos= Default
echo Please type your targets ip
echo If it says request time out, it means its working :P
set /p Dos= IP:
ping %Dos% -t -l 15000
:Passgen
cls
echo I will make you a new password.
echo Please write the password down somewhere in case you forget it.
echo ----------------------------------------­-----------------------
echo 1) 1 Random Password
echo 2) 5 Random Passwords
echo 3) 10 Random Passwords
echo Input your choice
set input=
set /p input= Choice:
if %input%==1 goto A if NOT goto Start2
if %input%==2 goto B if NOT goto Start2
if %input%==3 goto C if NOT goto Start2
:A
cls
echo Your password is %random%
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto intromain if NOT goto intromain
if %input%==2 goto Exit if NOT goto Start 2
:Exit
exit
:B
cls
echo Your 5 passwords are %random%, %random%, %random%, %random%, %random%.
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto intromain if NOT goto intromain
if %input%==2 goto Exit if NOT goto Start 2
:C
cls
echo Your 10 Passwords are %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto intromain if NOT goto intromain
if %input%==2 goto Exit if NOT goto Start 2
:webcrash
cls
color 0a
echo Enter the website/IP you would like to DdoS
set input=
set /p input= Enter IP/Website:
if %input%==goto A if NOT B
echo Loading IP/Website
ping localhost>nul
echo To end Crashing press CTRL + C
ping localhost>nul
cls
echo ----------------------------------------------------------------------
echo Now Crashing Website...DO NOT CLOSE THIS BOX!! PRESS CRTL + C TO END!!
echo ----------------------------------------------------------------------
ping %input% -t -l 1500
:siteopener
cls
set Site= Default
echo Enter the site address to open it
set /p Site= Address:
start %site%
pause
cls
echo Press any key to go back to the menu
pause
goto intromain
:theerror
cls
echo You typed it in wrong, try again.
pause
cls
goto intromain
:compusername
cls
echo Your computer username is %USERNAME%
pause
cls
goto intromain
:praiselol
cls
echo %USERNAME%, oh %USERNAME% I love you so much
ping localhost>nul
echo You're the best thing thats ever happened to mankind, %USERNAME%.
ping localhost>nul
echo You should be the new jesus, we all love you %USERNAME%.
ping localhost>nul
echo 
pause
goto intromain
:randomgen
cls
set Generator= Default
echo Enter the amount of numbers to generate between 1-3
set /p Generator= No# 1-3:
if %Generator% == 1 goto generator1
if %Generator% == 2 goto generator2
if %Generator% == 3 goto generator3
goto theerror
:generator1
cls
echo Your number is:
echo %random%
pause
goto intromain
:generator2
cls
echo Your numbers are:
echo %random%
echo and,
echo %random%
pause
goto intromain
:generator3
cls
echo Your numbers are:
echo %random%
echo and,
echo %random%
echo and finally,
echo %random%
pause
goto intromain
:uberchannel
cls
echo Now opening the WindowsLogic channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/windowslogic
pause
goto intromain
:infomationlol
cls
echo Loading up computer infomation
ping localhost>nul
cls
echo Loading up computer infomation.
ping localhost>nul
cls
echo Loading up computer infomation..
ping localhost>nul
cls
echo Loading up computer infomation...
start msinfo32
pause
goto intromain
:Error
cls
color 0c
echo This Program has been disabled by your administrator.
pause
cls
goto intromain
:12
cls
color 0c
echo This feature has been deleted.
pause
cls
goto home
:WLPWeb
cls
echo Now opening the WindowsLogic website
ping localhost>nul
echo Opening...
start http://www.mariocraft.weebly.com
pause
goto intromain
:WLPIC
cls
echo Now opening the WindowsLogic info center
ping localhost>nul
echo Opening...
start http://www.logicastinformationcenter.weebly.com
pause
goto intromain
:Ashens
cls
echo Now opening the Ashens YouTube channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/ashens
pause
goto intromain
:BlueXephos
cls
echo Now opening the BlueXephos channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/bluexephos
pause
goto intromain
:UG
cls
echo Now opening the UberGooose channel
ping localhost>nul
echo Opening...
start http://www.youtube.com/ubergooose
pause
goto intromain
:SS
cls
echo Now opening the Minecraft server status page
ping localhost>nul
echo Opening...
start http://www.serverstats.weebly.com
pause
goto intromain
:rn
cls
title Release Notes
echo ******************************************************
echo *~Release Notes~                                     *
echo ******************************************************
echo X                                                    X
echo ******************************************************
echo *~Beta v1.0~                                         *
echo ******************************************************
echo *Disabled all the Hacking tools.                     *
echo *Added WindowsLogic channel and BlueXephos channel.  *
echo *Changed terms and conditions and members list.      *
echo *Added Error message.                                *
echo ******************************************************
echo X                                                    X
echo ******************************************************
echo *~Beta v2.0~                                         *
echo ******************************************************
echo *Deleted BlueXephos channel.                         *
echo *Added Logicast3, mariomario767 and WLP4 channels.   *
echo *Changed name of program.                            *
echo *Updated user interface with a new look and colours. *
echo *Made Program fully customisable.                    *
echo *Deleted account creator.                            *
echo *Deleted all the non-useful programs.                *
echo ******************************************************
echo *Added all the WindowsLogic Productions websites.    *
echo ******************************************************
echo X                                                    X
echo ******************************************************
echo *~Beta v2.5 (GENERAL FIXES)~                         *
echo ******************************************************
echo *Updated colour scheme (easier colours to see).      *
echo *Readded account creator.                            *
echo *Added Ubergooose channel.                           *
echo *Deleted the prompt at the top of the login screen.  *
echo *Changed welcome screen logo at top.                 *
echo *Deleted disabled programs.                          *
echo *Put release notes in the program.                   *
echo *Deleted some programs and updated UI.               *
echo ******************************************************
pause
goto intromain
:credits
cls
title Credits
echo ***************************************
echo *~Credits~                            *
echo ***************************************
echo X                                     X
echo ***************************************
echo *Made by Windowslogic/Tim             *
echo *©WindowsLogic Productions 2010 - 2013*
echo ***************************************
pause
goto intromain
:logoff
cls
title Log off
color 03
echo Now Logging out of your user...
echo.
ping localhost>nul
echo Successfully logged out!
pause
goto home