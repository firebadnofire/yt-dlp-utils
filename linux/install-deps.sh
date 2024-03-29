#!/bin/bash
check=0
if command -v apt-get >/dev/null 2>&1; then
    sudo apt-get install ffmpeg yt-dlp make screen python3-tk -y
else
    ((check++))
fi

if command -v dnf &> /dev/null && rpm -q rpmfusion-nonfree-release &> /dev/null; then
    sudo dnf install ffmpeg.x86_64 yt-dlp.noarch make.x86_64 screen.x86_64 python3-tkinter -y
elif command -v dnf &> /dev/null; then
    echo "dnf command exists but rpmfusion-nonfree-release package is not installed."
    echo "Please install rpmfusion-nonfree-release from https://rpmfusion.org/"
    exit
else
    ((check++))
fi

if command -v pacman >/dev/null 2>&1; then
    sudo pacman --needed --noconfirm -S screen make ffmpeg yt-dlp tk
else
    ((check++))
fi

if command -v emerge >/dev/null 2>&1; then
    echo "On gentoo, the 'tc' USE flag must be enabled for yt-gui to work"
    echo "Please enter the ROOT user password:"
    su -c "emerge --ask app-misc/screen net-misc/yt-dlp media-video/ffmpeg dev-build/make dev-lang/tk"
else
    ((check++))
fi

if [ "$check" -eq 4 ]; then
    echo "No supported package manager found"
    echo "Supported package managers: apt, dnf, pacman, emerge"
    exit
else
    echo "installed dependancies"
fi
