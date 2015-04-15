# Obmenu-SteamPopulator
This script when added to the openbox menu, or with obmenu-generator, will auto populate a pipe menu with all of your steam games you have installed for easy launching. Includes icon support, but steam sucks at getting icons on linux, check out my other script that will populate the icons for your downloaded games when ran. https://github.com/NolanSyKinsley/SteamIconGetter

To enable in Obmenu-generator edit ~/.config/schema.pl and add the line {pipe => ["/path/to/script/goes/here", "Steam", "steam"]} where you want the pipe menu to appear. Mark the script as an executable and that is all, you are done! 

This is what it should look like when you are done:

![alt tag](http://i.imgur.com/CjSmXEU.png)

Like I said, Steam is bad about populating icons in linux, so be sure to check out my other script to grab the icons using the Steap Web API here <link>https://github.com/NolanSyKinsley/SteamIconGetter</link>
