@ECHO off
cd "%~dp0"
robocopy "%~dp0\Resource\03_APPDATA" %APPDATA% /s /XF desktop.ini
