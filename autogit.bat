git add -A
git commit -m "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git fetch
git merge -X theirs
git commit -m "merged theirs"
@rem ---- command interpretator ----
IF /I "%1" == "bucket" (
    git push bucket --all
) ELSE (
    git push -u origin --all
)
IF /I "%1" == "loop" (
    :loop
    timeout /t "%2"
    git add -A
    git commit -m "Autogit-loop-%date%-%TIME: =0%"
    git pull
    git push origin HEAD
    goto loop
)