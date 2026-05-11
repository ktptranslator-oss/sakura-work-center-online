@echo off
setlocal
cd /d "%~dp0"
set PORT=8787
start "" "http://127.0.0.1:%PORT%/"
py -3 -m http.server %PORT% --bind 127.0.0.1
endlocal
