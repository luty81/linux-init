# Linux Init

It's a collection of useful shell scripts to make Linux users life easier.

### linit-install-kali-gui.sh
Installs needed packages to run Kali Linux GUI through WSL 2. 
To not execute the shell script at once, run the commands below:
```sh
sudo apt update && sudo apt dist-upgrade
sudo apt install kali-win-kex -y 
sudo apt install kali-linux-default -y
```

It will take time. After it is done, just run the following command in order to start Kali Desktop windowed:
```sh
kex wtstart
```

Don't be panic if the Desktop is started in full screen mode and expanded to all monitors!\
Just press F8 to show the TigerVNC context menu and uncheck the Full Screen option.

![Exit Full Screen](/images/kaliKex001.png)

It seems when logging out through the Kaki Desktop menu, the Tiger VNC window is stuck on a black screen.\
Instead, you can close the Desktop by pressing CTRL+C twice on terminal where 'kex wtstart' was ran.\
This terminal window shows the following message:\
_Win-Kex session is active_\
_Close this window to terminate Win-Kex_

### linit-optimize-oldcpu
Forces the scaling governor to performance policy for all cores and disable ondemand daemon. Two tests were ran in a notebook powered with Intel Core2 Duo P9400. One of them in an Elementary OS installation and it increased the GUI responsiveness. The another was against a Linux Mint installation and doesn't show a performance improvement, at least apparently. None of tests showed an increase in battery draining.

### linit-elementary-os
Aims to install some linux essential tools missing in Elementary OS such as apt-add-repository, arp, ifconfig, netstat, rarp, nameif, route, xsel, ssh client, deepin-terminal, htop and more. Futher, this script install the linux-generic-hwe-18.04 package in order to ensure the recommended drivers. This package showed some vga driver performance improvement in old cpu.

### linit-fish-omf
Installs awesome interactive fish shell and oh-my-fish theme plugin. Follow the link for more details: https://fishshell.com/

### linit-gitconfig
Sets default git user name and e-mail required for commit operation. 
Coming soon: remote github access configuration. 
