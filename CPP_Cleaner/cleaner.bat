@echo off
setlocal

REM Check if a folder path is provided
if "%1"=="" (
    echo Please provide a folder path.
    goto :eof
)

REM Check if the provided path exists
if not exist "%1" (
    echo The specified folder does not exist.
    goto :eof
)

REM Navigate to the specified folder
cd /d "%1"

REM Delete all .exe files in the folder
del *.exe /q

echo Deletion complete.

:end