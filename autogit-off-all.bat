@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
autogit-off-line "Autogit-off-%date%-%TIME: =0%"
cd ..
)
