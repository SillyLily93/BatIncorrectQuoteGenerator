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
::add the data. fun fact: the seperators for the others were originally going to be hex FF, FE and so on but turns out those are in the ascii range. this is why optional has 01 and 02, as that was already planned to use those.
echo(01%sexhex%02%romantichex%02%genderhex%0205>>mergedtemp.txt 
