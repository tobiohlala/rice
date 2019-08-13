export LANG=en_US.UTF-8

xset b off
xset s off -dpms
xset r rate 200 45

xset fp+ $HOME/.fonts

setxkbmap -layout gb -option caps:escape

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

xrdb -merge $HOME/.Xresources

xsetroot -solid \#fdf6e3 -cursor_name left_ptr
xbacklight -set 35

$HOME/.fehbg &
$HOME/src/bar &
dunst &

exec cwm
