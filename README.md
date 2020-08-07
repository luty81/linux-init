# Linux Init

It's a collection of useful shell scripts to make Linux users life easier.

#### linit-optimize-oldcpu
Forces the scaling governor to performance policy for all cores and disable ondemand daemon. Two tests were ran in a notebook powered with Intel Core2 Duo P9400. One of them in an Elementary OS installation and it increased the GUI responsiveness. The another was against a Linux Mint installation and doesn't show a performance improvement, at least apparently. None of tests showed an increase in battery draining.

#### linit-elementary-os
Aims to install some linux essential tools missing in Elementary OS such as apt-add-repository, arp, ifconfig, netstat, rarp, nameif, route, xsel, ssh client, deepin-terminal, htop and more. Futher, this script install the linux-generic-hwe-18.04 package in order to ensure the recommended drivers. This package showed some vga driver performance improvement in old cpu.

#### linit-fish-omf
Installs awesome interactive fish shell and oh-my-fish theme plugin. Follow the link for more details: https://fishshell.com/

#### linit-gitconfig
Sets default git user name and e-mail required for commit operation. 
Coming soon: remote github access configuration. 
