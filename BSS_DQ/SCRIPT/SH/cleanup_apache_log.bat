@echo off
set "archivePath=C:\application\dmp\data\logs\apache"
set "textFilePathFinal=C:\script\apache_del_log.txt"
set "formatFile"="mdm_log4j.log"

PowerShell $date = Get-Date; $date=$date.AddDays(-1); $date.ToString('yyyy-MM-dd') > "%textFilePathFinal%"

if not exist "%textFilePathFinal%" (
    echo Text file not found: %textFilePathFinal%
    exit /b 1
)

for /f "tokens=* delims=" %%a in (%textFilePathFinal%) do (
    echo del %archivePath%\%formatFile%%%a.log
)

echo Cleanup complete