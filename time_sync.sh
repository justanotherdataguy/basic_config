#!/bin/bash

sudo systemctl stop systemd-timesyncd
sudo systemctl disable systemd-timesyncd
sudo systemctl stop ntpd
sudo systemctl disable ntpd
sudo apt update
sudo apt install chrony -y
sudo systemctl start chrony
sudo systemctl enable chrony
sudo systemctl status chrony
sudo chronyc -a makestep
chronyc tracking
chronyc sources
sudo hwclock --systohc --utc
