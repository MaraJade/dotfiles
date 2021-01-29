#!/bin/bash
eval "export | egrep 'DBUS_SESSION_BUS_ADDRESS|DISPLAY'";
notify-send -t 5000 "Pomodoro" "Take a break!";
/usr/bin/paplay /usr/share/sounds/sound-icons/start
