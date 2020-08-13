#! /bin/bash
echo Getting prepared...
apt-get --quiet update >> /dev/null

echo Installing fish shell...
apt-get --quiet install fish -y >> /dev/null

echo Installing oh-my-fish plugin...
curl -L https://get.oh-my.fish > install
fish install

echo Cleaning...
rm ./install
