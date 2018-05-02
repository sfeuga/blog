---
layout: post
title: Start GNU/Screen at a ssh session (and only when you connect by ssh)
tags: [ GNU/Linux ]
---
This is a little tweak to start a GNU/Screen Session (or reconnect the last open session) when you login via ssh.
First of all, you'll need GNU/Screen installed !
Secondly, add to `~/.profile` or to `~/.bash_profile` the following lines :

    if [ -n "$SSH_CONNECTION" ]; then
        exec screen -DR
    fi

Thats it.

You can also change the entry `startup_message` from `on` to `off` in the `/etc/screenrc` file (for all users) or in `~/.screenrc` (for current user) to stop displaying startup messages.
