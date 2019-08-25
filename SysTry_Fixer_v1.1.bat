@echo off
title SysTry Fixer v1.1
color 0a
mode con: cols=25 lines=5
echo.
echo     SysTry Fixer v1.1
timeout /t 2 /nobreak >nul 2>&1
cls
echo.
echo  Fixing...
::Applying this reg will skip PSKill license agrement.
reg add "HKCU\Software\Sysinternals\PsKill" /v EulaAccepted /t REG_DWORD /d 00000001 >nul 2>&1
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams /f >nul 2>&1
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream /f >nul 2>&1
timeout /t 2 /nobreak >nul 2>&1
pskill -nobanner explorer >nul 2>&1
%windir%\explorer.exe >nul 2>&1
cls
echo.
echo  Enjoy!
timeout /t 2 /nobreak >nul 2>&1
exit /b
::Author: @mribraqdbra
::Thanks to: https://www.cnet.com/news/quick-fix-for-disappearing-system-tray-icons/
