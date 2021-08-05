#Set up the script to run the interpreter
#!/bin/bash

Hardware_Message(){

	if grep -q "Raspberry Pi 4" /proc/device-tree/model
	then
		ret=4
	else
		ret=3
	fi
	
	echo ${ret}
}
 
Hardware_Message_Value=`Hardware_Message`


if [ ${Hardware_Message_Value} == 4 ]
then
	cd ./pi4
	printf "pi4\n"
else
	cd ./pi3
	printf "pi3\n"
fi

sudo chmod 777 WS_7inchDSI1024x600.sh
sudo ./WS_7inchDSI1024x600.sh
 

