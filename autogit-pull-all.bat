@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo off
@echo
@echo // in "%%d" \\ --------------------------------
autogit-pull Update all
cd ..
)
