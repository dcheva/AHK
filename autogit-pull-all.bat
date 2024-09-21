cd .
for /d %%d in (*.*) DO (
@echo \\ in "%%d" //____________________________
cd %%d
start git pull .
cd ..
)
