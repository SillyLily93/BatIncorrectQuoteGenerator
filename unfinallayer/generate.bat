@echo off
setlocal enabledelayedexpansion
:setting
set /a monoquotecount=432
set /a duoquotecount=1543
set /a triplequotecount=584
set /a quadraquotecount=216
set /a pentaquotecount=88
set /a hexaquotecount=95
set /a quotecount=2958
set /a charc=%charactercount%
set /a ARR=%RANDOM% * %charc% / 32768 + 1
set /a AR=%ARR%
::setting the characters and their pronoun groups
set /a "AGR=(1+%RANDOM% %% !character%AR%groupcount!-1)+1"
if not [%shuffle%]==[y] (
if %charc% EQU 1 (
set /a "selectedquoteID=(1+%RANDOM% %% (%monoquotecount%)-1)+1"
)
)
if %charc% GEQ 2 (
set /a BRR=%RANDOM% * %charc% / 32768 + 1
set /a BR=%BRR%
set /a "BGR=(1+%RANDOM% %% !character%BR%groupcount!-1)+1"
if not [%shuffle%]==[y] (
set /a "selectedquoteID=(1+%RANDOM% %% (%monoquotecount%+%duoquotecount%)-1)+1"
)
)
if %charc% GEQ 3 (
set /a CRR=%RANDOM% * %charc% / 32768 + 1
set /a CR=%CRR%
set /a "CGR=(1+%RANDOM% %% !character%CR%groupcount!-1)+1"
if not [%shuffle%]==[y] (
set /a "selectedquoteID=(1+%RANDOM% %% (%monoquotecount%+%duoquotecount%+%triplequotecount%)-1)+1"
)
)
if %charc% GEQ 4 (
set /a DRR=%RANDOM% * %charc% / 32768 + 1
set /a DR=%DRR%
set /a "DGR=(1+%RANDOM% %% !character%DR%groupcount!-1)+1"
if not [%shuffle%]==[y] (
set /a "selectedquoteID=(1+%RANDOM% %% (%monoquotecount%+%duoquotecount%+%triplequotecount%+%quadraquotecount%)-1)+1"
)
)
if %charc% GEQ 5 (
set /a ERR=%RANDOM% * %charc% / 32768 + 1
set /a ER=%ERR%
set /a "EGR=(1+%RANDOM% %% !character%ER%groupcount!-1)+1"
if not [%shuffle%]==[y] (
set /a "selectedquoteID=(1+%RANDOM% %% (%monoquotecount%+%duoquotecount%+%triplequotecount%+%quadraquotecount%+%pentaquotecount%)-1)+1"
)
)
if %charc% GEQ 6 (
set /a FRR=%RANDOM% * %charc% / 32768 + 1
set /a FR=%FRR%
set /a "FGR=(1+%RANDOM% %% !character%FR%groupcount!-1)+1"
if not [%shuffle%]==[y] (
set /a "selectedquoteID=(1+%RANDOM% %% %quotecount%-1)+1"
)
)



::to make sure no character is picked twice, it first needs to make sure it doesn't pick more characters than are in the file
if not %charc% GEQ 2 set BR=0
if not %charc% GEQ 3 set CR=0
if not %charc% GEQ 4 set DR=0
if not %charc% GEQ 5 set ER=0
if not %charc% GEQ 6 set FR=0

::make all caps and first letter capitalized versions of every variable
call %~dp0concrete.bat !x1group1character%AR%! x1group1character%AR%
call %~dp0concrete.bat !x2group%AGR%character%AR%! x2group%AGR%character%AR%
call %~dp0concrete.bat !x3group%AGR%character%AR%! x3group%AGR%character%AR%
call %~dp0concrete.bat !x4group%AGR%character%AR%! x4group%AGR%character%AR%
call %~dp0concrete.bat !x5group%AGR%character%AR%! x5group%AGR%character%AR%
call %~dp0concrete.bat !x6group%AGR%character%AR%! x6group%AGR%character%AR%
call %~dp0concrete.bat !x7group%AGR%character%AR%! x7group%AGR%character%AR%
call %~dp0concrete.bat !x8group%AGR%character%AR%! x8group%AGR%character%AR%
call %~dp0concrete.bat !x9group%AGR%character%AR%! x9group%AGR%character%AR%

if %charc% GEQ 6 (
call %~dp0concrete.bat !x1group1character%FR%! x1group1character%FR%
call %~dp0concrete.bat !x2group%FGR%character%FR%! x2group%FGR%character%FR%
call %~dp0concrete.bat !x3group%FGR%character%FR%! x3group%FGR%character%FR%
call %~dp0concrete.bat !x4group%FGR%character%FR%! x4group%FGR%character%FR%
call %~dp0concrete.bat !x5group%FGR%character%FR%! x5group%FGR%character%FR%
call %~dp0concrete.bat !x6group%FGR%character%FR%! x6group%FGR%character%FR%
call %~dp0concrete.bat !x7group%FGR%character%FR%! x7group%FGR%character%FR%
call %~dp0concrete.bat !x8group%FGR%character%FR%! x8group%FGR%character%FR%
call %~dp0concrete.bat !x9group%FGR%character%FR%! x9group%FGR%character%FR%
)

