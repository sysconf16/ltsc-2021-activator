@echo off
title LTSC 2021 Activator
color f0
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %_Args%", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  del /f /q "%temp%\GetAdmin.vbs" 1>nul 2>nul
  exit
)
cls
echo Activating...
cscript /nologo %windir%\system32\slmgr.vbs /ipk QPM6N-7J2WJ-P88HH-P3YRH-YY74H
cls
echo Activating...
pushd "%~dp0bin\"
rundll32 "%~dp0bin\slc.dll",PatchGatherosstate
call "%~dp0bin\gatherosstatemodified.exe"
copy "%~dp0bin\GenuineTicket.xml" "C:\ProgramData\Microsoft\Windows\ClipSVC\GenuineTicket\GenuineTicket.xml"
cls
echo Activating...
net stop ClipSVC
cls
echo Activating...
net start ClipSVC
cls
echo Activating...
cscript /nologo %windir%\system32\slmgr.vbs /ato
cls
echo Activating...
del "%~dp0bin\gatherosstatemodified.exe"
del "%~dp0bin\GenuineTicket.xml"
cls
echo Windows has been activated.
echo.
echo Visit https://sysconf16.github.io/ for more resources.
pause
exit