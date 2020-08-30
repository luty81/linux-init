#! /bin/bash

echo "Installing essential tools..."
apt update > /dev/null
apt install sysstat -y
apt install xsel -y
apt install vim -y
apt install deepin-terminal -y
apt install build-essential libssl-dev git -y

echo "Installing WRK..."
git clone https://github.com/wg/wrk.git wrk > /dev/null
cd wrk ; make > /dev/null
cp wrk /usr/local/bin > /dev/null
cd .. ; rm -rf wrk > /dev/null

echo "We almost there! Tweaking system..."
# Increases the default file watcher limit
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

echo Done!

