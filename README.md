# libcamera-install
For easy use, we make a script in github.

You can instlal it by the following commands:

1. Download and instal the libcamera-install file

git clone https://github.com/waveshare/libcamera-install.git
cd libcamera-install
sudo chmod +x install_libcamera_all.sh
sudo ./install_libcamera_all.sh

2. It is successful if the line "echo "install Succeed" is printied, and it is failed if the line "echo "install Fail" is printed.

After installing, three folders are saved in /home/pi directory, libcamera libcamera-apps libepoxy folders. If you want to reinstall the libcamera, you need to detect these folders first.


3. Restart the software.

sudo reboot

4. Test the camera to preview for 5s

cd /home/pi/libcamera-apps/build
./libcamera-hello

=======================================================================================

由于安装libcamera的步骤很多，耗时很长。我们提供一个github程序进行直接安装。

具体操作步骤如下：

1. 下载libcamera-install文件并安装

 git clone https://github.com/waveshare/libcamera-install.git
 
 sudo chmod +x install_libcamera_all.sh
 
 sudo ./install_libcamera_all.sh

2. 出现echo "install Succeed"表示成功安装。出现echo "install Fail" 表示安装失败。

成功安装后会在/home/pi目录下生成libcamera libcamera-apps libepoxy三个文件夹，如果需要重新安装 应先将这三个文件夹删除后，在重新安装。

受网络影响，运行一次可能安装不成功，多运行几次即可。

3. 重启

sudo reboot

4. 测试，显示5秒摄像头图像

cd /home/pi/libcamera-apps/build
./libcamera-hello
