@echo off
cd .
for /d %%d in (*.*) DO (
@echo off
cd "%%d"
autogit-off-line Offline update all
cd ..
)
