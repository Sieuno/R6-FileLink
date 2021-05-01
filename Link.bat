%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@echo off
rem 2021.4.29


set /p Dst=Destination Folder: 
set /p Src=Source Folder: 


cd /d "%Dst%"
for /f %%i in (%~dp0list.txt) do del /f /q "%%i"
for /f %%i in (%~dp0list.txt) do mklink "%%i" "%Src%\%%i"
rd /s /q Support
rd /s /q BattlEye
rd /s /q videos

mklink /d "Support" "%Src%\Support"
mklink /d "BattlEye" "%Src%\BattlEye"
mklink /d "videos" "%Src%\videos"

pause
exit
