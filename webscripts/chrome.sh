#!/bin/bash
if pgrep chrome > /dev/null 2>&1
then
 DISPLAY=:0 /usr/bin/xdotool search --onlyvisible --class google-chrome windowactivate
 echo 'OK'
else
 DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers --delay 300 ctrl+alt+z g o Return
 echo 'RUN'
fi
