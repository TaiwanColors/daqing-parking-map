@echo off
cd /d "%~dp0"
start "parking-map-server" /min python -m http.server 8765 --bind 127.0.0.1
ping -n 3 127.0.0.1 >nul
start "" http://127.0.0.1:8765/index.html
