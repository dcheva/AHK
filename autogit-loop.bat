:loop
git add -A
git commit -m "\"Autogit-loop-%date%-%TIME: =0%\""
timeout /t "%1"
goto loop
