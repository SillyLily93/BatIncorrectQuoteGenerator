@echo off
set /p "file=Name the .psff file to load. "
set /p filecontents=<%file%
call %~dp0\@echooffcharlayer.bat %filecontents% %1
::add "set" to the start of the variables. they are stored in temp.bat because they werent saved otherwise.
call %~dp0\prefix.bat
::set the variables
call %~dp0\temp2.bat
del temp.bat temp2.bat
