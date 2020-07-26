#! /bin/bash

# Install essential tools
apt upgrade
apt update

apt install software-properties-common -y
apt-add-repository ppa:ubuntu-x-swat/updates
apt update

apt install net-tools -y
apt install xsel -y
apt install ssh -y
apt install deepin-terminal -y
apt install gitk -y
apt install htop -y
apt autoremove

# Installing fish and omf
apt install fish -y
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
echo 'omf install lambda' | fish

# Setting cpu governor for max performance
files=/sys/devices/system/cpu/cpufreq/policy*
for (file in $files)
do
	echo 'performance' > $file/scaling_governor
done

systemctl disable ondemand

# Installing generic driver for Elementary OS
apt install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-16.04 -y

# Setting other stuff
alias lsa="ls -al"

read git_email
read git_name

if [ $git_email != '' ]
	git config --global user.email $git_email
	git config --global user.name $git_name
fi
