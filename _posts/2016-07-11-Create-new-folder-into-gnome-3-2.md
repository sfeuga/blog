---
layout: post
title: Create a new folder or add applications into an existing one into Gnome 3.2 Shell
tags: [ GNU/Linux ]
---
List available desktop files under `.local/share/applications` and `/usr/share/applications/`

* To list available folders, run : `gsettings get org.gnome.desktop.app-folders folder-children`.
* To get the content of the Sundry folder, run : `gsettings get org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Sundry/ apps`.
* To add a new folder called *New-folder*, run : `gsettings set org.gnome.desktop.app-folders folder-children "['Utilities', 'Sundry', 'PlayOnLinux', 'New-folder']"`
* Create a new .desktop file like :

*New-folder.desktop*

`[Desktop Entry]`

`Name=New folder Name`

`Comment=A comment`

`Icon=applications-system`

`Type=Directory`

* Add a folder name to the new folder with : `gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/New-folder/ name "New-folder.desktop"`
* To add applications into the new folder, run : `gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/New-folder/ apps "['abc.desktop', 'xyz.desktop']"`

If you need to add a new desktop entry into a **existing folder**, do not forget to **add again all the content of the folder** in addition to the new entry.
