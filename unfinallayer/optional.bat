set /p "sexual=Enter the character's sexual orientation. "
set /p "romantic=Enter the character's romantic orientation. " 
set /p "gender=Enter the character's gender identity. " 
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %sexual%`) DO (
  SET sexhex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %romantic%`) DO (
  SET romantichex=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\convert.bat %gender%`) DO (
  SET genderhex=%%F
)
echo(01%sexhex%02%romantichex%02%genderhex%0205>>mergedtemp.txt 