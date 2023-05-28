@REM @Author: kk
@REM @Date:   2023-05-28 13:28:45
@REM @Last Modified by:   kk
@REM Modified time: 2023-05-28 13:29:21
set SUBL=sublime_text_build_4143_x64_setup.exe
rem "Installing sublime text"
echo "Installing Sublime Text"

"%~dp0\%SUBL%" /VERYSILENT /NORESTART /TASKS="contextentry"
copy "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Sublime Text.lnk" "%UserProfile%\Desktop\"

echo "Sublime Text installation complete!"
