cd %1
del .git -Y
git init
git add -A
git commit -m Initial
git branch -M initial
git checkout -b initial
git remote add origin https://github.com/dcheva/%1.git
git branch --set-upstream-to=origin/initial initial
echo # %1 GitHub repo >> README.MD
git add -A
git commit -m Add README.MD
git push --set-upstream origin initial
