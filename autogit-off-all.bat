@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
echo "%%d"
autogit-off-line Offline update all
cd ..
)
