@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
autogit "Update remotes %date% at %time:~0,2%:%time:~3,2%:%time:~6,2%"
autogit bucket
cd ..
)
