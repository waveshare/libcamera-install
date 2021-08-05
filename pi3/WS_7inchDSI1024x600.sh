#Set up the script to run the interpreter
#!/bin/bash

#Appends the second parameter string to the end of the first parameter file
Data_Insertion()
{
	if grep -w -q ^$2 $1
	then
	    echo "It already exists and does not need to be added"
	else
	    echo $2 >> $1
	fi
}


#Driver Start Settings
echo "Driver Start Settings"

#Jump to the driver package directory
cd ./Driver_package

#Move driver file
sudo cp WS_7inchDSI1024x600_Touch.ko /lib/modules/$(uname -r)
sudo cp WS_7inchDSI1024x600_Screen.ko /lib/modules/$(uname -r)
sudo cp WS_7inchDSI1024x600_Touch.dtbo /boot/overlays
sudo cp WS_7inchDSI1024x600_Screen.dtbo /boot/overlays

#Jump to the driver installation directory
cd /lib/modules/$(uname -r)

#Install driver
sudo depmod
sudo modprobe WS_7inchDSI1024x600_Touch
sudo modprobe WS_7inchDSI1024x600_Screen

#Jump to the config configuration directory
cd /boot

#set config 
#Data_Insertion config.txt  "# -------------sceen---------------"
Data_Insertion config.txt  "ignore_lcd=1"
Data_Insertion config.txt  "dtoverlay=vc4-kms-v3d"
Data_Insertion config.txt  "dtoverlay=WS_7inchDSI1024x600_Screen"
#Data_Insertion config.txt  "# -------------touch---------------"
Data_Insertion config.txt  "dtparam=i2c_arm=on"
Data_Insertion config.txt  "dtoverlay=WS_7inchDSI1024x600_Touch"

#Driver end Settings
echo "Driver end Settings"
