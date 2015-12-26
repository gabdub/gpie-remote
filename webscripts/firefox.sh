#!/bin/bash
if pgrep firefox > /dev/null 2>&1
then
 DISPLAY=:0 /usr/bin/xdotool search --onlyvisible --name "Mozilla Firefox" windowactivate
 echo 'OK'
else
 DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers --delay 300 ctrl+alt+z f Return
 echo 'RUN'
fi

