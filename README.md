# Obmenu-SteamPopulator
This script when added to the openbox menu, or with obmenu-generator, will auto populate a pipe menu with all of your steam games you have installed for easy launching. Includes icon support, but steam sucks at getting icons on linux, without creating a desktop shortcut for each game it makes no icons at all, and even if you do make all the shortcuts, most are missing icons. (Solution below!)

To enable in Obmenu-generator edit ~/.config/schema.pl and add the line {pipe => ["/path/to/script/goes/here", "Steam", "steam"]} where you want the pipe menu to appear. Mark the script as an executable and that is all, you are done! 

This is what it should look like when you are done(If you created all the desktop icons, you can skip that step if you are using SteamIconGetter):

![alt tag](http://i.imgur.com/CjSmXEU.png)

Like I said, Steam is bad about populating icons in linux, so be sure to check out my other script to grab the icons using the Steap Web API here https://github.com/NolanSyKinsley/SteamIconGetter

You could have a menu looking like this:

![alt tag](http://i.imgur.com/UzJFl0P.png)
