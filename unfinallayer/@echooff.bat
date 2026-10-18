@echo off
set servers=%1
set F=%2
set D=0
call :parse "%servers%"
goto :end


:parse
setlocal
set list=%1
set list=%list:"=%
FOR /f "tokens=1* delims=" %%a IN ("%list%") DO (
  if not "%%a" == "" call :sub %%a
  if not "%%b" == "" call :parse "%%b"
)
endlocal
exit /b

:sub
set /a D=%D%+1
setlocal
call %~dp0\isitmaybe.bat %1 %D% %F%
endlocal
exit /b

:end
