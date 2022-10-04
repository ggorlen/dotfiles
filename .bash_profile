# interactive sessions only
[ -z "$PS1" ] && return

for dotfile in `find ~/dotfiles/profile`; do
  [ -f $dotfile ] && source $dotfile
done

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
