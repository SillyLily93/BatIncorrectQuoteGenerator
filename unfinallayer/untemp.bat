@echo off
setlocal disabledelayedexpansion
for /f "tokens=1* delims=:" %%a in ('findstr /n .* "quoteslist.txt"') do if "%%a"=="%1" call set "line=%%b"
setlocal enabledelayedexpansion
::escaping each exclamation didn't work so i just used a variable that equals ^^!
set explamaton=^^!
echo.%line%
