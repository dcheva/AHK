cd .
for /d %%d in (*.*) DO (
cd "%%d"
@echo // in "%%d" \\ --------------------------------
cd %%d
pushd .
start autogit "Update-remotes-%date%-%TIME: =0%"
start autogit bucket
cd ..
pushd .
)
