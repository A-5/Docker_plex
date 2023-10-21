#!/bin/bash
timedatectl
sudo apt update
mkdir ~/git
sudo apt install -y dkms git
sudo apt -y install docker.io 
docker --version
sudo apt -y install docker-compose
docker-compose -v
sudo usermod -aG docker $USER
