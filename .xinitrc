xrdb -merge ~/.Xresources

#start pulse
/usr/bin/start-pulseaudio-x11

# Keys
. $HOME/.xkbmap

conky &
/usr/bin/xscreensaver -no-splash &
exec awesome
