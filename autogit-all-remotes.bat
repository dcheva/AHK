cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo  //
@echo // in "%%d" \\ --------------------------------
autogit "Update-remotes-%date%-%TIME: =0%"
autogit-bucket
cd ..
)
