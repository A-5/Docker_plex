#!/bin/sh
# 091-installmunin.sh
sudo apt -y install munin munin-node apache2
sudo cp ./data/p3x-new-munin.config /etc/munin/munin.conf
sudo systemctl start munin-node
sudo systemctl enable munin-node
sudo systemctl start munin
sudo systemctl enable munin
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
sudo apt -y install smartmontools
sudo cp ./data/p3x-hddtemp_smartctl /etc/munin/plugin-conf.d/hddtemp_smartctl
sudo ln -s /usr/share/munin/plugins/hddtemp_smartctl /etc/munin/plugins
sudo systemctl restart munin-node.service
