feh --bg-scale media/wallpapers/archdark.jpg

# while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
# do
# 	sleep 1
# done &
slstatus &

exec dwm
