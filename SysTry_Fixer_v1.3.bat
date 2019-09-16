::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyHEpOy9GVTukNXO/FIoKuaao0/mIt18eUd46dsLu6YiaM+sa5kmqcI4omHdPkas=
::fBE1pAF6MU+EWHzeyHEpOy9GVTukNXO/FIoKuaao0/mIt18eUd4ra4TS1rjAJfgWig==
::fBE1pAF6MU+EWHzeyHEpOy9GVTukNXO/FIoKuaao0/mIt18eUd4NfY7f17HANPgHig==
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQImeVUHLA==
::ZQ05rAF9IBncCkqN+0xwdVtCHUrRXA==
::ZQ05rAF9IAHYFVzEqQIDMQhgXh3CGmKiA6d8
::eg0/rx1wNQPfEVWB+kM9LVsJDDebL1+oH4o64fD+/dWR7BxTB4I=
::fBEirQZwNQPfEVWB+kM9LVsJDDebL1+oH4o64fD+/dWR7BxTB4I=
::cRolqwZ3JBvQF1fEqQIDMQhgXh3CGmKiA6d8
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE1E8iIRlGTRWGPnm7Zg==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRm37VEEOgIUag2aOXna
::Zh4grVQjdCqDJGqd53YiMSRyRRyHLlSsV/tP1Nvi/NWzsFQicusnfZ3kzOXAc64W8kCE
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mode con: cols=25 lines=4
copy /y Readme.txt %systemdrive%\Users\%username%\Desktop >nul 2>&1
md en-US >nul 2>&1
copy /y tskill.exe.mui en-US >nul 2>&1
echo  Loading...
title SysTry Fixer v1.3
color 0a
goto main
:main
cls
echo.
echo     SysTry Fixer v1.3
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
goto end
) else (
goto end
)
:end
tskill explorer >nul 2>&1
start %windir%\explorer.exe >nul 2>&1
cls
echo.
echo           Enjoy!
timeout /t 1 /nobreak >nul 2>&1
echo.
exit /b
::Author: @mribraqdbra
::Thanks to: https://www.cnet.com/news/quick-fix-for-disappearing-system-tray-icons/
