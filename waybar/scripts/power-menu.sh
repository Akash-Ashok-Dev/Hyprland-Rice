#!/bin/bash

chosen=$(printf "Shutdown\nReboot\nSuspend\nHibernate\nCancel" | rofi -dmenu -i -p "Power")

case "$chosen" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Suspend) systemctl suspend ;;
  Hibernate) systemctl hibernate ;;
  *) exit 0 ;;
esac

