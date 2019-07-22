setxkbmap -layout de -option caps:escape
xset r rate 200 45
xset s off -dpms
xsetroot -solid \#b4bbca -cursor_name left_ptr
xbacklight -set 10
xrdb ~/.Xresources

urxvtd -q -f -o &
~/bin/bar &
~/.fehbg &

exec cwm
