xrdb -merge ~/.Xresources

# Keys
. $HOME/.xkbmap

#%xcompmgr -c &
#while true;
#do
#	sleep 5s
#	conky
#	exit
#done &

conky &
/usr/bin/xscreensaver -no-splash &
exec awesome
