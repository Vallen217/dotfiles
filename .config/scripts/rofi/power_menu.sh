#!/bin/bash

menu() {
  echo -en "lock-screen\0icon\x1fsystem-lock-screen\n"
  echo -en "suspend\0icon\x1fsystem-suspend\n"
  echo -en "hibernate\0icon\x1fsystem-hibernate\n"
  echo -en "log-out\0icon\x1fsystem-log-out\n"
  echo -en "reboot\0icon\x1fsystem-reboot\n"
  echo -en "shutdown\0icon\x1fsystem-shutdown\n"
}

main() {
  CHOICE=$(menu | rofi -dmenu | cut -f1)
  LOCK="$HOME/.config/scripts/system/lock.sh"

  case $CHOICE in
    "lock-screen")
      $LOCK
      ;;
    "suspend")
      $LOCK
      systemctl suspend
      ;;
    "hibernate")
      $LOCK
      systemctl hibernate
      ;;
    "log-out")
      "i3-msg exit ; exit"
      ;;
    "reboot")
      "systemctl reboot"
      ;;
    "shutdown")
      "systemctl poweroff"
      ;;
  esac
}

main
