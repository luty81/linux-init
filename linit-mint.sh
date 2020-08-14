#! /bin/bash
apt update
apt install sysstat -y
apt install xsel -ytex
apt install vim -y
apt install deepin-terminal -y

# Increases the default file watcher limit
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

echo Done!