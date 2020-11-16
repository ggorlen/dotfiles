#!/bin/bash

set -eu -o pipefail
sudo -n true
ln -sv ~/dotfiles/.bash_profile ~/.bash_profile
ln -sv ~/dotfiles/.vimrc ~/.vimrc
sudo apt update && sudo apt upgrade -y

read -p "install nonessential packages? (y/n) " nonessential

cat packages/essential.txt | xargs sudo apt -y install
[ $nonessential = "y" ] && cat packages/nonessential.txt | xargs sudo apt -y install
cat packages/python.txt | xargs python3 -m pip install
cat packages/node.txt | xargs npm i -g

sudo apt autoremove -y
source .bash_profile
