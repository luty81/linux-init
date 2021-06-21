#!/bin/bash

echo -n "Disk name (ex.: sda, sdc, etc.):"; read;
DISK=/dev/${REPLY}
echo -n "Device name (ex.: sda1, sde2, etc.):"; read;
DEVICE=/dev/${REPLY}

echo "mount ${DEVICE} /mnt"



for dir in /dev /dev/pts /proc /sys;
do
	echo "sudo mount -B ${dir} /mnt${dir}";
done
#chroot /mnt
#update-grub

echo "grub-install ${DISK}"

for dir in /sys /proc /dev/pts /dev;
do
	echo "umount /mnt${dir}";
done

umount /mnt

echo "Done! You can reboot now!"
