# yt-dlp-utils
<p align="center">
  ![Static Badge](https://img.shields.io/badge/Easy_to_use-Easy_to_install-Blue)
</p>




Two CLI scripts to help make yt-dlp simpler and more user friendly.
Two scripts that use arguments that acheve the same goal

# Features:
 mp4, mp4 compressed, webm format options. 

Playlist updator (run the script again with same playlist)

Ease of use

# How to download

#### Quick:

`curl https://archuser.org/yt-dlp-utils/install.sh | sh`

This will automatically git clone the repo from any available repo (github, gitlab, git.archuser.org) to /tmp and install from /tmp.

The repo will automatically be removed from /tmp so no user interaction necessary.

#### Manual:
`git clone https://github.com/firebadnofire/yt-dlp-utils.git`

If github.com is unreachable for any reason, try `git clone https://gitlab.com/firebadnofire/yt-dlp-utils`

`cd yt-dlp-utils`

`sudo make install`

You may now remove the `yt-dlp-utils` directory.

# Uninstall

#### Quick:

`curl https://archuser.org/yt-dlp-utils/uninstall.sh | sh`

#### Manual

`git clone https://github.com/firebadnofire/yt-dlp-utils.git`

If github.com is unreachable for any reason, try `git clone https://gitlab.com/firebadnofire/yt-dlp-utils`

`cd yt-dlp-utils`

`sudo make uninstall`

# Which file does what
Run `yt-music` to download music

Run `yt-video` to download videos

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

# Updating
If your terminal outputs the following message:
`Your softare is out of date! Pull the latest repo to update!`
that means you need to pull the latest version from github/gitlab.

To do so, run `git clone https://github.com/FireBADnoFire/yt-dlp-utils.git` then cd into the `yt-dlp-utils` directory and run `sudo make uninstall` to remove old scripts. Then run `sudo make install` to install new scripts.

# Submitting issues:
If you would like to submit an issue, PLEASE submit it via github. I am unable to allow issues on git.archuser.org and I prefer github to gitlab and would like to keep my issues centralized. 
