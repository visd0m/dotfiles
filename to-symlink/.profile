for DOTFILE in `find ~/dotfiles/to-source`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
