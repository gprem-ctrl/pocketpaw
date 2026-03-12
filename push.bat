@echo off
cd /d "C:\Project Intern\pocketpaw"
echo Removing bat files from git index...
git rm --cached fix_lint.bat 2>nul
git rm --cached fix2.bat 2>nul
del fix2.bat 2>nul
echo Adding gitignore entry for bat files...
echo *.bat >> .gitignore
git add .gitignore
git add src/pocketpaw/recent_files.py
git add tests/test_recent_files.py
git add uv.lock
git commit --amend --no-edit
echo Force pushing...
git push origin fix/recent-files-bash-heuristic --force
echo ALL DONE
pause
