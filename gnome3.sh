#! /bin/bash
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
rm ~/Pictures/wallpaper/world_sunlight_map_rectangular.*
TIME=`date +%s`
echo $TIME
wget http://www.opentopia.com/images/data/sunlight/world_sunlight_map_rectangular.jpg -O ~/Pictures/wallpaper/world_sunlight_map_rectangular.$TIME.jpg
gsettings set org.gnome.desktop.background picture-uri file://$HOME/Pictures/wallpaper/world_sunlight_map_rectangular.$TIME.jpg
