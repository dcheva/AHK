cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo  //
@echo // in "%%d" \\ --------------------------------
pushd .
start autogit "Update-remotes-%date%-%TIME: =0%"
start autogit bucket
cd ..
)
