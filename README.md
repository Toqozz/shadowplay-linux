# gloom

basic shadowplay-like functionality with nvenc.

## setup

The script is only barebones right now.

Point `INSTALL (line 5)` to your ffmpeg executable (built with nvenc support).

Change `-s 2560x1440 (line 9)` to your resolution.  (X11 resolution, not the resolution the game is being run at).

Default save time is 3 minutes, change it on line 13.

## usage

`./gloom.sh`

Press q in the terminal to save the last 3 minutes.


That's it.  Videos are saved in ~/Videos/

## notes

When recording for a really long time you might have problems saving, because ffmpeg then has to cut a very large video down to the time.

Honestly this is a pretty significant issue and you probably want to use [ShadowRePlay-Linux](https://github.com/MAPReiff/ShadowRePlay-Linux) instead, which seems to resolve the issue and also handles non-nvidia gpus!
