cur=$(xprop -root -notype _NET_CURRENT_DESKTOP | cut -d= -f2)

case "$cur" in
    " 0")
        ws="●\n○\n○\n○"
        ;;
    " 1")
        ws="○\n●\n○\n○"
        ;;
    " 2")
        ws="○\n○\n●\n○"
        ;;
    " 3")
        ws="○\n○\n○\n●"
        ;;
    esac
echo "$ws\n"
