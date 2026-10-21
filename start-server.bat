@echo off
title Localhost Web Server
echo Starting local web server at http://localhost:8000 ...

if exist "C:\Program Files\FreeCAD 1.0\bin\python.exe" (
    "C:\Program Files\FreeCAD 1.0\bin\python.exe" -m http.server 8000 --bind 127.0.0.1
    goto end
)

python -m http.server 8000 --bind 127.0.0.1
if errorlevel 1 (
    echo Python not found in PATH or standard directory.
    pause
)

:end
