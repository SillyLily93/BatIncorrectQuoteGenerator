@echo off
set /p "file=Name the .psff file to load. "
set /p filecontents=<%file%
call %~dp0\@echooffcharlayer.bat %filecontents% %1
call %~dp0\prefix.bat
call %~dp0\temp2.bat
del temp.bat temp2.bat