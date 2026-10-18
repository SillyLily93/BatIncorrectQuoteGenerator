echo(06>>mergedtemp.txt
set /p "filename=Name your file. "
del %filename%.psff
@certutil -decodehex mergedtemp.txt %filename%.psff 
del mergedtemp.txt