@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
@echo "autogit \"Update-remotes-%TIME: =0%\""
autogit "\"Update-remotes-%TIME: =0%\""
autogit bucket
cd ..
)
