@echo off
title AVS Paint Editor (Unofficial) - Launcher
color 0A

cls
echo ====================================
echo AVS PAINT EDITOR (UNOFFICIAL)
echo =====================================
echo.
echo Educational Batch Project (.bat)
echo.
echo 1. Start Editor
echo 2. View Warning
echo 3. Exit
echo.
set /p op=Select an option:

if "%op%"=="1" goto start
if "%op%"=="2" goto warning
if "%op%"=="3" exit

goto menu

:start
cls
echo Starting AVS Paint Editor...
timeout /t 2 >nul
call avs_paint_editor.bat
exit

:warning
cls
echo ⚠️ WARNING
echo.
echo This project is UNOFFICIAL.

echo It is not affiliated with AVS4YOU.

echo The name AVS is used only for inspiration.

echo.
pause
goto menu
