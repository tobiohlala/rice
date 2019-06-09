export XDG_MENU_PREFIX="lxde-"
systemctl --user import-environment DISPLAY

setxkbmap -option caps:ctrl_modifier
xset r rate 200 45
xrdb .Xresources

exec openbox-session
