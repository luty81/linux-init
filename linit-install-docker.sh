#! /bin/bash

echo "[1/4] Getting prepared..."
apt-get update > /dev/null

echo "[2/4] Removing olding versions..."
apt-get remove docker docker-engine docker.io > /dev/null

echo "[3/4] Installing Docker..."
apt-get install docker.io -y > /dev/null 

echo "[4/4] Enabling Docker Daemon..."
systemctl start docker > /dev/null
systemctl enable docker > /dev/null
systemctl status docker

docker --version
echo "Done!"