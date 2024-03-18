for %%I in (.) do set project=%%~nxI
set branch=initial

git init -b %branch%
rem git remote add origin https://github.com/dcheva/%project%.git
git remote add origin https://dcheusov@bitbucket.org/dcheusov24/%project%.git
git pull origin %branch%

rem echo # %project% GitHub repo >> README.MD
echo # %project% BitBucket repo >> README.MD
git add -A
git commit -m "Add README.MD"
git branch --set-upstream-to=origin/%branch% %branch%
git push origin HEAD
