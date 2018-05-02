---
layout: post
title: Force Warcraft 3 to display a high or widescreen resolution
tags: [ Windows, Game ]
---
First, we need to launch RegEdit, and edit the `HKEY_CURRENT_USER\Software\Blizzard Entertainment\Warcraft III\Video` key.

There are two variables that you must change: resheight and reswidth. Make sure you change the default hex value to decimal value.

Example for widescreen with 1920x1200 resolution:

    reswidth = 1920
    resheight = 1200

You may have to restart Warcraft 3 for the change to take effect. That's all there is to it!
Have fun playing Warcraft 3 with your monitor's native resolution.
