:loop
git add -A
git commit -am "%date% at %time:~0,2%:%time:~3,2%:%time:~6,2%"
timeout /t "%1"
goto loop
