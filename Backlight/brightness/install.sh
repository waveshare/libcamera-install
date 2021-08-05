#!/bin/bash

if [ "$1" = "install" ]
then
	sudo chmod 777 WS_7inchDSI1024x600_Backlight WS_7inchDSI1024x600_Backlight.desktop
	sudo cp WS_7inchDSI1024x600_Backlight WS_7inchDSI1024x600_Backlight.desktop WS_7inchDSI1024x600_Backlight.png /usr/share/applications/
	echo "copy WS_7inchDSI1024x600_Backlight file to /usr/share/application/"
elif [ "$1" = "uninstall" ]
then
	cd /usr/share/applications/
	sudo rm WS_7inchDSI1024x600_Backlight WS_7inchDSI1024x600_Backlight.desktop WS_7inchDSI1024x600_Backlight.png
	cd ~
	echo "remove WS_7inchDSI1024x600_Backlight files in /usr/share/applications/"
else
	sudo chmod 777 WS_7inchDSI1024x600_Backlight WS_7inchDSI1024x600_Backlight.desktop
	sudo cp WS_7inchDSI1024x600_Backlight WS_7inchDSI1024x600_Backlight.desktop WS_7inchDSI1024x600_Backlight.png /usr/share/applications/
	echo "copy WS_7inchDSI1024x600_Backlight file to /usr/share/application/"
fi
