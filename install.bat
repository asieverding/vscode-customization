@echo off & setlocal

REM Display welcome message and info
echo\
echo Welcome to automatic Visual Studio Code installer with extensions by Andre Sieverding
echo\

REM Get absolute directory path of current file and remove last character (backslash)
SET dir=%~dp0
SET dir=%dir:~0,-1%

REM Get absolute directory path of vs code installation
SET vscode_dir=%systemdrive%%homepath%\AppData\Roaming\Code\User

REM Copy all configurations
echo Copying files...
echo\
copy "%dir%\vscode\settings.json" "%vscode_dir%\settings.json"
echo\

REM Install vscode extensions
echo Installing Visual Studio Code extensions...
echo\
SET extensions_list=%dir%\vscode\extensions-list.txt
for /f "usebackq tokens=*" %%a in (%extensions_list%) do (
    code --install-extension %%a
)
echo\

echo Done! :)
echo\
echo Enjoy your customized Visual Studio Code Code-Editor!
echo\

pause
endlocal
