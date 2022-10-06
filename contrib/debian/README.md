
Debian
====================
This directory contains files used to package endlesscoind/endlesscoin-qt
for Debian-based Linux systems. If you compile endlesscoind/endlesscoin-qt yourself, there are some useful files here.

## endlesscoin: URI support ##


endlesscoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install endlesscoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your endlesscoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/endlesscoin128.png` to `/usr/share/pixmaps`

endlesscoin-qt.protocol (KDE)

