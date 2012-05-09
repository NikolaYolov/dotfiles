xrdb -merge ~/.Xresources
%xcompmgr -c &
while true;
do
	sleep 15m
	awsetbg -f -r ~/.config/awesome/themes/space/wallpapers-1366x768/
done &

exec awesome

