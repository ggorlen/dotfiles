#!/bin/bash

set -eu -o pipefail
sudo -n true
#sudo apt update && sudo apt upgrade -y
#sudo apt autoremove -y

read -p "install noncritical packages? (y/n) " noncritical #FIXME prompt until valid

echo "cat packages/critical.txt" | xargs sudo apt -y install
[ noncritical = "y" ] && echo "YES"

#echo "cat packages/noncritical.txt" | xargs sudo apt -y install
echo "cat packages/python.txt" | xargs python3 -m pip install
echo "cat packages/node.txt" | xargs npm i g

# FIXME
#-wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#
#sudo apt install ./google-chrome-stable_current_amd64.deb
#wget -O zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
#sudo dpkg -i zoom.deb

mv .vimrc ~/

# TODO move or append bash profile
# TODO install extensions and userscripts