if %charc% GEQ 5 (
call %~dp0concrete.bat !x1group1character%ER%! x1group1character%ER%
call %~dp0concrete.bat !x2group%EGR%character%ER%! x2group%EGR%character%ER%
call %~dp0concrete.bat !x3group%EGR%character%ER%! x3group%EGR%character%ER%
call %~dp0concrete.bat !x4group%EGR%character%ER%! x4group%EGR%character%ER%
call %~dp0concrete.bat !x5group%EGR%character%ER%! x5group%EGR%character%ER%
call %~dp0concrete.bat !x6group%EGR%character%ER%! x6group%EGR%character%ER%
call %~dp0concrete.bat !x7group%EGR%character%ER%! x7group%EGR%character%ER%
call %~dp0concrete.bat !x8group%EGR%character%ER%! x8group%EGR%character%ER%
call %~dp0concrete.bat !x9group%EGR%character%ER%! x9group%EGR%character%ER%
)

if %charc% GEQ 4 (
call %~dp0concrete.bat !x1group1character%DR%! x1group1character%DR%
call %~dp0concrete.bat !x2group%DGR%character%DR%! x2group%DGR%character%DR%
call %~dp0concrete.bat !x3group%DGR%character%DR%! x3group%DGR%character%DR%
call %~dp0concrete.bat !x4group%DGR%character%DR%! x4group%DGR%character%DR%
call %~dp0concrete.bat !x5group%DGR%character%DR%! x5group%DGR%character%DR%
call %~dp0concrete.bat !x6group%DGR%character%DR%! x6group%DGR%character%DR%
call %~dp0concrete.bat !x7group%DGR%character%DR%! x7group%DGR%character%DR%
call %~dp0concrete.bat !x8group%DGR%character%DR%! x8group%DGR%character%DR%
call %~dp0concrete.bat !x9group%DGR%character%DR%! x9group%DGR%character%DR%
)

if %charc% GEQ 3 (
call %~dp0concrete.bat !x1group1character%CR%! x1group1character%CR%
call %~dp0concrete.bat !x2group%CGR%character%CR%! x2group%CGR%character%CR%
call %~dp0concrete.bat !x3group%CGR%character%CR%! x3group%CGR%character%CR%
call %~dp0concrete.bat !x4group%CGR%character%CR%! x4group%CGR%character%CR%
call %~dp0concrete.bat !x5group%CGR%character%CR%! x5group%CGR%character%CR%
call %~dp0concrete.bat !x6group%CGR%character%CR%! x6group%CGR%character%CR%
call %~dp0concrete.bat !x7group%CGR%character%CR%! x7group%CGR%character%CR%
call %~dp0concrete.bat !x8group%CGR%character%CR%! x8group%CGR%character%CR%
call %~dp0concrete.bat !x9group%CGR%character%CR%! x9group%CGR%character%CR%
)

if %charc% GEQ 2 (
call %~dp0concrete.bat !x1group1character%BR%! x1group1character%BR%
call %~dp0concrete.bat !x2group%BGR%character%BR%! x2group%BGR%character%BR%
call %~dp0concrete.bat !x3group%BGR%character%BR%! x3group%BGR%character%BR%
call %~dp0concrete.bat !x4group%BGR%character%BR%! x4group%BGR%character%BR%
call %~dp0concrete.bat !x5group%BGR%character%BR%! x5group%BGR%character%BR%
call %~dp0concrete.bat !x6group%BGR%character%BR%! x6group%BGR%character%BR%
call %~dp0concrete.bat !x7group%BGR%character%BR%! x7group%BGR%character%BR%
call %~dp0concrete.bat !x8group%BGR%character%BR%! x8group%BGR%character%BR%
call %~dp0concrete.bat !x9group%BGR%character%BR%! x9group%BGR%character%BR%
)

::make sure the characters' pronoun groups are in range
if 0%AGR% GTR 0!character%AR%groupcount! goto :setting
if 0%BGR% GTR 0!character%BR%groupcount! goto :setting
if 0%CGR% GTR 0!character%CR%groupcount! goto :setting
if 0%DGR% GTR 0!character%DR%groupcount! goto :setting
if 0%EGR% GTR 0!character%ER%groupcount! goto :setting
if 0%FGR% GTR 0!character%FR%groupcount! goto :setting
::check for duplicate character choices
if [%AR%] == [%BR%] goto :setting
if [%AR%] == [%CR%] goto :setting
if [%AR%] == [%DR%] goto :setting
if [%AR%] == [%ER%] goto :setting
if [%AR%] == [%FR%] goto :setting
if %BR% NEQ 0 (
if [%BR%] == [%CR%] goto :setting
if [%BR%] == [%DR%] goto :setting
if [%BR%] == [%ER%] goto :setting
if [%BR%] == [%FR%] goto :setting
)
if %CR% NEQ 0 (
if [%CR%] == [%DR%] goto :setting
if [%CR%] == [%ER%] goto :setting
if [%CR%] == [%FR%] goto :setting
)
if %DR% NEQ 0 (
if [%DR%] == [%ER%] goto :setting
if [%DR%] == [%FR%] goto :setting
)
if %ER% NEQ 0 (
if [%ER%] == [%FR%] goto :setting
)
::echo the quote
echo -----
call %~dp0untemp.bat %selectedquoteID%
echo -----
set /p "shuffle=Do you want to shuffle the names? (y/n) "
if [%shuffle%]==[y] goto :setting

