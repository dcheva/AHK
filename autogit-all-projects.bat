@echo off
cd C:\Projects
pushd C:\Projects
for /d %%d in (*.*) DO (
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
cd "%%d"
autogit "\"Update origins %date% at %time:~0,2%:%time:~3,2%:%time:~6,2%\""
cd ..
)
