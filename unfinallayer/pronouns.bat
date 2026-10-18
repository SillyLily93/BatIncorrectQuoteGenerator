set /p "pronounThey=Enter the equivalent to 'they' when referring to this character. (all lowercase): "
set /p "pronounThem=Enter the equivalent to 'them' when referring to this character. (all lowercase): "
set /p "pronounTheir=Enter the equivalent to 'their' when referring to this character. (all lowercase): "
set /p "pronounTheirs=Enter the equivalent to 'theirs' when referring to this character. (all lowercase): "
set /p "pronounThemself=Enter the equivalent to 'themself' when referring to this character. (all lowercase): "
set /p "pronounAre=Enter present conjugation (e.g is/are) for this character's pronouns. (all lowercase): "
set /p "pronounTheyre=Enter the equivalent to 'they're' when referring to this character. (all lowercase): "
set /p "pronounWere=Enter the past conjugation (e.g was/were) for this character's pronouns. (all lowercase): "

::set the hex values corresponding to the strings
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %name%`) DO (
  SET namehex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounThey%`) DO (
  SET pronounTheyhex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounThem%`) DO (
  SET pronounThemhex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounTheir%`) DO (
  SET pronounTheirhex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounTheirs%`) DO (
  SET pronounTheirshex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounThemself%`) DO (
  SET pronounThemselfhex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounAre%`) DO (
  SET pronounArehex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounTheyre%`) DO (
  SET pronounTheyrehex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %pronounWere%`) DO (
  SET pronounWerehex=%%F
)
::add said strings to mergedtemp.txt
echo(%pronounTheyhex%03%pronounThemhex%03%pronounTheirhex%03%pronounTheirshex%03%pronounThemselfhex%03%pronounArehex%03%pronounTheyrehex%03%pronounWerehex%0304>>mergedtemp.txt 
set /p "lastgroup=Is this the last pronoun group?  (y/n) "
if %lastgroup%==n call %~dp0\pronouns.bat
