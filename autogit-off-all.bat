@echo off
cd .
for /d %%d in (*.*) DO (
@echo off
cd "%%d"
@echo // in "%%d" autogit-off-line "Offline update all" \\ --------------------------------
autogit-off-line Offline update all
cd ..
)
