@echo off
echo Python Calculator - GitHub Upload Script
echo ========================================
echo.
set /p USERNAME="Enter your GitHub username: "
set /p REPONAME="Enter repository name (default: python-calculator-web-app): "

if "%REPONAME%"=="" set REPONAME=python-calculator-web-app

echo.
echo Adding GitHub remote...
"C:\Program Files\Git\bin\git.exe" remote add origin https://github.com/%USERNAME%/%REPONAME%.git

echo.
echo Setting main branch...
"C:\Program Files\Git\bin\git.exe" branch -M main

echo.
echo Pushing to GitHub...
"C:\Program Files\Git\bin\git.exe" push -u origin main

echo.
echo Done! Your Python calculator is now on GitHub at:
echo https://github.com/%USERNAME%/%REPONAME%
echo.
pause
