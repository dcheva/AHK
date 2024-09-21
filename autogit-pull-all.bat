cd .
for /d %%d in (*.*) DO (
@echo \\ in "%%d" //____________________________
cd %%d
git pull .
cd ..
)
