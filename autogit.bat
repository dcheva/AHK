git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9 %10 %11 %12 %13 %14 %15 %16 %17 %18 %19 %20"
git fetch
git merge -X theirs
git commit -am "merged theirs"
@echo off
@rem ---- command interpretator ----
IF /I "%1" == "bucket" (
    git push bucket --all
) ELSE (
    git push -u origin --all
)
IF /I "%1" == "loop" (
    @echo on
    :loop
    timeout /t "%2"
    git add -A
    git commit -am "%date% at %time:~0,2%:%time:~3,2%:%time:~6,2%"
    git pull
    git push origin HEAD
    goto loop
)