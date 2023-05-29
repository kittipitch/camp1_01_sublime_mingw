@echo off
setlocal

rem -- Change to the directory of the executing batch file
cd "%~dp0"
@echo off

call "%~dp0\01_install_subl.bat"



rem "Setting config"

robocopy "%~dp0\03_APPDATA\" %APPDATA% /s /XF desktop.ini
robocopy "%~dp0\04_bin_folder" c:\ /s /XF desktop.ini

rem "Add PATH"

echo Configuring Windows PATH...
call "%~dp0\05_setPATH.bat"

rd /s /q "%temp%"


call "%~dp0\02_install_msys2.bat"

endlocal
echo "Done"
pause
exit /b 0
