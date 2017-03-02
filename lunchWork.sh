#! /bin/sh
cd $1
sleep 0.5s
firefox &
sleep 0.5s
xdotool key alt+v 
urxvt &
cd $1
sleep 0.5s
xdotool key alt+j 
sleep 0.5s
xdotool key alt+v 
urxvt &
cd $1
xdotool key alt+up 

