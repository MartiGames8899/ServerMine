@echo off
REM Forge requires a configured set of both JVM and program arguments.
REM Add custom JVM arguments to the user_jvm_args.txt
REM Add custom program arguments {such as nogui} to this file in the next line before the %* or
REM  pass them to this script directly

echo Executando Git Pull...
git pull origin main

java @user_jvm_args.txt @libraries/net/neoforged/neoforge/21.1.215/win_args.txt %*

echo Executando Git Push...
git add .
git commit -m "Backup automatico via run.bat"
git push origin main

pause
