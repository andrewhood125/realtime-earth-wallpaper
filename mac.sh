#! /bin/bash

# Description: Real time earth wallpaper updated.
# Author: Andrew Hood <andrewhood125@gmail.com>
# Installation: Install a cronjob to call this script once per hour.
# Make the directory ~/Pictures/wallpaper. Run this script manually 
# Verify the picture of earth is in the folder. Open System Preferences
# -> Desktop & Screen Saver. Click + and add the wallpaper folder.
# Check the 'Change Picture:' box and select an update time of less
# than or equal to one hour for best result.

rm ~/Pictures/wallpaper/World_sunlight_map_rectangular.*
wget http://www.opentopia.com/images/data/sunlight/world_sunlight_map_rectangular.jpg -O ~/Pictures/wallpaper/world_sunlight_map_rectangular.`date +%s`.jpg
