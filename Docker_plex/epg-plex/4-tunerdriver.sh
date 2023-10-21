#!/bin/bash
cd ~/docker
git clone https://github.com/tsukumijima/px4_drv.git
cd px4_drv/fwtool/
make
wget http://plex-net.co.jp/plex/pxw3u4/pxw3u4_BDA_ver1x64.zip -O pxw3u4_BDA_ver1x64.zip
unzip -oj pxw3u4_BDA_ver1x64.zip pxw3u4_BDA_ver1x64/PXW3U4.sys
./fwtool PXW3U4.sys it930x-firmware.bin
sudo mkdir -p /lib/firmware
sudo cp it930x-firmware.bin /lib/firmware/
cd ../
wget https://github.com/tsukumijima/px4_drv/releases/download/v0.4.1/px4-drv-dkms_0.4.1_all.deb
./build_deb.sh
sudo apt install -y ../px4-drv-dkms_0.4.1_all.deb
sudo modprobe px4_drv
#sudo cp -a ./ /usr/src/px4_drv-0.4.1
#sudo dkms add px4_drv/0.4.1
#sudo dkms install px4_drv/0.4.1
lsmod | grep -e ^px4_drv
read -p "ドライバがインストールされました。enterキーを押すとリブートします。"
sudo reboot
