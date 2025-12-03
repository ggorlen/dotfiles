#!/usr/bin/env bash

# navigation
alias ..="pushd .."
alias ...="pushd ../.."
alias ....="pushd ../../.."
alias .....="pushd ../../../.."
alias ......="pushd ../../../../.."
alias .......="pushd ../../../../../.."
alias ........="pushd ../../../../../../.."
alias ~="cd ~"

# listing files
alias ll="ls -hAl"
alias l="ll"
alias lll="ll"
alias f='find . -type f -not -path "*/node_modules/*" -not -path "*/.git/*" -iname' # super slow, probably use fd

# python
alias py="python3"

# clipboard (note: xclip is Linux-specific; macOS uses pbcopy)
alias clip="xclip -select clip"

# disk usage
alias dud="du -h -d1"

# background colors
alias bg-red='echo -e "\033]11;#800000\007"'
alias bg-black='echo -e "\033]11;#000000\007"'
alias bg-gray='echo -e "\033]11;#141414\007"'

# git
alias g="git grep -i"
alias gm="git merge"
alias gs="git status"
alias gsh="git show"
alias gb="git branch"
alias gl="git log"
alias glo="git log --oneline"
alias ga="git add"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gd="git diff"
alias gds="git diff --staged"
alias gco="git checkout"
alias gca="git commit --amend --no-edit"

# etc
alias kfjc="mpv -no-vid https://netcast.kfjc.org/kfjc-128k-mp3"
