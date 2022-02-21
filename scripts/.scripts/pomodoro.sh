#!/bin/bash
#eval "export | egrep 'DBUS_SESSION_BUS_ADDRESS|DISPLAY'";
export CURRENTTIME=`date +"%T"`;
export UTCTIME=`date -u +"%T"`;
#export SOUND=`find /home/marajade/sounds/ -type f | shuf -n 1`
notify-send -u critical -t 3000 "Pomodoro: Time Check! What are we doing right now? What do we need to do right now?" \
"PST: $CURRENTTIME
UTC: $UTCTIME";
#Soundfile: $SOUND";

#/usr/bin/paplay $SOUND
