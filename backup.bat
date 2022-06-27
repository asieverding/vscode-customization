@REM @echo off & setlocal

@REM REM Display welcome message and info
@REM echo\
@REM echo Welcome to automatic Atom.io backup script by Andre Sieverding
@REM echo\
@REM echo Backing up packages and configurations into repository...
@REM echo\

@REM REM Get absolute directory path of current file and remove last character (backslash)
@REM SET dir=%~dp0
@REM SET dir=%dir:~0,-1%

@REM REM Get home dir path
@REM SET home=%systemdrive%%homepath%

@REM REM Change into ~/.atom directory
@REM cd %home%\.atom

@REM REM Update package-list
@REM echo Updating package-list...
@REM echo\
@REM call apm list --installed --bare > package-list.txt

@REM REM Copy all configurations into current directory
@REM echo Copying files...
@REM echo\

@REM for %%f in (*.cson *.coffee *.txt *.json *.less .htmlhintrc .jshintrc .sass-lint.yml .gitignore) do (
@REM 	echo Copying: %home%\.atom\%%f -^> %dir%\atom\%%f
@REM 	copy %%f %dir%\atom > nul
@REM )

@REM echo Done! :)
@REM echo\

@REM pause
@REM endlocal
