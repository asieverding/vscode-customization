@REM @echo off & setlocal

@REM REM Display welcome message and info
@REM echo\
@REM echo Welcome to automatic Atom.io installer with packages by Andre Sieverding
@REM echo\

@REM REM Get absolute directory path of current file and remove last character (backslash)
@REM SET dir=%~dp0
@REM SET dir=%dir:~0,-1%

@REM REM Get home dir path
@REM SET home=%systemdrive%%homepath%

@REM REM Change into ~/.atom directory
@REM cd %home%\.atom

@REM REM Install apm packages
@REM echo Installing Atom.io packages...
@REM echo\
@REM call apm install --packages-file %dir%\atom\package-list.txt
@REM echo\

@REM REM Change into atom-io-customization/atom directory
@REM cd %dir%\atom

@REM REM Copy all configurations into current directory
@REM echo Copying files...
@REM echo\

@REM for %%f in (*.cson *.coffee *.txt *.json *.less .htmlhintrc .jshintrc .sass-lint.yml .gitignore) do (
@REM 	echo Copying: %%f -^> %home%\.atom\%%f
@REM 	copy %%f %home%\.atom\%%f > nul
@REM )

@REM echo\
@REM echo Done! :)
@REM echo\
@REM echo Enjoy your customized Atom.io Code-Editor!
@REM echo\

@REM pause
@REM endlocal
