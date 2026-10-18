@echo off
setlocal EnableDelayedExpansion
:ask
color D
set /p "choice=Select your option. 'L' to load a .psff file, 'A' to add to a pre-existing .psff file, 'C' to create a .psff file (used for the names and pronouns of characters) and 'quote' to generate a quote. "
if not %choice% == C (
if not %choice% == L (
if not %choice% == quote (
if not %choice% == A (
echo That is not a valid option.
goto :ask
)
)
)
)
if %choice% == L call %~dp0\test2.bat %charactercount%
if %choice% == quote call %~dp0\generate.bat
if %choice% == C call ask.bat
if %choice% == A call add.bat
goto :ask
