@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo  //
@echo // in "%%d" \\ --------------------------------
autogit-pull "\"Autogit-pull-%date%-%TIME: =0%\""
cd ..
)
