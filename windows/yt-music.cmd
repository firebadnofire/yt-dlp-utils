@echo off
REM Define colors
set "RED=\033[0;31m"
set "NC=\033[0m"
set "GREEN=\033[0;32m"
set current_dir=%CD%
echo Current directory: %current_dir%

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

set "PFILE=%APPDATA%\ytdlputils"
set "FILE=%APPDATA%\ytdlputils\ytdlpmusic.conf"

echo Checking for default save path...
timeout /t 1 >nul

if exist "%FILE%" (
    for /f "usebackq delims=" %%I in ("%FILE%") do set "change=%%I"
) else (
    echo %FILE% not found
    timeout /t 1 >nul
    mkdir "%PFILE%"
    set /p "rootdir=Input directory you want to save music files to by default (Use full path name ex: C:\Users\YOURUSERNAME\Downloads): "
    mkdir "%rootdir%"
    (
        echo. REM this file was made to ensure that yt-dlp knows where to save your music
        echo. REM edit this directory if you wish to change it
        echo %rootdir%
    ) >"%FILE%"
    for /f "usebackq delims=" %%I in ("%FILE%") do set "change=%%I"
)

echo OK
cd /d "%change%"
echo You will download to:
cd
:loop
set /p "input=Do you want to add a directory to put your song(s) in? [y/n] "
if /i "%input%"=="y" (
    set /p "dir=Input directory name: "
    mkdir "%dir%" >nul 2>nul
    if not exist "%dir%" (
        echo Failed to create directory.
    ) else (
        cd /d "%dir%"
        echo You will now download to:
        cd
        goto :endloop
    )
) else if /i "%input%"=="n" (
    goto :endloop
) else (
    echo Please answer yes or no.
)
goto :loop

:endloop
echo Input YouTube URL.
set /p "url="
%current_dir%\yt-dlp.exe -4 -x --audio-format mp3 --embed-thumbnail --add-metadata %url%
cd %current_dir%