@echo off
echo  Loading...
title SysTry Fixer v1.2
color 0a
mode con: cols=25 lines=4
goto main
:main
cls
echo.
echo     SysTry Fixer v1.2
timeout /t 1 /nobreak >nul 2>&1
echo.
cls
echo.
echo          Fixing...
timeout /t 1 /nobreak >nul 2>&1
echo.
goto IconStreams
:IconStreams
:: Delete "IconStreams" If exist!
reg query "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams >nul 2>&1
if %errorlevel% equ 0 (
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams /f >nul 2>&1
goto PastIconsStream
) else (
goto PastIconsStream
)
:PastIconsStream
:: Delete "PastIconsStream" If exist!
reg query "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream >nul 2>&1
if %errorlevel% equ 0 (
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream /f >nul 2>&1
goto pskill
) else (
goto pskill
)
:pskill
::Applying this reg will skip PSKill license agrement.
reg query "HKCU\Software\Sysinternals\PsKill" /v EulaAccepted >nul 2>&1
if %errorlevel% equ 1 (
reg add "HKCU\Software\Sysinternals\PsKill" /v EulaAccepted /t REG_DWORD /d 00000001 /f >nul 2>&1
goto end
) else (
goto end
)
:end
pskill -nobanner explorer >nul 2>&1
start %windir%\explorer.exe >nul 2>&1
cls
echo.
echo           Enjoy!
timeout /t 1 /nobreak >nul 2>&1
echo.
exit /b
::Author: @mribraqdbra
::Thanks to: https://www.cnet.com/news/quick-fix-for-disappearing-system-tray-icons/
