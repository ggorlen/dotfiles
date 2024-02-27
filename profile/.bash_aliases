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

# python
alias py="python3"

# clipboard
alias clip="xclip -select clip"

# disk usage
alias dud="du -h -d1"

alias g="grep -RiP --exclude-dir={node_modules,.git,build,dist}"
alias rmfirst='rm "$(ls | head -1)"'
