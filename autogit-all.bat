cd .
for /d %%d in (*.*) DO (
@echo  //
@echo // in "%%d" \\ --------------------------------
cd "%%d"
autogit "Update-origins-%date%-%TIME: =0%"
cd ..
)
