# yt-dlp-utils
Two CLI scripts to help make yt-dlp simpler and more user friendly.

# How to download
run `git clone https://github.com/firebadnofire/yt-dlp-utils/` then you can use the scripts provided in the `yt-dlp-utils` directiry.

# Which file does what
Run `yt-music` to download music

Run `yt-video` to download videos

# dependancies
ffmpeg yt-dlp

You will need to install these with your package manager

Screen is highly recommended when downloading large music/video files. Screen allows you to run commands and leave them in the backround while still being able to resume the command.

To use screen with either script, put `screen -mS "yt-dlp"` before you run the scipt. Ex: `screen -mS "yt-dlp" ./yt-music`. 

To exit the screen, run `ctrl+a` then `d`, to resume the screen, run `screen -r`.

## To-dos
- [x] add auto download yt-dlp for Arch, Fedora, and derivatives (Done with install-deps.sh but is no longer automatic)
- [x] add support for multiple file formats (mkv, mov, and avi) and diffrent qualities for the diffrent formats
- [x] add auto download ffmpeg for Debian, Ubuntu, arch, Fedora, and derivatives (done with install-deps.sh)
- [x] add a playlist updater to update playlists. (can be done by rerunning the playlist link through the script and directing it to the right folder)
