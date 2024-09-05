git add -A
git commit -m "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git pull
git push origin HEAD
@echo off
@rem ---- command interpretator ----
IF /I "%1" == "loop" (
    @echo on
    :loop
    timeout /t "%2"
    git add -A
    git commit -m "Autogit-pull-loop-%date%-%TIME: =0%"
    git pull
    git push origin HEAD
    goto loop
)