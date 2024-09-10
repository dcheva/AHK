git add -A
git commit -m "%1 %2 %3 %4 %5 %6 %7 %8 %9"
@echo off
@rem ---- command interpretator ----
IF /I "%1" == "loop" (
    :loop
    timeout /t "%2"
    git add -A
    git commit -m "Autogit-off-loop-%date%-%TIME: =0%"
    goto loop
)