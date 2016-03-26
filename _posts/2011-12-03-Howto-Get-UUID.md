---
layout: post

title: "Howto Get UUID"
---
You can get UUID with the command `blkid`.

To update UUIDs cache run the command `sudo blkid -g` and `sudo blkid` to get the UUID.
For old GNU/Linux system you can run the command `sudo vol_id -u /dev/sda1`.
