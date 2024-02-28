@echo off
set "archivePath=C:\archive\postgresql_archive\wal_files"
set "walFilePath=C:\Program Files\PostgreSQL\13\bin\pg_wal"
set "textFilePathTemp1=C:\archive\list_cleanup_temp1.txt"
set "textFilePathTemp2=C:\archive\list_cleanup_temp2.txt"
set "textFilePathFinal=C:\archive\list_cleanup_final.txt"
set "postgresqlBin=C:\Program Files\PostgreSQL\13\bin"

forfiles /p "%archivePath%" /s /m * /D -0 /c "cmd /c if @isdir==FALSE echo @file" > "%textFilePathTemp1%"
more +1 "%textFilePathTemp1%" > "%textFilePathTemp2%"

powershell -Command "(Get-Content '%textFilePathTemp2%') -replace '[^a-zA-Z0-9 ]','' | Set-Content '%textFilePathFinal%'"


if not exist "%textFilePathFinal%" (
    echo Text file not found: %textFilePathFinal%
    exit /b 1
)

cd %postgresqlBin%

for /f "tokens=* delims=" %%a in (%textFilePathFinal%) do (
    pg_archivecleanup -n "%archivePath%" %%a
    pg_archivecleanup -n "%walFilePath%" %%a
)

echo Cleanup complete