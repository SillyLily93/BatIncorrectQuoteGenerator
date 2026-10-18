@echo off
setlocal EnableDelayedExpansion
set Z=%3
set Y=%2
set i=1
if not %Y% == 1 set i=2
set "x=%1"
if %x:~0,1%== goto :eof
if %x%== goto :ennd
set "x!i!group!Y!character!Z!=%x:=" & set /A i+=1 & set "x!i!group!Y!character!Z!=%"
set (`set "x!i!group!Y!character!Z!=%x:=" & set "x!i!group!Y!character!Z!=%"`)
set x >> temp.bat
set character%Z%groupcount=!Y!
echo character%Z%groupcount=!Y! >> temp.bat
:ennd
set charactercount=%Z%
echo charactercount=%charactercount% >> temp.bat
