@echo off
title AVS Paint Editor - Activation Code Generator
color 0B

cls
echo ==========================================
echo  AVS PAINT EDITOR (UNOFFICIAL)
echo  ACTIVATION CODE GENERATOR
echo ==========================================
echo.
echo This tool generates example activation codes.
echo It is NOT a crack or bypass.
echo.
pause

:: Generar numero aleatorio
set /a RAND=%RANDOM% %% 9000 + 1000

:: Codigo final
set CODE=AVS-PAINT-%RAND%

cls
echo ==========================================
echo  GENERATED ACTIVATION CODE
echo ==========================================
echo.
echo %CODE%
echo.
echo Use this code in AVS_PAINT_EDITOR.bat
echo.
pause
exit

