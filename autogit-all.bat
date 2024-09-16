cd .
for /d %%d in (*.*) DO (
@echo // in "%%d" \\ --------------------------------
cd %%d
pushd .
start autogit "Update-remotes-%date%-%TIME: =0%"
cd ..
pushd .
)
