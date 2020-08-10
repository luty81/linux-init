#! /bin/bash

echo Setting your git name and e-mail
echo Your e-mail:
read git_email
echo Your name:
read git_name

if [ -n "$git_email" ]; then
	git config --global user.email $git_email
	git config --global user.name $git_name
fi

PUBLIC_KEY=/home/luciano/.ssh/id_rsa.pub
if [ ! -f "$PUBLIC_KEY" ]; then
	echo Generating SSH Key for Git Hub access...
	ssh-keygen -t rsa -b 4096 -C "$git_email"
	echo SSH Key generated successfully. 
fi  

echo Add the content below in https://github.com/settings/ssh/new
cat ~/.ssh/id_rsa.pub