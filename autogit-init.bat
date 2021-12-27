cd %1
del .git
git init
git add -A
git commit -m Initial
git checkout -b main
git branch -M main
git remote add origin https://github.com/dcheva/%1.git
git push --set-upstream origin main
echo # %1 GitHub repo > README.MD
git add -A
git commit -m Add README.MD
git push --set-upstream origin main
