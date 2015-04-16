#!/bin/bash

STEAMAPPS=~/.steam/steam/steamapps/
ICONS=~/.local/share/icons/hicolor/32x32/apps/

for file in $($STEAMAPPS/*.acf -1v); do
    ID=$(cat "$file" | grep '"appid"' | head -1 | sed -r 's/[^"]*"appid"[^"]*"([^"]*)"/\1/')
    NAME=$(cat "$file" | grep '"name"' | head -1 | sed -r 's/[^"]*"name"[^"]*"([^"]*)"/\1/')
    ICONHASH=$(steamcmd  +app_info_print $ID +exit | grep -w -m 1 "icon" | sed -r 's/[^"]*"icon"[^"]*"([^"]*)"/\1/') 
wget http://media.steampowered.com/steamcommunity/public/images/apps/$ID/$ICONHASH.jpg -O $ICONS/steam_icon_$ID.png
done
