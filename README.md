# yt-dlp-utils
<p align="center">
  <img alt="Static Badge" src="https://img.shields.io/badge/Easy_to_use-Easy_to_install-green">
  <img alt="Static Badge" src="https://img.shields.io/badge/License-LOSS-green">
  <img alt="GitHub commit activity (branch)" src="https://img.shields.io/github/commit-activity/t/firebadnofire/yt-dlp-utils">
</p>

CLI scripts to help make yt-dlp simpler and more user friendly.

# Features:
 mp4, mp4 compressed, webm format options. 

Playlist updator (run the script again with the same playlist)

Ease of use

# Supported OSes

OSes that have these package managers are supported:

```
apt: Debian/Ubuntu based

dnf: RHEL/Fedora based

pacman: Arch based

emerge: Gentoo based

Windows: COMING SOON!
```

NOTE: This does not mean the software will not work if you don't use these package managers. It means that the dependancies will not be automatically installed when using the install-deps.sh or install.sh scripts. 


# Install 

#### Quick:

```
curl https://archuser.org/yt-dlp-utils/get-install.sh | bash
./install.sh
```

This will download install.sh and verify its SHA256 signature.

If it is valid, running it clones the repo to /tmp then installs from there.

The repo will automatically be removed from /tmp so no user interaction necessary.

If the script's SHA256 signature doesn't match, it is deleted.

#### Manual:
```
git clone https://github.com/firebadnofire/yt-dlp-utils.git

cd yt-dlp-utils

./install-deps.sh

sudo make install
```

You may now remove the `yt-dlp-utils` directory.

# Uninstall

#### Quick:
```
curl https://archuser.org/yt-dlp-utils/get-uninstall.sh | bash
./install.sh
```
#### Manual
```
git clone https://github.com/firebadnofire/yt-dlp-utils.git

cd yt-dlp-utils

sudo make uninstall
```
# Which file does what
Run `yt-music` to download music

Run `yt-video` to download videos

Run `video-flags DIR URL` to download videos (DIR is the directory to save to, URL is the video url)

Run `music-flags DIR URL` to download music (DIR is the directory to save to, URL is the video url)

Run `yt-gui` in your terminal to pop up a window which will ask you for your download type, directory to save to, and video URL.

`~/.config/ytdlputils` houses configuration files after first running `yt-music` and `yt-video`

# dependancies
ffmpeg yt-dlp

You will need to install these with the provided install-deps.sh script or install.sh script.

# Using screen
Screen is highly recommended when downloading large music/video files. Screen allows you to run commands and leave them in the background while still being able to resume the command. The command will still be running when you exit a screen.

To use screen with either script, put `screen -mS "yt-dlp"` before you run the script. Ex: `screen -mS "yt-dlp" ./yt-music`. 

To exit the screen, run `ctrl+a` then `d`, to resume the screen, run `screen -r yt-dlp`.

`-m`: create a new screen session, `-S`: name screen session, `"yt-dlp"`: name of screen session. Anything after `"yt-dlp"` will be run inside the screen session. The screen session will terminate when the command is finished.

# Updating
If your terminal outputs the following message:
`Your software is out of date! Pull the latest repo to update!`
that means you need to pull the latest version from github.

To do so, run `git clone https://github.com/FireBADnoFire/yt-dlp-utils.git` then cd into the `yt-dlp-utils` directory and run `sudo make uninstall` to remove old scripts. Then run `sudo make install` to install new scripts.

