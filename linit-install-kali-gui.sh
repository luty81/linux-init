#! /bin/bash

echo "It will take so long... Be patient!"

echo "[1/3] Getting prepared..."
apt update > /dev/null
apt dist-upgrade > /dev/null

echo "[2/3] Installing Kex..."
apt install kali-win-kex -y > /dev/null

echo "[3/3] Installing Kali default package..."
apt install  kali-linux-default -y > /dev/null

echo "Done!"
