::add 06 to the end of the file.
echo(06>>mergedtemp.txt
set /p "filename=Name your file. "
::delete the file if it already exists, this is used for adding if they want to overwrite the original file.
del %filename%.psff
@certutil -decodehex mergedtemp.txt %filename%.psff 
::delete temp file.
del mergedtemp.txt
