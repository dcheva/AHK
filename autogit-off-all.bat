@echo off
cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo off
autogit-off-line Offline update all
cd ..
)
