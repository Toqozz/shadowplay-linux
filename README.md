# gloom

basic shadowplay-like functionality with nvenc.

## setup

The script is only barebones right now.

Point INSTALL (line 5) to your ffmpeg executable (built with nvenc support).

Change -s 2560x1440 (line 9) to your resolution.  (X11 resolution, not the resolution the game is being run at).

Default save time is 3 minutes, change it on line 13..

## usage

`./gloom.sh`

That's it.  Videos are saved in ~/Videos/

The script has no knowledge of what has been recorded on previous run. i.e. gloom-0.mp4 will be the first write even if files have already been saved under that name before.
