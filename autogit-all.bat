@echo off
cd .
for /d %%d in (*.*) DO (
@echo off
cd "%%d"
@echo || autogit Update all || ----------------------------------
echo "%%d"
autogit Update all
cd ..
)
