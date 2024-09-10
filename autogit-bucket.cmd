git add -A
git commit -m "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git fetch bucket
git merge -X theirs
git commit -m "merged bucket"
git push bucket --all
