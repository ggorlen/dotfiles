# interactive sessions only
[ -z "$PS1" ] && return

for dotfile in `find ~/dotfiles/profile`; do
  [ -f $dotfile ] && source $dotfile
done
