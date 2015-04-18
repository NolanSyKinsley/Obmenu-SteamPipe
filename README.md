# Obmenu-SteamPipe
This script when added to the openbox menu, or with obmenu-generator, will auto populate a pipe menu with all of your steam games you have installed for easy launching. Includes icon support, but steam sucks at getting icons on linux, without creating a desktop shortcut for each game it makes no icons at all, and even if you do make all the shortcuts, most are missing icons. This is fixed by using the included IconGrabber.sh.

This is what it looks like before using IconGrabber.sh:

![alt tag](http://i.imgur.com/CjSmXEU.png)

After:

![alt tag](http://i.imgur.com/UzJFl0P.png)

# **Instructions**

***

**Requires SteamCMD**

**1.**   Download Obmenu-SteamPipe and IconGrabber.sh if needed, place scripts where desired, mark as executable. 

**2.**   If you are using Obmenu-Generator open ~/.config/obmenu-generator/schema.pl and place this where you want the pipe menu to be:  

`{pipe => ["/path/to/Obmenu-SteamPipe/goes/here", "Steam", "steam"]}`

If you are not using Obmenu-Generator you can manually run Obmenu-SteamPipe once and the output can be placed in the default Openbox menu config file where desired.

**3.**   Run IconGrabber.sh once to populate the menu with icons. You can run it again when you download more games and need the icons, or you can just add it to your startup. It has a check so it won't download if the icon is already present. **Note:** This script will take a fair amount of time to run. It is using steamcmd, which takes 1-3 seconds per game to return the icon hash so it can be retrieved. I am looking into ways to speed this up, but for now it is just going to be really slow, the good news is it doesn't take up much processor at all, so can be ran at startup to check that all games have their icons.

