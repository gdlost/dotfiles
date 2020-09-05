
rofi_cmd='rofi -dmenu -theme ~/.config/i3blocks/scripts/rofi_shutdown/shutdown_menu.rasi -u 0'

OPTIONS="襤\nﰇ\n\n 鈴\n" 
opts="$(echo -e "$OPTIONS" | $rofi_cmd)"
case $opts in
        "襤")
                systemctl poweroff
                ;;
        "ﰇ")
                systemctl reboot
                ;;
        "")
                # Dormir un poco el proceso para evitar que tome captura al menu de apagar
                sleep 1
                i3lock-fancy 
                ;;
        "鈴")
                systemctl suspend
                ;;
        "")
                i3-msg exit
                ;;
esac


