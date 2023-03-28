# yt-dlp-utils
Two CLI scripts to help make yt-dlp simpler and more user friendly.
Two scripts that use arguments that acheve the same goal

# Features:
 mp4, mp4 compressed, webm format options. 

Playlist updator (run the script again with same playlist)

Ease of use

# How to download
`git clone https://gitlab.com/FireBADnoFire/yt-dlp-utils.git`

If GitLab is unreachable for any reason, try `git clone https://github.com/firebadnofire/yt-dlp-utils`

`cd yt-dlp-utils`

`sudo make install`

# Which file does what
Run `yt-music` to download music

Run `yt-video` to download videos

Run `yt-tui` to enter a text based user interface to download videos

Run `video-flags DIR URL` to download videos (DIR is the directory to save to, URL is the video url)

Run `music-flags DIR URL` to download music (DIR is the directory to save to, URL is the video url)

`~/.config/ytdlputils` houses configuration files after first running `yt-music` and `yt-video`

# dependancies
ffmpeg yt-dlp

You will need to install these with your package manager

I recommend installing yt-dlp with pip rather than apt or pacman

# Using screen
Screen is highly recommended when downloading large music/video files. Screen allows you to run commands and leave them in the backround while still being able to resume the command. The command will still be running when you exit a screen.

To use screen with either script, put `screen -mS "yt-dlp"` before you run the scipt. Ex: `screen -mS "yt-dlp" ./yt-music`. 

To exit the screen, run `ctrl+a` then `d`, to resume the screen, run `screen -r yt-dlp`.

`-m`: create a new screen session, `-S`: name screen session, `"yt-dlp"`: name of screen session. Anything after `"yt-dlp"` will be run inside the screen session. The screen session will terminate when the command is finished.


