#!/bin/bash

STEAMAPPS=~/.steam/steam/steamapps/ 
ICONS=~/.local/share/icons/hicolor/32x32/apps/ 


for file in "$STEAMAPPS"/*.acf; do 
    ID=$(grep '"appid"' "$file" | head -1 | sed -r 's/[^"]*"appid"[^"]*"([^"]*)"/\1/') 
    NAME=$(grep '"name"' "$file" | head -1 | sed -r 's/[^"]*"name"[^"]*"([^"]*)"/\1/') 
    ICONHASH=$(steamcmd  +app_info_print $ID +exit | grep -w -m 1 "icon" | sed -r 's/[^"]*"icon"[^"]*"([^"]*)"/\1/') 
if [ ! -f $ICONS/steam_icon_$ID.png ]; then 
	wget http://media.steampowered.com/steamcommunity/public/images/apps/$ID/$ICONHASH.jpg -O $ICONS/steam_icon_$ID.png
	echo "$NAME's icon is missing, retrieving from web"
else
	echo "$NAME's icon is present, skipping"
fi
done
	echo "done"
