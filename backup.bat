@echo off & setlocal

REM Display welcome message and info
echo\
echo Welcome to automatic Visual Studio Code backup script by Andre Sieverding
echo\
echo Backing up extensions and configurations into repository...
echo\

REM Get absolute directory path of current file and remove last character (backslash)
SET dir=%~dp0
SET dir=%dir:~0,-1%

REM Get absolute directory path of vs code installation
SET vscode_dir=%systemdrive%%homepath%\AppData\Roaming\Code\User

REM Copy all configurations
echo Copying files...
echo\
copy "%vscode_dir%\settings.json" "%dir%\vscode\settings.json"

REM Export Activity Bar configuration from SQLite database
echo Exporting Activity Bar configuration...
echo\
sqlite3 "%vscode_dir%\globalStorage\state.vscdb" "SELECT value FROM ItemTable WHERE key = 'workbench.activity.pinnedViewlets2';" > "%dir%\vscode\activity-bar.json" 2>nul

REM Update extensions-list
echo Updating extensions-list...
echo\
code --list-extensions --show-versions > vscode\extensions-list.txt && exit 1

echo Done! :)
echo\

pause
endlocal
