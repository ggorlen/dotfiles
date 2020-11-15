# interactive sessions only
[ -z "$PS1" ] && return

for dotfile in `find ~/Documents/dotfiles/profile`
do
  [ -f $dotfile ] && echo $dotfile
  #[ -f “$dotfile” ] && source “$dotfile”
done
