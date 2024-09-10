cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo  //
@echo // in "%%d" \\ --------------------------------
autogit-pull
cd ..
)
