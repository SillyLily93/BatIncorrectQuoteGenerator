@echo off
setlocal disabledelayedexpansion
for /f "tokens=1* delims=:" %%a in ('findstr /n .* "quoteslist.txt"') do if "%%a"=="%1" call set "line=%%b"
setlocal enabledelayedexpansion
set explamaton=^^!
echo.%line%