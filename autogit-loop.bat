:loop
git add -A
git commit -am "Autogit-loop-%date%-%TIME: =0%"
timeout /t "%1"
goto loop
