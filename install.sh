#!/usr/bin/env bash

function prompt() {
    read -p "$* [Y/n]: " yn
    if [[ $yn = "y" || $yn = "Y" ]]; then
        return 0
    else
        return 1
    fi
}

set -eu -o pipefail
sudo -n true

ln -sv .bash_profile ~/.bash_profile
ln -sv .bashrc ~/.bashrc
ln -sv .vimrc ~/.vimrc

sudo apt update && sudo apt upgrade -y

if prompt "install essential packages?"; then
    cat packages/essential.txt | xargs sudo apt -y install
fi

if prompt "install nonessential packages?"; then
    cat packages/nonessential.txt | xargs sudo apt -y install
fi

#cat packages/python.txt | xargs python3 -m pip install
#cat packages/node.txt | xargs npm i -g
#cat packages/perl.txt | xargs cpan

#sudo apt autoremove -y
source .bash_profile

# install nvm (update version)
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install rvm or rbenv

## YT-DLp https://github.com/yt-dlp/yt-dlp#installation

