git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git fetch
git merge
git commit -am "merged"
git push origin HEAD
@echo off
IF /I "%1" == "loop" (
    @echo on
    :loop
    timeout /t "%2"
    git pull
    git add -A
    git commit -am "%date% at %time:~0,2%:%time:~3,2%:%time:~6,2%"
    git push origin HEAD
    goto loop
)