@echo off
title AVS Paint Editor (Unofficial)
color 0F

:: ===== ACTIVACION (SIMBOLICA) =====
set ACTIVATION_CODE=AVS-PAINT-2026

cls
echo =====================================
echo   AVS PAINT EDITOR (UNOFFICIAL)
echo =====================================
echo.
set /p USER_CODE=Enter activation code: 

if not "%USER_CODE%"=="%ACTIVATION_CODE%" (
    echo.
    echo Invalid activation code.
    echo This software is FREE.
    pause
    exit
)

:: ===== MENU PRINCIPAL =====
:menu
cls
echo =====================================
echo   AVS PAINT EDITOR (UNOFFICIAL)
echo =====================================
echo.
echo 1. Draw (ASCII)
echo 2. Change console color
echo 3. Clear screen
echo 4. Save drawing
echo 5. Exit
echo.
set /p option=Choose an option: 

if "%option%"=="1" goto draw
if "%option%"=="2" goto color
if "%option%"=="3" goto clear
if "%option%"=="4" goto save
if "%option%"=="5" exit

goto menu

:: ===== DIBUJAR =====
:draw
cls
echo Draw using ASCII text
echo Type FIN to return to menu
echo.
:drawloop
set /p line=
if "%line%"=="FIN" goto menu
echo %line%>> drawing.txt
goto drawloop

:: ===== COLOR =====
:color
cls
echo Console colors:
echo 0=Black 1=Blue 2=Green 4=Red 7=Gray F=White
echo Example: 0F
set /p c=Choose color: 
color %c%
goto menu

:: ===== LIMPIAR =====
:clear
cls
goto menu

:: ===== GUARDAR =====
:save
cls
echo Drawing saved as drawing.txt
pause
goto menu
