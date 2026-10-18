@ECHO OFF
SET "foo=%1"
:: get first character
SET "c1=%foo:~0,1%"
:: make it uppercase. Note that the string-substitution is case-insensitive on the 
:: "from" string, but replaces literally.
:: Obviously, A B C should be the full alphabet, which I assign as a user-defined environment string
:: bizarrely called "alphabet"
FOR %%s IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO CALL SET "c1=%%c1:%%s=%%s%%"
SET "%2a1cap=%c1%%foo:~1%"
SET "foo=%1"
:: get first character
SET "c1=%foo%"
:: make it uppercase. Note that the string-substitution is case-insensitive on the 
:: "from" string, but replaces literally.
:: Obviously, A B C should be the full alphabet, which I assign as a user-defined environment string
:: bizarrely called "alphabet"
FOR %%s IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO CALL SET "c1=%%c1:%%s=%%s%%"
SET "%2a2cap=%c1%%foo:~1%"
GOTO :EOF
