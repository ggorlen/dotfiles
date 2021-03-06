#!/bin/bash

set -eu -o pipefail
sudo -n true

[ $# -eq 0 ] && { echo "no home directory provided"; exit 1; }

home=$1

ln -sv .bash_profile $home/.bash_profile
ln -sv .bashrc $home/.bashrc
ln -sv .vimrc $home/.vimrc

read -p "install nonessential packages? (y/n) " nonessential

sudo apt update && sudo apt upgrade -y
cat packages/essential.txt | xargs sudo apt -y install
[ $nonessential = "y" ] && cat packages/nonessential.txt | xargs sudo apt -y install
cat packages/python.txt | xargs python3 -m pip install
cat packages/node.txt | xargs npm i -g

sudo apt autoremove -y
source .bash_profile
