@REM IMPORTANT: KEEP THE FILES IN THE SAME DIRECTORY

@REM change directory to the directory of this batch file
cd /d %~dp0

@REM run the program using powershell.exe
powershell.exe -ExecutionPolicy Bypass -File .\imageSourcer.ps1
