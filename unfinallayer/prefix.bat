@echo off
for /f "tokens=* delims= " %%a in (temp.bat) do (
echo set %%a>>temp2.bat
)