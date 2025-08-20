@echo off
echo Starting Python Calculator...
echo.

REM Try the full path to Python first (most likely to work)
set PYTHON_PATH=C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python312\python.exe
if exist "%PYTHON_PATH%" (
    echo Found Python at %PYTHON_PATH%
    echo Installing dependencies...
    "%PYTHON_PATH%" -m pip install -r requirements.txt
    echo Starting calculator server...
    "%PYTHON_PATH%" app.py
    goto :end
)

REM Try different Python commands
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Found Python, installing dependencies...
    python -m pip install -r requirements.txt
    echo Starting calculator server...
    python app.py
    goto :end
)

py --version >nul 2>&1
if %errorlevel% == 0 (
    echo Found Python launcher, installing dependencies...
    py -m pip install -r requirements.txt
    echo Starting calculator server...
    py app.py
    goto :end
)

python3 --version >nul 2>&1
if %errorlevel% == 0 (
    echo Found Python3, installing dependencies...
    python3 -m pip install -r requirements.txt
    echo Starting calculator server...
    python3 app.py
    goto :end
)

echo ERROR: Python not found!
echo.
echo Please install Python from: https://www.python.org/downloads/
echo Make sure to check "Add Python to PATH" during installation.
echo.
echo After installing Python, run this script again.
pause

:end
echo.
echo Calculator is running at: http://127.0.0.1:5000
echo Press Ctrl+C to stop the server
pause
