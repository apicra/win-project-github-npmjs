:: create folder and .apicra, .gitingore
:: @ECHO OFF
set /P DESCRIPTION= < ..\..\variable\DESCRIPTION.txt
set GIT_USER=%~1
set PROJ=%~2
:: Prepare Variables
FOR /f "tokens=1,2 delims=/" %%a IN ("%PROJ%") do set ORG=%%a&set PROJECT=%%b
if "%PROJECT%"=="" (
set PROJECT=%~2
set ORG=
set PROJ_FOLDER=%PROJECT%
) else (
set PROJ_FOLDER=%ORG%-%PROJECT%
)
::echo %ORG%
::echo %PROJECT%
::exit /b
mkdir %PROJ_FOLDER%
cd %PROJ_FOLDER%
::@ECHO ON
echo # %PROJ% > README.md
echo %DESCRIPTION% >> README.md
echo # Licence > LICENCE.md
..\.apicra\-git-create.bat %GIT_USER% %PROJ%
echo Project: "%PROJ%" is Created
dir
