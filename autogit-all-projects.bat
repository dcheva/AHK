@echo off
cd C:\Projects
pushd C:\Projects
for /d %%d in (*.*) DO (
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
cd "%%d"
autogit "Update-origins-%date%-%TIME: =0%"
cd ..
)
