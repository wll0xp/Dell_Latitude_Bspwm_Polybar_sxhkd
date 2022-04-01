#!/bin/bash

mute=$(amixer get Master|tail -1|tr -s " "|cut -d"[" -f3)
if [ "$mute" == "off]" ]; then #Mute activado
 amixer set Master unmute
else
  amixer set Master mute

fi
