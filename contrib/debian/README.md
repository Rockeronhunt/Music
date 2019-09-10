
Debian
====================
This directory contains files used to package musicoind/musicoin-qt
for Debian-based Linux systems. If you compile musicoind/musicoin-qt yourself, there are some useful files here.

## musicoin: URI support ##


musicoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install musicoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your musicoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/musicoin128.png` to `/usr/share/pixmaps`

musicoin-qt.protocol (KDE)

