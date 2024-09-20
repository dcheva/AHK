cd .
pushd .
start autogit "Update-remotes-%date%-%TIME: =0%"
timeout /t 5 /nobreak >nul
start autogit bucket
