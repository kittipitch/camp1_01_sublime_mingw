@REM @Author: kk
@REM @Date:   2023-05-28 13:27:06
@REM @Last Modified by:   kk
@REM Modified time: 2023-05-28 13:27:28

set MSYS2_INSTALLER=msys2-x86_64-20230526.exe
set MSYS2_INSTALL_DIR="C:\msys2"

rem if exist "%MSYS2_INSTALL_DIR%" (
rem 	echo removing: %MSYS2_INSTALL_DIR%
rem     rd /s /q "%MSYS2_INSTALL_DIR%"
rem     if exist "%MSYS2_INSTALL_DIR%" (
rem         echo Failed to remove %MSYS2_INSTALL_DIR%. Please make sure the directory is not in use.
rem         pause
rem         exit /b 1
rem     )
rem ) else (
rem 	echo directory does not exist: %MSYS2_INSTALL_DIR%
rem )

if exist "%~dp0\%MSYS2_INSTALLER%" (
    echo File exists: %~dp0%MSYS2_INSTALLER%
	echo Installing MSYS2 silently...
	"%~dp0%MSYS2_INSTALLER%" install --root %MSYS2_INSTALL_DIR% --confirm-command

	echo Updating MSYS2 packages...
	%MSYS2_INSTALL_DIR%\msys2_shell.cmd -defterm -no-start -mingw64 -lc "pacman -Syu --noconfirm"

	echo Installing g++ compiler...
	%MSYS2_INSTALL_DIR%\msys2_shell.cmd -defterm -no-start -mingw64 -lc "pacman -S --noconfirm mingw-w64-x86_64-toolchain"

) else (
    echo File does not exist: %MSYS2_INSTALLER%
)




