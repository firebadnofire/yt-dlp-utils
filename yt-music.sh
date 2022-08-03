#!/bin/bash
cd ~/
if ! command -v yt-dlp &> /dev/null
then
    echo "yt-dlp could not be found"
sleep 1s
while true
do
        read -r -p "Do you want to install yt-dlp? (debian & ubuntu only) y/n " input

        case $input in
            [yY][eE][sS]|[yY])
                        sudo apt install yt-dlp
                        break
                        ;;
            [nN][oO]|[nN])
                        sleep 1s
                        break
                        ;;
            *)
                echo "Please answer yes or no"
                ;;
        esac
done
clear && echo "Please run script again"
    exit
fi

FILE=~/.ytdlmusic.conf
if [ -f "$FILE" ]; then
	change=$(sed -n -e 3p $FILE)
else
read -p "Input directory you want to save music files to (Use full path name ex: /home/YOURUSERNAME/Downloads): " rootdir
cat <<EOF > $FILE
#this file was made to ensure that yt-dlp knows where to save your music
#edit this directory if you with to change it
$rootdir
EOF
change=$(sed -n -e 3p $FILE) 
fi
cd $change
while true
do
	read -r -p "Do you want to add a directory to put your video(s) in? [y/n] " input

	case $input in
	    [yY][eE][sS]|[yY])
			echo "Input directory name" && read dir && mkdir -p $dir && cd $dir
			break
			;;
	    [nN][oO]|[nN])
			sleep 1s
			break
	       		;;
	    *)
		echo "Please answer yes or no"
		;;
	esac
done
echo input youtube url.
read url
screen -mS "yt-dl" yt-dlp --extract-audio --audio-format mp3 -i $url

