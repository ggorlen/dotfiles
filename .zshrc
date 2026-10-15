[ -f ~/.shrc ] && source ~/.shrc

setopt auto_pushd
unsetopt BEEP

# clipboard (Mac)
alias clip="pbcopy"

# machine-specific config (not committed)
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
