feh --bg-scale media/wallpapers/archdark.jpg
xrdb -merge ~/.Xresources

# while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
# do
# 	sleep 1
# done &
slstatus &

exec dwm
