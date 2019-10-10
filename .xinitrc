setxkbmap -model thinkpad60 -layout br -option caps:escape

slstatus &

sleep 1 && xcompmgr -c -r 3 -o 0.25 -l 5 -t 5 &

. ~/.resources/bin/fehbg &

exec dwm
