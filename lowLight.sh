if [ $# -eq 0 ]; then
  return 1;
fi
xrandr --output eDP-1 --brightness "$1"
