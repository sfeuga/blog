---
layout: post
title: APT, I love you
tags: [ GNU/Linux ]
---
APT ([Advanced Package Tool](https://en.wikipedia.org/wiki/Advanced_Packaging_Tool)) is a [CLI](https://en.wikipedia.org/wiki/Command-line_interface) program to handle the installation and removal of software on the [Debian GNU/Linux and its variants](https://en.wikipedia.org/wiki/Debian).

Before performing command below, you need to update software list using the `sudo apt-get update` command.

To install a software, just run `sudo apt-get install NewSoftwareName`. Of course, you can perform `sudo apt-get install Soft1 Soft2 Soft3`.

To uninstall run `sudo apt-get autoremove --purge NewSoftwareName`. The `autoremove` option is used to delete all the dependency installed with the software and the software itself. The `--purge` option is used to delete also config files.

To update all installed softwares run the command `sudo apt-get upgrade`. But if you want to update all the system itself, without install again all your software (like in M$ Windows), just run the command `sudo apt-get dist-upgrade`, and the magic appear. A backup of your system is recommended before any dist-upgrade.

If you need space disc, you can delete downloaded files with apt-get (but not the installed softwares) with `sudo apt-get autoclean`.

To find a package, you can run the command `apt-cache search NameOfSoft`. Performs a full text search on all available package lists for a regex pattern.

You can learn more with `man apt-get` and `man apt-cache`.

You understand that the `apt` software is very effective and very simple.

Instead of `apt`, you can run the `aptitude` command as a [Ncurses](https://en.wikipedia.org/wiki/Ncurses) front-end. Of course, you can learn more with `man aptitude` and in [Wikipedia](https://en.wikipedia.org/wiki/Aptitude_(software)).
