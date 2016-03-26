---
layout: post

title: "Fix GNU/Linux boot after Windows Installation"
---
In my office, we must use the ugly M$ Windows. So after many year of single GNU/Linux booting, I need to install Windows again as a dual boot.

But with Micro$oft, nothing is easy, even an install...
After the installation, the Windows bootloader erase the GNU/Linux boot.
To fix that, we need a live CD of a GNU/Linux distribution.


* After the boot in the live CD, just mount the partition `/boot` in a folder (in this example `/mnt`) with the command `sudo mount /dev/sdXY /mnt` (where X is the drive letter and Y the partition).
* [Chroot](https://en.wikipedia.org/wiki/Chroot) into the mounted folder with the command `sudo chroot /mnt`.
* Reinstall [GNU/GRUB](https://en.wikipedia.org/wiki/GNU_GRUB) with `sudo grub-install --root-directory=/mnt /dev/sdX`.
* Update the boot menu with `sudo update-grub`.
* Reboot and enjoy !
