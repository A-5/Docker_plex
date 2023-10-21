#!/bin/bash
cd ~/git

# PX-S1UDのインストール
wget http://plex-net.co.jp/plex/px-s1ud/PX-S1UD_driver_Ver.1.0.1.zip
unzip PX-S1UD_driver_Ver.1.0.1.zip
sudo cp PX-S1UD_driver_Ver.1.0.1/x64/amd64/isdbt_rio.inp /lib/firmware/
rm PX-S1UD_driver_Ver.1.0.1.zip
rm -rf PX-S1UD_driver_Ver.1.0.1

read -p "ドライバがインストールされました。enterキーを押すとリブートします。"
sudo reboot
