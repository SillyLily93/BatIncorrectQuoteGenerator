set /p "filename=Name the .psff file you want to add to. "
::create mergedtemp with the data already in it
@certutil -encodehex %filename% mergedtemp.txt 12
::set contentaa to the contents of mergedtemp
set /p "contentaa="<mergedtemp.txt
::remove the 06 from the end
set contentaa=%contentaa:~0,-2%
@echo %contentaa%>mergedtemp.txt
::call ask.bat as usual
call %~dp0ask.bat
