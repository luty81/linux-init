#! /bin/bash

apt update

apt install fish -y
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
echo 'omf install lambda' | fish
echo Done!