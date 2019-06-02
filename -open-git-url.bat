set /P GIT_URL= < .apicra\variable\GIT_URL.txt
echo %GIT_URL%
start firefox %GIT_URL%
