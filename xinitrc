#xrandr -s 1280x800
#slstatus &
feh --bg-fill ~/Pictures/background/FA-18.png
xrdb ~/.Xresources &
unclutter -idle 3 &

#exec twm > ~/.twm.log
exec dwm > ~/.dwm.log
