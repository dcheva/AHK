git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
@echo off
@rem ---- command interpretator ----
IF /I "%1" == "loop" (
    @echo on
    :loop
    timeout /t "%2"
    git add -A
    git commit -am "Autogit-off-loop-%date%-%TIME: =0%"
    goto loop
)