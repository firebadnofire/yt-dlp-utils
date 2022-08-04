#!/usr/bin/env bash
#installs the dependancies needed
echo 'Choose your option below, to continue:
1 Debian/Ubuntu
2 Arch Linux
3 Fedora
4 install with pip (requires ~/.local/bin to be in the path variable and pip)
5 Exit Installation'
# Function for $errors:
function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}
read number && echo "selected"
case $number in

    1)
 	sudo apt-get install yt-dlp ffmpeg 
	;;
    2)
	sudo pacman -S --needed yt-dlp ffmpeg
	;;
    3)
	sudo dnf install yt-dlp ffmpeg
	;;
    4)
	pip install yt-dlp ffmpeg
	;;
    5)
        echo "Installation Cancelled"
        exit
        ;;

    *) echo "invalid option '$number'";;
esac
