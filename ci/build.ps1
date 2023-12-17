# Does the build
Push-Location ui
npm run build
Pop-Location

pyinstaller --add-data "version.txt;." backend/main_server.py
pyinstaller --add-data "ui/dist;ui" ui/serve.py
