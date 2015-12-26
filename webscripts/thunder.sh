#!/bin/bash
if pgrep thunderbird > /dev/null 2>&1
then
 DISPLAY=:0 /usr/bin/xdotool search --onlyvisible --name "Mozilla Thunderbird" windowactivate
 echo 'OK'
else
 DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers --delay 300 ctrl+alt+z t h Return
 echo 'RUN'
fi
