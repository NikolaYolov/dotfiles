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
exec awesome
