@echo off
echo GitHub Upload Commands for Python Calculator
echo.
echo After creating your GitHub repository, run these commands:
echo.
echo 1. Add GitHub remote (replace YOUR_USERNAME with your actual GitHub username):
echo "C:\Program Files\Git\bin\git.exe" remote add origin https://github.com/YOUR_USERNAME/python-calculator-web-app.git
echo.
echo 2. Push to GitHub:
echo "C:\Program Files\Git\bin\git.exe" branch -M main
echo "C:\Program Files\Git\bin\git.exe" push -u origin main
echo.
echo Your project will then be live on GitHub!
pause
