# Use UTF-8 everywhere
export LANG=en_US.UTF-8

. ./.profile
. ./.kshrc
# load Xresources file
xrdb -merge $HOME/.Xresources

# set your background color
feh --bg-fill $HOME/pix/test2.png

# xidle will lock your display after a period of inactivity
xidle &

# disable system beep
xset b off

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 

# use caps lock as ctrl key
setxkbmap -option rightalt:nocaps

# set time
while true; do
   xsetroot -name "$( date +"%H%M%S" )"
   sleep 5    # Update time every minute
done &


exec cwm
#exec /usr/local/bin/spectrwm
#exec /usr/local/bin/stumpwm
#exec /usr/local/bin/ratpoison
