echo off
set /P NPM_URL= < .apicra\variable\NPM_URL.txt
echo %NPM_URL%
start firefox %NPM_URL%
