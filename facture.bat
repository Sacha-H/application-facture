
@echo off
@REM cd ..
@REM cd ..
@REM cd wamp64
@REM .\wampmanager.exe
@REM cd www
@REM cd application-facture


Set ApplicationPath="C:\wamp64\wampmanager.exe"
cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" %ApplicationPath%"
start chrome "http://127.0.0.1:8000"
php -S 127.0.0.1:8000 -t public
