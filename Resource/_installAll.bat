@echo off
setlocal

rem -- Change to the directory of the executing batch file
cd "%~dp0"
@echo off

call "%~dp0\01_install_msys2.bat"

rem call "%~dp0\02_install_subl.bat"

rem rem "Setting config"

rem robocopy "%~dp0\03_APPDATA\" %APPDATA% /s /XF desktop.ini
rem robocopy "%~dp0\04_bin_folder" c:\ /s /XF desktop.ini

rem rem "Add PATH"

rem echo Configuring Windows PATH...
rem call "%~dp0\05_setPATH.bat"

endlocal

echo "Done"
pause
exit /b 0
