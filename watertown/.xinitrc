export LANG=en_US.UTF-8

xset b off
xset s off -dpms
xset r rate 200 45

xrdb -merge $HOME/.Xresources

xsetroot -solid \#fdf6e3 -cursor_name left_ptr
intel_backlight 35

compton &
~/.fehbg &
tint2 &

exec bspwm
