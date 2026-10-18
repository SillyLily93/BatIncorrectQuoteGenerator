set /p "filename=Name the .psff file you want to add to. "
@certutil -encodehex %filename% mergedtemp.txt 12
set /p "contentaa="<mergedtemp.txt
set contentaa=%contentaa:~0,-2%
@echo %contentaa%>mergedtemp.txt
call %~dp0ask.bat