#Set up the script to run the interpreter
#!/bin/bash

ERROR=0
TEMP_PATH=`pwd`

CMD_CHECK()
{
    if [ $? -ne 0 ]; then
        echo  "\033[31;40m $1 failed \033[0m"
         ERROR=$(($ERROR+1))
 #       echo "$1 failed\r\n"
    else
        echo  "\033[32;40m $1 succeed \033[0m"
 #       echo "$1 succeed\r\n"
    fi
}
echo "-----------------------libcamera Start-----------------------\r\n"

sudo apt install libboost-dev -y
CMD_CHECK "install libboost-dev"

sudo apt install libgnutls28-dev openssl libtiff5-dev -y
CMD_CHECK "install libgnutls28-dev openssl libtiff5-dev"

sudo apt install qtbase5-dev libqt5core5a libqt5gui5 libqt5widgets5 -y
CMD_CHECK "install qtbase5-dev libqt5core5a libqt5gui5 libqt5widgets5"

sudo apt install meson -y
CMD_CHECK "install meson"

sudo pip3 install pyyaml ply
CMD_CHECK "install pyyaml ply"










sudo pip3 install --upgrade meson
CMD_CHECK "install --upgrade meson"

git clone git://linuxtv.org/libcamera.git
CMD_CHECK "clone git://linuxtv.org/libcamera.git"

cd libcamera
CMD_CHECK "cd libcamera"

meson build
CMD_CHECK "meson build"

cd build
CMD_CHECK "cd build"

meson configure -Dpipelines=raspberrypi -Dtest=false
CMD_CHECK "configure -Dpipelines=raspberrypi -Dtest=false"

cd ..
CMD_CHECK "cd .."

ninja -C build
CMD_CHECK "ninja -C build"

sudo ninja -C build install 
CMD_CHECK "ninja -C build install"










sudo apt install libegl1-mesa-dev -y
CMD_CHECK "install libegl1-mesa-dev"

cd $TEMP_PATH
CMD_CHECK "cd $TEMP_PATH"

git clone https://github.com/anholt/libepoxy.git
CMD_CHECK "clone https://github.com/anholt/libepoxy.git"

cd libepoxy
CMD_CHECK "cd libepoxy"

mkdir _build
CMD_CHECK "mkdir _build"

cd _build
CMD_CHECK "cd _build"

meson
CMD_CHECK "meson"

ninja
CMD_CHECK "ninja"

sudo ninja install
CMD_CHECK "ninja install"










sudo apt install cmake libboost-program-options-dev libdrm-dev libexif-dev -y
CMD_CHECK "install cmake libboost-program-options-dev libdrm-dev libexif-dev"

cd $TEMP_PATH
CMD_CHECK "cd $TEMP_PATH"

git clone https://github.com/raspberrypi/libcamera-apps.git
CMD_CHECK "clone https://github.com/raspberrypi/libcamera-apps.git"

cd libcamera-apps
CMD_CHECK "cd libcamera-apps"

mkdir build
CMD_CHECK "mkdir build"

cd build
CMD_CHECK "cd build"

cmake ..
CMD_CHECK "cmake .."

make
CMD_CHECK "make"










echo "-----------------------libcamera End-----------------------\r\n"



if [ $ERROR -ge 6 ]; 
	then                            
		echo "install Fail $ERROR"
	else
		echo "install Succeed $ERROR"
fi;
