#!/bin/sh
# p2b-installsamba.sh
sudo apt -y install samba
sudo cp ./data/p2x-smb.config /etc/samba/smb.conf
sudo testparm
sudo pdbedit -a euser
sudo systemctl enable smbd
sudo systemctl start smbd

