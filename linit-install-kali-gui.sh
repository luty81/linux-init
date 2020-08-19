#! /bin/bash

echo "It will take so long... Be patient!"

echo "[1/3] Getting prepared..."
apt update > /dev/null
apt dist-upgrade > /dev/null

echo "[2/3] Installing Kex..."
apt install kali-win-kex -y > /dev/null

echo "[3/3] Installing Kali default package..."
apt install kali-linux-default -y > /dev/null

echo "Done!"
echo "In order to start Kali GUI run the follow command:"
echo "\$ kex wtstart"
echo "The GUI will be started in full screen and expanded to all monitors"
echo "In order to run windowed instead, press F8 to show TigerVNC context menu and then uncheck Full Screen option"
