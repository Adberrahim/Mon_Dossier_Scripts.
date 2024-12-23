@echo off
echo ------------------------------------------------------------------

set s=0
dir /b | findstr "config.txt" > nul
if %errorlevel% neq 0 ( 
echo Le fichier config.txt n'existe pas.
) else (
echo Le fichier config.txt existe.
set /a s=%s%%+1)
echo ------------------------------------------------------------------
dir /b | findstr "liste_tests.txt" > nul
if %errorlevel% neq 0 ( 
echo Le fichier liste_tests.txt n'existe pas.
) else (
echo Le fichier liste_tests.txt existe.
set /a s=%s%%+1 )
echo ------------------------------------------------------------------

echo Fin !

pause