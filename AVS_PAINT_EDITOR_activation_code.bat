:: ===== ACTIVATION (CORRECTED) =====
cls
echo ========================================
echo AVS PAINT EDITOR (UNOFFICIAL)
echo ========================================
echo.
set "ACTIVATION_CODE=AVS-PAINT-2026"
set /p USER_CODE=Enter activation code: 
if /I "%USER_CODE%"=="%ACTIVATION_CODE%" goto ok
echo Invalid activation code
pause
exit
:ok

echo.
echo Activation successful!
timeout /t 1 >null
