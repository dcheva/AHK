cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo // in "%%d" \\____________________________
cd %%d
pushd .
start autogit Update-remotes-%date%-%TIME: =0%
cd ..
pushd .
)
timeout /t 5 /nobreak >nul
for /d %%d in (*.*) DO (
cd "%%d"
@echo // in "%%d" \\____________________________
cd %%d
pushd .
start autogit bucket Update-remotes-%date%-%TIME: =0%
cd ..
pushd .
)
