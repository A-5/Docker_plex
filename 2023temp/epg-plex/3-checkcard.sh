#!/bin/bash
sudo systemctl stop pcscd.socket
sudo systemctl disable pcscd.socket
sudo systemctl status pcscd.socket
