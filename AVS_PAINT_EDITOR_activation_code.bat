:: ===== ACTIVATION (CORRECTED) =====
cls
echo ========================================
echo AVS PAINT EDITOR (UNOFFICIAL)
echo ========================================
echo.
set /p USER_CODE=Enter activation code:

echo %USER_CODE% | findstr /B "AVS-PAINT-" >nul
if errorlevel 1 ( 
echo. 
echo Invalid activation code. 
echo This software is FREE. 
pause 
exit
)

echo.
echo Activation successful!
timeout /t 1 >null
