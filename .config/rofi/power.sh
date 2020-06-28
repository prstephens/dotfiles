#!/usr/bin/env bash

selection=$(echo -e ' lock\n log off\n restart\n襤 shutdown' | rofi -dmenu -theme config-power -p "")

case "${selection}" in
  " lock")
    i3lock -i /tmp/lock.png -ubte;;
  " log off")
    i3-msg exit;;
  " restart")
    systemctl reboot;;
  "襤 shutdown")
    systemctl poweroff -i;;
esac