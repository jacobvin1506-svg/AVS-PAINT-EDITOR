@echo off
title AVS Paint Editor (Unofficial) - Launcher
color 0A

cls
echo =====================================
echo     AVS PAINT EDITOR (UNOFFICIAL)
echo =====================================
echo.
echo Proyecto educativo en Batch (.bat)
echo.
echo 1. Iniciar Editor
echo 2. Ver Advertencia
echo 3. Salir
echo.
set /p op=Selecciona una opcion: 

if "%op%"=="1" goto iniciar
if "%op%"=="2" goto advertencia
if "%op%"=="3" exit

goto menu

:iniciar
cls
echo Iniciando AVS Paint Editor...
timeout /t 2 >nul
call avs_paint_editor.bat
exit

:advertencia
cls
echo ⚠️ ADVERTENCIA
echo.
echo Este proyecto es NO OFICIAL.
echo No esta afiliado a AVS4YOU.
echo El nombre AVS se usa solo como inspiracion.
echo.
pause
goto menu
