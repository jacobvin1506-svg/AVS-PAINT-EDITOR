@echo off
title AVS Paint Editor - Code Generator
color 0A

cls
echo =====================================
echo   AVS PAINT EDITOR (UNOFFICIAL)
echo     ACTIVATION CODE GENERATOR
echo =====================================
echo.

:: Generar codigo simple con fecha
set /a RAND=%RANDOM% %% 9000 + 1000
set CODE=AVS-PAINT-%RAND%

echo Generated activation code:
echo.
echo   %CODE%
echo.
echo This code is FREE and symbolic.
echo.

:: Guardar en archivo
echo %CODE% > activation_code.txt
echo Code saved as activation_code.txt

echo.
pause
