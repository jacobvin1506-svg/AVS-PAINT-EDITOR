@echo off
title AVS Paint Editor (Unofficial)
color 0A

:: ===============================
:: AVS PAINT EDITOR - UNOFFICIAL
:: FREE SOFTWARE
:: ===============================

:ACTIVATION
cls
echo =====================================
echo    AVS PAINT EDITOR (UNOFFICIAL)
echo =====================================
echo.
echo This software is FREE for everyone.
echo Enter activation code to continue.
echo.
set /p USER_CODE=Activation code: 

:: ---- VALIDACION FLEXIBLE ----
echo %USER_CODE% | findstr /B "AVS-PAINT-" >nul
if errorlevel 1 (
    echo.
    echo Invalid activation code.
    echo Example: AVS-PAINT-1234
    pause
    goto ACTIVATION
)

echo.
echo Activation successful!
timeout /t 1 >nul

:: ===============================
:: MENU PRINCIPAL
:: ===============================
:MENU
cls
echo =====================================
echo    AVS PAINT EDITOR (UNOFFICIAL)
echo =====================================
echo.
echo 1. Nuevo dibujo
echo 2. About
echo 3. Exit
echo.
set /p CHOICE=Select option: 

if "%CHOICE%"=="1" goto DRAW
if "%CHOICE%"=="2" goto ABOUT
if "%CHOICE%"=="3" exit
goto MENU

:: ===============================
:: NUEVO DIBUJO EN TEXTO
:: ===============================
:DRAW
cls
echo ===============================
echo   AVS PAINT EDITOR - TEXT DRAWING
echo ===============================
echo.

:: Crear un lienzo de 10 filas x 30 columnas usando puntos
for /L %%Y in (1,1,10) do (
    for /L %%X in (1,1,30) do (
        set /p=·<nul
    )
    echo.
)

echo.
echo Este es tu lienzo de texto (simulado).
echo Imagina dibujar usando los puntos.
echo Presiona cualquier tecla para regresar al menu.
pause
goto MENU

:: ===============================
:: ABOUT
:: ===============================
:ABOUT
cls
echo ===============================
echo   ABOUT
echo ===============================
echo.
echo Name: AVS Paint Editor
echo Version: 7.1.1 TEXT DEMO
echo Type: UNOFFICIAL
echo Language: EN / ES
echo License: FREE
echo.
echo This project is not affiliated
echo with the original AVS software.
echo.
pause
goto MENU
