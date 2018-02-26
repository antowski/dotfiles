feh --bg-scale media/wallpapers/archdark.jpg
xrdb -merge ~/.Xresources

urxvtd -q -f -o &

# while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
# do
# 	sleep 1
# done &
slstatus &

exec dwm
