#!/bin/bash
#if pgrep clementine > /dev/null 2>&1
#then
# DISPLAY=:0 /usr/bin/xdotool search --onlyvisible --name "Clementine" windowactivate
# echo 'OK'
#else
#run or activate
 DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers --delay 300 ctrl+alt+z c Return
# echo 'RUN'
#fi

