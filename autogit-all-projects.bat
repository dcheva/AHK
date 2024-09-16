cd C:\Projects
pushd C:\Projects
for /d %%d in (*.*) DO (
@echo // in "%%d" \\ --------------------------------
cd %%d
pushd .
start autogit "Update-origins-%date%-%TIME: =0%"
cd ..
pushd .
)
