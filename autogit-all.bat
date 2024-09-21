cd .
for /d %%d in (*.*) DO (
@echo // in "%%d" \\____________________________
cd %%d
pushd .
start autogit Update-remotes-%date%-%TIME: =0%
cd ..
pushd .
)
