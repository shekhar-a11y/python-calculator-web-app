@echo off
echo Final GitHub Push for Python Calculator
echo =====================================
echo.
echo Please replace YOUR_USERNAME below with your actual GitHub username
echo.
echo Commands to run after creating your GitHub repository:
echo.
echo 1. Remove any existing remote:
echo "C:\Program Files\Git\bin\git.exe" remote remove origin
echo.
echo 2. Add your GitHub repository (replace YOUR_USERNAME):
echo "C:\Program Files\Git\bin\git.exe" remote add origin https://github.com/YOUR_USERNAME/python-calculator-web-app.git
echo.
echo 3. Push to GitHub:
echo "C:\Program Files\Git\bin\git.exe" branch -M main
echo "C:\Program Files\Git\bin\git.exe" push -u origin main
echo.
echo Example with username "johndoe":
echo "C:\Program Files\Git\bin\git.exe" remote add origin https://github.com/johndoe/python-calculator-web-app.git
echo.
pause

REM Clean up any existing remote
"C:\Program Files\Git\bin\git.exe" remote remove origin 2>nul

echo.
echo Ready to add your GitHub repository URL!
echo Please run the commands above with your actual GitHub username.
pause
