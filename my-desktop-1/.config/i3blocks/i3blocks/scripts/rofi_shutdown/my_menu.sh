
rofi_cmd="rofi -dmenu -theme ~/.config/i3blocks/scripts/rofi_shutdown/shutdown_menu.rasi -font serif 32 -u 0"

OPTIONS="襤\nﰇ\n\n 鈴\n" 
opts="$(echo -e "$OPTIONS" | $rofi_cmd)"
case $1 in
        "${OPTIONS[0]}")
                notify-send "Apagar" 
                ;;

        "${OPTIONS[1]}")
                systemctl reboot
                ;;
        "${OPTIONS[2]}")
                notify-send "Bloquear"
                exit 0
                ;;
        "${OPTIONS[4]}")
                i3-msg exit
                ;;
esac


