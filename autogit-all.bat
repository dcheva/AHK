@echo off
cd .
for /d %%d in (*.*) DO (
@echo off
cd "%%d"
@echo // in "%%d" autogit "Update all" \\ --------------------------------
autogit Update all
cd ..
)
