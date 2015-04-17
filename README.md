# Obmenu-SteamPipe
This script when added to the openbox menu, or with obmenu-generator, will auto populate a pipe menu with all of your steam games you have installed for easy launching. Includes icon support, but steam sucks at getting icons on linux, without creating a desktop shortcut for each game it makes no icons at all, and even if you do make all the shortcuts, most are missing icons. (Solution below!)

This is what it should look like when you are done(If you created all the desktop icons, you can skip that step if you are using the included IconGrabber.sh):

![alt tag](http://i.imgur.com/CjSmXEU.png)

Like I said, Steam is bad about populating icons in linux, so be sure to check out the included IconGrabber.sh to get the icons automatically.

![alt tag](http://i.imgur.com/UzJFl0P.png)

# **Instructions**

***

**1.**   Download Obmenu-SteamPipe and IconGrabber.sh if needed, place scripts where desired, mark as executable.  

**2.**   If you are using Obmenu-Generator open ~/.config/obmenu-generator/schema.pl and place this where you want the pipe menu to be:  

`{pipe => ["/path/to/Obmenu-SteamPipe/goes/here", "Steam", "steam"]}`

If you are not using Obmenu-Generator you can manually run Obmenu-SteamPipe once and the output can be placed in the default Openbox menu config file where desired.

**3.**   Run IconGrabber.sh once to populate the menu with icons. You can run it again when you download more games and need the icons.

## **Todo**

**1.**  Add check to IconGrabber.sh so it does not download icons if they already exist.

