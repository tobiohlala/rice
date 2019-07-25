setxkbmap -layout gb -option caps:escape
xset r rate 200 45
xset s off -dpms
xsetroot -solid \#c5b3a7 -cursor_name left_ptr
xbacklight -set 10
xrdb ~/.Xresources

sleep 1 && xcompmgr -c -r 3 -o 0.25 -l 5 -t 5 &

dunst &
urxvtd -q -f -o &

~/.fehbg &
~/bin/bar &

exec cwm
