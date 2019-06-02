:: update data on git repo
::@ECHO OFF
set GIT_USER=%~1
set PROJ=%~2
..\..\github\-delete.bat %GIT_USER% %PROJ%
::RMDIR /Q/S %PROJECT%
echo Project: "%PROJ%" is Removed
dir
