cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo // in "%%d" \\ --------------------------------
cd %%d
pushd .
start autogit "Update-remotes-%date%-%TIME: =0%"
timeout /t 5 /nobreak >nul
start autogit bucket
cd ..
pushd .
)
