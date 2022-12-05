@echo off
cd .
for /d %%d in (*.*) DO (
@echo off
cd "%%d"
echo "%%d"
autogit Update all
cd ..
@echo ------------------
)
