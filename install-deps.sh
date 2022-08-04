#installs the dependancies needed
while true
do
        read -r -p "Do you want to install ffmpeg and yt-dlp? (debian & ubuntu) y/n " input

        case $input in
            [yY][eE][sS]|[yY])
                        sudo apt install ffmpeg yt-dlp
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
    exit
fi
