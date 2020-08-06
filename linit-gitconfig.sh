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