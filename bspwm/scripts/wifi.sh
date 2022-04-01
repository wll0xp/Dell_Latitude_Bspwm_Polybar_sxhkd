#!/bin/bash

status=$(rfkill list|tail -1|tr -s " "|cut -d: -f2|tr -d " ")
if [ "$status" == "no" ]; then #Mute activado
  /usr/sbin/rfkill block all
  #echo "Modo Avión"
else
  /usr/sbin/rfkill unblock all
  #echo "Modo normal"
fi
