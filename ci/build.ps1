# Does the build
Push-Location ui
npm run build
Pop-Location

ls C:\Windows\System32\downlevel

pyinstaller --add-data "version.txt;." --paths C:\Windows\System32\downlevel backend/main_server.py
pyinstaller --add-data "ui/dist;ui" ui/serve.py
