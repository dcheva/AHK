@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
@echo "autogit Update-remotes-%date%-%TIME: =0%"
autogit "autogit Update-remotes-%date%-%TIME: =0%"
autogit bucket
cd ..
)
