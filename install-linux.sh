#!/usr/bin/env bash
set -eu -o pipefail

ln -sf ~/dotfiles/.shrc ~/.shrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.inputrc ~/.inputrc

sudo apt update && sudo apt upgrade -y
xargs sudo apt -y install < packages/essential.txt
