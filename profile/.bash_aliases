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

# python
alias py="python3"

# clipboard (note: xclip is Linux-specific; macOS uses pbcopy)
alias clip="xclip -select clip"

# disk usage
alias dud="du -h -d1"

# git
alias g="git grep -i"
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
alias gam="git commit --amend --no-edit"

# background colors
alias red='echo -e "\033]11;#800000\007"'
alias black='echo -e "\033]11;#000000\007"'
alias gray='echo -e "\033]11;#141414\007"'
