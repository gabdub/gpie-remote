#!/bin/bash
echo "Content-type: text/plain"
echo ''
#echo $1
if [ "${1:0:2}" == "t-" ]
then
 DISPLAY=:0 /usr/bin/xdotool type --clearmodifiers "${1:2}"
elif [ "${1:0:3}" == "ma-" ]
then
 mm=${1:3}
 mm=${mm//,/ }
 #echo 'MM' $mm 
 DISPLAY=:0 /usr/bin/xdotool mousemove -p $mm
elif [ "${1:0:3}" == "mr-" ]
then
 mm=${1:3}
 mm=${mm//,/ }
 #echo 'MM' $mm 
 DISPLAY=:0 /usr/bin/xdotool mousemove_relative -p $mm
else
case $1 in
"th")   /bin/bash /home/gabriel/webscripts/thunder.sh ;;
"ffox") /bin/bash /home/gabriel/webscripts/firefox.sh ;;
"chrome") /bin/bash /home/gabriel/webscripts/chrome.sh ;;
"ytk") /bin/bash /home/gabriel/webscripts/yt_sp.sh ;;
"clem") /bin/bash /home/gabriel/webscripts/clem.sh ;;

"top")  top -b -n1 | head -n12 ;;

"click1") DISPLAY=:0 /usr/bin/xdotool click 1 ;;
"click2") DISPLAY=:0 /usr/bin/xdotool click --repeat 2 1 ;;
"click3") DISPLAY=:0 /usr/bin/xdotool click 3 ;;

"app1") DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers ctrl+alt+z ;;
"app2") DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers ctrl+alt+x ;;
"app3") DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --clearmodifiers ctrl+alt+w ;;

"pad1") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Escape ;;
"pad2") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Tab ;;
"pad3") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Up ;;
"pad4") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Page_Up ;;
"pad5") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers BackSpace ;;
"pad6") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Left ;;
"pad7") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Return ;;
"pad8") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Right ;;
"pad9") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers F5 ;;
"pad10") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers F6 ;;
"pad11") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Down ;;
"pad12") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers Page_Down ;;
"pad13") DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 click --repeat 2 1 ;;
"pad14") /bin/bash /home/gabriel/webscripts/chrome.sh
 DISPLAY=:0 /usr/bin/xdotool key --delay 50 --clearmodifiers F6 type --delay 50 --clearmodifiers "www.youtube.com/feed/subscriptions" ;;
"pad15") /bin/bash /home/gabriel/webscripts/chrome.sh
 DISPLAY=:0 /usr/bin/xdotool key --delay 50 --clearmodifiers F6 type --delay 50 --clearmodifiers "netflix.com" ;;
"pad16") /bin/bash /home/gabriel/webscripts/chrome.sh
 DISPLAY=:0 /usr/bin/xdotool key --delay 50 --clearmodifiers F6 type --delay 50 --clearmodifiers "plus.google.com" ;;
"pad17") /bin/bash /home/gabriel/webscripts/chrome.sh
 DISPLAY=:0 /usr/bin/xdotool key --delay 50 --clearmodifiers F6 type --delay 50 --clearmodifiers "lanacion.com.ar" ;;
 
"pad20") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers control+super+z ;;
"pad21") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers control+super+x ;;

"pad30") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers alt+F4 ;;
"pad31") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers control+F4 ;;
"pad32") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers control+q ;;
"pad33") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers control+w ;;
"pad34") DISPLAY=:0 /usr/bin/xdotool mousemove -p 0 0 key --delay 300 --clearmodifiers ctrl+alt+q o Return ;;

"pad51") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers XF86AudioPrev ;;
"pad53") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers XF86AudioRaiseVolume ;;
"pad55") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers XF86AudioPlay ;;
"pad59") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers XF86AudioNext ;;
"pad61") DISPLAY=:0 /usr/bin/xdotool key --clearmodifiers XF86AudioLowerVolume ;;
esac
fi
