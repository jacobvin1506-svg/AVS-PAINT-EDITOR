@echo off
title AVS Paint Editor (Unofficial)
color 0F

:menu
cls
echo ===============================
echo AVS PAINT EDITOR (UNO)
echo ===============================
echo.
echo 1. Draw (ASCII)
echo 2. Change color
echo 3. Clear screen
echo 4. Save drawing
echo 5. Exit
echo.
set /p option=Choose an option:

if %option%==1 goto draw
if %option%==2 goto color
if %option%==3 goto clear
if %option%==4 goto save
if %option%==5 exit

goto menu

:draw
cls
echo Write your drawing (ASCII)
echo When you finish, write: END
echo.

set drawing=
:loop
set /p line=
if "%line%"=="END" goto menu
set drawing=%drawing%%line%>> drawing.txt
goto loop

:color
cls
echo Available colors:
echo 0=Black 1=Blue 2=Green 4=Red 7=Gray F=White
set /p c=Choose color (e.g., 0F):
color %c%
goto menu

:clear
cls
goto menu

:save
cls
echo Drawing saved as drawing.txt
pause
goto menu
