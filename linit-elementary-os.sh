#! /bin/bash

echo '(1/4) Updating repositories...'
apt-add-repository ppa:ubuntu-x-swat/updates
apt update

echo '(2/4) Installing essential tools...'
apt install software-properties-common -y
apt install net-tools -y
apt install xsel -y
apt install ssh -y
apt install deepin-terminal -y
apt install gitk -y
apt install htop -y

echo '(3/4) Installing generic drivers for Elementary OS...'
apt install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-16.04 -y

echo '(4/4) Cleaning everything...'
apt autoremove

echo Done!