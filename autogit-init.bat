for %%I in (.) do set project=%%~nxI
git init
git add -A
git commit -m Initial
git remote add origin https://github.com/dcheva/%project%.git
git pull
echo # %project% GitHub repo >> README.MD
git add -A
git commit -m Add README.MD
git push --set-upstream origin initial
