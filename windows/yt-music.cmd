@echo off
REM Define colors
set "RED=\033[0;31m"
set "NC=\033[0m"
set "GREEN=\033[0;32m"


echo Checking if yt-dlp.exe and ffmpeg.exe exist...

REM Check if yt-dlp.exe exists
if not exist yt-dlp.exe (
    echo yt-dlp.exe not found! Exiting script.
    exit /b 1
)

REM Check if ffmpeg.exe exists
if not exist ffmpeg.exe (
    echo ffmpeg.exe not found! Exiting script.
    exit /b 1
)
echo "Success!"
echo Checking version using codeberg

REM Call curl to fetch version.txt and find the third line
for /f "delims=" %%a in ('curl -s https://codeberg.org/firebadnofire/yt-dlp-utils/raw/branch/main/version.txt ^| findstr /r /c:".*"') do set "latest=%%a"

REM Compare versions
set "current=version=1.10"

if "%latest%"=="%current%" (
    echo You are up to date!
) else (
    echo Your software is out of date! Pull the latest repo to update!
    REM Remove the line below to continue running the script despite being out of date
    exit /b 1
)

